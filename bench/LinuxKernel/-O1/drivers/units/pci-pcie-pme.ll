; ModuleID = 'drivers/pci/pcie/pme.c'
source_filename = "drivers/pci/pcie/pme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.pcie_pme_service_data = type { %struct.spinlock, ptr, %struct.work_struct, i8 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }

@__setup_str_pcie_pme_setup = internal constant [10 x i8] c"pcie_pme=\00", section ".init.rodata", align 1, !dbg !0
@__setup_pcie_pme_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_pme_setup, ptr @pcie_pme_setup, i32 0 }, section ".init.setup", align 8, !dbg !4950
@pcie_pme_driver = internal global %struct.pcie_port_service_driver { ptr @.str.1, ptr @pcie_pme_probe, ptr @pcie_pme_remove, ptr @pcie_pme_suspend, ptr null, ptr @pcie_pme_resume, ptr null, ptr null, ptr null, i32 -1, i32 1, %struct.device_driver zeroinitializer }, align 8, !dbg !4970
@pcie_pme_msi_disabled = hidden global i8 0, align 1, !dbg !4961
@.str = private unnamed_addr constant [6 x i8] c"nomsi\00", align 1, !dbg !4963
@.str.1 = private unnamed_addr constant [9 x i8] c"pcie_pme\00", align 1, !dbg !4965
@pcie_pme_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4992
@.str.2 = private unnamed_addr constant [9 x i8] c"PCIe PME\00", align 1, !dbg !5001
@.str.3 = private unnamed_addr constant [28 x i8] c"PME: Signaling with IRQ %d\0A\00", align 1, !dbg !5003
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5008
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"PME: interrupt generated for non-existent device %02x:%02x.%d\0A\00", align 1, !dbg !5013
@.str.6 = private unnamed_addr constant [33 x i8] c"PME: Spurious native interrupt!\0A\00", align 1, !dbg !5018
@system_wq = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_pcie_pme_setup], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcie_pme_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !5035 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5039
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str, i64 noundef 5) #16, !dbg !5041
  %tobool = icmp ne i32 %call, 0, !dbg !5041
  br i1 %tobool, label %if.end, label %if.then, !dbg !5042

if.then:                                          ; preds = %entry
  store i8 1, ptr @pcie_pme_msi_disabled, align 1, !dbg !5043
  br label %if.end, !dbg !5044

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !5045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcie_pme_interrupt_enable(ptr noundef %dev, i1 noundef zeroext %enable) #1 align 16 !dbg !5046 {
entry:
  %dev.addr = alloca ptr, align 8
  %enable.addr = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5050, metadata !DIExpression()), !dbg !5052
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !5051, metadata !DIExpression()), !dbg !5053
  %0 = load i8, ptr %enable.addr, align 1, !dbg !5054, !range !5056, !noundef !1004
  %tobool = trunc i8 %0 to i1, !dbg !5054
  br i1 %tobool, label %if.then, label %if.else, !dbg !5057

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5058
  %call = call i32 @pcie_capability_set_word(ptr noundef %1, i32 noundef 28, i16 noundef zeroext 8) #16, !dbg !5059
  br label %if.end, !dbg !5059

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5060
  %call1 = call i32 @pcie_capability_clear_word(ptr noundef %2, i32 noundef 28, i16 noundef zeroext 8) #16, !dbg !5061
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5062
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_capability_set_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %set) #3 align 16 !dbg !5063 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %set.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5067, metadata !DIExpression()), !dbg !5070
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5068, metadata !DIExpression()), !dbg !5071
  store i16 %set, ptr %set.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5069, metadata !DIExpression()), !dbg !5072
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5073
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5074
  %2 = load i16, ptr %set.addr, align 2, !dbg !5075
  %call = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef %1, i16 noundef zeroext 0, i16 noundef zeroext %2) #16, !dbg !5076
  ret i32 %call, !dbg !5077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_capability_clear_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %clear) #3 align 16 !dbg !5078 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5080, metadata !DIExpression()), !dbg !5083
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5081, metadata !DIExpression()), !dbg !5084
  store i16 %clear, ptr %clear.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !5082, metadata !DIExpression()), !dbg !5085
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5086
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5087
  %2 = load i16, ptr %clear.addr, align 2, !dbg !5088
  %call = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext 0) #16, !dbg !5089
  ret i32 %call, !dbg !5090
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @pcie_pme_init() #0 section ".init.text" align 16 !dbg !5091 {
entry:
  %call = call i32 @pcie_port_service_register(ptr noundef @pcie_pme_driver) #16, !dbg !5092
  ret i32 %call, !dbg !5093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5094 dso_local i32 @pcie_port_service_register(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5098 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_capability_clear_and_set_word(ptr noundef %dev, i32 noundef %pos, i16 noundef zeroext %clear, i16 noundef zeroext %set) #3 align 16 !dbg !5102 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  %set.addr = alloca i16, align 2
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5106, metadata !DIExpression()), !dbg !5110
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5107, metadata !DIExpression()), !dbg !5111
  store i16 %clear, ptr %clear.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %clear.addr, metadata !5108, metadata !DIExpression()), !dbg !5112
  store i16 %set, ptr %set.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5109, metadata !DIExpression()), !dbg !5113
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5114
  switch i32 %0, label %sw.default [
    i32 16, label %sw.bb
    i32 28, label %sw.bb
  ], !dbg !5115

sw.bb:                                            ; preds = %entry, %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5116
  %2 = load i32, ptr %pos.addr, align 4, !dbg !5118
  %3 = load i16, ptr %clear.addr, align 2, !dbg !5119
  %4 = load i16, ptr %set.addr, align 2, !dbg !5120
  %call = call i32 @pcie_capability_clear_and_set_word_locked(ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #16, !dbg !5121
  store i32 %call, ptr %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

sw.default:                                       ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5123
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5124
  %7 = load i16, ptr %clear.addr, align 2, !dbg !5125
  %8 = load i16, ptr %set.addr, align 2, !dbg !5126
  %call1 = call i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef %5, i32 noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8) #16, !dbg !5127
  store i32 %call1, ptr %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

return:                                           ; preds = %sw.default, %sw.bb
  %9 = load i32, ptr %retval, align 4, !dbg !5129
  ret i32 %9, !dbg !5129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5130 dso_local i32 @pcie_capability_clear_and_set_word_locked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5131 dso_local i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_pme_probe(ptr noundef %srv) #1 align 16 !dbg !4994 {
entry:
  %retval = alloca i32, align 4
  %srv.addr = alloca ptr, align 8
  %port = alloca ptr, align 8
  %data = alloca ptr, align 8
  %type = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral12 = alloca %struct.atomic64_t, align 8
  store ptr %srv, ptr %srv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !4996, metadata !DIExpression()), !dbg !5132
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %port, metadata !4997, metadata !DIExpression()), !dbg !5134
  %0 = load ptr, ptr %srv.addr, align 8, !dbg !5135
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 1, !dbg !5136
  %1 = load ptr, ptr %port1, align 8, !dbg !5136
  store ptr %1, ptr %port, align 8, !dbg !5134
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !5137
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4998, metadata !DIExpression()), !dbg !5138
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #17, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4999, metadata !DIExpression()), !dbg !5140
  %2 = load ptr, ptr %port, align 8, !dbg !5141
  %call = call i32 @pci_pcie_type(ptr noundef %2) #16, !dbg !5142
  store i32 %call, ptr %type, align 4, !dbg !5140
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5143
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5000, metadata !DIExpression()), !dbg !5144
  %3 = load i32, ptr %type, align 4, !dbg !5145
  %cmp = icmp ne i32 %3, 10, !dbg !5147
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5148

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %type, align 4, !dbg !5149
  %cmp2 = icmp ne i32 %4, 4, !dbg !5150
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5151

if.then:                                          ; preds = %land.lhs.true
  store i32 -19, ptr %retval, align 4, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5152

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #18, !dbg !5153
  store ptr %call3, ptr %data, align 8, !dbg !5154
  %5 = load ptr, ptr %data, align 8, !dbg !5155
  %tobool = icmp ne ptr %5, null, !dbg !5155
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !5157

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5158

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !5159

do.body:                                          ; preds = %if.end5
  %6 = load ptr, ptr %data, align 8, !dbg !5160
  %lock = getelementptr inbounds %struct.pcie_pme_service_data, ptr %6, i32 0, i32 0, !dbg !5160
  %call6 = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !5160
  %7 = load ptr, ptr %data, align 8, !dbg !5160
  %lock7 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %7, i32 0, i32 0, !dbg !5160
  %8 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5160
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %8, i32 0, i32 0, !dbg !5160
  %9 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5160
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !5160
  store i32 0, ptr %counter, align 4, !dbg !5160
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock7, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5160
  br label %do.cond, !dbg !5160

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5160

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5162

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !5163

do.body9:                                         ; preds = %do.body8
  %10 = load ptr, ptr %data, align 8, !dbg !5165
  %work = getelementptr inbounds %struct.pcie_pme_service_data, ptr %10, i32 0, i32 2, !dbg !5165
  call void @__init_work(ptr noundef %work, i32 noundef 0) #16, !dbg !5165
  %11 = load ptr, ptr %data, align 8, !dbg !5165
  %work10 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 2, !dbg !5165
  %data11 = getelementptr inbounds %struct.work_struct, ptr %work10, i32 0, i32 0, !dbg !5165
  %counter13 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral12, i32 0, i32 0, !dbg !5165
  store i64 68719476704, ptr %counter13, align 8, !dbg !5165
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data11, ptr align 8 %.compoundliteral12, i64 8, i1 false), !dbg !5165
  %12 = load ptr, ptr %data, align 8, !dbg !5165
  %work14 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %12, i32 0, i32 2, !dbg !5165
  %entry15 = getelementptr inbounds %struct.work_struct, ptr %work14, i32 0, i32 1, !dbg !5165
  call void @INIT_LIST_HEAD(ptr noundef %entry15) #16, !dbg !5165
  %13 = load ptr, ptr %data, align 8, !dbg !5165
  %work16 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %13, i32 0, i32 2, !dbg !5165
  %func = getelementptr inbounds %struct.work_struct, ptr %work16, i32 0, i32 2, !dbg !5165
  store ptr @pcie_pme_work_fn, ptr %func, align 8, !dbg !5165
  br label %do.cond17, !dbg !5165

do.cond17:                                        ; preds = %do.body9
  br label %do.end18, !dbg !5165

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !5163

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5163

do.end20:                                         ; preds = %do.cond19
  %14 = load ptr, ptr %srv.addr, align 8, !dbg !5167
  %15 = load ptr, ptr %data, align 8, !dbg !5168
  %srv21 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %15, i32 0, i32 1, !dbg !5169
  store ptr %14, ptr %srv21, align 8, !dbg !5170
  %16 = load ptr, ptr %srv.addr, align 8, !dbg !5171
  %17 = load ptr, ptr %data, align 8, !dbg !5172
  call void @set_service_data(ptr noundef %16, ptr noundef %17) #16, !dbg !5173
  %18 = load ptr, ptr %port, align 8, !dbg !5174
  call void @pcie_pme_interrupt_enable(ptr noundef %18, i1 noundef zeroext false) #16, !dbg !5175
  %19 = load ptr, ptr %port, align 8, !dbg !5176
  call void @pcie_clear_root_pme_status(ptr noundef %19) #16, !dbg !5177
  %20 = load ptr, ptr %srv.addr, align 8, !dbg !5178
  %irq = getelementptr inbounds %struct.pcie_device, ptr %20, i32 0, i32 0, !dbg !5179
  %21 = load i32, ptr %irq, align 8, !dbg !5179
  %22 = load ptr, ptr %srv.addr, align 8, !dbg !5180
  %call22 = call i32 @request_irq(i32 noundef %21, ptr noundef @pcie_pme_irq, i64 noundef 128, ptr noundef @.str.2, ptr noundef %22) #16, !dbg !5181
  store i32 %call22, ptr %ret, align 4, !dbg !5182
  %23 = load i32, ptr %ret, align 4, !dbg !5183
  %tobool23 = icmp ne i32 %23, 0, !dbg !5183
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5185

if.then24:                                        ; preds = %do.end20
  %24 = load ptr, ptr %data, align 8, !dbg !5186
  call void @kfree(ptr noundef %24) #16, !dbg !5188
  %25 = load i32, ptr %ret, align 4, !dbg !5189
  store i32 %25, ptr %retval, align 4, !dbg !5190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

if.end25:                                         ; preds = %do.end20
  br label %do.body26, !dbg !5191

do.body26:                                        ; preds = %if.end25
  br label %do.cond27, !dbg !5193

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5193

do.end28:                                         ; preds = %do.cond27
  %26 = load ptr, ptr %port, align 8, !dbg !5191
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 37, !dbg !5191
  %27 = load ptr, ptr %srv.addr, align 8, !dbg !5191
  %irq29 = getelementptr inbounds %struct.pcie_device, ptr %27, i32 0, i32 0, !dbg !5191
  %28 = load i32, ptr %irq29, align 8, !dbg !5191
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.3, i32 noundef %28) #19, !dbg !5191
  %29 = load ptr, ptr %port, align 8, !dbg !5195
  call void @pcie_pme_mark_devices(ptr noundef %29) #16, !dbg !5196
  %30 = load ptr, ptr %port, align 8, !dbg !5197
  call void @pcie_pme_interrupt_enable(ptr noundef %30, i1 noundef zeroext true) #16, !dbg !5198
  store i32 0, ptr %retval, align 4, !dbg !5199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5199

cleanup:                                          ; preds = %do.end28, %if.then24, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #17, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !5200
  %31 = load i32, ptr %retval, align 4, !dbg !5200
  ret i32 %31, !dbg !5200
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_pme_remove(ptr noundef %srv) #1 align 16 !dbg !5201 {
entry:
  %srv.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %srv, ptr %srv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !5203, metadata !DIExpression()), !dbg !5205
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5204, metadata !DIExpression()), !dbg !5207
  %0 = load ptr, ptr %srv.addr, align 8, !dbg !5208
  %call = call ptr @get_service_data(ptr noundef %0) #16, !dbg !5209
  store ptr %call, ptr %data, align 8, !dbg !5207
  %1 = load ptr, ptr %srv.addr, align 8, !dbg !5210
  %port = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1, !dbg !5211
  %2 = load ptr, ptr %port, align 8, !dbg !5211
  %3 = load ptr, ptr %data, align 8, !dbg !5212
  call void @pcie_pme_disable_interrupt(ptr noundef %2, ptr noundef %3) #16, !dbg !5213
  %4 = load ptr, ptr %srv.addr, align 8, !dbg !5214
  %irq = getelementptr inbounds %struct.pcie_device, ptr %4, i32 0, i32 0, !dbg !5215
  %5 = load i32, ptr %irq, align 8, !dbg !5215
  %6 = load ptr, ptr %srv.addr, align 8, !dbg !5216
  %call1 = call ptr @free_irq(i32 noundef %5, ptr noundef %6) #16, !dbg !5217
  %7 = load ptr, ptr %data, align 8, !dbg !5218
  %work = getelementptr inbounds %struct.pcie_pme_service_data, ptr %7, i32 0, i32 2, !dbg !5219
  %call2 = call zeroext i1 @cancel_work_sync(ptr noundef %work) #16, !dbg !5220
  %8 = load ptr, ptr %data, align 8, !dbg !5221
  call void @kfree(ptr noundef %8) #16, !dbg !5222
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !5223
  ret void, !dbg !5223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_pme_suspend(ptr noundef %srv) #1 align 16 !dbg !5224 {
entry:
  %retval = alloca i32, align 4
  %srv.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %port = alloca ptr, align 8
  %wakeup = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %srv, ptr %srv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !5226, metadata !DIExpression()), !dbg !5231
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !5232
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5227, metadata !DIExpression()), !dbg !5233
  %0 = load ptr, ptr %srv.addr, align 8, !dbg !5234
  %call = call ptr @get_service_data(ptr noundef %0) #16, !dbg !5235
  store ptr %call, ptr %data, align 8, !dbg !5233
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5228, metadata !DIExpression()), !dbg !5237
  %1 = load ptr, ptr %srv.addr, align 8, !dbg !5238
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 1, !dbg !5239
  %2 = load ptr, ptr %port1, align 8, !dbg !5239
  store ptr %2, ptr %port, align 8, !dbg !5237
  call void @llvm.lifetime.start.p0(i64 1, ptr %wakeup) #17, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %wakeup, metadata !5229, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5230, metadata !DIExpression()), !dbg !5243
  %3 = load ptr, ptr %port, align 8, !dbg !5244
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5246
  %call2 = call zeroext i1 @device_may_wakeup(ptr noundef %dev) #16, !dbg !5247
  br i1 %call2, label %if.then, label %if.else, !dbg !5248

if.then:                                          ; preds = %entry
  store i8 1, ptr %wakeup, align 1, !dbg !5249
  br label %if.end, !dbg !5251

if.else:                                          ; preds = %entry
  call void @down_read(ptr noundef @pci_bus_sem) #16, !dbg !5252
  %4 = load ptr, ptr %port, align 8, !dbg !5254
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 2, !dbg !5255
  %5 = load ptr, ptr %subordinate, align 8, !dbg !5255
  %call3 = call zeroext i1 @pcie_pme_check_wakeup(ptr noundef %5) #16, !dbg !5256
  %frombool = zext i1 %call3 to i8, !dbg !5257
  store i8 %frombool, ptr %wakeup, align 1, !dbg !5257
  call void @up_read(ptr noundef @pci_bus_sem) #16, !dbg !5258
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8, ptr %wakeup, align 1, !dbg !5259, !range !5056, !noundef !1004
  %tobool = trunc i8 %6 to i1, !dbg !5259
  br i1 %tobool, label %if.then4, label %if.end9, !dbg !5261

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %srv.addr, align 8, !dbg !5262
  %irq = getelementptr inbounds %struct.pcie_device, ptr %7, i32 0, i32 0, !dbg !5264
  %8 = load i32, ptr %irq, align 8, !dbg !5264
  %call5 = call i32 @enable_irq_wake(i32 noundef %8) #16, !dbg !5265
  store i32 %call5, ptr %ret, align 4, !dbg !5266
  %9 = load i32, ptr %ret, align 4, !dbg !5267
  %tobool6 = icmp ne i32 %9, 0, !dbg !5267
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5269

if.then7:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4, !dbg !5270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5270

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !5271

if.end9:                                          ; preds = %if.end8, %if.end
  %10 = load ptr, ptr %port, align 8, !dbg !5272
  %11 = load ptr, ptr %data, align 8, !dbg !5273
  call void @pcie_pme_disable_interrupt(ptr noundef %10, ptr noundef %11) #16, !dbg !5274
  %12 = load ptr, ptr %srv.addr, align 8, !dbg !5275
  %irq10 = getelementptr inbounds %struct.pcie_device, ptr %12, i32 0, i32 0, !dbg !5276
  %13 = load i32, ptr %irq10, align 8, !dbg !5276
  call void @synchronize_irq(i32 noundef %13) #16, !dbg !5277
  store i32 0, ptr %retval, align 4, !dbg !5278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5278

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5279
  call void @llvm.lifetime.end.p0(i64 1, ptr %wakeup) #17, !dbg !5279
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !5279
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !5279
  %14 = load i32, ptr %retval, align 4, !dbg !5279
  ret i32 %14, !dbg !5279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_pme_resume(ptr noundef %srv) #1 align 16 !dbg !5280 {
entry:
  %srv.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %port = alloca ptr, align 8
  store ptr %srv, ptr %srv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !5282, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5283, metadata !DIExpression()), !dbg !5289
  %0 = load ptr, ptr %srv.addr, align 8, !dbg !5290
  %call = call ptr @get_service_data(ptr noundef %0) #16, !dbg !5291
  store ptr %call, ptr %data, align 8, !dbg !5289
  %1 = load ptr, ptr %data, align 8, !dbg !5292
  %lock = getelementptr inbounds %struct.pcie_pme_service_data, ptr %1, i32 0, i32 0, !dbg !5293
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !5294
  %2 = load ptr, ptr %data, align 8, !dbg !5295
  %noirq = getelementptr inbounds %struct.pcie_pme_service_data, ptr %2, i32 0, i32 3, !dbg !5296
  %3 = load i8, ptr %noirq, align 8, !dbg !5296, !range !5056, !noundef !1004
  %tobool = trunc i8 %3 to i1, !dbg !5296
  br i1 %tobool, label %if.then, label %if.else, !dbg !5297

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5284, metadata !DIExpression()), !dbg !5299
  %4 = load ptr, ptr %srv.addr, align 8, !dbg !5300
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %4, i32 0, i32 1, !dbg !5301
  %5 = load ptr, ptr %port1, align 8, !dbg !5301
  store ptr %5, ptr %port, align 8, !dbg !5299
  %6 = load ptr, ptr %port, align 8, !dbg !5302
  call void @pcie_clear_root_pme_status(ptr noundef %6) #16, !dbg !5303
  %7 = load ptr, ptr %port, align 8, !dbg !5304
  call void @pcie_pme_interrupt_enable(ptr noundef %7, i1 noundef zeroext true) #16, !dbg !5305
  %8 = load ptr, ptr %data, align 8, !dbg !5306
  %noirq2 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %8, i32 0, i32 3, !dbg !5307
  store i8 0, ptr %noirq2, align 8, !dbg !5308
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !5309
  br label %if.end, !dbg !5310

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %srv.addr, align 8, !dbg !5311
  %irq = getelementptr inbounds %struct.pcie_device, ptr %9, i32 0, i32 0, !dbg !5313
  %10 = load i32, ptr %irq, align 8, !dbg !5313
  %call3 = call i32 @disable_irq_wake(i32 noundef %10) #16, !dbg !5314
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %data, align 8, !dbg !5315
  %lock4 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 0, !dbg !5316
  call void @spin_unlock_irq(ptr noundef %lock4) #16, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !5318
  ret i32 0, !dbg !5319
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_type(ptr noundef %dev) #3 align 16 !dbg !5320 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5328
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #16, !dbg !5329
  %conv = zext i16 %call to i32, !dbg !5329
  %and = and i32 %conv, 240, !dbg !5330
  %shr = ashr i32 %and, 4, !dbg !5331
  ret i32 %shr, !dbg !5332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5333 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5337, metadata !DIExpression()), !dbg !5339
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5338, metadata !DIExpression()), !dbg !5340
  %0 = load i64, ptr %size.addr, align 8, !dbg !5341
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5342
  %or = or i32 %1, 256, !dbg !5343
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5344
  ret ptr %call, !dbg !5345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !5346 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5354
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5355
  ret ptr %1, !dbg !5356
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !5357 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5361, metadata !DIExpression()), !dbg !5363
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !5362, metadata !DIExpression()), !dbg !5364
  ret void, !dbg !5365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5366 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  br label %do.body, !dbg !5373

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5374

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5376

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5374

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5378
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5378
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5378
  store volatile ptr %0, ptr %next, align 8, !dbg !5378
  br label %do.end3, !dbg !5378

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5374

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5380

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5381

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5383

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5381

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5385
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5385
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5385
  store volatile ptr %2, ptr %prev, align 8, !dbg !5385
  br label %do.end9, !dbg !5385

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5381

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_pme_work_fn(ptr noundef %work) #1 align 16 !dbg !5388 {
entry:
  %work.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %port = alloca ptr, align 8
  %rtsta = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5390, metadata !DIExpression()), !dbg !5396
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5391, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5392, metadata !DIExpression()), !dbg !5399
  %0 = load ptr, ptr %work.addr, align 8, !dbg !5399
  store ptr %0, ptr %__mptr, align 8, !dbg !5399
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5399
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !5399
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5400
  %2 = load ptr, ptr %tmp, align 8, !dbg !5399
  store ptr %2, ptr %data, align 8, !dbg !5398
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5394, metadata !DIExpression()), !dbg !5402
  %3 = load ptr, ptr %data, align 8, !dbg !5403
  %srv = getelementptr inbounds %struct.pcie_pme_service_data, ptr %3, i32 0, i32 1, !dbg !5404
  %4 = load ptr, ptr %srv, align 8, !dbg !5404
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %4, i32 0, i32 1, !dbg !5405
  %5 = load ptr, ptr %port1, align 8, !dbg !5405
  store ptr %5, ptr %port, align 8, !dbg !5402
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtsta) #17, !dbg !5406
  call void @llvm.dbg.declare(metadata ptr %rtsta, metadata !5395, metadata !DIExpression()), !dbg !5407
  %6 = load ptr, ptr %data, align 8, !dbg !5408
  %lock = getelementptr inbounds %struct.pcie_pme_service_data, ptr %6, i32 0, i32 0, !dbg !5409
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !5410
  br label %for.cond, !dbg !5411

for.cond:                                         ; preds = %if.end13, %if.then5, %entry
  %7 = load ptr, ptr %data, align 8, !dbg !5412
  %noirq = getelementptr inbounds %struct.pcie_pme_service_data, ptr %7, i32 0, i32 3, !dbg !5417
  %8 = load i8, ptr %noirq, align 8, !dbg !5417, !range !5056, !noundef !1004
  %tobool = trunc i8 %8 to i1, !dbg !5417
  br i1 %tobool, label %if.then, label %if.end, !dbg !5418

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !5419

if.end:                                           ; preds = %for.cond
  %9 = load ptr, ptr %port, align 8, !dbg !5420
  %call = call i32 @pcie_capability_read_dword(ptr noundef %9, i32 noundef 32, ptr noundef %rtsta) #16, !dbg !5421
  %10 = load i32, ptr %rtsta, align 4, !dbg !5422
  %cmp = icmp eq i32 %10, -1, !dbg !5422
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5424

if.then2:                                         ; preds = %if.end
  br label %for.end, !dbg !5425

if.end3:                                          ; preds = %if.end
  %11 = load i32, ptr %rtsta, align 4, !dbg !5426
  %and = and i32 %11, 65536, !dbg !5428
  %tobool4 = icmp ne i32 %and, 0, !dbg !5428
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !5429

if.then5:                                         ; preds = %if.end3
  %12 = load ptr, ptr %port, align 8, !dbg !5430
  call void @pcie_clear_root_pme_status(ptr noundef %12) #16, !dbg !5432
  %13 = load ptr, ptr %data, align 8, !dbg !5433
  %lock6 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %13, i32 0, i32 0, !dbg !5434
  call void @spin_unlock_irq(ptr noundef %lock6) #16, !dbg !5435
  %14 = load ptr, ptr %port, align 8, !dbg !5436
  %15 = load i32, ptr %rtsta, align 4, !dbg !5437
  %and7 = and i32 %15, 65535, !dbg !5438
  %conv = trunc i32 %and7 to i16, !dbg !5437
  call void @pcie_pme_handle_request(ptr noundef %14, i16 noundef zeroext %conv) #16, !dbg !5439
  %16 = load ptr, ptr %data, align 8, !dbg !5440
  %lock8 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %16, i32 0, i32 0, !dbg !5441
  call void @spin_lock_irq(ptr noundef %lock8) #16, !dbg !5442
  br label %for.cond, !dbg !5443, !llvm.loop !5444

if.end9:                                          ; preds = %if.end3
  %17 = load i32, ptr %rtsta, align 4, !dbg !5448
  %and10 = and i32 %17, 131072, !dbg !5450
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5450
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5451

if.then12:                                        ; preds = %if.end9
  br label %for.end, !dbg !5452

if.end13:                                         ; preds = %if.end9
  %18 = load ptr, ptr %data, align 8, !dbg !5453
  %lock14 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %18, i32 0, i32 0, !dbg !5454
  call void @spin_unlock_irq(ptr noundef %lock14) #16, !dbg !5455
  call void @cpu_relax() #16, !dbg !5456
  %19 = load ptr, ptr %data, align 8, !dbg !5457
  %lock15 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %19, i32 0, i32 0, !dbg !5458
  call void @spin_lock_irq(ptr noundef %lock15) #16, !dbg !5459
  br label %for.cond, !dbg !5460, !llvm.loop !5444

for.end:                                          ; preds = %if.then12, %if.then2, %if.then
  %20 = load ptr, ptr %data, align 8, !dbg !5461
  %noirq16 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %20, i32 0, i32 3, !dbg !5463
  %21 = load i8, ptr %noirq16, align 8, !dbg !5463, !range !5056, !noundef !1004
  %tobool17 = trunc i8 %21 to i1, !dbg !5463
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5464

if.then18:                                        ; preds = %for.end
  %22 = load ptr, ptr %port, align 8, !dbg !5465
  call void @pcie_pme_interrupt_enable(ptr noundef %22, i1 noundef zeroext true) #16, !dbg !5466
  br label %if.end19, !dbg !5466

if.end19:                                         ; preds = %if.then18, %for.end
  %23 = load ptr, ptr %data, align 8, !dbg !5467
  %lock20 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %23, i32 0, i32 0, !dbg !5468
  call void @spin_unlock_irq(ptr noundef %lock20) #16, !dbg !5469
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtsta) #17, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !5470
  ret void, !dbg !5470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_service_data(ptr noundef %dev, ptr noundef %data) #3 align 16 !dbg !5471 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5475, metadata !DIExpression()), !dbg !5477
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5476, metadata !DIExpression()), !dbg !5478
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5479
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5480
  %priv_data = getelementptr inbounds %struct.pcie_device, ptr %1, i32 0, i32 3, !dbg !5481
  store ptr %0, ptr %priv_data, align 8, !dbg !5482
  ret void, !dbg !5483
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5484 dso_local void @pcie_clear_root_pme_status(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_irq(i32 noundef %irq, ptr noundef %handler, i64 noundef %flags, ptr noundef %name, ptr noundef %dev) #3 align 16 !dbg !5485 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5494, metadata !DIExpression()), !dbg !5499
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !5495, metadata !DIExpression()), !dbg !5500
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5496, metadata !DIExpression()), !dbg !5501
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5497, metadata !DIExpression()), !dbg !5502
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5498, metadata !DIExpression()), !dbg !5503
  %0 = load i32, ptr %irq.addr, align 4, !dbg !5504
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !5505
  %2 = load i64, ptr %flags.addr, align 8, !dbg !5506
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5507
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5508
  %call = call i32 @request_threaded_irq(i32 noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %2, ptr noundef %3, ptr noundef %4) #16, !dbg !5509
  ret i32 %call, !dbg !5510
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_pme_irq(i32 noundef %irq, ptr noundef %context) #1 align 16 !dbg !5511 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %port = alloca ptr, align 8
  %data = alloca ptr, align 8
  %rtsta = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5513, metadata !DIExpression()), !dbg !5524
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5514, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5515, metadata !DIExpression()), !dbg !5527
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #17, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5516, metadata !DIExpression()), !dbg !5529
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtsta) #17, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %rtsta, metadata !5517, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5518, metadata !DIExpression()), !dbg !5533
  %0 = load ptr, ptr %context.addr, align 8, !dbg !5534
  %port1 = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 1, !dbg !5535
  %1 = load ptr, ptr %port1, align 8, !dbg !5535
  store ptr %1, ptr %port, align 8, !dbg !5536
  %2 = load ptr, ptr %context.addr, align 8, !dbg !5537
  %call = call ptr @get_service_data(ptr noundef %2) #16, !dbg !5538
  store ptr %call, ptr %data, align 8, !dbg !5539
  br label %do.body, !dbg !5540

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5541

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5519, metadata !DIExpression()), !dbg !5542
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5523, metadata !DIExpression()), !dbg !5542
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5542
  %conv = zext i1 %cmp to i32, !dbg !5542
  store i32 1, ptr %tmp, align 4, !dbg !5542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !5543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !5543
  %3 = load i32, ptr %tmp, align 4, !dbg !5542
  %4 = load ptr, ptr %data, align 8, !dbg !5543
  %lock = getelementptr inbounds %struct.pcie_pme_service_data, ptr %4, i32 0, i32 0, !dbg !5543
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !5543
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #16, !dbg !5543
  store i64 %call4, ptr %flags, align 8, !dbg !5543
  br label %do.cond, !dbg !5543

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5543

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5541

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5541

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %port, align 8, !dbg !5544
  %call7 = call i32 @pcie_capability_read_dword(ptr noundef %5, i32 noundef 32, ptr noundef %rtsta) #16, !dbg !5545
  %6 = load i32, ptr %rtsta, align 4, !dbg !5546
  %cmp8 = icmp eq i32 %6, -1, !dbg !5546
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !5548

lor.lhs.false:                                    ; preds = %do.end6
  %7 = load i32, ptr %rtsta, align 4, !dbg !5549
  %and = and i32 %7, 65536, !dbg !5550
  %tobool = icmp ne i32 %and, 0, !dbg !5550
  br i1 %tobool, label %if.end, label %if.then, !dbg !5551

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  %8 = load ptr, ptr %data, align 8, !dbg !5552
  %lock10 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %8, i32 0, i32 0, !dbg !5554
  %9 = load i64, ptr %flags, align 8, !dbg !5555
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %9) #16, !dbg !5556
  store i32 0, ptr %retval, align 4, !dbg !5557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5557

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %port, align 8, !dbg !5558
  call void @pcie_pme_interrupt_enable(ptr noundef %10, i1 noundef zeroext false) #16, !dbg !5559
  %11 = load ptr, ptr %data, align 8, !dbg !5560
  %lock11 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %11, i32 0, i32 0, !dbg !5561
  %12 = load i64, ptr %flags, align 8, !dbg !5562
  call void @spin_unlock_irqrestore(ptr noundef %lock11, i64 noundef %12) #16, !dbg !5563
  %13 = load ptr, ptr %data, align 8, !dbg !5564
  %work = getelementptr inbounds %struct.pcie_pme_service_data, ptr %13, i32 0, i32 2, !dbg !5565
  %call12 = call zeroext i1 @schedule_work(ptr noundef %work) #16, !dbg !5566
  store i32 1, ptr %retval, align 4, !dbg !5567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5567

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtsta) #17, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #17, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !5568
  %14 = load i32, ptr %retval, align 4, !dbg !5568
  ret i32 %14, !dbg !5568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5569 dso_local void @kfree(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5572 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_pme_mark_devices(ptr noundef %port) #1 align 16 !dbg !5576 {
entry:
  %port.addr = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5580
  %call = call i32 @pcie_pme_can_wakeup(ptr noundef %0, ptr noundef null) #16, !dbg !5581
  %1 = load ptr, ptr %port.addr, align 8, !dbg !5582
  %call1 = call i32 @pci_pcie_type(ptr noundef %1) #16, !dbg !5584
  %cmp = icmp eq i32 %call1, 10, !dbg !5585
  br i1 %cmp, label %if.then, label %if.else, !dbg !5586

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5587
  call void @pcie_walk_rcec(ptr noundef %2, ptr noundef @pcie_pme_can_wakeup, ptr noundef null) #16, !dbg !5588
  br label %if.end4, !dbg !5588

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %port.addr, align 8, !dbg !5589
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 2, !dbg !5591
  %4 = load ptr, ptr %subordinate, align 8, !dbg !5591
  %tobool = icmp ne ptr %4, null, !dbg !5589
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5592

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %port.addr, align 8, !dbg !5593
  %subordinate3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 2, !dbg !5594
  %6 = load ptr, ptr %subordinate3, align 8, !dbg !5594
  call void @pci_walk_bus(ptr noundef %6, ptr noundef @pcie_pme_can_wakeup, ptr noundef null) #16, !dbg !5595
  br label %if.end, !dbg !5595

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void, !dbg !5596
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pcie_caps_reg(ptr noundef %dev) #3 align 16 !dbg !5597 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5603
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23, !dbg !5604
  %1 = load i16, ptr %pcie_flags_reg, align 2, !dbg !5604
  ret i16 %1, !dbg !5605
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5606 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5608, metadata !DIExpression()), !dbg !5613
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5609, metadata !DIExpression()), !dbg !5614
  %0 = load i64, ptr %size.addr, align 8, !dbg !5615
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5616
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5617

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5618
  %tobool = icmp ne i64 %2, 0, !dbg !5618
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5619

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5610, metadata !DIExpression()), !dbg !5621
  %3 = load i64, ptr %size.addr, align 8, !dbg !5622
  %cmp = icmp ugt i64 %3, 8192, !dbg !5624
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5625

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5626
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5627
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5628
  store ptr %call, ptr %retval, align 8, !dbg !5629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5629

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5630
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5630
  store i32 %call2, ptr %index, align 4, !dbg !5631
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5632
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5633
  %9 = ptrtoint ptr %8 to i64, !dbg !5633
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5634
  %idxprom = zext i32 %call3 to i64, !dbg !5635
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5635
  %10 = load i32, ptr %index, align 4, !dbg !5636
  %idxprom4 = zext i32 %10 to i64, !dbg !5635
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5635
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5635
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5637
  %13 = load i64, ptr %size.addr, align 8, !dbg !5638
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5639
  store ptr %call6, ptr %retval, align 8, !dbg !5640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5640

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5641
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5642
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5643
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5644
  store ptr %call8, ptr %retval, align 8, !dbg !5645
  br label %return, !dbg !5645

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5646
  ret ptr %16, !dbg !5646
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5647 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5648 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5652, metadata !DIExpression()), !dbg !5654
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5653, metadata !DIExpression()), !dbg !5655
  %0 = load i64, ptr %size.addr, align 8, !dbg !5656
  %tobool = icmp ne i64 %0, 0, !dbg !5656
  br i1 %tobool, label %if.end, label %if.then, !dbg !5658

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5659
  br label %return, !dbg !5659

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5660
  %cmp = icmp ule i64 %1, 8, !dbg !5662
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5663

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5664
  br label %return, !dbg !5664

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5665
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5667
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5668

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5669
  %cmp4 = icmp ule i64 %3, 96, !dbg !5670
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5671

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5673
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5675
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5676

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5677
  %cmp9 = icmp ule i64 %5, 192, !dbg !5678
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5679

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5680
  br label %return, !dbg !5680

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5681
  %cmp12 = icmp ule i64 %6, 8, !dbg !5683
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5684

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5686
  %cmp15 = icmp ule i64 %7, 16, !dbg !5688
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5689

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5690
  br label %return, !dbg !5690

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5691
  %cmp18 = icmp ule i64 %8, 32, !dbg !5693
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5694

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5695
  br label %return, !dbg !5695

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5696
  %cmp21 = icmp ule i64 %9, 64, !dbg !5698
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5699

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5701
  %cmp24 = icmp ule i64 %10, 128, !dbg !5703
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5704

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5705
  br label %return, !dbg !5705

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5706
  %cmp27 = icmp ule i64 %11, 256, !dbg !5708
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5709

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5710
  br label %return, !dbg !5710

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5711
  %cmp30 = icmp ule i64 %12, 512, !dbg !5713
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5714

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5716
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5718
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5719

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5720
  br label %return, !dbg !5720

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5721
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5723
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5724

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5725
  br label %return, !dbg !5725

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5726
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5728
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5729

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5730
  br label %return, !dbg !5730

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5731
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5733
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5734

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5735
  br label %return, !dbg !5735

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5736
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5738
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5739

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5741
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5743
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5744

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5745
  br label %return, !dbg !5745

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5746
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5748
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5749

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5751
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5753
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5754

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5755
  br label %return, !dbg !5755

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5756
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5758
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5759

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5760
  br label %return, !dbg !5760

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5761
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5763
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5764

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5765
  br label %return, !dbg !5765

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5766
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5768
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5769

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5770
  br label %return, !dbg !5770

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5771
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5773
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5774

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5776, !range !5056, !noundef !1004
  %tobool69 = trunc i8 %25 to i1, !dbg !5776
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5778

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5779

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !5780, !srcloc !5783
  unreachable, !dbg !5780

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5784

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5785

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5786

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5788

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5786

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #17, !dbg !5790, !srcloc !5792
  br label %do.end75, !dbg !5790

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5786

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5793
  br label %return, !dbg !5793

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5794
  ret i32 %26, !dbg !5794
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5795 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5801 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5805, metadata !DIExpression()), !dbg !5807
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5806, metadata !DIExpression()), !dbg !5808
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5809
  %and = and i32 %0, 17, !dbg !5809
  %cmp = icmp eq i32 %and, 0, !dbg !5809
  %lnot = xor i1 %cmp, true, !dbg !5809
  %lnot1 = xor i1 %lnot, true, !dbg !5809
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5809
  %conv = sext i32 %lnot.ext to i64, !dbg !5809
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5809
  %tobool = icmp ne i64 %expval, 0, !dbg !5809
  br i1 %tobool, label %if.then, label %if.end, !dbg !5811

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5812
  br label %return, !dbg !5812

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5813
  %and2 = and i32 %1, 1, !dbg !5815
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5815
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5816

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5817
  br label %return, !dbg !5817

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5818
  br label %return, !dbg !5818

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5820
  ret i32 %2, !dbg !5820
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5821 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5822 dso_local void @__compiletime_assert_204() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #7 align 16 !dbg !5823 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5829
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5829
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !5829
  ret void, !dbg !5830
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5831 dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #7 align 16 !dbg !5834 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5838
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5838
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !5838
  ret void, !dbg !5839
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_pme_handle_request(ptr noundef %port, i16 noundef zeroext %req_id) #1 align 16 !dbg !5840 {
entry:
  %port.addr = alloca ptr, align 8
  %req_id.addr = alloca i16, align 2
  %busnr = alloca i8, align 1
  %devfn = alloca i8, align 1
  %bus = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %found = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr44 = alloca ptr, align 8
  %tmp47 = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5844, metadata !DIExpression()), !dbg !5858
  store i16 %req_id, ptr %req_id.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %req_id.addr, metadata !5845, metadata !DIExpression()), !dbg !5859
  call void @llvm.lifetime.start.p0(i64 1, ptr %busnr) #17, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %busnr, metadata !5846, metadata !DIExpression()), !dbg !5861
  %0 = load i16, ptr %req_id.addr, align 2, !dbg !5862
  %conv = zext i16 %0 to i32, !dbg !5862
  %shr = ashr i32 %conv, 8, !dbg !5863
  %conv1 = trunc i32 %shr to i8, !dbg !5862
  store i8 %conv1, ptr %busnr, align 1, !dbg !5861
  call void @llvm.lifetime.start.p0(i64 1, ptr %devfn) #17, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %devfn, metadata !5847, metadata !DIExpression()), !dbg !5864
  %1 = load i16, ptr %req_id.addr, align 2, !dbg !5865
  %conv2 = zext i16 %1 to i32, !dbg !5865
  %and = and i32 %conv2, 255, !dbg !5866
  %conv3 = trunc i32 %and to i8, !dbg !5865
  store i8 %conv3, ptr %devfn, align 1, !dbg !5864
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #17, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5848, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5849, metadata !DIExpression()), !dbg !5870
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #17, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %found, metadata !5850, metadata !DIExpression()), !dbg !5872
  store i8 0, ptr %found, align 1, !dbg !5872
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5873
  %devfn4 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 6, !dbg !5875
  %3 = load i32, ptr %devfn4, align 8, !dbg !5875
  %4 = load i8, ptr %devfn, align 1, !dbg !5876
  %conv5 = zext i8 %4 to i32, !dbg !5876
  %cmp = icmp eq i32 %3, %conv5, !dbg !5877
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !5878

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %port.addr, align 8, !dbg !5879
  %bus7 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1, !dbg !5880
  %6 = load ptr, ptr %bus7, align 8, !dbg !5880
  %number = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 12, !dbg !5881
  %7 = load i8, ptr %number, align 8, !dbg !5881
  %conv8 = zext i8 %7 to i32, !dbg !5879
  %8 = load i8, ptr %busnr, align 1, !dbg !5882
  %conv9 = zext i8 %8 to i32, !dbg !5882
  %cmp10 = icmp eq i32 %conv8, %conv9, !dbg !5883
  br i1 %cmp10, label %if.then, label %if.end21, !dbg !5884

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %port.addr, align 8, !dbg !5885
  %pme_poll = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 30, !dbg !5888
  %bf.load = load i24, ptr %pme_poll, align 1, !dbg !5888
  %bf.lshr = lshr i24 %bf.load, 6, !dbg !5888
  %bf.clear = and i24 %bf.lshr, 1, !dbg !5888
  %bf.cast = zext i24 %bf.clear to i32, !dbg !5888
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5885
  br i1 %tobool, label %if.then12, label %if.end, !dbg !5889

if.then12:                                        ; preds = %if.then
  %10 = load ptr, ptr %port.addr, align 8, !dbg !5890
  %pme_poll13 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 30, !dbg !5891
  %bf.load14 = load i24, ptr %pme_poll13, align 1, !dbg !5892
  %bf.clear15 = and i24 %bf.load14, -65, !dbg !5892
  %bf.set = or i24 %bf.clear15, 0, !dbg !5892
  store i24 %bf.set, ptr %pme_poll13, align 1, !dbg !5892
  br label %if.end, !dbg !5890

if.end:                                           ; preds = %if.then12, %if.then
  %11 = load ptr, ptr %port.addr, align 8, !dbg !5893
  %call = call zeroext i1 @pci_check_pme_status(ptr noundef %11) #16, !dbg !5895
  br i1 %call, label %if.then16, label %if.else, !dbg !5896

if.then16:                                        ; preds = %if.end
  %12 = load ptr, ptr %port.addr, align 8, !dbg !5897
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !5899
  %call18 = call i32 @pm_request_resume(ptr noundef %dev17) #16, !dbg !5900
  store i8 1, ptr %found, align 1, !dbg !5901
  br label %if.end20, !dbg !5902

if.else:                                          ; preds = %if.end
  call void @down_read(ptr noundef @pci_bus_sem) #16, !dbg !5903
  %13 = load ptr, ptr %port.addr, align 8, !dbg !5905
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 2, !dbg !5906
  %14 = load ptr, ptr %subordinate, align 8, !dbg !5906
  %call19 = call zeroext i1 @pcie_pme_walk_bus(ptr noundef %14) #16, !dbg !5907
  %frombool = zext i1 %call19 to i8, !dbg !5908
  store i8 %frombool, ptr %found, align 1, !dbg !5908
  call void @up_read(ptr noundef @pci_bus_sem) #16, !dbg !5909
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  br label %out, !dbg !5910

if.end21:                                         ; preds = %land.lhs.true, %entry
  %15 = load ptr, ptr %port.addr, align 8, !dbg !5911
  %bus22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 1, !dbg !5912
  %16 = load ptr, ptr %bus22, align 8, !dbg !5912
  %call23 = call i32 @pci_domain_nr(ptr noundef %16) #16, !dbg !5913
  %17 = load i8, ptr %busnr, align 1, !dbg !5914
  %conv24 = zext i8 %17 to i32, !dbg !5914
  %call25 = call ptr @pci_find_bus(i32 noundef %call23, i32 noundef %conv24) #16, !dbg !5915
  store ptr %call25, ptr %bus, align 8, !dbg !5916
  %18 = load ptr, ptr %bus, align 8, !dbg !5917
  %tobool26 = icmp ne ptr %18, null, !dbg !5917
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5919

if.then27:                                        ; preds = %if.end21
  br label %out, !dbg !5920

if.end28:                                         ; preds = %if.end21
  %19 = load ptr, ptr %bus, align 8, !dbg !5921
  %20 = load i8, ptr %devfn, align 1, !dbg !5922
  %call29 = call zeroext i1 @pcie_pme_from_pci_bridge(ptr noundef %19, i8 noundef zeroext %20) #16, !dbg !5923
  %frombool30 = zext i1 %call29 to i8, !dbg !5924
  store i8 %frombool30, ptr %found, align 1, !dbg !5924
  %21 = load i8, ptr %found, align 1, !dbg !5925, !range !5056, !noundef !1004
  %tobool31 = trunc i8 %21 to i1, !dbg !5925
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5927

if.then32:                                        ; preds = %if.end28
  br label %out, !dbg !5928

if.end33:                                         ; preds = %if.end28
  call void @down_read(ptr noundef @pci_bus_sem) #16, !dbg !5929
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5851, metadata !DIExpression()), !dbg !5930
  %22 = load ptr, ptr %bus, align 8, !dbg !5930
  %devices = getelementptr inbounds %struct.pci_bus, ptr %22, i32 0, i32 3, !dbg !5930
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5930
  %23 = load ptr, ptr %next, align 8, !dbg !5930
  store ptr %23, ptr %__mptr, align 8, !dbg !5930
  %24 = load ptr, ptr %__mptr, align 8, !dbg !5930
  %add.ptr = getelementptr i8, ptr %24, i64 0, !dbg !5930
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5931
  %25 = load ptr, ptr %tmp, align 8, !dbg !5930
  store ptr %25, ptr %dev, align 8, !dbg !5931
  br label %for.cond, !dbg !5931

for.cond:                                         ; preds = %for.inc, %if.end33
  %26 = load ptr, ptr %dev, align 8, !dbg !5932
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 0, !dbg !5932
  %27 = load ptr, ptr %bus, align 8, !dbg !5932
  %devices34 = getelementptr inbounds %struct.pci_bus, ptr %27, i32 0, i32 3, !dbg !5932
  %cmp35 = icmp eq ptr %bus_list, %devices34, !dbg !5932
  %lnot = xor i1 %cmp35, true, !dbg !5932
  br i1 %lnot, label %for.body, label %for.end, !dbg !5931

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %dev, align 8, !dbg !5933
  %call37 = call ptr @pci_dev_get(ptr noundef %28) #16, !dbg !5935
  %29 = load ptr, ptr %dev, align 8, !dbg !5936
  %devfn38 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 6, !dbg !5938
  %30 = load i32, ptr %devfn38, align 8, !dbg !5938
  %31 = load i8, ptr %devfn, align 1, !dbg !5939
  %conv39 = zext i8 %31 to i32, !dbg !5939
  %cmp40 = icmp eq i32 %30, %conv39, !dbg !5940
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !5941

if.then42:                                        ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !5942
  br label %for.end, !dbg !5944

if.end43:                                         ; preds = %for.body
  %32 = load ptr, ptr %dev, align 8, !dbg !5945
  call void @pci_dev_put(ptr noundef %32) #16, !dbg !5946
  br label %for.inc, !dbg !5947

for.inc:                                          ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr44) #17, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %__mptr44, metadata !5854, metadata !DIExpression()), !dbg !5948
  %33 = load ptr, ptr %dev, align 8, !dbg !5948
  %bus_list45 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 0, !dbg !5948
  %next46 = getelementptr inbounds %struct.list_head, ptr %bus_list45, i32 0, i32 0, !dbg !5948
  %34 = load ptr, ptr %next46, align 8, !dbg !5948
  store ptr %34, ptr %__mptr44, align 8, !dbg !5948
  %35 = load ptr, ptr %__mptr44, align 8, !dbg !5948
  %add.ptr48 = getelementptr i8, ptr %35, i64 0, !dbg !5948
  store ptr %add.ptr48, ptr %tmp47, align 8, !dbg !5948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr44) #17, !dbg !5932
  %36 = load ptr, ptr %tmp47, align 8, !dbg !5948
  store ptr %36, ptr %dev, align 8, !dbg !5932
  br label %for.cond, !dbg !5932, !llvm.loop !5949

for.end:                                          ; preds = %if.then42, %for.cond
  call void @up_read(ptr noundef @pci_bus_sem) #16, !dbg !5952
  %37 = load i8, ptr %found, align 1, !dbg !5953, !range !5056, !noundef !1004
  %tobool49 = trunc i8 %37 to i1, !dbg !5953
  br i1 %tobool49, label %if.then50, label %if.else70, !dbg !5955

if.then50:                                        ; preds = %for.end
  %38 = load ptr, ptr %dev, align 8, !dbg !5956
  %call51 = call zeroext i1 @pci_check_pme_status(ptr noundef %38) #16, !dbg !5958
  %frombool52 = zext i1 %call51 to i8, !dbg !5959
  store i8 %frombool52, ptr %found, align 1, !dbg !5959
  %39 = load i8, ptr %found, align 1, !dbg !5960, !range !5056, !noundef !1004
  %tobool53 = trunc i8 %39 to i1, !dbg !5960
  br i1 %tobool53, label %if.then54, label %if.end69, !dbg !5962

if.then54:                                        ; preds = %if.then50
  %40 = load ptr, ptr %dev, align 8, !dbg !5963
  %pme_poll55 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 30, !dbg !5966
  %bf.load56 = load i24, ptr %pme_poll55, align 1, !dbg !5966
  %bf.lshr57 = lshr i24 %bf.load56, 6, !dbg !5966
  %bf.clear58 = and i24 %bf.lshr57, 1, !dbg !5966
  %bf.cast59 = zext i24 %bf.clear58 to i32, !dbg !5966
  %tobool60 = icmp ne i32 %bf.cast59, 0, !dbg !5963
  br i1 %tobool60, label %if.then61, label %if.end66, !dbg !5967

if.then61:                                        ; preds = %if.then54
  %41 = load ptr, ptr %dev, align 8, !dbg !5968
  %pme_poll62 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 30, !dbg !5969
  %bf.load63 = load i24, ptr %pme_poll62, align 1, !dbg !5970
  %bf.clear64 = and i24 %bf.load63, -65, !dbg !5970
  %bf.set65 = or i24 %bf.clear64, 0, !dbg !5970
  store i24 %bf.set65, ptr %pme_poll62, align 1, !dbg !5970
  br label %if.end66, !dbg !5968

if.end66:                                         ; preds = %if.then61, %if.then54
  %42 = load ptr, ptr %dev, align 8, !dbg !5971
  call void @pci_wakeup_event(ptr noundef %42) #16, !dbg !5972
  %43 = load ptr, ptr %dev, align 8, !dbg !5973
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 37, !dbg !5974
  %call68 = call i32 @pm_request_resume(ptr noundef %dev67) #16, !dbg !5975
  br label %if.end69, !dbg !5976

if.end69:                                         ; preds = %if.end66, %if.then50
  %44 = load ptr, ptr %dev, align 8, !dbg !5977
  call void @pci_dev_put(ptr noundef %44) #16, !dbg !5978
  br label %if.end83, !dbg !5979

if.else70:                                        ; preds = %for.end
  %45 = load i8, ptr %devfn, align 1, !dbg !5980
  %tobool71 = icmp ne i8 %45, 0, !dbg !5980
  br i1 %tobool71, label %if.then72, label %if.end82, !dbg !5982

if.then72:                                        ; preds = %if.else70
  br label %do.body, !dbg !5983

do.body:                                          ; preds = %if.then72
  br label %do.cond, !dbg !5986

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5986

do.end:                                           ; preds = %do.cond
  %46 = load ptr, ptr %port.addr, align 8, !dbg !5983
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 37, !dbg !5983
  %47 = load i8, ptr %busnr, align 1, !dbg !5983
  %conv74 = zext i8 %47 to i32, !dbg !5983
  %48 = load i8, ptr %devfn, align 1, !dbg !5983
  %conv75 = zext i8 %48 to i32, !dbg !5983
  %shr76 = ashr i32 %conv75, 3, !dbg !5983
  %and77 = and i32 %shr76, 31, !dbg !5983
  %49 = load i8, ptr %devfn, align 1, !dbg !5983
  %conv78 = zext i8 %49 to i32, !dbg !5983
  %and79 = and i32 %conv78, 7, !dbg !5983
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev73, ptr noundef @.str.5, i32 noundef %conv74, i32 noundef %and77, i32 noundef %and79) #19, !dbg !5983
  %50 = load ptr, ptr %bus, align 8, !dbg !5988
  %call80 = call zeroext i1 @pcie_pme_from_pci_bridge(ptr noundef %50, i8 noundef zeroext 0) #16, !dbg !5989
  %frombool81 = zext i1 %call80 to i8, !dbg !5990
  store i8 %frombool81, ptr %found, align 1, !dbg !5990
  br label %if.end82, !dbg !5991

if.end82:                                         ; preds = %do.end, %if.else70
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end69
  br label %out, !dbg !5953

out:                                              ; preds = %if.end83, %if.then32, %if.then27, %if.end20
  call void @llvm.dbg.label(metadata !5857), !dbg !5992
  %51 = load i8, ptr %found, align 1, !dbg !5993, !range !5056, !noundef !1004
  %tobool84 = trunc i8 %51 to i1, !dbg !5993
  br i1 %tobool84, label %if.end90, label %if.then85, !dbg !5995

if.then85:                                        ; preds = %out
  br label %do.body86, !dbg !5996

do.body86:                                        ; preds = %if.then85
  br label %do.cond87, !dbg !5998

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5998

do.end88:                                         ; preds = %do.cond87
  %52 = load ptr, ptr %port.addr, align 8, !dbg !5996
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 37, !dbg !5996
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev89, ptr noundef @.str.6) #19, !dbg !5996
  br label %if.end90, !dbg !6000

if.end90:                                         ; preds = %do.end88, %out
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #17, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #17, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 1, ptr %devfn) #17, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 1, ptr %busnr) #17, !dbg !6001
  ret void, !dbg !6001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #7 align 16 !dbg !6002 {
entry:
  call void @rep_nop() #16, !dbg !6004
  ret void, !dbg !6005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6006 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6010 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local zeroext i1 @pci_check_pme_status(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_request_resume(ptr noundef %dev) #3 align 16 !dbg !6014 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6017, metadata !DIExpression()), !dbg !6018
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6019
  %call = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 1) #16, !dbg !6020
  ret i32 %call, !dbg !6021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6022 dso_local void @down_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_pme_walk_bus(ptr noundef %bus) #1 align 16 !dbg !6026 {
entry:
  %bus.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ret = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6030, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6031, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #17, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6032, metadata !DIExpression()), !dbg !6043
  store i8 0, ptr %ret, align 1, !dbg !6043
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6033, metadata !DIExpression()), !dbg !6044
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6044
  %devices = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3, !dbg !6044
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !6044
  %1 = load ptr, ptr %next, align 8, !dbg !6044
  store ptr %1, ptr %__mptr, align 8, !dbg !6044
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6044
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !6044
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6044
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6045
  %3 = load ptr, ptr %tmp, align 8, !dbg !6044
  store ptr %3, ptr %dev, align 8, !dbg !6045
  br label %for.cond, !dbg !6045

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !6046
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 0, !dbg !6046
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6046
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !6046
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !6046
  %lnot = xor i1 %cmp, true, !dbg !6046
  br i1 %lnot, label %for.body, label %for.end, !dbg !6045

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !6047
  %call = call zeroext i1 @pci_is_pcie(ptr noundef %6) #16, !dbg !6050
  br i1 %call, label %if.end9, label %land.lhs.true, !dbg !6051

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %dev, align 8, !dbg !6052
  %call2 = call zeroext i1 @pci_check_pme_status(ptr noundef %7) #16, !dbg !6053
  br i1 %call2, label %if.then, label %if.end9, !dbg !6054

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %dev, align 8, !dbg !6055
  %pme_poll = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 30, !dbg !6058
  %bf.load = load i24, ptr %pme_poll, align 1, !dbg !6058
  %bf.lshr = lshr i24 %bf.load, 6, !dbg !6058
  %bf.clear = and i24 %bf.lshr, 1, !dbg !6058
  %bf.cast = zext i24 %bf.clear to i32, !dbg !6058
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6055
  br i1 %tobool, label %if.then3, label %if.end, !dbg !6059

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %dev, align 8, !dbg !6060
  %pme_poll4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 30, !dbg !6061
  %bf.load5 = load i24, ptr %pme_poll4, align 1, !dbg !6062
  %bf.clear6 = and i24 %bf.load5, -65, !dbg !6062
  %bf.set = or i24 %bf.clear6, 0, !dbg !6062
  store i24 %bf.set, ptr %pme_poll4, align 1, !dbg !6062
  br label %if.end, !dbg !6060

if.end:                                           ; preds = %if.then3, %if.then
  %10 = load ptr, ptr %dev, align 8, !dbg !6063
  call void @pci_wakeup_event(ptr noundef %10) #16, !dbg !6064
  %11 = load ptr, ptr %dev, align 8, !dbg !6065
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !6066
  %call8 = call i32 @pm_request_resume(ptr noundef %dev7) #16, !dbg !6067
  store i8 1, ptr %ret, align 1, !dbg !6068
  br label %if.end9, !dbg !6069

if.end9:                                          ; preds = %if.end, %land.lhs.true, %for.body
  %12 = load ptr, ptr %dev, align 8, !dbg !6070
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 2, !dbg !6072
  %13 = load ptr, ptr %subordinate, align 8, !dbg !6072
  %tobool10 = icmp ne ptr %13, null, !dbg !6070
  br i1 %tobool10, label %land.lhs.true11, label %if.end15, !dbg !6073

land.lhs.true11:                                  ; preds = %if.end9
  %14 = load ptr, ptr %dev, align 8, !dbg !6074
  %subordinate12 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 2, !dbg !6075
  %15 = load ptr, ptr %subordinate12, align 8, !dbg !6075
  %call13 = call zeroext i1 @pcie_pme_walk_bus(ptr noundef %15) #16, !dbg !6076
  br i1 %call13, label %if.then14, label %if.end15, !dbg !6077

if.then14:                                        ; preds = %land.lhs.true11
  store i8 1, ptr %ret, align 1, !dbg !6078
  br label %if.end15, !dbg !6079

if.end15:                                         ; preds = %if.then14, %land.lhs.true11, %if.end9
  br label %for.inc, !dbg !6080

for.inc:                                          ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #17, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !6036, metadata !DIExpression()), !dbg !6081
  %16 = load ptr, ptr %dev, align 8, !dbg !6081
  %bus_list17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 0, !dbg !6081
  %next18 = getelementptr inbounds %struct.list_head, ptr %bus_list17, i32 0, i32 0, !dbg !6081
  %17 = load ptr, ptr %next18, align 8, !dbg !6081
  store ptr %17, ptr %__mptr16, align 8, !dbg !6081
  %18 = load ptr, ptr %__mptr16, align 8, !dbg !6081
  %add.ptr20 = getelementptr i8, ptr %18, i64 0, !dbg !6081
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !6081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #17, !dbg !6046
  %19 = load ptr, ptr %tmp19, align 8, !dbg !6081
  store ptr %19, ptr %dev, align 8, !dbg !6046
  br label %for.cond, !dbg !6046, !llvm.loop !6082

for.end:                                          ; preds = %for.cond
  %20 = load i8, ptr %ret, align 1, !dbg !6084, !range !5056, !noundef !1004
  %tobool21 = trunc i8 %20 to i1, !dbg !6084
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #17, !dbg !6085
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6085
  ret i1 %tobool21, !dbg !6086
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6087 dso_local void @up_read(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6088 dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #3 align 16 !dbg !6091 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6096
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #16, !dbg !6097
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !6098
  %1 = load i32, ptr %domain, align 8, !dbg !6098
  ret i32 %1, !dbg !6099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_pme_from_pci_bridge(ptr noundef %bus, i8 noundef zeroext %devfn) #1 align 16 !dbg !6100 {
entry:
  %retval = alloca i1, align 1
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i8, align 1
  %dev = alloca ptr, align 8
  %found = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6104, metadata !DIExpression()), !dbg !6108
  store i8 %devfn, ptr %devfn.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !6105, metadata !DIExpression()), !dbg !6109
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6106, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #17, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %found, metadata !6107, metadata !DIExpression()), !dbg !6113
  store i8 0, ptr %found, align 1, !dbg !6113
  %0 = load i8, ptr %devfn.addr, align 1, !dbg !6114
  %tobool = icmp ne i8 %0, 0, !dbg !6114
  br i1 %tobool, label %if.then, label %if.end, !dbg !6116

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6117

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6118
  %self = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 4, !dbg !6119
  %2 = load ptr, ptr %self, align 8, !dbg !6119
  %call = call ptr @pci_dev_get(ptr noundef %2) #16, !dbg !6120
  store ptr %call, ptr %dev, align 8, !dbg !6121
  %3 = load ptr, ptr %dev, align 8, !dbg !6122
  %tobool1 = icmp ne ptr %3, null, !dbg !6122
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6124

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6125

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %dev, align 8, !dbg !6126
  %call4 = call zeroext i1 @pci_is_pcie(ptr noundef %4) #16, !dbg !6128
  br i1 %call4, label %land.lhs.true, label %if.end10, !dbg !6129

land.lhs.true:                                    ; preds = %if.end3
  %5 = load ptr, ptr %dev, align 8, !dbg !6130
  %call5 = call i32 @pci_pcie_type(ptr noundef %5) #16, !dbg !6131
  %cmp = icmp eq i32 %call5, 7, !dbg !6132
  br i1 %cmp, label %if.then6, label %if.end10, !dbg !6133

if.then6:                                         ; preds = %land.lhs.true
  call void @down_read(ptr noundef @pci_bus_sem) #16, !dbg !6134
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !6136
  %call7 = call zeroext i1 @pcie_pme_walk_bus(ptr noundef %6) #16, !dbg !6138
  br i1 %call7, label %if.then8, label %if.end9, !dbg !6139

if.then8:                                         ; preds = %if.then6
  store i8 1, ptr %found, align 1, !dbg !6140
  br label %if.end9, !dbg !6141

if.end9:                                          ; preds = %if.then8, %if.then6
  call void @up_read(ptr noundef @pci_bus_sem) #16, !dbg !6142
  br label %if.end10, !dbg !6143

if.end10:                                         ; preds = %if.end9, %land.lhs.true, %if.end3
  %7 = load ptr, ptr %dev, align 8, !dbg !6144
  call void @pci_dev_put(ptr noundef %7) #16, !dbg !6145
  %8 = load i8, ptr %found, align 1, !dbg !6146, !range !5056, !noundef !1004
  %tobool11 = trunc i8 %8 to i1, !dbg !6146
  store i1 %tobool11, ptr %retval, align 1, !dbg !6147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6147

cleanup:                                          ; preds = %if.end10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #17, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6148
  %9 = load i1, ptr %retval, align 1, !dbg !6148
  ret i1 %9, !dbg !6148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6149 dso_local ptr @pci_dev_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6152 dso_local void @pci_dev_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_wakeup_event(ptr noundef %dev) #3 align 16 !dbg !6153 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6157
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6158
  call void @pm_wakeup_event(ptr noundef %dev1, i32 noundef 100) #16, !dbg !6159
  ret void, !dbg !6160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6161 dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_pcie(ptr noundef %dev) #3 align 16 !dbg !6164 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6168
  %call = call i32 @pci_pcie_cap(ptr noundef %0) #16, !dbg !6169
  %tobool = icmp ne i32 %call, 0, !dbg !6169
  ret i1 %tobool, !dbg !6170
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_cap(ptr noundef %dev) #3 align 16 !dbg !6171 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6175
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17, !dbg !6176
  %1 = load i8, ptr %pcie_cap, align 4, !dbg !6176
  %conv = zext i8 %1 to i32, !dbg !6175
  ret i32 %conv, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #3 align 16 !dbg !6178 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6196
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !6197
  %1 = load ptr, ptr %sysdata, align 8, !dbg !6197
  ret ptr %1, !dbg !6198
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pm_wakeup_event(ptr noundef %dev, i32 noundef %msec) #3 align 16 !dbg !6199 {
entry:
  %dev.addr = alloca ptr, align 8
  %msec.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6203, metadata !DIExpression()), !dbg !6205
  store i32 %msec, ptr %msec.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msec.addr, metadata !6204, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6207
  %1 = load i32, ptr %msec.addr, align 4, !dbg !6208
  call void @pm_wakeup_dev_event(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #16, !dbg !6209
  ret void, !dbg !6210
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6211 dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #7 align 16 !dbg !6214 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !6215, !srcloc !6216
  ret void, !dbg !6217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6218 dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_service_data(ptr noundef %dev) #3 align 16 !dbg !6221 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6225, metadata !DIExpression()), !dbg !6226
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6227
  %priv_data = getelementptr inbounds %struct.pcie_device, ptr %0, i32 0, i32 3, !dbg !6228
  %1 = load ptr, ptr %priv_data, align 8, !dbg !6228
  ret ptr %1, !dbg !6229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6230 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #7 align 16 !dbg !6233 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6237, metadata !DIExpression()), !dbg !6243
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6238, metadata !DIExpression()), !dbg !6244
  br label %do.body, !dbg !6245

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6239, metadata !DIExpression()), !dbg !6246
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6242, metadata !DIExpression()), !dbg !6246
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6246
  %conv = zext i1 %cmp to i32, !dbg !6246
  store i32 1, ptr %tmp, align 4, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !6247
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !6247
  %0 = load i32, ptr %tmp, align 4, !dbg !6246
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6247
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6247
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6247
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !6247
  br label %do.end, !dbg !6247

do.end:                                           ; preds = %do.body
  ret void, !dbg !6248
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #3 align 16 !dbg !6249 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  %0 = load ptr, ptr @system_wq, align 8, !dbg !6255
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6256
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #16, !dbg !6257
  ret i1 %call, !dbg !6258
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6259 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !6262 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6266, metadata !DIExpression()), !dbg !6268
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6270
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6271
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #16, !dbg !6272
  ret i1 %call, !dbg !6273
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6274 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcie_pme_can_wakeup(ptr noundef %dev, ptr noundef %ign) #1 align 16 !dbg !6277 {
entry:
  %dev.addr = alloca ptr, align 8
  %ign.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6281, metadata !DIExpression()), !dbg !6283
  store ptr %ign, ptr %ign.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ign.addr, metadata !6282, metadata !DIExpression()), !dbg !6284
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6285
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 37, !dbg !6286
  call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #16, !dbg !6287
  ret i32 0, !dbg !6288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6289 dso_local void @pcie_walk_rcec(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6293 dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6296 dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcie_pme_disable_interrupt(ptr noundef %port, ptr noundef %data) #1 align 16 !dbg !6297 {
entry:
  %port.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6301, metadata !DIExpression()), !dbg !6303
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6302, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6305
  %lock = getelementptr inbounds %struct.pcie_pme_service_data, ptr %0, i32 0, i32 0, !dbg !6306
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !6307
  %1 = load ptr, ptr %port.addr, align 8, !dbg !6308
  call void @pcie_pme_interrupt_enable(ptr noundef %1, i1 noundef zeroext false) #16, !dbg !6309
  %2 = load ptr, ptr %port.addr, align 8, !dbg !6310
  call void @pcie_clear_root_pme_status(ptr noundef %2) #16, !dbg !6311
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6312
  %noirq = getelementptr inbounds %struct.pcie_pme_service_data, ptr %3, i32 0, i32 3, !dbg !6313
  store i8 1, ptr %noirq, align 8, !dbg !6314
  %4 = load ptr, ptr %data.addr, align 8, !dbg !6315
  %lock1 = getelementptr inbounds %struct.pcie_pme_service_data, ptr %4, i32 0, i32 0, !dbg !6316
  call void @spin_unlock_irq(ptr noundef %lock1) #16, !dbg !6317
  ret void, !dbg !6318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local ptr @free_irq(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6322 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_may_wakeup(ptr noundef %dev) #3 align 16 !dbg !6323 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6327, metadata !DIExpression()), !dbg !6328
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6329
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !6330
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !6331
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !6331
  %bf.clear = and i16 %bf.load, 1, !dbg !6331
  %bf.cast = zext i16 %bf.clear to i32, !dbg !6331
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6329
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6332

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6333
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !6334
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !6335
  %2 = load ptr, ptr %wakeup, align 8, !dbg !6335
  %tobool2 = icmp ne ptr %2, null, !dbg !6336
  %lnot = xor i1 %tobool2, true, !dbg !6336
  %lnot3 = xor i1 %lnot, true, !dbg !6337
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !6338
  ret i1 %3, !dbg !6339
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_pme_check_wakeup(ptr noundef %bus) #1 align 16 !dbg !6340 {
entry:
  %retval = alloca i1, align 1
  %bus.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6342, metadata !DIExpression()), !dbg !6350
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !6351
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6343, metadata !DIExpression()), !dbg !6352
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6353
  %tobool = icmp ne ptr %0, null, !dbg !6353
  br i1 %tobool, label %if.end, label %if.then, !dbg !6355

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6356

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6344, metadata !DIExpression()), !dbg !6357
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !6357
  %devices = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3, !dbg !6357
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !6357
  %2 = load ptr, ptr %next, align 8, !dbg !6357
  store ptr %2, ptr %__mptr, align 8, !dbg !6357
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6357
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !6357
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6358
  %4 = load ptr, ptr %tmp, align 8, !dbg !6357
  store ptr %4, ptr %dev, align 8, !dbg !6358
  br label %for.cond, !dbg !6358

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %dev, align 8, !dbg !6359
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 0, !dbg !6359
  %6 = load ptr, ptr %bus.addr, align 8, !dbg !6359
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 3, !dbg !6359
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !6359
  %lnot = xor i1 %cmp, true, !dbg !6359
  br i1 %lnot, label %for.body, label %for.end, !dbg !6358

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dev, align 8, !dbg !6360
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !6362
  %call = call zeroext i1 @device_may_wakeup(ptr noundef %dev2) #16, !dbg !6363
  br i1 %call, label %if.then4, label %lor.lhs.false, !dbg !6364

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %dev, align 8, !dbg !6365
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 2, !dbg !6366
  %9 = load ptr, ptr %subordinate, align 8, !dbg !6366
  %call3 = call zeroext i1 @pcie_pme_check_wakeup(ptr noundef %9) #16, !dbg !6367
  br i1 %call3, label %if.then4, label %if.end5, !dbg !6368

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  store i1 true, ptr %retval, align 1, !dbg !6369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6369

if.end5:                                          ; preds = %lor.lhs.false
  br label %for.inc, !dbg !6370

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #17, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !6347, metadata !DIExpression()), !dbg !6371
  %10 = load ptr, ptr %dev, align 8, !dbg !6371
  %bus_list7 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 0, !dbg !6371
  %next8 = getelementptr inbounds %struct.list_head, ptr %bus_list7, i32 0, i32 0, !dbg !6371
  %11 = load ptr, ptr %next8, align 8, !dbg !6371
  store ptr %11, ptr %__mptr6, align 8, !dbg !6371
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !6371
  %add.ptr10 = getelementptr i8, ptr %12, i64 0, !dbg !6371
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !6371
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #17, !dbg !6359
  %13 = load ptr, ptr %tmp9, align 8, !dbg !6371
  store ptr %13, ptr %dev, align 8, !dbg !6359
  br label %for.cond, !dbg !6359, !llvm.loop !6372

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6374

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6375
  %14 = load i1, ptr %retval, align 1, !dbg !6375
  ret i1 %14, !dbg !6375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @enable_irq_wake(i32 noundef %irq) #3 align 16 !dbg !6376 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6380, metadata !DIExpression()), !dbg !6381
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6382
  %call = call i32 @irq_set_irq_wake(i32 noundef %0, i32 noundef 1) #16, !dbg !6383
  ret i32 %call, !dbg !6384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6385 dso_local void @synchronize_irq(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6389 dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @disable_irq_wake(i32 noundef %irq) #3 align 16 !dbg !6392 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6394, metadata !DIExpression()), !dbg !6395
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6396
  %call = call i32 @irq_set_irq_wake(i32 noundef %0, i32 noundef 0) #16, !dbg !6397
  ret i32 %call, !dbg !6398
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033}
!llvm.ident = !{!5034}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_pcie_pme_setup", scope: !2, file: !3, line: 39, type: !5023, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/pcie/.pme.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/pcie/pme\22 -D KBUILD_BASENAME=\22pme\22 -D KBUILD_MODNAME=\22pme\22 -D __KBUILD_MODNAME=kmod_pme -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/pcie/pme.ll drivers/pci/pcie/pme.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !188, globals: !4949, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/pcie/pme.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cec4fa0ee4d2a1e529bccbc115180e9a")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !172, !182}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 30, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!149 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!150 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!151 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!152 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!153 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!154 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!155 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!156 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!157 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!158 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!159 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!160 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!161 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!162 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!163 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!164 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!165 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!166 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!167 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!168 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!169 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!170 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!171 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !173, line: 364, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!178 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!180 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!181 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !183, line: 11, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!184 = !{!185, !186, !187}
!185 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!186 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!187 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!188 = !{!189, !191, !192, !199, !200, !315, !253, !247}
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !190, line: 154, baseType: !7)
!190 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !190, line: 190, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !190, line: 191, baseType: !194, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !195, file: !190, line: 191, baseType: !194, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_pme_service_data", file: !3, line: 41, size: 448, elements: !202)
!202 = !{!203, !246, !4947, !4948}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !201, file: !3, line: 42, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !205, line: 29, baseType: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !205, line: 17, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 18, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 18, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !209, file: !205, line: 19, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !213, line: 14, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !212, file: !213, line: 15, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !217, line: 44, baseType: !218)
!217 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !217, line: 14, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 15, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 15, size: 32, elements: !222)
!222 = !{!223, !228, !238}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !221, file: !217, line: 16, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !190, line: 174, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 172, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !225, file: !190, line: 173, baseType: !109, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !217, line: 24, baseType: !229, size: 16)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !217, line: 24, size: 16, elements: !230)
!230 = !{!231, !237}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !229, file: !217, line: 25, baseType: !232, size: 8)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !233, line: 17, baseType: !234)
!233 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !235, line: 21, baseType: !236)
!235 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!236 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !229, file: !217, line: 26, baseType: !232, size: 8, offset: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !217, line: 28, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !217, line: 28, size: 32, elements: !240)
!240 = !{!241, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !239, file: !217, line: 29, baseType: !242, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !233, line: 19, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !235, line: 24, baseType: !244)
!244 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !239, file: !217, line: 30, baseType: !242, size: 16, offset: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "srv", scope: !201, file: !3, line: 43, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_device", file: !249, line: 57, size: 6080, elements: !250)
!249 = !DIFile(filename: "drivers/pci/pcie/portdrv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a1f3798a8f2f0c1256e463e7e1f544c")
!250 = !{!251, !252, !4944, !4945, !4946}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !248, file: !249, line: 58, baseType: !109, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !248, file: !249, line: 59, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !255, line: 322, size: 16640, elements: !256)
!255 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!256 = !{!257, !258, !4690, !4691, !4692, !4693, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4804, !4805, !4806, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4883, !4884, !4885, !4887, !4888, !4890, !4891, !4892, !4893, !4899, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !254, file: !255, line: 323, baseType: !195, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !254, file: !255, line: 324, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !255, line: 647, size: 8256, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !292, !293, !294, !321, !322, !326, !327, !328, !329, !330, !334, !335, !337, !4685, !4686, !4687, !4688, !4689}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !260, file: !255, line: 648, baseType: !195, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !255, line: 649, baseType: !259, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !260, file: !255, line: 650, baseType: !195, size: 128, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !260, file: !255, line: 651, baseType: !195, size: 128, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !260, file: !255, line: 652, baseType: !253, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !260, file: !255, line: 653, baseType: !195, size: 128, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !260, file: !255, line: 655, baseType: !269, size: 256, offset: 640)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !290)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !272, line: 21, size: 512, elements: !273)
!272 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!273 = !{!274, !280, !281, !285, !286, !287, !288, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !271, file: !272, line: 22, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !190, line: 164, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !190, line: 159, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !233, line: 23, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !235, line: 31, baseType: !279)
!279 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !271, file: !272, line: 23, baseType: !275, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !272, line: 24, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !272, line: 25, baseType: !191, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !271, file: !272, line: 26, baseType: !191, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !271, file: !272, line: 27, baseType: !270, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !271, file: !272, line: 27, baseType: !270, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !271, file: !272, line: 27, baseType: !270, size: 64, offset: 448)
!290 = !{!291}
!291 = !DISubrange(count: 4)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !260, file: !255, line: 656, baseType: !195, size: 128, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !260, file: !255, line: 657, baseType: !271, size: 512, offset: 1024)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !260, file: !255, line: 659, baseType: !295, size: 64, offset: 1536)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !255, line: 773, size: 320, elements: !297)
!297 = !{!298, !302, !306, !310, !317}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !296, file: !255, line: 774, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!109, !259}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !296, file: !255, line: 775, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !259}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !296, file: !255, line: 776, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!199, !259, !7, !109}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !296, file: !255, line: 777, baseType: !311, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!109, !259, !7, !109, !109, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !233, line: 21, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !235, line: 27, baseType: !7)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !296, file: !255, line: 778, baseType: !318, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!109, !259, !7, !109, !109, !315}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !260, file: !255, line: 660, baseType: !199, size: 64, offset: 1600)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !260, file: !255, line: 661, baseType: !323, size: 64, offset: 1664)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !325, line: 131, flags: DIFlagFwdDecl)
!325 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !260, file: !255, line: 663, baseType: !236, size: 8, offset: 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !260, file: !255, line: 664, baseType: !236, size: 8, offset: 1736)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !260, file: !255, line: 665, baseType: !236, size: 8, offset: 1744)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !260, file: !255, line: 666, baseType: !236, size: 8, offset: 1752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !255, line: 671, baseType: !331, size: 384, offset: 1760)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 384, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 48)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !260, file: !255, line: 673, baseType: !244, size: 16, offset: 2144)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !260, file: !255, line: 674, baseType: !336, size: 16, offset: 2160)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !255, line: 255, baseType: !244)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !260, file: !255, line: 675, baseType: !338, size: 64, offset: 2176)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !340)
!340 = !{!341, !4224, !4225, !4228, !4229, !4282, !4367, !4368, !4369, !4370, !4371, !4378, !4470, !4483, !4493, !4497, !4499, !4500, !4501, !4505, !4512, !4513, !4516, !4519, !4523, !4627, !4628, !4629, !4630, !4631, !4632, !4662, !4663, !4664, !4667, !4670, !4679, !4680, !4681, !4682, !4683, !4684}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !339, file: !94, line: 706, baseType: !342, size: 512)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !343, line: 64, size: 512, elements: !344)
!343 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!344 = !{!345, !346, !347, !349, !396, !4111, !4214, !4219, !4220, !4221, !4222, !4223}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !343, line: 65, baseType: !282, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !342, file: !343, line: 66, baseType: !195, size: 128, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !342, file: !343, line: 67, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !342, file: !343, line: 68, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !343, line: 168, size: 768, elements: !352)
!352 = !{!353, !354, !355, !356}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !351, file: !343, line: 169, baseType: !195, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !351, file: !343, line: 170, baseType: !204, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !351, file: !343, line: 171, baseType: !342, size: 512, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !351, file: !343, line: 172, baseType: !357, size: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !343, line: 133, size: 192, elements: !360)
!360 = !{!361, !368, !373}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !359, file: !343, line: 134, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!109, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !343, line: 135, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!282, !366}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !359, file: !343, line: 136, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!109, !366, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !343, line: 125, size: 20736, elements: !380)
!380 = !{!381, !386, !390, !391, !395}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !379, file: !343, line: 126, baseType: !382, size: 192)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 192, elements: !384)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!384 = !{!385}
!385 = !DISubrange(count: 3)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !379, file: !343, line: 127, baseType: !387, size: 4096, offset: 192)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 4096, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !379, file: !343, line: 128, baseType: !109, size: 32, offset: 4288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !379, file: !343, line: 129, baseType: !392, size: 16384, offset: 4320)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 16384, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 2048)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !379, file: !343, line: 130, baseType: !109, size: 32, offset: 20704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !342, file: !343, line: 69, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !343, line: 116, size: 384, elements: !400)
!400 = !{!401, !405, !433, !4073, !4101, !4105}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !399, file: !343, line: 117, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !348}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !399, file: !343, line: 118, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !409, line: 254, size: 128, elements: !410)
!409 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!410 = !{!411, !426}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !408, file: !409, line: 255, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!415, !348, !420, !383}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !190, line: 66, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !417, line: 73, baseType: !418)
!417 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !417, line: 15, baseType: !419)
!419 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !409, line: 30, size: 128, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !409, line: 31, baseType: !282, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !421, file: !409, line: 32, baseType: !425, size: 16, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !190, line: 24, baseType: !244)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !408, file: !409, line: 256, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!415, !348, !420, !282, !430}
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 61, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !417, line: 72, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !417, line: 16, baseType: !191)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !399, file: !343, line: 119, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !409, line: 84, size: 320, elements: !438)
!438 = !{!439, !440, !444, !4069, !4071}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !409, line: 85, baseType: !282, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !437, file: !409, line: 86, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!425, !348, !420, !109}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !437, file: !409, line: 88, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!425, !348, !448, !109}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !409, line: 175, size: 512, elements: !450)
!450 = !{!451, !452, !453, !454, !4060, !4064, !4065}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !449, file: !409, line: 176, baseType: !421, size: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !449, file: !409, line: 177, baseType: !430, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !449, file: !409, line: 178, baseType: !199, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !449, file: !409, line: 179, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !460)
!460 = !{!461, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !4054, !4055, !4056, !4057, !4058, !4059}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !459, file: !14, line: 473, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !464)
!464 = !{!465, !466, !467, !475, !476, !483, !484, !487, !488, !3833, !3834, !3835, !3836, !3837, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3877, !3880, !3881, !3882, !3891, !3892, !3893, !3894}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !463, file: !14, line: 642, baseType: !425, size: 16)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !463, file: !14, line: 643, baseType: !244, size: 16, offset: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !463, file: !14, line: 644, baseType: !468, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !469, line: 23, baseType: !470)
!469 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 21, size: 32, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !470, file: !469, line: 22, baseType: !473, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !190, line: 37, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !417, line: 49, baseType: !7)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !463, file: !14, line: 645, baseType: !195, size: 128, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !463, file: !14, line: 646, baseType: !477, size: 32, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !469, line: 28, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 26, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !478, file: !469, line: 27, baseType: !481, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !190, line: 38, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !417, line: 50, baseType: !7)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !463, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !463, file: !14, line: 650, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !463, file: !14, line: 651, baseType: !485, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !463, file: !14, line: 654, baseType: !489, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !492)
!492 = !{!493, !3661, !3671, !3675, !3679, !3683, !3687, !3691, !3695, !3699, !3703, !3704, !3708, !3712, !3749, !3778, !3782, !3788, !3792, !3796, !3800, !3804, !3808, !3814, !3818}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !491, file: !14, line: 1967, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !462, !497, !7}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !499, line: 82, size: 1536, elements: !500)
!499 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!500 = !{!501, !502, !512, !520, !521, !536, !537, !541, !554, !3644, !3645, !3646, !3647, !3653, !3654, !3655}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !498, file: !499, line: 84, baseType: !7, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !498, file: !499, line: 85, baseType: !503, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !504, line: 275, baseType: !505)
!504 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !504, line: 275, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !505, file: !504, line: 275, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !504, line: 69, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !504, line: 64, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !509, file: !504, line: 65, baseType: !7, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !498, file: !499, line: 86, baseType: !513, size: 128, offset: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !514, line: 38, size: 128, elements: !515)
!514 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!515 = !{!516, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !514, line: 39, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !513, file: !514, line: 39, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !498, file: !499, line: 87, baseType: !497, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !498, file: !499, line: 88, baseType: !522, size: 128, offset: 256)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !499, line: 49, size: 128, elements: !523)
!523 = !{!524, !533}
!524 = !DIDerivedType(tag: DW_TAG_member, scope: !522, file: !499, line: 50, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !522, file: !499, line: 50, size: 64, elements: !526)
!526 = !{!527, !532}
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !499, line: 51, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !525, file: !499, line: 51, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !528, file: !499, line: 52, baseType: !315, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !528, file: !499, line: 52, baseType: !315, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !525, file: !499, line: 54, baseType: !277, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !522, file: !499, line: 56, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !498, file: !499, line: 89, baseType: !462, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !498, file: !499, line: 91, baseType: !538, size: 256, offset: 448)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !498, file: !499, line: 94, baseType: !542, size: 64, offset: 704)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !543, line: 25, size: 64, elements: !544)
!543 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !543, line: 26, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !543, line: 26, size: 64, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !546, file: !543, line: 28, baseType: !278, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !546, file: !543, line: 30, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !546, file: !543, line: 30, size: 64, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !550, file: !543, line: 31, baseType: !204, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !550, file: !543, line: 32, baseType: !109, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !498, file: !499, line: 95, baseType: !555, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !499, line: 128, size: 1024, align: 512, elements: !558)
!558 = !{!559, !563, !564, !571, !577, !581, !585, !589, !590, !594, !598, !3634, !3638}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !557, file: !499, line: 129, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!109, !497, !7}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !557, file: !499, line: 130, baseType: !560, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !557, file: !499, line: 131, baseType: !565, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!109, !568, !570}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !557, file: !499, line: 132, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!109, !568, !7, !282, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !557, file: !499, line: 134, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!109, !568}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !557, file: !499, line: 135, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!109, !497}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !557, file: !499, line: 136, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !497}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !557, file: !499, line: 137, baseType: !586, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !557, file: !499, line: 138, baseType: !591, size: 64, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !497, !462}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !557, file: !499, line: 139, baseType: !595, size: 64, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!383, !497, !383, !109}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !557, file: !499, line: 140, baseType: !599, size: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !3633}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !604, line: 70, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!605 = !{!606, !607, !3629, !3630}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !603, file: !604, line: 71, baseType: !497, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !603, file: !604, line: 72, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !610)
!610 = !{!611, !612, !615, !616, !617, !621, !1098, !1237, !1277, !1367, !1371, !1372, !1373, !1374, !1375, !1384, !1385, !1386, !1387, !1392, !1396, !1397, !1400, !1403, !1406, !1409, !1410, !1411, !1452, !3562, !3563, !3564, !3565, !3566, !3567, !3570, !3572, !3579, !3580, !3581, !3582, !3583, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !609, file: !14, line: 1191, baseType: !195, size: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !609, file: !14, line: 1192, baseType: !613, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !190, line: 21, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !190, line: 18, baseType: !315)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !609, file: !14, line: 1193, baseType: !236, size: 8, offset: 160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !609, file: !14, line: 1194, baseType: !191, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !609, file: !14, line: 1195, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !190, line: 52, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !417, line: 88, baseType: !620)
!620 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !609, file: !14, line: 1196, baseType: !622, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !624)
!624 = !{!625, !626, !627, !634, !638, !642, !646, !1083, !1084, !1088, !1090, !1091, !1092, !1094, !1095, !1096, !1097}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !623, file: !14, line: 2367, baseType: !282, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !623, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !623, file: !14, line: 2376, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!109, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !633, line: 32, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !623, file: !14, line: 2377, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !623, file: !14, line: 2378, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!497, !622, !109, !282, !199}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !623, file: !14, line: 2380, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !608}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !623, file: !14, line: 2381, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !649)
!649 = !{!650, !651, !652, !656, !678, !704, !705, !706, !707, !711, !716, !717, !737, !793, !794, !795, !796, !797, !800, !801, !802, !810, !814, !841, !862, !863, !864, !865, !874, !897, !898, !901, !904, !905, !906, !907, !908, !909, !910, !915, !916, !1041, !1049, !1050, !1051, !1053, !1057, !1058, !1062, !1063, !1064, !1065, !1067, !1068, !1069, !1076, !1077, !1078, !1082}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !648, file: !6, line: 403, baseType: !5, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !648, file: !6, line: 406, baseType: !195, size: 128, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !6, line: 409, baseType: !653, size: 448, offset: 192)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 448, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 56)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !648, file: !6, line: 417, baseType: !657, size: 768, offset: 640)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !658)
!658 = !{!659, !660, !661, !662, !665}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !657, file: !6, line: 46, baseType: !342, size: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !657, file: !6, line: 47, baseType: !647, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !657, file: !6, line: 48, baseType: !348, size: 64, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !657, file: !6, line: 49, baseType: !663, size: 64, offset: 640)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !657, file: !6, line: 50, baseType: !666, size: 64, offset: 704)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !668, line: 26, size: 256, elements: !669)
!668 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !667, file: !668, line: 27, baseType: !7, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !667, file: !668, line: 28, baseType: !672, size: 192, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !673, line: 43, size: 192, elements: !674)
!673 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!674 = !{!675, !677}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !673, line: 44, baseType: !676, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !213, line: 23, baseType: !212)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !672, file: !673, line: 45, baseType: !195, size: 128, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !648, file: !6, line: 418, baseType: !679, size: 64, offset: 1408)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !681)
!681 = !{!682, !683, !688, !692, !696, !700}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !680, file: !6, line: 54, baseType: !421, size: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !680, file: !6, line: 55, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!415, !679, !687, !383}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !680, file: !6, line: 57, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!415, !679, !687, !282, !430}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !680, file: !6, line: 59, baseType: !693, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !647, !282}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !680, file: !6, line: 60, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!109, !647}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !680, file: !6, line: 61, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !647}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !648, file: !6, line: 419, baseType: !282, size: 64, offset: 1472)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !648, file: !6, line: 420, baseType: !282, size: 64, offset: 1536)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !648, file: !6, line: 421, baseType: !348, size: 64, offset: 1600)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !648, file: !6, line: 424, baseType: !708, size: 64, offset: 1664)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !648, file: !6, line: 425, baseType: !712, size: 64, offset: 1728)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !233, line: 20, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !235, line: 26, baseType: !109)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !648, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !648, file: !6, line: 435, baseType: !718, size: 256, offset: 1856)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !719, line: 66, size: 256, elements: !720)
!719 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!720 = !{!721, !730, !731, !736}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !719, line: 67, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !723, line: 13, baseType: !724)
!723 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !190, line: 181, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 179, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !725, file: !190, line: 180, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !233, line: 22, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !235, line: 30, baseType: !620)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !718, file: !719, line: 68, baseType: !676, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !718, file: !719, line: 70, baseType: !732, size: 32, offset: 96)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !733, line: 15, size: 32, elements: !734)
!733 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !732, file: !733, line: 20, baseType: !224, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !718, file: !719, line: 72, baseType: !195, size: 128, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !648, file: !6, line: 437, baseType: !738, size: 64, offset: 2112)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !740, line: 69, size: 320, elements: !741)
!740 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!741 = !{!742, !743, !744, !764, !766, !770, !771}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !739, file: !740, line: 70, baseType: !282, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !739, file: !740, line: 71, baseType: !647, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !739, file: !740, line: 72, baseType: !745, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !740, line: 47, size: 256, elements: !748)
!748 = !{!749, !750, !756, !760}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !740, line: 49, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !747, file: !740, line: 51, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!109, !282, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !747, file: !740, line: 53, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!109, !383, !754}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !747, file: !740, line: 55, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !199}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !739, file: !740, line: 73, baseType: !765, size: 16, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !739, file: !740, line: 74, baseType: !767, size: 8, offset: 208)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !233, line: 16, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !235, line: 20, baseType: !769)
!769 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !740, line: 75, baseType: !232, size: 8, offset: 216)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !740, line: 76, baseType: !772, size: 64, offset: 256)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !740, line: 76, size: 64, elements: !773)
!773 = !{!774, !775, !782}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !772, file: !740, line: 77, baseType: !199, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !772, file: !740, line: 78, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !740, line: 86, size: 128, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !778, file: !740, line: 87, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !778, file: !740, line: 88, baseType: !383, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !772, file: !740, line: 79, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !740, line: 92, size: 256, elements: !786)
!786 = !{!787, !788, !789, !791, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !785, file: !740, line: 94, baseType: !7, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !785, file: !740, line: 95, baseType: !7, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !785, file: !740, line: 96, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !785, file: !740, line: 97, baseType: !745, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !785, file: !740, line: 98, baseType: !199, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !648, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !648, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !648, file: !6, line: 442, baseType: !708, size: 64, offset: 2240)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !648, file: !6, line: 443, baseType: !712, size: 64, offset: 2304)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !648, file: !6, line: 444, baseType: !798, size: 8, offset: 2368)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !190, line: 35, baseType: !799)
!799 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !648, file: !6, line: 451, baseType: !798, size: 8, offset: 2376)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !648, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !648, file: !6, line: 455, baseType: !803, size: 64, offset: 2432)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !805, line: 23, size: 96, elements: !806)
!805 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !804, file: !805, line: 24, baseType: !109, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !804, file: !805, line: 24, baseType: !109, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !804, file: !805, line: 24, baseType: !109, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !648, file: !6, line: 458, baseType: !811, size: 64, offset: 2496)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!109}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !648, file: !6, line: 460, baseType: !815, size: 4032, align: 512, offset: 2560)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 4032, elements: !839)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !816, file: !6, line: 363, baseType: !199, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !816, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !816, file: !6, line: 367, baseType: !821, size: 448, offset: 128)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !821, file: !6, line: 320, baseType: !647, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !821, file: !6, line: 321, baseType: !825, size: 384, offset: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !826, line: 40, size: 384, elements: !827)
!826 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !826, line: 41, baseType: !829, size: 384, align: 64)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 384, align: 64, elements: !837)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !831, line: 5, size: 192, align: 64, elements: !832)
!831 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!832 = !{!833, !834, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !830, file: !831, line: 6, baseType: !191, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !830, file: !831, line: 7, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !830, file: !831, line: 8, baseType: !835, size: 64, offset: 128)
!837 = !{!838}
!838 = !DISubrange(count: 2)
!839 = !{!840}
!840 = !DISubrange(count: 7)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !648, file: !6, line: 463, baseType: !842, size: 192, offset: 6592)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !843, line: 8, size: 192, elements: !844)
!843 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!844 = !{!845, !846, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !842, file: !843, line: 10, baseType: !7, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !842, file: !843, line: 11, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !842, file: !843, line: 12, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !851, line: 59, size: 48, elements: !852)
!851 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!852 = !{!853, !857, !858, !859, !860, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !850, file: !851, line: 60, baseType: !854, size: 16)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !233, line: 18, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !235, line: 23, baseType: !856)
!856 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !850, file: !851, line: 61, baseType: !854, size: 16, offset: 16)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !850, file: !851, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !850, file: !851, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !851, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !850, file: !851, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !648, file: !6, line: 465, baseType: !191, size: 64, offset: 6784)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !648, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !648, file: !6, line: 470, baseType: !195, size: 128, offset: 6912)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !648, file: !6, line: 471, baseType: !866, size: 64, offset: 7040)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !868, line: 33, size: 96, elements: !869)
!868 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!869 = !{!870, !871, !872, !873}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !867, file: !868, line: 37, baseType: !109, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !867, file: !868, line: 43, baseType: !109, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !867, file: !868, line: 45, baseType: !244, size: 16, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 47, baseType: !244, size: 16, offset: 80)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !648, file: !6, line: 476, baseType: !875, size: 64, offset: 7104)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !877)
!877 = !{!878, !894, !895, !896}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !876, file: !6, line: 379, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !881, line: 204, baseType: !882)
!881 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !881, line: 197, size: 192, elements: !883)
!883 = !{!884, !886, !887, !888, !890, !892}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !882, file: !881, line: 198, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !881, line: 21, baseType: !316)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !882, file: !881, line: 199, baseType: !236, size: 8, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !882, file: !881, line: 200, baseType: !236, size: 8, offset: 40)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !882, file: !881, line: 201, baseType: !889, size: 16, offset: 48)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !881, line: 17, baseType: !243)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !882, file: !881, line: 202, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !881, line: 16, baseType: !278)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !882, file: !881, line: 203, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !881, line: 22, baseType: !278)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !876, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !876, file: !6, line: 381, baseType: !383, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !876, file: !6, line: 382, baseType: !383, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !648, file: !6, line: 477, baseType: !876, size: 256, offset: 7168)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !648, file: !6, line: 480, baseType: !899, size: 64, offset: 7424)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !648, file: !6, line: 483, baseType: !902, size: 64, offset: 7488)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !648, file: !6, line: 488, baseType: !383, size: 64, offset: 7552)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !648, file: !6, line: 492, baseType: !199, size: 64, offset: 7616)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !648, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !648, file: !6, line: 495, baseType: !199, size: 64, offset: 7744)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !648, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !648, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !648, file: !6, line: 500, baseType: !911, size: 64, offset: 7872)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !913, line: 45, baseType: !914)
!913 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !648, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !648, file: !6, line: 504, baseType: !917, size: 64, offset: 8000)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !920, line: 96, size: 192, elements: !921)
!920 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!921 = !{!922, !923, !1001, !1005}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !919, file: !920, line: 97, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !919, file: !920, line: 98, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !920, line: 24, size: 3072, elements: !926)
!926 = !{!927, !929, !930, !931, !932, !954, !955, !956, !957, !975, !986, !987, !998, !999, !1000}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !925, file: !920, line: 26, baseType: !928, size: 128)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 128, elements: !837)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !925, file: !920, line: 27, baseType: !928, size: 128, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !925, file: !920, line: 28, baseType: !109, size: 32, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !925, file: !920, line: 31, baseType: !204, size: 32, align: 512, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !925, file: !920, line: 32, baseType: !933, size: 960, offset: 576)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !934, line: 206, size: 960, elements: !935)
!934 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!935 = !{!936, !945, !948, !950, !951, !953}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !933, file: !934, line: 207, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !190, line: 232, size: 128, align: 64, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !938, file: !190, line: 233, baseType: !937, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !938, file: !190, line: 234, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !937}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !933, file: !934, line: 208, baseType: !946, size: 256, offset: 64)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 256, elements: !290)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !933, file: !934, line: 209, baseType: !949, size: 256, offset: 320)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !290)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !933, file: !934, line: 213, baseType: !419, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !933, file: !934, line: 215, baseType: !952, size: 256, offset: 640)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !290)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !934, line: 216, baseType: !232, size: 8, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !925, file: !920, line: 33, baseType: !191, size: 64, offset: 1536)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !925, file: !920, line: 34, baseType: !191, size: 64, offset: 1600)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !925, file: !920, line: 35, baseType: !798, size: 8, offset: 1664)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !925, file: !920, line: 36, baseType: !958, size: 320, offset: 1728)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !959, line: 11, size: 320, elements: !960)
!959 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!960 = !{!961, !968, !969, !974}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !958, file: !959, line: 16, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !190, line: 198, size: 128, elements: !963)
!963 = !{!964, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !962, file: !190, line: 199, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !962, file: !190, line: 199, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !958, file: !959, line: 17, baseType: !191, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !958, file: !959, line: 18, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 19, baseType: !315, size: 32, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !925, file: !920, line: 37, baseType: !976, size: 256, offset: 2048)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !147, line: 98, size: 256, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !976, file: !147, line: 99, baseType: !722, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !976, file: !147, line: 100, baseType: !195, size: 128, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !976, file: !147, line: 101, baseType: !981, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !147, line: 21, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !925, file: !920, line: 38, baseType: !938, size: 128, align: 64, offset: 2304)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !925, file: !920, line: 39, baseType: !988, size: 64, offset: 2432)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !920, line: 49, size: 768, elements: !990)
!990 = !{!991, !992, !993, !994, !995, !996, !997}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !989, file: !920, line: 50, baseType: !204, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !989, file: !920, line: 51, baseType: !949, size: 256, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !989, file: !920, line: 53, baseType: !949, size: 256, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !989, file: !920, line: 54, baseType: !191, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !989, file: !920, line: 55, baseType: !988, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !989, file: !920, line: 56, baseType: !109, size: 32, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !989, file: !920, line: 57, baseType: !109, size: 32, offset: 736)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !925, file: !920, line: 40, baseType: !191, size: 64, offset: 2496)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !925, file: !920, line: 42, baseType: !109, size: 32, offset: 2560)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !925, file: !920, line: 43, baseType: !918, size: 64, offset: 2624)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !919, file: !920, line: 99, baseType: !1002, offset: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1003, line: 211, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1004 = !{}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !919, file: !920, line: 100, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !920, line: 63, size: 3008, elements: !1008)
!1008 = !{!1009, !1010, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1040}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1007, file: !920, line: 64, baseType: !988, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1007, file: !920, line: 65, baseType: !1011, size: 192, offset: 64)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 192, elements: !384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1007, file: !920, line: 67, baseType: !109, size: 32, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1007, file: !920, line: 68, baseType: !718, size: 256, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1007, file: !920, line: 69, baseType: !204, size: 32, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1007, file: !920, line: 70, baseType: !718, size: 256, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1007, file: !920, line: 71, baseType: !191, size: 64, offset: 896)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1007, file: !920, line: 72, baseType: !191, size: 64, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1007, file: !920, line: 73, baseType: !191, size: 64, offset: 1024)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1007, file: !920, line: 74, baseType: !191, size: 64, offset: 1088)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1007, file: !920, line: 75, baseType: !191, size: 64, offset: 1152)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1007, file: !920, line: 76, baseType: !191, size: 64, offset: 1216)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1007, file: !920, line: 77, baseType: !191, size: 64, offset: 1280)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1007, file: !920, line: 78, baseType: !191, size: 64, offset: 1344)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1007, file: !920, line: 79, baseType: !798, size: 8, offset: 1408)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1007, file: !920, line: 80, baseType: !191, size: 64, offset: 1472)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1007, file: !920, line: 81, baseType: !718, size: 256, offset: 1536)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1007, file: !920, line: 82, baseType: !667, size: 256, offset: 1792)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1007, file: !920, line: 84, baseType: !224, size: 32, offset: 2048)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1007, file: !920, line: 87, baseType: !191, size: 64, offset: 2112)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1007, file: !920, line: 88, baseType: !191, size: 64, offset: 2176)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1007, file: !920, line: 89, baseType: !1032, size: 704, offset: 2240)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !147, line: 111, size: 704, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1039}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1032, file: !147, line: 112, baseType: !976, size: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1032, file: !147, line: 113, baseType: !958, size: 320, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1032, file: !147, line: 116, baseType: !1037, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !147, line: 18, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1032, file: !147, line: 117, baseType: !109, size: 32, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1007, file: !920, line: 90, baseType: !918, size: 64, offset: 2944)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !648, file: !6, line: 515, baseType: !1042, size: 64, offset: 8064)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1044, line: 117, size: 128, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1043, file: !1044, line: 118, baseType: !714, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1043, file: !1044, line: 119, baseType: !714, size: 32, offset: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1043, file: !1044, line: 120, baseType: !419, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !648, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !648, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !648, file: !6, line: 520, baseType: !1052, size: 64, offset: 8192)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !648, file: !6, line: 523, baseType: !1054, size: 64, offset: 8256)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !648, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !648, file: !6, line: 525, baseType: !1059, size: 64, offset: 8384)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !648, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !648, file: !6, line: 533, baseType: !199, size: 64, offset: 8512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !648, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !648, file: !6, line: 535, baseType: !1066, size: 64, offset: 8640)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !648, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !648, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !648, file: !6, line: 540, baseType: !1070, size: 64, offset: 8768)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1072, line: 32, size: 64, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1071, file: !1072, line: 33, baseType: !714, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1071, file: !1072, line: 34, baseType: !714, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !648, file: !6, line: 563, baseType: !195, size: 128, offset: 8832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !648, file: !6, line: 565, baseType: !195, size: 128, offset: 8960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !648, file: !6, line: 568, baseType: !1079, size: 64, offset: 9088)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !648, file: !6, line: 570, baseType: !224, size: 32, offset: 9152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !14, line: 2382, baseType: !622, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !623, file: !14, line: 2383, baseType: !1085, size: 64, offset: 512)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !190, line: 194, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1085, file: !190, line: 195, baseType: !965, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !623, file: !14, line: 2385, baseType: !1089, offset: 576)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1003, line: 206, elements: !1004)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !623, file: !14, line: 2386, baseType: !1089, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !623, file: !14, line: 2387, baseType: !1089, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !623, file: !14, line: 2388, baseType: !1093, offset: 576)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, elements: !384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !623, file: !14, line: 2390, baseType: !1089, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !623, file: !14, line: 2391, baseType: !1089, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !623, file: !14, line: 2392, baseType: !1089, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !623, file: !14, line: 2393, baseType: !1089, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !609, file: !14, line: 1197, baseType: !1099, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1102)
!1102 = !{!1103, !1107, !1111, !1112, !1116, !1122, !1126, !1127, !1128, !1132, !1136, !1140, !1141, !1142, !1148, !1152, !1153, !1160, !1161, !1162, !1163, !1167, !1171, !1220, !1235, !1236}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1101, file: !14, line: 2058, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!462, !608}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1101, file: !14, line: 2059, baseType: !1108, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !462}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1101, file: !14, line: 2060, baseType: !1108, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1101, file: !14, line: 2062, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !462, !109}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1101, file: !14, line: 2063, baseType: !1117, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!109, !462, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1101, file: !14, line: 2064, baseType: !1123, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!109, !462}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1101, file: !14, line: 2065, baseType: !1108, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1101, file: !14, line: 2066, baseType: !643, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1101, file: !14, line: 2067, baseType: !1129, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!109, !608, !109}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1101, file: !14, line: 2068, baseType: !1133, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!109, !608, !13}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1101, file: !14, line: 2069, baseType: !1137, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!109, !608}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1101, file: !14, line: 2070, baseType: !1133, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1101, file: !14, line: 2071, baseType: !1137, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1101, file: !14, line: 2072, baseType: !1143, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!109, !497, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1101, file: !14, line: 2073, baseType: !1149, size: 64, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!109, !608, !847, !383}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1101, file: !14, line: 2074, baseType: !643, size: 64, offset: 960)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1101, file: !14, line: 2076, baseType: !1154, size: 64, offset: 1024)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!109, !1157, !497}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1159, line: 66, flags: DIFlagFwdDecl)
!1159 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1101, file: !14, line: 2077, baseType: !1154, size: 64, offset: 1088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1101, file: !14, line: 2078, baseType: !1154, size: 64, offset: 1152)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1101, file: !14, line: 2079, baseType: !1154, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1101, file: !14, line: 2081, baseType: !1164, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!415, !608, !109, !383, !430, !618}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1101, file: !14, line: 2082, baseType: !1168, size: 64, offset: 1344)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!415, !608, !109, !282, !430, !618}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1101, file: !14, line: 2083, baseType: !1172, size: 64, offset: 1408)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1175, !462}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1203, !1204, !1205}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1177, file: !19, line: 297, baseType: !962, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1177, file: !19, line: 298, baseType: !195, size: 128, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1177, file: !19, line: 299, baseType: !195, size: 128, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1177, file: !19, line: 300, baseType: !195, size: 128, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1177, file: !19, line: 301, baseType: !718, size: 256, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1177, file: !19, line: 302, baseType: !204, size: 32, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1177, file: !19, line: 303, baseType: !224, size: 32, offset: 800)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1177, file: !19, line: 304, baseType: !608, size: 64, offset: 832)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1177, file: !19, line: 305, baseType: !1188, size: 64, offset: 896)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1189)
!1189 = !{!1190, !1202}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !19, line: 69, baseType: !1191, size: 32)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !19, line: 69, size: 32, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1191, file: !19, line: 70, baseType: !468, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1191, file: !19, line: 71, baseType: !477, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1191, file: !19, line: 72, baseType: !1196, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1197, line: 24, baseType: !1198)
!1197 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 22, size: 32, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1198, file: !1197, line: 23, baseType: !1201, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1197, line: 20, baseType: !474)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1188, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1177, file: !19, line: 306, baseType: !618, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1177, file: !19, line: 307, baseType: !191, size: 64, offset: 1024)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1177, file: !19, line: 308, baseType: !1206, size: 576, offset: 1088)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1207)
!1207 = !{!1208, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1219}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1206, file: !19, line: 206, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !620)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1206, file: !19, line: 207, baseType: !1209, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1206, file: !19, line: 208, baseType: !1209, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1206, file: !19, line: 209, baseType: !1209, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1206, file: !19, line: 210, baseType: !1209, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1206, file: !19, line: 211, baseType: !1209, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1206, file: !19, line: 212, baseType: !1209, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1206, file: !19, line: 213, baseType: !1217, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1218, line: 8, baseType: !729)
!1218 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1206, file: !19, line: 214, baseType: !1217, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1101, file: !14, line: 2085, baseType: !1221, size: 64, offset: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!419, !608, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1226, line: 15, size: 256, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1227 = !{!1228, !1229, !1230, !1231, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1225, file: !1226, line: 16, baseType: !189, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1225, file: !1226, line: 19, baseType: !109, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1225, file: !1226, line: 26, baseType: !191, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1225, file: !1226, line: 33, baseType: !191, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1225, file: !1226, line: 36, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1101, file: !14, line: 2087, baseType: !1221, size: 64, offset: 1536)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1101, file: !14, line: 2089, baseType: !643, size: 64, offset: 1600)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !609, file: !14, line: 1198, baseType: !1238, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1241)
!1241 = !{!1242, !1246, !1250, !1254, !1255, !1256, !1257, !1258, !1263, !1268, !1272}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1240, file: !19, line: 325, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!109, !1176}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1240, file: !19, line: 326, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1176, !608, !109}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1240, file: !19, line: 327, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1176}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1240, file: !19, line: 328, baseType: !1243, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1240, file: !19, line: 329, baseType: !1243, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1240, file: !19, line: 330, baseType: !1243, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1240, file: !19, line: 331, baseType: !1129, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1240, file: !19, line: 334, baseType: !1259, size: 64, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!1262, !462}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1240, file: !19, line: 335, baseType: !1264, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!109, !462, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1240, file: !19, line: 337, baseType: !1269, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!109, !462, !1262}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1240, file: !19, line: 339, baseType: !1273, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!109, !608, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !609, file: !14, line: 1199, baseType: !1278, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1281)
!1281 = !{!1282, !1293, !1294, !1298, !1299, !1300, !1315, !1338, !1342, !1343, !1366}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1280, file: !19, line: 431, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!109, !608, !109, !109, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1289, line: 8, size: 128, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1288, file: !1289, line: 9, baseType: !602, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1288, file: !1289, line: 10, baseType: !497, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1280, file: !19, line: 432, baseType: !1129, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1280, file: !19, line: 433, baseType: !1295, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!109, !608, !7}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1280, file: !19, line: 434, baseType: !1295, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1280, file: !19, line: 435, baseType: !1129, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1280, file: !19, line: 436, baseType: !1301, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!109, !608, !109, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1305, file: !19, line: 418, baseType: !109, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1305, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1305, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1305, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1305, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1305, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1305, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1305, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1280, file: !19, line: 437, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!109, !608, !1188, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1320, file: !19, line: 346, baseType: !109, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1320, file: !19, line: 347, baseType: !277, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1320, file: !19, line: 348, baseType: !277, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1320, file: !19, line: 349, baseType: !277, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1320, file: !19, line: 350, baseType: !277, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1320, file: !19, line: 351, baseType: !277, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1320, file: !19, line: 352, baseType: !277, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1320, file: !19, line: 353, baseType: !728, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1320, file: !19, line: 355, baseType: !728, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1320, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1320, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1320, file: !19, line: 358, baseType: !277, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1320, file: !19, line: 359, baseType: !277, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1320, file: !19, line: 360, baseType: !277, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1320, file: !19, line: 361, baseType: !728, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1320, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1280, file: !19, line: 438, baseType: !1339, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!109, !608, !1276, !1319}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1280, file: !19, line: 440, baseType: !1316, size: 64, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1280, file: !19, line: 441, baseType: !1344, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!109, !608, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1348, file: !19, line: 412, baseType: !7, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1348, file: !19, line: 413, baseType: !1352, size: 1344, offset: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 1344, elements: !384)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1365}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1353, file: !19, line: 398, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1353, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1353, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1353, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1353, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1353, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1353, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1353, file: !19, line: 406, baseType: !279, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1353, file: !19, line: 407, baseType: !1364, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !190, line: 132, baseType: !277)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1353, file: !19, line: 408, baseType: !1364, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1280, file: !19, line: 442, baseType: !1295, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !609, file: !14, line: 1200, baseType: !1368, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !609, file: !14, line: 1201, baseType: !191, size: 64, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !609, file: !14, line: 1202, baseType: !191, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !609, file: !14, line: 1203, baseType: !191, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !609, file: !14, line: 1204, baseType: !497, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !609, file: !14, line: 1205, baseType: !1376, size: 320, offset: 896)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1377, line: 48, size: 320, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1378 = !{!1379, !1380, !1381, !1382, !1383}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1376, file: !1377, line: 49, baseType: !722, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1376, file: !1377, line: 55, baseType: !722, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1376, file: !1377, line: 57, baseType: !732, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1376, file: !1377, line: 59, baseType: !676, size: 32, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1376, file: !1377, line: 60, baseType: !195, size: 128, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !609, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !609, file: !14, line: 1207, baseType: !224, size: 32, offset: 1248)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !609, file: !14, line: 1209, baseType: !199, size: 64, offset: 1280)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !609, file: !14, line: 1211, baseType: !1388, size: 64, offset: 1344)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !609, file: !14, line: 1223, baseType: !1393, size: 64, offset: 1408)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !514, line: 34, size: 64, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1393, file: !514, line: 35, baseType: !517, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !609, file: !14, line: 1224, baseType: !195, size: 128, offset: 1472)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !609, file: !14, line: 1225, baseType: !1398, size: 64, offset: 1600)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !609, file: !14, line: 1226, baseType: !1401, size: 64, offset: 1664)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !609, file: !14, line: 1227, baseType: !1404, size: 64, offset: 1728)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !609, file: !14, line: 1228, baseType: !1407, size: 64, offset: 1792)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !609, file: !14, line: 1229, baseType: !962, size: 128, offset: 1856)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !609, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !609, file: !14, line: 1231, baseType: !1412, size: 2496, offset: 2048)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1418, !1450}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !19, line: 522, baseType: !7, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1412, file: !19, line: 523, baseType: !1376, size: 320, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1412, file: !19, line: 524, baseType: !1417, size: 192, offset: 384)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 192, elements: !384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1412, file: !19, line: 525, baseType: !1419, size: 1728, offset: 576)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 1728, elements: !384)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1421)
!1421 = !{!1422, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1420, file: !19, line: 223, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1425)
!1425 = !{!1426, !1427, !1440, !1441}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1424, file: !19, line: 446, baseType: !109, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1424, file: !19, line: 447, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1430, file: !19, line: 313, baseType: !1129, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1430, file: !19, line: 314, baseType: !1129, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1430, file: !19, line: 315, baseType: !1129, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1430, file: !19, line: 316, baseType: !1129, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1430, file: !19, line: 317, baseType: !1243, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1430, file: !19, line: 318, baseType: !1243, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1430, file: !19, line: 319, baseType: !1243, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1430, file: !19, line: 320, baseType: !1273, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1424, file: !19, line: 448, baseType: !647, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1424, file: !19, line: 449, baseType: !1423, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1420, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1420, file: !19, line: 226, baseType: !195, size: 128, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1420, file: !19, line: 227, baseType: !191, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1420, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1420, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1420, file: !19, line: 230, baseType: !1209, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1420, file: !19, line: 231, baseType: !1209, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1420, file: !19, line: 232, baseType: !199, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1412, file: !19, line: 526, baseType: !1451, size: 192, offset: 2304)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1428, size: 192, elements: !384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !609, file: !14, line: 1233, baseType: !1453, size: 2368, offset: 4544)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1453, file: !14, line: 1185, baseType: !244, size: 16)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1453, file: !14, line: 1186, baseType: !244, size: 16, offset: 16)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1453, file: !14, line: 1187, baseType: !1458, size: 2304, offset: 64)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 2304, elements: !384)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1460, line: 12, size: 768, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1461 = !{!1462, !1476, !1477, !3560, !3561}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1459, file: !1460, line: 13, baseType: !1463, size: 384)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1464, line: 17, size: 384, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1465 = !{!1466, !1467, !1468, !1475}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1463, file: !1464, line: 18, baseType: !109, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1463, file: !1464, line: 19, baseType: !109, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1463, file: !1464, line: 20, baseType: !1469, size: 192, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1470, line: 41, baseType: !1471)
!1470 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1470, line: 37, size: 192, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1471, file: !1470, line: 38, baseType: !204, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1471, file: !1470, line: 39, baseType: !195, size: 128, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1463, file: !1464, line: 22, baseType: !938, size: 128, align: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1459, file: !1460, line: 14, baseType: !790, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1459, file: !1460, line: 15, baseType: !1478, size: 64, offset: 448)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1479, line: 16, size: 64, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1478, file: !1479, line: 17, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1159, line: 746, size: 58368, elements: !1484)
!1484 = !{!1485, !1493, !1494, !1495, !1501, !1502, !1503, !1504, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1575, !1586, !1681, !1685, !1688, !1719, !1720, !1721, !1722, !1733, !1735, !1736, !1737, !1738, !1739, !1740, !1751, !1752, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1769, !1770, !1777, !1778, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2736, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2784, !2790, !2791, !2792, !2793, !2794, !2798, !2801, !2808, !2813, !2816, !2819, !2822, !2825, !2963, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !3001, !3002, !3003, !3012, !3020, !3021, !3022, !3023, !3024, !3029, !3030, !3031, !3034, !3035, !3038, !3041, !3044, !3052, !3055, !3056, !3142, !3143, !3144, !3145, !3146, !3152, !3153, !3154, !3155, !3158, !3159, !3162, !3165, !3166, !3169, !3170, !3171, !3174, !3175, !3176, !3177, !3178, !3179, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3211, !3212, !3218, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3230, !3302, !3304, !3305, !3306, !3307, !3308, !3309, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3337, !3338, !3339}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1483, file: !1159, line: 752, baseType: !1486, size: 192)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1487, line: 56, size: 192, elements: !1488)
!1487 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1488 = !{!1489, !1490, !1491, !1492}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1486, file: !1487, line: 57, baseType: !191, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1486, file: !1487, line: 58, baseType: !191, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1486, file: !1487, line: 59, baseType: !315, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1486, file: !1487, line: 61, baseType: !315, size: 32, offset: 160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1483, file: !1159, line: 754, baseType: !7, size: 32, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1483, file: !1159, line: 767, baseType: !199, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1483, file: !1159, line: 768, baseType: !1496, size: 32, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1497, line: 113, baseType: !1498)
!1497 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1497, line: 111, size: 32, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1498, file: !1497, line: 112, baseType: !224, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1483, file: !1159, line: 770, baseType: !7, size: 32, offset: 352)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1483, file: !1159, line: 771, baseType: !7, size: 32, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1483, file: !1159, line: 774, baseType: !109, size: 32, offset: 416)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1483, file: !1159, line: 775, baseType: !1505, size: 128, offset: 448)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1506, line: 58, size: 128, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1507 = !{!1508, !1514, !1519, !1520}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1505, file: !1506, line: 59, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1510, line: 60, size: 64, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1509, file: !1510, line: 61, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !1506, line: 60, baseType: !1515, size: 32, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1505, file: !1506, line: 60, size: 32, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1515, file: !1506, line: 61, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1515, file: !1506, line: 62, baseType: !224, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1505, file: !1506, line: 65, baseType: !242, size: 16, offset: 96)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1505, file: !1506, line: 65, baseType: !242, size: 16, offset: 112)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1483, file: !1159, line: 776, baseType: !7, size: 32, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1483, file: !1159, line: 777, baseType: !191, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1483, file: !1159, line: 778, baseType: !1482, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1483, file: !1159, line: 787, baseType: !109, size: 32, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1483, file: !1159, line: 788, baseType: !109, size: 32, offset: 800)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1483, file: !1159, line: 790, baseType: !109, size: 32, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1483, file: !1159, line: 792, baseType: !109, size: 32, offset: 864)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1483, file: !1159, line: 793, baseType: !109, size: 32, offset: 896)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1483, file: !1159, line: 794, baseType: !109, size: 32, offset: 928)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1483, file: !1159, line: 795, baseType: !7, size: 32, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1483, file: !1159, line: 797, baseType: !1532, size: 2048, offset: 1024)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1159, line: 551, size: 2048, elements: !1533)
!1533 = !{!1534, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1554, !1557, !1558, !1559}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1532, file: !1159, line: 553, baseType: !1535, size: 128)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1159, line: 411, size: 128, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1535, file: !1159, line: 412, baseType: !191, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1535, file: !1159, line: 413, baseType: !315, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1532, file: !1159, line: 554, baseType: !830, size: 192, align: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1532, file: !1159, line: 555, baseType: !277, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1532, file: !1159, line: 556, baseType: !277, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1532, file: !1159, line: 558, baseType: !195, size: 128, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1532, file: !1159, line: 559, baseType: !7, size: 32, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1532, file: !1159, line: 561, baseType: !277, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1532, file: !1159, line: 562, baseType: !277, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1532, file: !1159, line: 563, baseType: !277, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1532, file: !1159, line: 564, baseType: !277, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1532, file: !1159, line: 565, baseType: !728, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1532, file: !1159, line: 566, baseType: !277, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1532, file: !1159, line: 568, baseType: !277, size: 64, offset: 1024)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1532, file: !1159, line: 571, baseType: !109, size: 32, offset: 1088)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1532, file: !1159, line: 572, baseType: !1553, size: 64, offset: 1152)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1532, file: !1159, line: 574, baseType: !1555, size: 64, offset: 1216)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1159, line: 49, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1532, file: !1159, line: 576, baseType: !1555, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1532, file: !1159, line: 578, baseType: !191, size: 64, offset: 1344)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1532, file: !1159, line: 588, baseType: !1560, size: 512, align: 512, offset: 1536)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1159, line: 497, size: 512, align: 512, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1560, file: !1159, line: 498, baseType: !277, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1560, file: !1159, line: 499, baseType: !277, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1560, file: !1159, line: 500, baseType: !277, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1560, file: !1159, line: 501, baseType: !315, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1560, file: !1159, line: 502, baseType: !315, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1560, file: !1159, line: 503, baseType: !191, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1560, file: !1159, line: 504, baseType: !191, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1560, file: !1159, line: 505, baseType: !191, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1560, file: !1159, line: 506, baseType: !1571, size: 64, align: 64, offset: 448)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1159, line: 445, size: 64, align: 64, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1571, file: !1159, line: 446, baseType: !7, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1571, file: !1159, line: 447, baseType: !7, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1483, file: !1159, line: 798, baseType: !1576, size: 384, offset: 3072)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1159, line: 592, size: 384, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1576, file: !1159, line: 593, baseType: !195, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1576, file: !1159, line: 594, baseType: !191, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1576, file: !1159, line: 595, baseType: !191, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1576, file: !1159, line: 596, baseType: !7, size: 32, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1576, file: !1159, line: 597, baseType: !244, size: 16, offset: 288)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1576, file: !1159, line: 598, baseType: !244, size: 16, offset: 304)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1576, file: !1159, line: 600, baseType: !1585, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1483, file: !1159, line: 799, baseType: !1587, size: 1792, offset: 3456)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1159, line: 610, size: 1792, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1678, !1679}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1587, file: !1159, line: 611, baseType: !830, size: 192, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1587, file: !1159, line: 618, baseType: !277, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1587, file: !1159, line: 619, baseType: !277, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1587, file: !1159, line: 620, baseType: !277, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1587, file: !1159, line: 621, baseType: !277, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1587, file: !1159, line: 622, baseType: !277, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1587, file: !1159, line: 629, baseType: !728, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1587, file: !1159, line: 630, baseType: !277, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1159, line: 631, baseType: !7, size: 32, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1587, file: !1159, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1587, file: !1159, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1587, file: !1159, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1587, file: !1159, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1587, file: !1159, line: 662, baseType: !1603, size: 512, offset: 704)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1604)
!1604 = !{!1605, !1613, !1614, !1619, !1674, !1675, !1676, !1677}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1603, file: !25, line: 119, baseType: !1606, size: 256)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1607, line: 9, size: 256, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1606, file: !1607, line: 10, baseType: !830, size: 192, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1606, file: !1607, line: 11, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1612, line: 29, baseType: !728)
!1612 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1603, file: !25, line: 120, baseType: !1611, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1603, file: !25, line: 121, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!24, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1603, file: !25, line: 122, baseType: !1620, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1622)
!1622 = !{!1623, !1648, !1649, !1652, !1657, !1658, !1669, !1673}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1621, file: !25, line: 160, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1625, file: !25, line: 216, baseType: !676, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1625, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1625, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1625, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1625, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1625, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1625, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1625, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1625, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1625, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1625, file: !25, line: 227, baseType: !244, size: 16, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1625, file: !25, line: 228, baseType: !244, size: 16, offset: 208)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1625, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1625, file: !25, line: 235, baseType: !1611, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1625, file: !25, line: 236, baseType: !1618, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1625, file: !25, line: 237, baseType: !1611, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1625, file: !25, line: 238, baseType: !1618, size: 64, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1625, file: !25, line: 239, baseType: !1645, size: 4096, align: 512, offset: 512)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1621, size: 4096, align: 512, elements: !1646)
!1646 = !{!1647}
!1647 = !DISubrange(count: 8)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1621, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1621, file: !25, line: 162, baseType: !1650, size: 32, offset: 96)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !190, line: 32, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !417, line: 96, baseType: !109)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1621, file: !25, line: 163, baseType: !1653, size: 32, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !504, line: 274, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !504, line: 274, size: 32, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1654, file: !504, line: 274, baseType: !508, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1621, file: !25, line: 164, baseType: !1618, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1621, file: !25, line: 165, baseType: !1659, size: 128, offset: 256)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1607, line: 14, size: 128, elements: !1660)
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1659, file: !1607, line: 15, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !831, line: 26, size: 128, elements: !1663)
!1663 = !{!1664, !1668}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1662, file: !831, line: 27, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !831, line: 12, size: 64, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1665, file: !831, line: 13, baseType: !835, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1662, file: !831, line: 28, baseType: !835, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1621, file: !25, line: 166, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1611}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1621, file: !25, line: 167, baseType: !1611, size: 64, offset: 448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1603, file: !25, line: 123, baseType: !232, size: 8, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1603, file: !25, line: 124, baseType: !232, size: 8, offset: 456)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1603, file: !25, line: 125, baseType: !232, size: 8, offset: 464)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1603, file: !25, line: 126, baseType: !232, size: 8, offset: 472)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1587, file: !1159, line: 671, baseType: !1603, size: 512, offset: 1216)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1587, file: !1159, line: 679, baseType: !1680, size: 64, offset: 1728)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1483, file: !1159, line: 800, baseType: !1682, size: 64, offset: 5248)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1159, line: 800, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1483, file: !1159, line: 809, baseType: !1686, size: 64, offset: 5312)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1159, line: 70, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1483, file: !1159, line: 825, baseType: !1689, size: 2048, align: 512, offset: 5632)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1159, line: 509, size: 2048, align: 512, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1689, file: !1159, line: 511, baseType: !277, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1689, file: !1159, line: 512, baseType: !277, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1689, file: !1159, line: 513, baseType: !277, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1689, file: !1159, line: 514, baseType: !277, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1689, file: !1159, line: 515, baseType: !277, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1689, file: !1159, line: 516, baseType: !277, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1689, file: !1159, line: 518, baseType: !277, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1689, file: !1159, line: 519, baseType: !277, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1689, file: !1159, line: 520, baseType: !728, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1689, file: !1159, line: 522, baseType: !277, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1689, file: !1159, line: 523, baseType: !277, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1689, file: !1159, line: 524, baseType: !728, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1689, file: !1159, line: 526, baseType: !728, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1689, file: !1159, line: 527, baseType: !277, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1689, file: !1159, line: 529, baseType: !277, size: 64, offset: 896)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1689, file: !1159, line: 530, baseType: !277, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1689, file: !1159, line: 531, baseType: !277, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1689, file: !1159, line: 532, baseType: !277, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1689, file: !1159, line: 533, baseType: !277, size: 64, offset: 1152)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1689, file: !1159, line: 535, baseType: !277, size: 64, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1689, file: !1159, line: 536, baseType: !277, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1689, file: !1159, line: 537, baseType: !277, size: 64, offset: 1344)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1689, file: !1159, line: 538, baseType: !277, size: 64, offset: 1408)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1689, file: !1159, line: 539, baseType: !277, size: 64, offset: 1472)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1689, file: !1159, line: 540, baseType: !277, size: 64, offset: 1536)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1689, file: !1159, line: 541, baseType: !277, size: 64, offset: 1600)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1689, file: !1159, line: 542, baseType: !277, size: 64, offset: 1664)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1689, file: !1159, line: 543, baseType: !277, size: 64, offset: 1728)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1483, file: !1159, line: 833, baseType: !7, size: 32, offset: 7680)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1483, file: !1159, line: 836, baseType: !7, size: 32, offset: 7712)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1483, file: !1159, line: 837, baseType: !109, size: 32, offset: 7744)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1483, file: !1159, line: 838, baseType: !1723, size: 64, offset: 7808)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1726, line: 19, baseType: !1727)
!1726 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1726, line: 19, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1727, file: !1726, line: 19, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 64, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 1)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1483, file: !1159, line: 839, baseType: !1734, size: 64, offset: 7872)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1483, file: !1159, line: 840, baseType: !1725, size: 64, offset: 7936)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1483, file: !1159, line: 841, baseType: !199, size: 64, offset: 8000)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1483, file: !1159, line: 843, baseType: !244, size: 16, offset: 8064)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1483, file: !1159, line: 845, baseType: !244, size: 16, offset: 8080)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1483, file: !1159, line: 848, baseType: !109, size: 32, offset: 8096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1483, file: !1159, line: 849, baseType: !1741, size: 32, offset: 8128)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1159, line: 718, size: 32, elements: !1742)
!1742 = !{!1743, !1750}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1741, file: !1159, line: 724, baseType: !1744, size: 32)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !1159, line: 719, size: 32, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1744, file: !1159, line: 720, baseType: !232, size: 8)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1744, file: !1159, line: 721, baseType: !232, size: 8, offset: 8)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1744, file: !1159, line: 722, baseType: !232, size: 8, offset: 16)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1744, file: !1159, line: 723, baseType: !232, size: 8, offset: 24)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1741, file: !1159, line: 725, baseType: !315, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1483, file: !1159, line: 850, baseType: !195, size: 128, offset: 8192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1483, file: !1159, line: 851, baseType: !1753, size: 64, offset: 8320)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1159, line: 60, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1483, file: !1159, line: 855, baseType: !191, size: 64, offset: 8384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1483, file: !1159, line: 856, baseType: !232, size: 8, offset: 8448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1483, file: !1159, line: 857, baseType: !232, size: 8, offset: 8456)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1483, file: !1159, line: 858, baseType: !109, size: 32, offset: 8480)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1483, file: !1159, line: 859, baseType: !195, size: 128, offset: 8512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1483, file: !1159, line: 860, baseType: !109, size: 32, offset: 8640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1483, file: !1159, line: 861, baseType: !195, size: 128, offset: 8704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1483, file: !1159, line: 873, baseType: !1763, size: 256, offset: 8832)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1159, line: 376, size: 256, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1768}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1763, file: !1159, line: 381, baseType: !191, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1763, file: !1159, line: 384, baseType: !279, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1763, file: !1159, line: 389, baseType: !279, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1763, file: !1159, line: 392, baseType: !279, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1483, file: !1159, line: 875, baseType: !195, size: 128, offset: 9088)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1483, file: !1159, line: 877, baseType: !1771, size: 320, offset: 9216)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1772, line: 86, size: 320, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1773 = !{!1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1771, file: !1772, line: 87, baseType: !109, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1771, file: !1772, line: 88, baseType: !195, size: 128, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1771, file: !1772, line: 89, baseType: !195, size: 128, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1483, file: !1159, line: 878, baseType: !830, size: 192, align: 64, offset: 9536)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1483, file: !1159, line: 881, baseType: !1779, size: 64, offset: 9728)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1781)
!1781 = !{!1782, !2656}
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !38, line: 734, baseType: !1783, size: 10240)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1780, file: !38, line: 734, size: 10240, elements: !1784)
!1784 = !{!1785, !1789, !1802, !2533, !2534, !2535, !2536, !2537, !2538, !2545, !2546, !2547, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2586, !2588, !2591, !2636, !2637, !2638, !2641, !2642, !2643, !2646, !2647, !2648, !2654, !2655}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !38, line: 739, baseType: !1786, size: 512, align: 512)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !38, line: 739, size: 512, align: 512, elements: !1787)
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1786, file: !38, line: 747, baseType: !224, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1783, file: !38, line: 750, baseType: !1790, size: 128, offset: 512)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1791, line: 218, size: 128, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1792 = !{!1793, !1800, !1801}
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1791, line: 219, baseType: !1794, size: 32)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1790, file: !1791, line: 219, size: 32, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1794, file: !1791, line: 220, baseType: !204, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1794, file: !1791, line: 221, baseType: !1798)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1791, line: 197, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1791, line: 197, elements: !1004)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1790, file: !1791, line: 223, baseType: !7, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1790, file: !1791, line: 224, baseType: !199, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1783, file: !38, line: 752, baseType: !1803, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!191, !1806, !191, !191, !191, !191}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1808)
!1808 = !{!1809, !1815, !1816, !1818, !1819, !1820, !1821, !1822, !1872, !2062, !2071, !2072, !2073, !2523, !2524, !2525, !2526, !2528, !2529, !2532}
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !14, line: 995, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !14, line: 995, size: 128, elements: !1811)
!1811 = !{!1812, !1813, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1810, file: !14, line: 996, baseType: !1509, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1810, file: !14, line: 997, baseType: !938, size: 128, align: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1810, file: !14, line: 998, baseType: !7, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1807, file: !14, line: 1005, baseType: !204, size: 32, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1807, file: !14, line: 1006, baseType: !1817, size: 32, offset: 160)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !190, line: 156, baseType: !7)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1807, file: !14, line: 1007, baseType: !722, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1807, file: !14, line: 1008, baseType: !718, size: 256, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1807, file: !14, line: 1009, baseType: !618, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1807, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1807, file: !14, line: 1011, baseType: !1823, size: 256, offset: 640)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1824)
!1824 = !{!1825, !1846, !1868, !1869, !1870, !1871}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1823, file: !14, line: 949, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1827, line: 34, baseType: !1828)
!1827 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1827, line: 25, size: 64, elements: !1829)
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1828, file: !1827, line: 26, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1832, line: 27, baseType: !1833)
!1832 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1832, line: 13, size: 64, elements: !1834)
!1834 = !{!1835, !1845}
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1832, line: 14, baseType: !1836, size: 32)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !1832, line: 14, size: 32, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1836, file: !1832, line: 15, baseType: !224, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !1832, line: 16, baseType: !1840, size: 32)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1836, file: !1832, line: 16, size: 32, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1840, file: !1832, line: 18, baseType: !232, size: 8)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1840, file: !1832, line: 19, baseType: !1844, size: 24, offset: 8)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 24, elements: !384)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1833, file: !1832, line: 26, baseType: !216, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1823, file: !14, line: 950, baseType: !1847, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1855, !1856, !1857, !1858}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1848, file: !30, line: 61, baseType: !1496, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1848, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !30, line: 63, baseType: !204, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1848, file: !30, line: 65, baseType: !1854, size: 256, offset: 128)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1085, size: 256, elements: !290)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1848, file: !30, line: 66, baseType: !1085, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1848, file: !30, line: 68, baseType: !1469, size: 192, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1848, file: !30, line: 69, baseType: !938, size: 128, align: 64, offset: 640)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1848, file: !30, line: 70, baseType: !1859, offset: 768)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, elements: !1866)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1860, file: !30, line: 55, baseType: !109, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1860, file: !30, line: 56, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1866 = !{!1867}
!1867 = !DISubrange(count: -1)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1823, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1823, file: !14, line: 952, baseType: !468, size: 32, offset: 160)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1823, file: !14, line: 952, baseType: !468, size: 32, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1823, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1807, file: !14, line: 1012, baseType: !1873, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1876, line: 110, size: 1472, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1894, !1895, !1896, !1897, !1898, !1899, !2007, !2008, !2009, !2010, !2011, !2042, !2045, !2049, !2057}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1875, file: !1876, line: 111, baseType: !722, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1875, file: !1876, line: 112, baseType: !468, size: 32, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1875, file: !1876, line: 113, baseType: !477, size: 32, offset: 96)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1875, file: !1876, line: 114, baseType: !468, size: 32, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1875, file: !1876, line: 115, baseType: !477, size: 32, offset: 160)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1875, file: !1876, line: 116, baseType: !468, size: 32, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1875, file: !1876, line: 117, baseType: !477, size: 32, offset: 224)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1875, file: !1876, line: 118, baseType: !468, size: 32, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1875, file: !1876, line: 119, baseType: !477, size: 32, offset: 288)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1875, file: !1876, line: 120, baseType: !7, size: 32, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1875, file: !1876, line: 121, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1890, line: 24, baseType: !1891)
!1890 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1890, line: 24, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1891, file: !1890, line: 24, baseType: !277, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1875, file: !1876, line: 122, baseType: !1889, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1875, file: !1876, line: 123, baseType: !1889, size: 64, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1875, file: !1876, line: 124, baseType: !1889, size: 64, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1875, file: !1876, line: 125, baseType: !1889, size: 64, offset: 640)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1875, file: !1876, line: 127, baseType: !236, size: 8, offset: 704)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1875, file: !1876, line: 129, baseType: !1900, size: 64, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1902, line: 195, size: 1728, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1903 = !{!1904, !1905, !1908, !1913, !1914, !1917, !1918, !1923, !1924, !1925, !1926, !1929, !1930, !1931, !1932, !1933, !1971, !1992}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1901, file: !1902, line: 196, baseType: !1496, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1901, file: !1902, line: 197, baseType: !1906, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1902, line: 28, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !190, line: 104, baseType: !714)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1902, line: 198, baseType: !1909, size: 192, offset: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1902, line: 198, size: 192, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1909, file: !1902, line: 199, baseType: !195, size: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1909, file: !1902, line: 200, baseType: !830, size: 192, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1901, file: !1902, line: 205, baseType: !1376, size: 320, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1901, file: !1902, line: 206, baseType: !1915, size: 64, offset: 576)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1902, line: 206, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1901, file: !1902, line: 207, baseType: !199, size: 64, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1902, line: 208, baseType: !1919, size: 64, offset: 704)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1902, line: 208, size: 64, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1919, file: !1902, line: 209, baseType: !1217, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1919, file: !1902, line: 210, baseType: !1217, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1901, file: !1902, line: 212, baseType: !1217, size: 64, offset: 768)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1901, file: !1902, line: 213, baseType: !468, size: 32, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1901, file: !1902, line: 214, baseType: !477, size: 32, offset: 864)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1901, file: !1902, line: 215, baseType: !1927, size: 32, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1902, line: 31, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !190, line: 110, baseType: !315)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1901, file: !1902, line: 216, baseType: !244, size: 16, offset: 928)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1901, file: !1902, line: 217, baseType: !244, size: 16, offset: 944)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1901, file: !1902, line: 221, baseType: !856, size: 16, offset: 960)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !1902, line: 228, baseType: !191, size: 64, offset: 1024)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1902, line: 245, baseType: !1934, size: 320, offset: 1088)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1902, line: 245, size: 320, elements: !1935)
!1935 = !{!1936, !1963}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1934, file: !1902, line: 246, baseType: !1937, size: 320)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1902, line: 114, size: 320, elements: !1938)
!1938 = !{!1939, !1940, !1952, !1955, !1962}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1937, file: !1902, line: 116, baseType: !191, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !1902, line: 117, baseType: !1941, size: 64, offset: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !1902, line: 117, size: 64, elements: !1942)
!1942 = !{!1943, !1951}
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1902, line: 118, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1902, line: 118, size: 64, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1944, file: !1902, line: 120, baseType: !242, size: 16)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1944, file: !1902, line: 121, baseType: !1948, size: 48, offset: 16)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 48, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 6)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1941, file: !1902, line: 127, baseType: !191, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1937, file: !1902, line: 129, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1902, line: 102, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1937, file: !1902, line: 130, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1902, line: 108, size: 192, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1957, file: !1902, line: 109, baseType: !938, size: 128, align: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1957, file: !1902, line: 110, baseType: !1496, size: 32, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1957, file: !1902, line: 111, baseType: !798, size: 8, offset: 160)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1937, file: !1902, line: 131, baseType: !282, size: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1902, line: 247, baseType: !1964, size: 320)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1934, file: !1902, line: 247, size: 320, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1964, file: !1902, line: 248, baseType: !191, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1964, file: !1902, line: 249, baseType: !191, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1964, file: !1902, line: 250, baseType: !1953, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1964, file: !1902, line: 251, baseType: !1956, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1964, file: !1902, line: 252, baseType: !383, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1902, line: 260, baseType: !1972, size: 256, offset: 1408)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1902, line: 260, size: 256, elements: !1973)
!1973 = !{!1974, !1980}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1972, file: !1902, line: 261, baseType: !1975, size: 256)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1902, line: 134, size: 256, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1975, file: !1902, line: 135, baseType: !199, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1975, file: !1902, line: 136, baseType: !1979, size: 256)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !290)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1902, line: 262, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1972, file: !1902, line: 262, size: 256, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1981, file: !1902, line: 264, baseType: !195, size: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1981, file: !1902, line: 265, baseType: !1985, size: 128, offset: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1986, line: 22, size: 128, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1987 = !{!1988, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1985, file: !1986, line: 23, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1986, line: 23, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1985, file: !1986, line: 24, baseType: !191, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1901, file: !1902, line: 280, baseType: !1993, size: 64, offset: 1664)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1902, line: 176, size: 192, elements: !1995)
!1995 = !{!1996, !2005, !2006}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1994, file: !1902, line: 177, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1902, line: 171, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!109, !1900, !2001, !2003, !1900}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1954)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1975)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1994, file: !1902, line: 178, baseType: !1900, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1994, file: !1902, line: 179, baseType: !1953, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1875, file: !1876, line: 130, baseType: !1900, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1875, file: !1876, line: 131, baseType: !1900, size: 64, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1875, file: !1876, line: 132, baseType: !1900, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1875, file: !1876, line: 135, baseType: !199, size: 64, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1875, file: !1876, line: 137, baseType: !2012, size: 64, offset: 1088)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2014, line: 14, size: 1088, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2015 = !{!2016, !2017, !2026, !2027, !2028, !2029, !2030, !2031}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2013, file: !2014, line: 15, baseType: !1496, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2013, file: !2014, line: 17, baseType: !2018, size: 320, offset: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2019, line: 22, size: 320, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2020 = !{!2021, !2022, !2023, !2024}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2018, file: !2019, line: 23, baseType: !676, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2018, file: !2019, line: 24, baseType: !728, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2018, file: !2019, line: 26, baseType: !195, size: 128, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2018, file: !2019, line: 28, baseType: !2025, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2013, file: !2014, line: 19, baseType: !191, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2013, file: !2014, line: 20, baseType: !722, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2013, file: !2014, line: 23, baseType: !962, size: 128, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2013, file: !2014, line: 24, baseType: !468, size: 32, offset: 640)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2013, file: !2014, line: 29, baseType: !722, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2013, file: !2014, line: 36, baseType: !2032, size: 320, offset: 768)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2033, line: 15, size: 320, elements: !2034)
!2033 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2032, file: !2033, line: 16, baseType: !676, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2032, file: !2033, line: 18, baseType: !109, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2032, file: !2033, line: 19, baseType: !109, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2032, file: !2033, line: 20, baseType: !109, size: 32, offset: 96)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2032, file: !2033, line: 21, baseType: !109, size: 32, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2032, file: !2033, line: 22, baseType: !191, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2032, file: !2033, line: 23, baseType: !191, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1875, file: !1876, line: 138, baseType: !2043, size: 64, offset: 1152)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1875, file: !1876, line: 139, baseType: !2046, size: 64, offset: 1216)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2048, line: 16, flags: DIFlagFwdDecl)
!2048 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1875, file: !1876, line: 140, baseType: !2050, size: 64, offset: 1280)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1876, line: 25, size: 64, elements: !2052)
!2052 = !{!2053, !2054, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2051, file: !1876, line: 26, baseType: !224, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2051, file: !1876, line: 27, baseType: !109, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2051, file: !1876, line: 28, baseType: !2056, offset: 64)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, elements: !1866)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1876, line: 142, baseType: !2058, size: 128, offset: 1344)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1876, line: 142, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2058, file: !1876, line: 143, baseType: !109, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2058, file: !1876, line: 144, baseType: !938, size: 128, align: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1807, file: !14, line: 1013, baseType: !2063, size: 256, offset: 960)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2063, file: !14, line: 971, baseType: !191, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2063, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2063, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2063, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2063, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2063, file: !14, line: 976, baseType: !618, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1807, file: !14, line: 1014, baseType: !1288, size: 128, offset: 1216)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1807, file: !14, line: 1015, baseType: !462, size: 64, offset: 1344)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1807, file: !14, line: 1016, baseType: !2074, size: 64, offset: 1408)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2077)
!2077 = !{!2078, !2079, !2083, !2088, !2092, !2121, !2122, !2128, !2141, !2149, !2153, !2154, !2445, !2446, !2450, !2455, !2456, !2460, !2464, !2470, !2471, !2475, !2476, !2482, !2486, !2490, !2496, !2500, !2504, !2508, !2512, !2513, !2519}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2076, file: !14, line: 1915, baseType: !647, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2076, file: !14, line: 1916, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!618, !1806, !618, !109}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2076, file: !14, line: 1917, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!415, !1806, !383, !430, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2076, file: !14, line: 1918, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!415, !1806, !282, !430, !2087}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2076, file: !14, line: 1919, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!415, !2096, !2118}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2105, !2106, !2107, !2108}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2097, file: !14, line: 374, baseType: !1806, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2097, file: !14, line: 375, baseType: !618, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2097, file: !14, line: 376, baseType: !2102, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2096, !419}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2097, file: !14, line: 377, baseType: !199, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2097, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2097, file: !14, line: 379, baseType: !242, size: 16, offset: 288)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !14, line: 380, baseType: !2109, size: 64, offset: 320)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !14, line: 380, size: 64, elements: !2110)
!2110 = !{!2111, !2114}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2109, file: !14, line: 386, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2109, file: !14, line: 395, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!415, !199}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2120, line: 17, flags: DIFlagFwdDecl)
!2120 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2076, file: !14, line: 1920, baseType: !2093, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2076, file: !14, line: 1921, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!109, !2096, !2126, !7}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2076, file: !14, line: 1923, baseType: !2129, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!109, !1806, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2134)
!2134 = !{!2135, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2133, file: !14, line: 1859, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!798, !2132, !282, !109, !618, !277, !7}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2133, file: !14, line: 1860, baseType: !618, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2076, file: !14, line: 1924, baseType: !2142, size: 64, offset: 512)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2145, !1806, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2146, line: 59, baseType: !7)
!2146 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !633, line: 31, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2076, file: !14, line: 1925, baseType: !2150, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!419, !1806, !7, !191}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2076, file: !14, line: 1926, baseType: !2150, size: 64, offset: 640)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2076, file: !14, line: 1927, baseType: !2155, size: 64, offset: 704)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!109, !1806, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2160)
!2160 = !{!2161, !2170, !2171, !2179, !2186, !2187, !2192, !2193, !2198, !2199, !2202, !2438, !2439, !2440, !2441, !2442, !2443}
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 628, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !38, line: 628, size: 128, elements: !2163)
!2163 = !{!2164, !2169}
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !38, line: 629, baseType: !2165, size: 128)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !38, line: 629, size: 128, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2165, file: !38, line: 631, baseType: !191, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2165, file: !38, line: 632, baseType: !191, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2162, file: !38, line: 635, baseType: !938, size: 128, align: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2159, file: !38, line: 639, baseType: !1779, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2159, file: !38, line: 640, baseType: !2172, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2173, line: 297, baseType: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2173, line: 297, size: 64, elements: !2175)
!2175 = !{!2176}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2174, file: !2173, line: 297, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2178, line: 19, baseType: !191)
!2178 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 646, baseType: !2180, size: 64, offset: 256)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !38, line: 646, size: 64, elements: !2181)
!2181 = !{!2182, !2185}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2180, file: !38, line: 647, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !191)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2180, file: !38, line: 648, baseType: !2184, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2159, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2159, file: !38, line: 667, baseType: !2188, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2189, file: !38, line: 580, baseType: !1376, size: 320)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2159, file: !38, line: 670, baseType: !798, size: 8, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2159, file: !38, line: 681, baseType: !2194, size: 256, offset: 512)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2159, file: !38, line: 678, size: 256, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2194, file: !38, line: 679, baseType: !830, size: 192, align: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2194, file: !38, line: 680, baseType: !191, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2159, file: !38, line: 689, baseType: !195, size: 128, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2159, file: !38, line: 691, baseType: !2200, size: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2159, file: !38, line: 694, baseType: !2203, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2206, line: 563, size: 1024, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2207 = !{!2208, !2212, !2213, !2217, !2221, !2225, !2402, !2406, !2410, !2414, !2415, !2416, !2420, !2424, !2430, !2434}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2205, file: !2206, line: 564, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2158}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2205, file: !2206, line: 569, baseType: !2209, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2205, file: !2206, line: 571, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!109, !2158, !191}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2205, file: !2206, line: 572, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!109, !2158}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2205, file: !2206, line: 578, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!109, !2158, !191, !191, !191}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2205, file: !2206, line: 580, baseType: !2226, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2206, line: 512, size: 896, elements: !2232)
!2232 = !{!2233, !2241, !2242, !2249, !2256, !2266, !2395, !2396, !2398, !2400}
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !2206, line: 513, baseType: !2234, size: 320)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !2206, line: 513, size: 320, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2234, file: !2206, line: 514, baseType: !2158, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2234, file: !2206, line: 515, baseType: !189, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2234, file: !2206, line: 516, baseType: !191, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2234, file: !2206, line: 517, baseType: !191, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2234, file: !2206, line: 518, baseType: !191, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !2206, line: 520, baseType: !37, size: 32, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2231, file: !2206, line: 522, baseType: !2243, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2178, line: 22, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2178, line: 22, size: 64, elements: !2246)
!2246 = !{!2247}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2245, file: !2178, line: 22, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2178, line: 15, baseType: !191)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2231, file: !2206, line: 524, baseType: !2250, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2173, line: 372, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2173, line: 372, size: 64, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2252, file: !2173, line: 372, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2178, line: 16, baseType: !191)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !2206, line: 527, baseType: !2257, size: 64, offset: 512)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !2206, line: 527, size: 64, elements: !2258)
!2258 = !{!2259, !2265}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2257, file: !2206, line: 528, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2178, line: 21, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2178, line: 21, size: 64, elements: !2262)
!2262 = !{!2263}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2261, file: !2178, line: 21, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2178, line: 14, baseType: !191)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2257, file: !2206, line: 529, baseType: !2244, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2231, file: !2206, line: 534, baseType: !2267, size: 64, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2269)
!2269 = !{!2270, !2271, !2389, !2394}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !38, line: 75, baseType: !191, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !38, line: 83, baseType: !2272, size: 320, offset: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !38, line: 83, size: 320, elements: !2273)
!2273 = !{!2274, !2295, !2309, !2313, !2388}
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !38, line: 84, baseType: !2275, size: 320)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2272, file: !38, line: 84, size: 320, elements: !2276)
!2276 = !{!2277, !2288, !2289, !2294}
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !38, line: 90, baseType: !2278, size: 128)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !38, line: 90, size: 128, elements: !2279)
!2279 = !{!2280, !2281, !2286, !2287}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2278, file: !38, line: 91, baseType: !195, size: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !38, line: 94, baseType: !2282, size: 128)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !38, line: 94, size: 128, elements: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2282, file: !38, line: 96, baseType: !199, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2282, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2278, file: !38, line: 102, baseType: !195, size: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2278, file: !38, line: 103, baseType: !195, size: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2275, file: !38, line: 106, baseType: !458, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !38, line: 107, baseType: !2290, size: 64, offset: 192)
!2290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !38, line: 107, size: 64, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2290, file: !38, line: 108, baseType: !191, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2290, file: !38, line: 109, baseType: !191, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2275, file: !38, line: 117, baseType: !191, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !38, line: 119, baseType: !2296, size: 320)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2272, file: !38, line: 119, size: 320, elements: !2297)
!2297 = !{!2298, !2299, !2302, !2303, !2304}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2296, file: !38, line: 124, baseType: !191, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2296, file: !38, line: 125, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2296, file: !38, line: 126, baseType: !191, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2296, file: !38, line: 127, baseType: !191, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !38, line: 128, baseType: !2305, size: 64, offset: 256)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !38, line: 128, size: 64, elements: !2306)
!2306 = !{!2307, !2308}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2305, file: !38, line: 133, baseType: !191, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2305, file: !38, line: 138, baseType: !722, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !38, line: 141, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2272, file: !38, line: 141, size: 64, elements: !2311)
!2311 = !{!2312}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2310, file: !38, line: 142, baseType: !191, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !38, line: 144, baseType: !2314, size: 128)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2272, file: !38, line: 144, size: 128, elements: !2315)
!2315 = !{!2316, !2387}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2314, file: !38, line: 146, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2319)
!2319 = !{!2320, !2330, !2351, !2352, !2353, !2354, !2355, !2369, !2370, !2371}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2318, file: !54, line: 127, baseType: !2321, size: 384)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2322)
!2322 = !{!2323, !2324, !2326, !2327, !2328, !2329}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2321, file: !54, line: 22, baseType: !191, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2321, file: !54, line: 23, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2321, file: !54, line: 24, baseType: !2325, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2321, file: !54, line: 25, baseType: !191, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2321, file: !54, line: 26, baseType: !191, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2321, file: !54, line: 27, baseType: !191, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2318, file: !54, line: 128, baseType: !2331, size: 128, offset: 384)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2332, line: 105, size: 128, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2331, file: !2332, line: 110, baseType: !191, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2331, file: !2332, line: 118, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2332, line: 95, size: 448, elements: !2338)
!2338 = !{!2339, !2340, !2346, !2347, !2348, !2349, !2350}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2337, file: !2332, line: 96, baseType: !722, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2337, file: !2332, line: 97, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2332, line: 60, baseType: !2343)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2337, file: !2332, line: 98, baseType: !2341, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2337, file: !2332, line: 99, baseType: !798, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2337, file: !2332, line: 100, baseType: !798, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2337, file: !2332, line: 101, baseType: !938, size: 128, align: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2337, file: !2332, line: 102, baseType: !2345, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2318, file: !54, line: 129, baseType: !667, size: 256, offset: 512)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2318, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2318, file: !54, line: 132, baseType: !191, size: 64, offset: 832)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2318, file: !54, line: 133, baseType: !2356, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2359)
!2359 = !{!2360, !2364, !2365}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2358, file: !54, line: 83, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2267}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2358, file: !54, line: 89, baseType: !2226, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2358, file: !54, line: 100, baseType: !2366, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!109, !2317, !191, !191, !109}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2318, file: !54, line: 134, baseType: !199, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2318, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !54, line: 136, baseType: !2372, size: 128, offset: 1088)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2318, file: !54, line: 136, size: 128, elements: !2373)
!2373 = !{!2374, !2380}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2372, file: !54, line: 137, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2376, line: 6, size: 128, elements: !2377)
!2376 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2375, file: !2376, line: 7, baseType: !277, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2375, file: !2376, line: 8, baseType: !277, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !54, line: 138, baseType: !2381)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2372, file: !54, line: 138, elements: !2382)
!2382 = !{!2383, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2381, file: !54, line: 138, baseType: !2384)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2381, file: !54, line: 138, elements: !1004)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2381, file: !54, line: 138, baseType: !2386)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, elements: !1866)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2314, file: !38, line: 147, baseType: !199, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2272, file: !38, line: 161, baseType: !938, size: 128, align: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !38, line: 164, baseType: !2390, size: 32, offset: 384)
!2390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !38, line: 164, size: 32, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2390, file: !38, line: 169, baseType: !224, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2390, file: !38, line: 177, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2268, file: !38, line: 181, baseType: !224, size: 32, offset: 416)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2231, file: !2206, line: 535, baseType: !2267, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2231, file: !2206, line: 541, baseType: !2397, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2231, file: !2206, line: 545, baseType: !2399, size: 64, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2231, file: !2206, line: 549, baseType: !2401, size: 64, offset: 832)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2173, line: 520, baseType: !2267)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2205, file: !2206, line: 581, baseType: !2403, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!2229, !2230, !7}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2205, file: !2206, line: 582, baseType: !2407, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!2229, !2230, !191, !191}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2205, file: !2206, line: 584, baseType: !2411, size: 64, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!191, !2158}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2205, file: !2206, line: 588, baseType: !2226, size: 64, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2205, file: !2206, line: 591, baseType: !2226, size: 64, offset: 640)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2205, file: !2206, line: 597, baseType: !2417, size: 64, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!109, !2158, !191, !199, !109, !109}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2205, file: !2206, line: 603, baseType: !2421, size: 64, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!282, !2158}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2205, file: !2206, line: 613, baseType: !2425, size: 64, offset: 832)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!109, !2158, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2205, file: !2206, line: 625, baseType: !2431, size: 64, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!2428, !2158, !191}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2205, file: !2206, line: 633, baseType: !2435, size: 64, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2267, !2158, !191}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2159, file: !38, line: 697, baseType: !191, size: 64, offset: 1024)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2159, file: !38, line: 699, baseType: !1806, size: 64, offset: 1088)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2159, file: !38, line: 700, baseType: !199, size: 64, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2159, file: !38, line: 711, baseType: !722, size: 64, offset: 1216)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2159, file: !38, line: 717, baseType: !2428, size: 64, offset: 1280)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2159, file: !38, line: 722, baseType: !2444, offset: 1344)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1004)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2076, file: !14, line: 1928, baseType: !191, size: 64, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2076, file: !14, line: 1929, baseType: !2447, size: 64, offset: 832)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!109, !462, !1806}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2076, file: !14, line: 1930, baseType: !2451, size: 64, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!109, !1806, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !199)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2076, file: !14, line: 1931, baseType: !2447, size: 64, offset: 960)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2076, file: !14, line: 1932, baseType: !2457, size: 64, offset: 1024)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!109, !1806, !618, !618, !109}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2076, file: !14, line: 1933, baseType: !2461, size: 64, offset: 1088)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!109, !109, !1806, !109}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2076, file: !14, line: 1934, baseType: !2465, size: 64, offset: 1152)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!109, !1806, !109, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2076, file: !14, line: 1935, baseType: !1803, size: 64, offset: 1216)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2076, file: !14, line: 1936, baseType: !2472, size: 64, offset: 1280)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!109, !109}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2076, file: !14, line: 1937, baseType: !2465, size: 64, offset: 1344)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2076, file: !14, line: 1938, baseType: !2477, size: 64, offset: 1408)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!415, !2480, !1806, !2087, !430, !7}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1159, line: 59, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2076, file: !14, line: 1939, baseType: !2483, size: 64, offset: 1472)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!415, !1806, !2087, !2480, !430, !7}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2076, file: !14, line: 1940, baseType: !2487, size: 64, offset: 1536)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !1806}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2076, file: !14, line: 1941, baseType: !2491, size: 64, offset: 1600)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!109, !1806, !109, !2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2076, file: !14, line: 1942, baseType: !2497, size: 64, offset: 1664)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!419, !1806, !109, !618, !618}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2076, file: !14, line: 1944, baseType: !2501, size: 64, offset: 1728)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !1157, !1806}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2076, file: !14, line: 1948, baseType: !2505, size: 64, offset: 1792)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!415, !1806, !618, !1806, !618, !430, !7}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2076, file: !14, line: 1950, baseType: !2509, size: 64, offset: 1856)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!618, !1806, !618, !1806, !618, !618, !7}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2076, file: !14, line: 1953, baseType: !2457, size: 64, offset: 1920)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2076, file: !14, line: 1954, baseType: !2514, size: 64, offset: 1984)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!109, !2517, !7}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2076, file: !14, line: 1955, baseType: !2520, size: 64, offset: 2048)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!109, !2517, !2126, !7}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1807, file: !14, line: 1018, baseType: !277, size: 64, offset: 1472)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1807, file: !14, line: 1020, baseType: !199, size: 64, offset: 1536)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1807, file: !14, line: 1023, baseType: !199, size: 64, offset: 1600)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1807, file: !14, line: 1027, baseType: !2527, size: 64, offset: 1664)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1807, file: !14, line: 1029, baseType: !458, size: 64, offset: 1728)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1807, file: !14, line: 1030, baseType: !2530, size: 32, offset: 1792)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2531, line: 8, baseType: !315)
!2531 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1807, file: !14, line: 1031, baseType: !2530, size: 32, offset: 1824)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1783, file: !38, line: 756, baseType: !191, size: 64, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1783, file: !38, line: 757, baseType: !191, size: 64, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1783, file: !38, line: 760, baseType: !191, size: 64, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1783, file: !38, line: 761, baseType: !191, size: 64, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1783, file: !38, line: 763, baseType: !191, size: 64, offset: 960)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1783, file: !38, line: 764, baseType: !2539, size: 64, offset: 1024)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2173, line: 299, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2173, line: 299, size: 64, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2541, file: !2173, line: 299, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2178, line: 18, baseType: !191)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1783, file: !38, line: 773, baseType: !224, size: 32, offset: 1088)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1783, file: !38, line: 785, baseType: !224, size: 32, offset: 1120)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1783, file: !38, line: 795, baseType: !2548, size: 64, offset: 1152)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2549, file: !38, line: 727, baseType: !277, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2549, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1783, file: !38, line: 801, baseType: !191, size: 64, offset: 1216)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1783, file: !38, line: 804, baseType: !722, size: 64, offset: 1280)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1783, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1783, file: !38, line: 808, baseType: !204, size: 32, offset: 1376)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1783, file: !38, line: 823, baseType: !1376, size: 320, offset: 1408)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1783, file: !38, line: 825, baseType: !195, size: 128, offset: 1728)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1783, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1783, file: !38, line: 849, baseType: !191, size: 64, offset: 1920)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1783, file: !38, line: 850, baseType: !191, size: 64, offset: 1984)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1783, file: !38, line: 852, baseType: !191, size: 64, offset: 2048)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1783, file: !38, line: 853, baseType: !191, size: 64, offset: 2112)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1783, file: !38, line: 854, baseType: !724, size: 64, offset: 2176)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1783, file: !38, line: 855, baseType: !191, size: 64, offset: 2240)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1783, file: !38, line: 856, baseType: !191, size: 64, offset: 2304)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1783, file: !38, line: 857, baseType: !191, size: 64, offset: 2368)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1783, file: !38, line: 858, baseType: !191, size: 64, offset: 2432)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1783, file: !38, line: 865, baseType: !508, size: 32, offset: 2496)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1783, file: !38, line: 867, baseType: !204, size: 32, offset: 2528)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1783, file: !38, line: 869, baseType: !191, size: 64, offset: 2560)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1783, file: !38, line: 869, baseType: !191, size: 64, offset: 2624)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1783, file: !38, line: 869, baseType: !191, size: 64, offset: 2688)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1783, file: !38, line: 869, baseType: !191, size: 64, offset: 2752)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1783, file: !38, line: 870, baseType: !191, size: 64, offset: 2816)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1783, file: !38, line: 870, baseType: !191, size: 64, offset: 2880)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1783, file: !38, line: 870, baseType: !191, size: 64, offset: 2944)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1783, file: !38, line: 871, baseType: !191, size: 64, offset: 3008)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1783, file: !38, line: 871, baseType: !191, size: 64, offset: 3072)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1783, file: !38, line: 871, baseType: !191, size: 64, offset: 3136)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1783, file: !38, line: 871, baseType: !191, size: 64, offset: 3200)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1783, file: !38, line: 873, baseType: !2583, size: 3328, offset: 3264)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 3328, elements: !2584)
!2584 = !{!2585}
!2585 = !DISubrange(count: 52)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1783, file: !38, line: 875, baseType: !2587, size: 1280, offset: 6592)
!2587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2018, size: 1280, elements: !290)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1783, file: !38, line: 877, baseType: !2589, size: 64, offset: 7872)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1783, file: !38, line: 880, baseType: !2592, size: 1088, offset: 7936)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2593, line: 72, baseType: !2594)
!2593 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2593, line: 23, size: 1088, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2603, !2604, !2605, !2606, !2633, !2634, !2635}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2594, file: !2593, line: 28, baseType: !277, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2594, file: !2593, line: 38, baseType: !724, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2594, file: !2593, line: 40, baseType: !191, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2594, file: !2593, line: 43, baseType: !1376, size: 320, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2594, file: !2593, line: 44, baseType: !2601, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2593, line: 44, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !2593, line: 48, baseType: !191, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2594, file: !2593, line: 59, baseType: !718, size: 256, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2594, file: !2593, line: 60, baseType: !199, size: 64, offset: 896)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2594, file: !2593, line: 61, baseType: !2607, size: 64, offset: 960)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2609)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2610, line: 13, size: 1216, elements: !2611)
!2610 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2609, file: !2610, line: 14, baseType: !199, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2609, file: !2610, line: 15, baseType: !191, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2609, file: !2610, line: 17, baseType: !191, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2609, file: !2610, line: 17, baseType: !191, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2609, file: !2610, line: 18, baseType: !191, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2609, file: !2610, line: 18, baseType: !191, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2609, file: !2610, line: 19, baseType: !2619, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2609, file: !2610, line: 21, baseType: !419, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2609, file: !2610, line: 23, baseType: !419, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2609, file: !2610, line: 24, baseType: !419, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2609, file: !2610, line: 25, baseType: !419, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2609, file: !2610, line: 26, baseType: !419, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2609, file: !2610, line: 27, baseType: !419, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2609, file: !2610, line: 28, baseType: !419, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2609, file: !2610, line: 29, baseType: !419, size: 64, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2609, file: !2610, line: 30, baseType: !419, size: 64, offset: 960)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2609, file: !2610, line: 31, baseType: !419, size: 64, offset: 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2609, file: !2610, line: 32, baseType: !419, size: 64, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2609, file: !2610, line: 33, baseType: !419, size: 64, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2594, file: !2593, line: 63, baseType: !224, size: 32, offset: 1024)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2594, file: !2593, line: 69, baseType: !242, size: 16, offset: 1056)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2594, file: !2593, line: 70, baseType: !854, size: 16, offset: 1072)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1783, file: !38, line: 882, baseType: !191, size: 64, offset: 9024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1783, file: !38, line: 885, baseType: !204, size: 32, offset: 9088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1783, file: !38, line: 886, baseType: !2639, size: 64, offset: 9152)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1783, file: !38, line: 901, baseType: !2043, size: 64, offset: 9216)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1783, file: !38, line: 904, baseType: !1806, size: 64, offset: 9280)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1783, file: !38, line: 906, baseType: !2644, size: 64, offset: 9344)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1783, file: !38, line: 930, baseType: !224, size: 32, offset: 9408)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1783, file: !38, line: 933, baseType: !224, size: 32, offset: 9440)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1783, file: !38, line: 935, baseType: !2649, size: 64, offset: 9472)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2649, file: !68, line: 104, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1783, file: !38, line: 940, baseType: !722, size: 64, offset: 9536)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1783, file: !38, line: 942, baseType: !976, size: 256, offset: 9600)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1780, file: !38, line: 986, baseType: !2657, offset: 10240)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !1866)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1483, file: !1159, line: 882, baseType: !1779, size: 64, offset: 9792)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1483, file: !1159, line: 884, baseType: !109, size: 32, offset: 9856)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1483, file: !1159, line: 885, baseType: !109, size: 32, offset: 9888)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1483, file: !1159, line: 886, baseType: !109, size: 32, offset: 9920)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1483, file: !1159, line: 888, baseType: !109, size: 32, offset: 9952)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1483, file: !1159, line: 890, baseType: !191, size: 64, offset: 9984)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1483, file: !1159, line: 893, baseType: !7, size: 32, offset: 10048)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1483, file: !1159, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1483, file: !1159, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1483, file: !1159, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1483, file: !1159, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1483, file: !1159, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1483, file: !1159, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1483, file: !1159, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1483, file: !1159, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1483, file: !1159, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1483, file: !1159, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1483, file: !1159, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1483, file: !1159, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1483, file: !1159, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1483, file: !1159, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1483, file: !1159, line: 969, baseType: !191, size: 64, offset: 10176)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1483, file: !1159, line: 971, baseType: !2681, size: 448, offset: 10240)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2682)
!2682 = !{!2683, !2684, !2689}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2681, file: !62, line: 26, baseType: !191, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2681, file: !62, line: 27, baseType: !2685, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!419, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, scope: !2681, file: !62, line: 28, baseType: !2690, size: 320, offset: 128)
!2690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2681, file: !62, line: 28, size: 320, elements: !2691)
!2691 = !{!2692, !2701, !2726}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2690, file: !62, line: 37, baseType: !2693, size: 320)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !62, line: 30, size: 320, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2693, file: !62, line: 31, baseType: !314, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2693, file: !62, line: 32, baseType: !315, size: 32, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2693, file: !62, line: 33, baseType: !315, size: 32, offset: 96)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2693, file: !62, line: 34, baseType: !315, size: 32, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2693, file: !62, line: 35, baseType: !277, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2693, file: !62, line: 36, baseType: !314, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2690, file: !62, line: 47, baseType: !2702, size: 192)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !62, line: 39, size: 192, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2725}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2702, file: !62, line: 40, baseType: !1650, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2702, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !62, line: 42, baseType: !2707, size: 64, offset: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2702, file: !62, line: 42, size: 64, elements: !2708)
!2708 = !{!2709, !2717}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2707, file: !62, line: 43, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2712, line: 7, size: 128, elements: !2713)
!2712 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2713 = !{!2714, !2716}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2711, file: !2712, line: 8, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !417, line: 93, baseType: !620)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2711, file: !2712, line: 9, baseType: !620, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2707, file: !62, line: 44, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2720, line: 7, size: 64, elements: !2721)
!2720 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2721 = !{!2722, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2719, file: !2720, line: 8, baseType: !2723, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2720, line: 5, baseType: !714)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2719, file: !2720, line: 9, baseType: !714, size: 32, offset: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2702, file: !62, line: 46, baseType: !277, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2690, file: !62, line: 55, baseType: !2727, size: 256)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2690, file: !62, line: 49, size: 256, elements: !2728)
!2728 = !{!2729, !2732, !2733, !2734, !2735}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2727, file: !62, line: 50, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2727, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2727, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2727, file: !62, line: 53, baseType: !191, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2727, file: !62, line: 54, baseType: !191, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1483, file: !1159, line: 973, baseType: !2737, size: 32, offset: 10688)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !190, line: 27, baseType: !2738)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !417, line: 28, baseType: !109)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1483, file: !1159, line: 974, baseType: !2737, size: 32, offset: 10720)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1483, file: !1159, line: 978, baseType: !191, size: 64, offset: 10752)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1483, file: !1159, line: 987, baseType: !1482, size: 64, offset: 10816)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1483, file: !1159, line: 990, baseType: !1482, size: 64, offset: 10880)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1483, file: !1159, line: 995, baseType: !195, size: 128, offset: 10944)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1483, file: !1159, line: 996, baseType: !195, size: 128, offset: 11072)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1483, file: !1159, line: 997, baseType: !1482, size: 64, offset: 11200)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1483, file: !1159, line: 1005, baseType: !195, size: 128, offset: 11264)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1483, file: !1159, line: 1006, baseType: !195, size: 128, offset: 11392)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1483, file: !1159, line: 1009, baseType: !1847, size: 64, offset: 11520)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1483, file: !1159, line: 1010, baseType: !2750, size: 512, offset: 11584)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 512, elements: !290)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1483, file: !1159, line: 1011, baseType: !195, size: 128, offset: 12096)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1483, file: !1159, line: 1012, baseType: !195, size: 128, offset: 12224)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1483, file: !1159, line: 1014, baseType: !666, size: 64, offset: 12352)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1483, file: !1159, line: 1017, baseType: !847, size: 64, offset: 12416)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1483, file: !1159, line: 1020, baseType: !847, size: 64, offset: 12480)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1483, file: !1159, line: 1023, baseType: !199, size: 64, offset: 12544)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1483, file: !1159, line: 1025, baseType: !277, size: 64, offset: 12608)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1483, file: !1159, line: 1026, baseType: !277, size: 64, offset: 12672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1483, file: !1159, line: 1031, baseType: !277, size: 64, offset: 12736)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1483, file: !1159, line: 1032, baseType: !2761, size: 192, offset: 12800)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1159, line: 324, size: 192, elements: !2762)
!2762 = !{!2763, !2764, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2761, file: !1159, line: 326, baseType: !277, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2761, file: !1159, line: 327, baseType: !277, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2761, file: !1159, line: 328, baseType: !676, size: 32, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1483, file: !1159, line: 1041, baseType: !191, size: 64, offset: 12992)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1483, file: !1159, line: 1042, baseType: !191, size: 64, offset: 13056)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1483, file: !1159, line: 1045, baseType: !277, size: 64, offset: 13120)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1483, file: !1159, line: 1048, baseType: !277, size: 64, offset: 13184)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1483, file: !1159, line: 1051, baseType: !191, size: 64, offset: 13248)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1483, file: !1159, line: 1052, baseType: !191, size: 64, offset: 13312)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1483, file: !1159, line: 1055, baseType: !2773, size: 640, offset: 13376)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2774, line: 132, size: 640, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2775 = !{!2776, !2782, !2783}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2773, file: !2774, line: 133, baseType: !2777, size: 576)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 576, elements: !384)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2774, line: 117, size: 192, elements: !2779)
!2779 = !{!2780, !2781}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2778, file: !2774, line: 118, baseType: !277, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2778, file: !2774, line: 119, baseType: !1659, size: 128, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2773, file: !2774, line: 134, baseType: !7, size: 32, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2773, file: !2774, line: 135, baseType: !7, size: 32, offset: 608)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1483, file: !1159, line: 1058, baseType: !2785, size: 448, offset: 14016)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2774, line: 144, size: 448, elements: !2786)
!2786 = !{!2787, !2788, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2785, file: !2774, line: 145, baseType: !938, size: 128, align: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2785, file: !2774, line: 146, baseType: !718, size: 256, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2785, file: !2774, line: 147, baseType: !7, size: 32, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1483, file: !1159, line: 1064, baseType: !1873, size: 64, offset: 14464)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1483, file: !1159, line: 1067, baseType: !1873, size: 64, offset: 14528)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1483, file: !1159, line: 1070, baseType: !1873, size: 64, offset: 14592)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1483, file: !1159, line: 1074, baseType: !1900, size: 64, offset: 14656)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1483, file: !1159, line: 1084, baseType: !2795, size: 128, offset: 14720)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !2796)
!2796 = !{!2797}
!2797 = !DISubrange(count: 16)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1483, file: !1159, line: 1086, baseType: !2799, size: 64, offset: 14848)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1159, line: 55, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1483, file: !1159, line: 1089, baseType: !2802, size: 64, offset: 14912)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2803, line: 12, size: 64, elements: !2804)
!2803 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2804 = !{!2805}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2802, file: !2803, line: 13, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2803, line: 8, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1483, file: !1159, line: 1090, baseType: !2809, size: 128, offset: 14976)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2810, line: 13, size: 128, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2809, file: !2810, line: 14, baseType: !195, size: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1483, file: !1159, line: 1097, baseType: !2814, size: 64, offset: 15104)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1159, line: 50, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1483, file: !1159, line: 1100, baseType: !2817, size: 64, offset: 15168)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1159, line: 1100, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1483, file: !1159, line: 1103, baseType: !2820, size: 64, offset: 15232)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1159, line: 53, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1483, file: !1159, line: 1107, baseType: !2823, size: 64, offset: 15296)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1159, line: 56, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1483, file: !1159, line: 1110, baseType: !2826, size: 64, offset: 15360)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2828, line: 93, size: 8768, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2877, !2886, !2887, !2889, !2890, !2891, !2894, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2932, !2933, !2940, !2950, !2953, !2954, !2957, !2958, !2959, !2960, !2961, !2962}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2827, file: !2828, line: 94, baseType: !1496, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2827, file: !2828, line: 95, baseType: !224, size: 32, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2827, file: !2828, line: 96, baseType: !109, size: 32, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2827, file: !2828, line: 97, baseType: !109, size: 32, offset: 96)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2827, file: !2828, line: 98, baseType: !195, size: 128, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2827, file: !2828, line: 100, baseType: !1469, size: 192, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2827, file: !2828, line: 103, baseType: !1482, size: 64, offset: 448)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2827, file: !2828, line: 106, baseType: !2838, size: 192, offset: 512)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2048, line: 32, size: 192, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2838, file: !2048, line: 33, baseType: !195, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2838, file: !2048, line: 34, baseType: !2842, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2843, line: 25, baseType: !2844)
!2843 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2843, line: 23, size: 64, elements: !2845)
!2845 = !{!2846}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2844, file: !2843, line: 24, baseType: !1730, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2827, file: !2828, line: 109, baseType: !1085, size: 64, offset: 704)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2827, file: !2828, line: 112, baseType: !109, size: 32, offset: 768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2827, file: !2828, line: 114, baseType: !109, size: 32, offset: 800)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2827, file: !2828, line: 115, baseType: !1482, size: 64, offset: 832)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2827, file: !2828, line: 118, baseType: !109, size: 32, offset: 896)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2827, file: !2828, line: 119, baseType: !7, size: 32, offset: 928)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2827, file: !2828, line: 121, baseType: !2854, size: 64, offset: 960)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2828, line: 80, size: 448, elements: !2856)
!2856 = !{!2857, !2858, !2864}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2855, file: !2828, line: 81, baseType: !224, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2855, file: !2828, line: 82, baseType: !2859, size: 128, offset: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2828, line: 75, size: 128, elements: !2860)
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2859, file: !2828, line: 76, baseType: !1482, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2859, file: !2828, line: 77, baseType: !2863, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2855, file: !2828, line: 83, baseType: !667, size: 256, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2827, file: !2828, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2827, file: !2828, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2827, file: !2828, line: 138, baseType: !7, size: 32, offset: 1056)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2827, file: !2828, line: 139, baseType: !195, size: 128, offset: 1088)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2827, file: !2828, line: 142, baseType: !1603, size: 512, offset: 1216)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2827, file: !2828, line: 143, baseType: !1611, size: 64, offset: 1728)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2827, file: !2828, line: 150, baseType: !2872, size: 256, offset: 1792)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2873, size: 256, elements: !837)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2828, line: 38, size: 128, elements: !2874)
!2874 = !{!2875, !2876}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2873, file: !2828, line: 39, baseType: !277, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2873, file: !2828, line: 40, baseType: !277, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2827, file: !2828, line: 156, baseType: !2878, size: 192, offset: 2048)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2828, line: 66, size: 192, elements: !2879)
!2879 = !{!2880}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2878, file: !2828, line: 67, baseType: !2881, size: 192)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2828, line: 47, size: 192, elements: !2882)
!2882 = !{!2883, !2884, !2885}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2881, file: !2828, line: 48, baseType: !724, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2881, file: !2828, line: 49, baseType: !724, size: 64, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2881, file: !2828, line: 50, baseType: !724, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2827, file: !2828, line: 160, baseType: !2773, size: 640, offset: 2240)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2827, file: !2828, line: 163, baseType: !2888, size: 256, offset: 2880)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1847, size: 256, elements: !290)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2827, file: !2828, line: 169, baseType: !1847, size: 64, offset: 3136)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2827, file: !2828, line: 172, baseType: !109, size: 32, offset: 3200)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2827, file: !2828, line: 174, baseType: !2892, size: 64, offset: 3264)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2828, line: 174, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2827, file: !2828, line: 185, baseType: !2895, size: 64, offset: 3328)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !504, line: 860, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 853, size: 64, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2896, file: !504, line: 858, baseType: !503, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !504, line: 859, baseType: !204, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2827, file: !2828, line: 186, baseType: !277, size: 64, offset: 3392)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2827, file: !2828, line: 186, baseType: !277, size: 64, offset: 3456)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2827, file: !2828, line: 186, baseType: !277, size: 64, offset: 3520)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2827, file: !2828, line: 186, baseType: !277, size: 64, offset: 3584)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2827, file: !2828, line: 187, baseType: !277, size: 64, offset: 3648)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2827, file: !2828, line: 188, baseType: !277, size: 64, offset: 3712)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2827, file: !2828, line: 189, baseType: !2761, size: 192, offset: 3776)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2827, file: !2828, line: 190, baseType: !191, size: 64, offset: 3968)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2827, file: !2828, line: 190, baseType: !191, size: 64, offset: 4032)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2827, file: !2828, line: 190, baseType: !191, size: 64, offset: 4096)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2827, file: !2828, line: 190, baseType: !191, size: 64, offset: 4160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2827, file: !2828, line: 191, baseType: !191, size: 64, offset: 4224)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2827, file: !2828, line: 191, baseType: !191, size: 64, offset: 4288)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2827, file: !2828, line: 191, baseType: !191, size: 64, offset: 4352)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2827, file: !2828, line: 191, baseType: !191, size: 64, offset: 4416)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2827, file: !2828, line: 192, baseType: !191, size: 64, offset: 4480)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2827, file: !2828, line: 192, baseType: !191, size: 64, offset: 4544)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2827, file: !2828, line: 192, baseType: !191, size: 64, offset: 4608)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2827, file: !2828, line: 192, baseType: !191, size: 64, offset: 4672)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2827, file: !2828, line: 193, baseType: !191, size: 64, offset: 4736)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2827, file: !2828, line: 193, baseType: !191, size: 64, offset: 4800)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2827, file: !2828, line: 194, baseType: !2922, size: 448, offset: 4864)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2923, line: 12, size: 448, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2922, file: !2923, line: 15, baseType: !277, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2922, file: !2923, line: 17, baseType: !277, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2922, file: !2923, line: 19, baseType: !277, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2922, file: !2923, line: 21, baseType: !277, size: 64, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2922, file: !2923, line: 29, baseType: !277, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2922, file: !2923, line: 35, baseType: !277, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2922, file: !2923, line: 44, baseType: !277, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2827, file: !2828, line: 202, baseType: !279, size: 64, offset: 5312)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2827, file: !2828, line: 213, baseType: !2934, size: 2048, offset: 5376)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 2048, elements: !2796)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2936, line: 43, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2935, file: !2936, line: 44, baseType: !432, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2935, file: !2936, line: 45, baseType: !432, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2827, file: !2828, line: 216, baseType: !2941, size: 448, offset: 7424)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2828, line: 30, size: 448, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2941, file: !2828, line: 31, baseType: !109, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2941, file: !2828, line: 32, baseType: !419, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2941, file: !2828, line: 33, baseType: !191, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2941, file: !2828, line: 34, baseType: !277, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2941, file: !2828, line: 34, baseType: !277, size: 64, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2941, file: !2828, line: 35, baseType: !191, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2941, file: !2828, line: 35, baseType: !191, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2827, file: !2828, line: 219, baseType: !2951, size: 64, offset: 7872)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2828, line: 219, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2827, file: !2828, line: 222, baseType: !7, size: 32, offset: 7936)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2827, file: !2828, line: 223, baseType: !2955, size: 64, offset: 8000)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2828, line: 223, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2827, file: !2828, line: 230, baseType: !798, size: 8, offset: 8064)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2827, file: !2828, line: 231, baseType: !856, size: 16, offset: 8080)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2827, file: !2828, line: 232, baseType: !856, size: 16, offset: 8096)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2827, file: !2828, line: 234, baseType: !1779, size: 64, offset: 8128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2827, file: !2828, line: 237, baseType: !718, size: 256, offset: 8192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2827, file: !2828, line: 243, baseType: !1376, size: 320, offset: 8448)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1483, file: !1159, line: 1111, baseType: !2964, size: 64, offset: 15424)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2828, line: 20, size: 16640, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2965, file: !2828, line: 21, baseType: !204, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2965, file: !2828, line: 22, baseType: !1496, size: 32, offset: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2965, file: !2828, line: 23, baseType: !1469, size: 192, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2965, file: !2828, line: 24, baseType: !2971, size: 16384, offset: 256)
!2971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2972, size: 16384, elements: !388)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2048, line: 51, size: 256, elements: !2973)
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2972, file: !2048, line: 52, baseType: !2975, size: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2048, line: 37, size: 256, elements: !2976)
!2976 = !{!2977, !2984, !2985, !2989}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2975, file: !2048, line: 39, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2979, line: 83, baseType: !2980)
!2979 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2979, line: 82, baseType: !2982)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !109}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2975, file: !2048, line: 40, baseType: !191, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2975, file: !2048, line: 46, baseType: !2986, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2979, line: 86, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2979, line: 85, baseType: !1080)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2975, file: !2048, line: 48, baseType: !2842, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1483, file: !1159, line: 1112, baseType: !2842, size: 64, offset: 15488)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1483, file: !1159, line: 1113, baseType: !2842, size: 64, offset: 15552)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1483, file: !1159, line: 1115, baseType: !2842, size: 64, offset: 15616)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1483, file: !1159, line: 1116, baseType: !2838, size: 192, offset: 15680)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1483, file: !1159, line: 1117, baseType: !191, size: 64, offset: 15872)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1483, file: !1159, line: 1118, baseType: !430, size: 64, offset: 15936)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1483, file: !1159, line: 1119, baseType: !7, size: 32, offset: 16000)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1483, file: !1159, line: 1121, baseType: !937, size: 64, offset: 16064)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1483, file: !1159, line: 1125, baseType: !2999, size: 64, offset: 16128)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1159, line: 43, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1483, file: !1159, line: 1127, baseType: !468, size: 32, offset: 16192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1483, file: !1159, line: 1128, baseType: !7, size: 32, offset: 16224)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1483, file: !1159, line: 1130, baseType: !3004, size: 128, offset: 16256)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3005, line: 37, size: 128, elements: !3006)
!3005 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3004, file: !3005, line: 38, baseType: !109, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3004, file: !3005, line: 39, baseType: !224, size: 32, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3004, file: !3005, line: 40, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3005, line: 24, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1483, file: !1159, line: 1131, baseType: !3013, size: 256, offset: 16384)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3014, line: 12, size: 256, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3013, file: !3014, line: 13, baseType: !383, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3013, file: !3014, line: 14, baseType: !191, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3013, file: !3014, line: 15, baseType: !191, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3013, file: !3014, line: 16, baseType: !798, size: 8, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1483, file: !1159, line: 1134, baseType: !277, size: 64, offset: 16640)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1483, file: !1159, line: 1135, baseType: !277, size: 64, offset: 16704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1483, file: !1159, line: 1138, baseType: !204, size: 32, offset: 16768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1483, file: !1159, line: 1141, baseType: !676, size: 32, offset: 16800)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1483, file: !1159, line: 1143, baseType: !3025, size: 64, offset: 16832)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1159, line: 735, size: 64, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3025, file: !1159, line: 736, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1483, file: !1159, line: 1147, baseType: !1662, size: 128, offset: 16896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1483, file: !1159, line: 1149, baseType: !1482, size: 64, offset: 17024)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1483, file: !1159, line: 1151, baseType: !3032, size: 64, offset: 17088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1159, line: 1151, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1483, file: !1159, line: 1188, baseType: !199, size: 64, offset: 17152)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1483, file: !1159, line: 1191, baseType: !3036, size: 64, offset: 17216)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1159, line: 44, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1483, file: !1159, line: 1194, baseType: !3039, size: 64, offset: 17280)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1159, line: 45, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1483, file: !1159, line: 1197, baseType: !3042, size: 64, offset: 17344)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1159, line: 61, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1483, file: !1159, line: 1199, baseType: !3045, size: 64, offset: 17408)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3047, line: 99, size: 128, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3046, file: !3047, line: 100, baseType: !722, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3046, file: !3047, line: 101, baseType: !224, size: 32, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3046, file: !3047, line: 103, baseType: !244, size: 16, offset: 96)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1483, file: !1159, line: 1202, baseType: !3053, size: 64, offset: 17472)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1159, line: 48, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1483, file: !1159, line: 1205, baseType: !191, size: 64, offset: 17536)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1483, file: !1159, line: 1206, baseType: !3057, size: 64, offset: 17600)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2048, line: 14, baseType: !3059)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2048, line: 12, size: 384, elements: !3060)
!3060 = !{!3061}
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3059, file: !2048, line: 13, baseType: !3062, size: 384)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3059, file: !2048, line: 13, size: 384, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3062, file: !2048, line: 13, baseType: !109, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3062, file: !2048, line: 13, baseType: !109, size: 32, offset: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3062, file: !2048, line: 13, baseType: !109, size: 32, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3062, file: !2048, line: 13, baseType: !3068, size: 256, offset: 128)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3069, line: 37, size: 256, elements: !3070)
!3069 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3070 = !{!3071, !3076, !3089, !3095, !3104, !3131, !3136}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3068, file: !3069, line: 42, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 39, size: 64, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3072, file: !3069, line: 40, baseType: !2738, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3072, file: !3069, line: 41, baseType: !474, size: 32, offset: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3068, file: !3069, line: 50, baseType: !3077, size: 192)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 45, size: 192, elements: !3078)
!3078 = !{!3079, !3081, !3082, !3088}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3077, file: !3069, line: 46, baseType: !3080, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !417, line: 95, baseType: !109)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3077, file: !3069, line: 47, baseType: !109, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3077, file: !3069, line: 48, baseType: !3083, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3069, line: 11, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3069, line: 8, size: 64, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3084, file: !3069, line: 9, baseType: !109, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3084, file: !3069, line: 10, baseType: !199, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3077, file: !3069, line: 49, baseType: !109, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3068, file: !3069, line: 57, baseType: !3090, size: 128)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 53, size: 128, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3090, file: !3069, line: 54, baseType: !2738, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3090, file: !3069, line: 55, baseType: !474, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3090, file: !3069, line: 56, baseType: !3083, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3068, file: !3069, line: 66, baseType: !3096, size: 256)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 60, size: 256, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101, !3103}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3096, file: !3069, line: 61, baseType: !2738, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3096, file: !3069, line: 62, baseType: !474, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3096, file: !3069, line: 63, baseType: !109, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3096, file: !3069, line: 64, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !417, line: 94, baseType: !418)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3096, file: !3069, line: 65, baseType: !3102, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3068, file: !3069, line: 105, baseType: !3105, size: 256)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 69, size: 256, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3105, file: !3069, line: 70, baseType: !199, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3105, file: !3069, line: 79, baseType: !3109, size: 192, offset: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3105, file: !3069, line: 79, size: 192, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3120, !3125}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3109, file: !3069, line: 81, baseType: !109, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3109, file: !3069, line: 86, baseType: !856, size: 16)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3109, file: !3069, line: 92, baseType: !3114, size: 192)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3069, line: 88, size: 192, elements: !3115)
!3115 = !{!3116, !3118, !3119}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3114, file: !3069, line: 89, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 64, elements: !1646)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3114, file: !3069, line: 90, baseType: !199, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3114, file: !3069, line: 91, baseType: !199, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3109, file: !3069, line: 97, baseType: !3121, size: 96)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3069, line: 94, size: 96, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3121, file: !3069, line: 95, baseType: !3117, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3121, file: !3069, line: 96, baseType: !316, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3109, file: !3069, line: 103, baseType: !3126, size: 128)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3069, line: 99, size: 128, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3126, file: !3069, line: 100, baseType: !191, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3126, file: !3069, line: 101, baseType: !316, size: 32, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3126, file: !3069, line: 102, baseType: !316, size: 32, offset: 96)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3068, file: !3069, line: 111, baseType: !3132, size: 128)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 108, size: 128, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3132, file: !3069, line: 109, baseType: !419, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3132, file: !3069, line: 110, baseType: !109, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3068, file: !3069, line: 118, baseType: !3137, size: 128)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !3069, line: 114, size: 128, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3137, file: !3069, line: 115, baseType: !199, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3137, file: !3069, line: 116, baseType: !109, size: 32, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3137, file: !3069, line: 117, baseType: !7, size: 32, offset: 96)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1483, file: !1159, line: 1208, baseType: !2922, size: 448, offset: 17664)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1483, file: !1159, line: 1215, baseType: !277, size: 64, offset: 18112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1483, file: !1159, line: 1217, baseType: !277, size: 64, offset: 18176)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1483, file: !1159, line: 1219, baseType: !277, size: 64, offset: 18240)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1483, file: !1159, line: 1223, baseType: !3147, size: 64, offset: 18304)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3148, line: 99, baseType: !3149)
!3148 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3148, line: 99, size: 64, elements: !3150)
!3150 = !{!3151}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3149, file: !3148, line: 99, baseType: !1730, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1483, file: !1159, line: 1225, baseType: !503, size: 32, offset: 18368)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1483, file: !1159, line: 1226, baseType: !109, size: 32, offset: 18400)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1483, file: !1159, line: 1227, baseType: !109, size: 32, offset: 18432)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1483, file: !1159, line: 1231, baseType: !3156, size: 64, offset: 18496)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1159, line: 1231, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1483, file: !1159, line: 1233, baseType: !195, size: 128, offset: 18560)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1483, file: !1159, line: 1240, baseType: !3160, size: 64, offset: 18688)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1159, line: 62, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1483, file: !1159, line: 1242, baseType: !3163, size: 64, offset: 18752)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1159, line: 1242, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1483, file: !1159, line: 1244, baseType: !195, size: 128, offset: 18816)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1483, file: !1159, line: 1245, baseType: !3167, size: 64, offset: 18944)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1159, line: 51, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1483, file: !1159, line: 1246, baseType: !718, size: 256, offset: 19008)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1483, file: !1159, line: 1247, baseType: !7, size: 32, offset: 19264)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1483, file: !1159, line: 1250, baseType: !3172, size: 64, offset: 19328)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1159, line: 57, flags: DIFlagFwdDecl)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1483, file: !1159, line: 1251, baseType: !718, size: 256, offset: 19392)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1483, file: !1159, line: 1252, baseType: !195, size: 128, offset: 19648)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1483, file: !1159, line: 1259, baseType: !2428, size: 64, offset: 19776)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1483, file: !1159, line: 1260, baseType: !856, size: 16, offset: 19840)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1483, file: !1159, line: 1261, baseType: !856, size: 16, offset: 19856)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1483, file: !1159, line: 1314, baseType: !3180, size: 64, offset: 19904)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3182, line: 62, size: 256, align: 256, elements: !3183)
!3182 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3181, file: !3182, line: 75, baseType: !316, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3181, file: !3182, line: 90, baseType: !316, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3181, file: !3182, line: 112, baseType: !278, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3181, file: !3182, line: 132, baseType: !316, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3181, file: !3182, line: 140, baseType: !316, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3181, file: !3182, line: 149, baseType: !316, size: 32, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3181, file: !3182, line: 154, baseType: !3191, offset: 224)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, elements: !1866)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1483, file: !1159, line: 1315, baseType: !315, size: 32, offset: 19968)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1483, file: !1159, line: 1316, baseType: !315, size: 32, offset: 20000)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1483, file: !1159, line: 1321, baseType: !191, size: 64, offset: 20032)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1483, file: !1159, line: 1325, baseType: !109, size: 32, offset: 20096)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1483, file: !1159, line: 1326, baseType: !109, size: 32, offset: 20128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1483, file: !1159, line: 1327, baseType: !109, size: 32, offset: 20160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1483, file: !1159, line: 1328, baseType: !109, size: 32, offset: 20192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1483, file: !1159, line: 1329, baseType: !938, size: 128, align: 64, offset: 20224)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1483, file: !1159, line: 1332, baseType: !3201, size: 128, offset: 20352)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3202, line: 51, size: 128, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3203 = !{!3204, !3209, !3210}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3201, file: !3202, line: 60, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3206, line: 7, size: 64, elements: !3207)
!3206 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3205, file: !3206, line: 12, baseType: !1727, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3201, file: !3202, line: 63, baseType: !798, size: 8, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3201, file: !3202, line: 70, baseType: !798, size: 8, offset: 72)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1483, file: !1159, line: 1335, baseType: !2480, size: 64, offset: 20480)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1483, file: !1159, line: 1337, baseType: !3213, size: 128, offset: 20544)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3202, line: 39, size: 128, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3213, file: !3202, line: 40, baseType: !2267, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3213, file: !3202, line: 42, baseType: !316, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3213, file: !3202, line: 43, baseType: !316, size: 32, offset: 96)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1483, file: !1159, line: 1340, baseType: !3219, size: 64, offset: 20672)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1159, line: 69, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1483, file: !1159, line: 1351, baseType: !109, size: 32, offset: 20736)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1483, file: !1159, line: 1352, baseType: !109, size: 32, offset: 20768)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1483, file: !1159, line: 1354, baseType: !191, size: 64, offset: 20800)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1483, file: !1159, line: 1364, baseType: !277, size: 64, offset: 20864)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1483, file: !1159, line: 1365, baseType: !277, size: 64, offset: 20928)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1483, file: !1159, line: 1412, baseType: !191, size: 64, offset: 20992)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1483, file: !1159, line: 1453, baseType: !3228, size: 64, offset: 21056)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1159, line: 1453, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1483, file: !1159, line: 1457, baseType: !3231, size: 64, offset: 21120)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3233)
!3233 = !{!3234, !3235, !3254, !3257, !3258, !3291, !3301}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3232, file: !68, line: 62, baseType: !67, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !68, line: 64, baseType: !3236, size: 192, offset: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !68, line: 64, size: 192, elements: !3237)
!3237 = !{!3238, !3249}
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !68, line: 65, baseType: !3239, size: 192)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !68, line: 65, size: 192, elements: !3240)
!3240 = !{!3241, !3248}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3239, file: !68, line: 66, baseType: !3242, size: 128)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3243, line: 50, size: 128, elements: !3244)
!3243 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3242, file: !3243, line: 52, baseType: !191, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3242, file: !3243, line: 54, baseType: !7, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3242, file: !3243, line: 55, baseType: !7, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3239, file: !68, line: 67, baseType: !191, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !68, line: 70, baseType: !3250, size: 192)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !68, line: 70, size: 192, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3250, file: !68, line: 71, baseType: !938, size: 128, align: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3250, file: !68, line: 72, baseType: !191, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3232, file: !68, line: 76, baseType: !3255, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3232, file: !68, line: 77, baseType: !191, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3232, file: !68, line: 79, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3243, line: 25, size: 256, elements: !3261)
!3261 = !{!3262, !3268, !3272}
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !3243, line: 26, baseType: !3263, size: 128)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3260, file: !3243, line: 26, size: 128, elements: !3264)
!3264 = !{!3265, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3263, file: !3243, line: 27, baseType: !3266, size: 128)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !2796)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3263, file: !3243, line: 28, baseType: !3266, size: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3260, file: !3243, line: 31, baseType: !3269, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3271)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3243, line: 23, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !3243, line: 33, baseType: !3273, size: 64, offset: 192)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3260, file: !3243, line: 33, size: 64, elements: !3274)
!3274 = !{!3275, !3281, !3286}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3273, file: !3243, line: 38, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3243, line: 34, size: 64, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3276, file: !3243, line: 35, baseType: !714, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3276, file: !3243, line: 36, baseType: !232, size: 8, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3276, file: !3243, line: 37, baseType: !232, size: 8, offset: 40)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3273, file: !3243, line: 42, baseType: !3282, size: 16)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3243, line: 39, size: 16, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3282, file: !3243, line: 40, baseType: !232, size: 8)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3282, file: !3243, line: 41, baseType: !232, size: 8, offset: 8)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3273, file: !3243, line: 46, baseType: !3287, size: 16)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3243, line: 43, size: 16, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3287, file: !3243, line: 44, baseType: !232, size: 8)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3287, file: !3243, line: 45, baseType: !232, size: 8, offset: 8)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3232, file: !68, line: 81, baseType: !3292, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3293, file: !68, line: 86, baseType: !3255, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3293, file: !68, line: 87, baseType: !191, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3293, file: !68, line: 88, baseType: !191, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3293, file: !68, line: 89, baseType: !191, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3293, file: !68, line: 90, baseType: !798, size: 8, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3293, file: !68, line: 92, baseType: !3292, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3232, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1483, file: !1159, line: 1463, baseType: !3303, offset: 21184)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1159, line: 739, elements: !1004)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1483, file: !1159, line: 1470, baseType: !938, size: 128, align: 64, offset: 21184)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1483, file: !1159, line: 1471, baseType: !1496, size: 32, offset: 21312)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1483, file: !1159, line: 1472, baseType: !109, size: 32, offset: 21344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1483, file: !1159, line: 1474, baseType: !1482, size: 64, offset: 21376)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1483, file: !1159, line: 1475, baseType: !958, size: 320, offset: 21440)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1483, file: !1159, line: 1478, baseType: !3310, size: 64, offset: 21760)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2120, line: 49, size: 512, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3319, !3320, !3321, !3322}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3311, file: !2120, line: 50, baseType: !3310, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3311, file: !2120, line: 51, baseType: !199, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3311, file: !2120, line: 52, baseType: !191, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !2120, line: 53, baseType: !191, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3311, file: !2120, line: 54, baseType: !3318, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3311, file: !2120, line: 56, baseType: !7, size: 32, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3311, file: !2120, line: 58, baseType: !7, size: 32, offset: 352)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3311, file: !2120, line: 59, baseType: !276, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3311, file: !2120, line: 60, baseType: !2619, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1483, file: !1159, line: 1482, baseType: !1496, size: 32, offset: 21824)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1483, file: !1159, line: 1489, baseType: !199, size: 64, offset: 21888)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1483, file: !1159, line: 1504, baseType: !199, size: 64, offset: 21952)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1483, file: !1159, line: 1505, baseType: !278, size: 64, offset: 22016)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1483, file: !1159, line: 1506, baseType: !277, size: 64, offset: 22080)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1483, file: !1159, line: 1507, baseType: !278, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1483, file: !1159, line: 1508, baseType: !278, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1483, file: !1159, line: 1509, baseType: !278, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1483, file: !1159, line: 1510, baseType: !938, size: 128, align: 64, offset: 22208)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1483, file: !1159, line: 1511, baseType: !109, size: 32, offset: 22336)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1483, file: !1159, line: 1515, baseType: !3334, size: 64, offset: 22400)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1510, line: 56, size: 64, elements: !3335)
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3334, file: !1510, line: 57, baseType: !1513, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1483, file: !1159, line: 1518, baseType: !3334, size: 64, offset: 22464)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1483, file: !1159, line: 1528, baseType: !938, size: 128, align: 64, offset: 22528)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1483, file: !1159, line: 1552, baseType: !3340, size: 35328, offset: 23040)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3341, line: 430, size: 35328, elements: !3342)
!3341 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3342 = !{!3343, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3372, !3373, !3374, !3375, !3376, !3377, !3380, !3381, !3382, !3383}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3340, file: !3341, line: 432, baseType: !3344, size: 192)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3345, size: 192, elements: !384)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3346, line: 16, size: 64, elements: !3347)
!3346 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3345, file: !3346, line: 17, baseType: !242, size: 16)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3345, file: !3346, line: 18, baseType: !242, size: 16, offset: 16)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3345, file: !3346, line: 19, baseType: !242, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3345, file: !3346, line: 19, baseType: !242, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3345, file: !3346, line: 19, baseType: !242, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3345, file: !3346, line: 19, baseType: !242, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3345, file: !3346, line: 19, baseType: !242, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3345, file: !3346, line: 20, baseType: !242, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3345, file: !3346, line: 20, baseType: !242, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3345, file: !3346, line: 20, baseType: !242, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3345, file: !3346, line: 20, baseType: !242, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3345, file: !3346, line: 20, baseType: !242, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3345, file: !3346, line: 20, baseType: !242, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3340, file: !3341, line: 436, baseType: !191, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3340, file: !3341, line: 440, baseType: !244, size: 16, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3340, file: !3341, line: 441, baseType: !244, size: 16, offset: 272)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3340, file: !3341, line: 442, baseType: !244, size: 16, offset: 288)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3340, file: !3341, line: 443, baseType: !244, size: 16, offset: 304)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3340, file: !3341, line: 447, baseType: !191, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3340, file: !3341, line: 448, baseType: !191, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3340, file: !3341, line: 459, baseType: !3369, size: 256, offset: 448)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3370, size: 256, elements: !290)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3341, line: 428, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3340, file: !3341, line: 461, baseType: !191, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3340, file: !3341, line: 463, baseType: !191, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3340, file: !3341, line: 465, baseType: !191, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3340, file: !3341, line: 466, baseType: !191, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3340, file: !3341, line: 467, baseType: !191, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3340, file: !3341, line: 473, baseType: !3378, size: 64, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3341, line: 10, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3340, file: !3341, line: 480, baseType: !191, size: 64, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3340, file: !3341, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3340, file: !3341, line: 491, baseType: !315, size: 32, offset: 1184)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3340, file: !3341, line: 501, baseType: !3384, size: 33792, offset: 1536)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3385, line: 448, size: 33792, elements: !3386)
!3385 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3386 = !{!3387, !3388, !3389, !3551, !3552, !3558, !3559}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3384, file: !3385, line: 461, baseType: !7, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3384, file: !3385, line: 468, baseType: !191, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3384, file: !3385, line: 476, baseType: !3390, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3385, line: 356, size: 33280, align: 512, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3391, file: !3385, line: 358, baseType: !7, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3391, file: !3385, line: 361, baseType: !7, size: 32, offset: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3391, file: !3385, line: 364, baseType: !277, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3391, file: !3385, line: 367, baseType: !277, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3391, file: !3385, line: 370, baseType: !277, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3391, file: !3385, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3391, file: !3385, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3391, file: !3385, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3391, file: !3385, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3391, file: !3385, line: 397, baseType: !3403, size: 32768, offset: 512)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3385, line: 348, size: 32768, elements: !3404)
!3404 = !{!3405, !3420, !3457, !3534, !3547}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3403, file: !3385, line: 349, baseType: !3406, size: 896)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3385, line: 12, size: 896, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3419}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3406, file: !3385, line: 13, baseType: !315, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3406, file: !3385, line: 14, baseType: !315, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3406, file: !3385, line: 15, baseType: !315, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3406, file: !3385, line: 16, baseType: !315, size: 32, offset: 96)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3406, file: !3385, line: 17, baseType: !315, size: 32, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3406, file: !3385, line: 18, baseType: !315, size: 32, offset: 160)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3406, file: !3385, line: 19, baseType: !315, size: 32, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3406, file: !3385, line: 22, baseType: !3416, size: 640, offset: 224)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 640, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 20)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3406, file: !3385, line: 25, baseType: !315, size: 32, offset: 864)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3403, file: !3385, line: 350, baseType: !3421, size: 4096, align: 128)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3385, line: 34, size: 4096, align: 128, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3442, !3443, !3444, !3446, !3448, !3452}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3421, file: !3385, line: 35, baseType: !242, size: 16)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3421, file: !3385, line: 36, baseType: !242, size: 16, offset: 16)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3421, file: !3385, line: 37, baseType: !242, size: 16, offset: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3421, file: !3385, line: 38, baseType: !242, size: 16, offset: 48)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !3385, line: 39, baseType: !3428, size: 128, offset: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3421, file: !3385, line: 39, size: 128, elements: !3429)
!3429 = !{!3430, !3435}
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3385, line: 40, baseType: !3431, size: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3428, file: !3385, line: 40, size: 128, elements: !3432)
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3431, file: !3385, line: 41, baseType: !277, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3431, file: !3385, line: 42, baseType: !277, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3385, line: 44, baseType: !3436, size: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3428, file: !3385, line: 44, size: 128, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3436, file: !3385, line: 45, baseType: !315, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3436, file: !3385, line: 46, baseType: !315, size: 32, offset: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3436, file: !3385, line: 47, baseType: !315, size: 32, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3436, file: !3385, line: 48, baseType: !315, size: 32, offset: 96)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3421, file: !3385, line: 51, baseType: !315, size: 32, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3421, file: !3385, line: 52, baseType: !315, size: 32, offset: 224)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3421, file: !3385, line: 55, baseType: !3445, size: 1024, offset: 256)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 1024, elements: !539)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3421, file: !3385, line: 58, baseType: !3447, size: 2048, offset: 1280)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 2048, elements: !388)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3421, file: !3385, line: 60, baseType: !3449, size: 384, offset: 3328)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 12)
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !3385, line: 62, baseType: !3453, size: 384, offset: 3712)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3421, file: !3385, line: 62, size: 384, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3453, file: !3385, line: 63, baseType: !3449, size: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3453, file: !3385, line: 64, baseType: !3449, size: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3403, file: !3385, line: 351, baseType: !3458, size: 1088)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3385, line: 79, size: 1088, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3533}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3458, file: !3385, line: 80, baseType: !315, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3458, file: !3385, line: 81, baseType: !315, size: 32, offset: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3458, file: !3385, line: 82, baseType: !315, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3458, file: !3385, line: 83, baseType: !315, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3458, file: !3385, line: 84, baseType: !315, size: 32, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3458, file: !3385, line: 85, baseType: !315, size: 32, offset: 160)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3458, file: !3385, line: 86, baseType: !315, size: 32, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3458, file: !3385, line: 88, baseType: !3416, size: 640, offset: 224)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3458, file: !3385, line: 89, baseType: !232, size: 8, offset: 864)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3458, file: !3385, line: 90, baseType: !232, size: 8, offset: 872)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3458, file: !3385, line: 91, baseType: !232, size: 8, offset: 880)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3458, file: !3385, line: 92, baseType: !232, size: 8, offset: 888)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3458, file: !3385, line: 93, baseType: !232, size: 8, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3458, file: !3385, line: 94, baseType: !232, size: 8, offset: 904)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3458, file: !3385, line: 95, baseType: !3475, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3477, line: 11, size: 128, elements: !3478)
!3477 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3476, file: !3477, line: 12, baseType: !419, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3476, file: !3477, line: 13, baseType: !3481, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3483, line: 103, size: 1344, elements: !3484)
!3483 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3513, !3514, !3515}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3482, file: !3483, line: 109, baseType: !191, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3482, file: !3483, line: 110, baseType: !191, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3482, file: !3483, line: 111, baseType: !191, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3482, file: !3483, line: 112, baseType: !191, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3482, file: !3483, line: 113, baseType: !191, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3482, file: !3483, line: 114, baseType: !191, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3482, file: !3483, line: 117, baseType: !191, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3482, file: !3483, line: 118, baseType: !191, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3482, file: !3483, line: 119, baseType: !191, size: 64, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3482, file: !3483, line: 120, baseType: !191, size: 64, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3482, file: !3483, line: 121, baseType: !191, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3482, file: !3483, line: 122, baseType: !191, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3482, file: !3483, line: 123, baseType: !191, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3482, file: !3483, line: 124, baseType: !191, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3482, file: !3483, line: 125, baseType: !191, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3482, file: !3483, line: 139, baseType: !191, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3482, file: !3483, line: 142, baseType: !191, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !3483, line: 144, baseType: !3503, size: 64, offset: 1088)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3482, file: !3483, line: 144, size: 64, elements: !3504)
!3504 = !{!3505, !3506, !3507}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3503, file: !3483, line: 146, baseType: !242, size: 16)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3503, file: !3483, line: 148, baseType: !277, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3503, file: !3483, line: 150, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3483, line: 59, size: 64, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3508, file: !3483, line: 61, baseType: !277, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3508, file: !3483, line: 63, baseType: !277, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3508, file: !3483, line: 65, baseType: !277, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3482, file: !3483, line: 153, baseType: !191, size: 64, offset: 1152)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3482, file: !3483, line: 154, baseType: !191, size: 64, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3482, file: !3483, line: 156, baseType: !3516, size: 64, offset: 1280)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3482, file: !3483, line: 156, size: 64, elements: !3517)
!3517 = !{!3518, !3519, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3516, file: !3483, line: 158, baseType: !242, size: 16)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3516, file: !3483, line: 160, baseType: !277, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3516, file: !3483, line: 162, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3483, line: 69, size: 64, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3521, file: !3483, line: 71, baseType: !277, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3521, file: !3483, line: 73, baseType: !277, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3521, file: !3483, line: 75, baseType: !277, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3521, file: !3483, line: 77, baseType: !277, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3521, file: !3483, line: 80, baseType: !277, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3521, file: !3483, line: 83, baseType: !277, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3521, file: !3483, line: 86, baseType: !277, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3521, file: !3483, line: 88, baseType: !277, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3521, file: !3483, line: 93, baseType: !277, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3521, file: !3483, line: 100, baseType: !277, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3458, file: !3385, line: 96, baseType: !315, size: 32, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3403, file: !3385, line: 352, baseType: !3535, size: 4608, align: 512)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3385, line: 333, size: 4608, align: 512, elements: !3536)
!3536 = !{!3537, !3538, !3545}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3535, file: !3385, line: 334, baseType: !3421, size: 4096, align: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3535, file: !3385, line: 335, baseType: !3539, size: 512, offset: 4096)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3385, line: 312, size: 512, elements: !3540)
!3540 = !{!3541, !3542, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3539, file: !3385, line: 313, baseType: !277, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3539, file: !3385, line: 314, baseType: !277, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3539, file: !3385, line: 315, baseType: !3544, size: 384, offset: 128)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 384, elements: !1949)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3535, file: !3385, line: 336, baseType: !3546, offset: 4608)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, elements: !1866)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3403, file: !3385, line: 353, baseType: !3548, size: 32768)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 32768, elements: !3549)
!3549 = !{!3550}
!3550 = !DISubrange(count: 4096)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3384, file: !3385, line: 484, baseType: !3390, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3384, file: !3385, line: 491, baseType: !3553, size: 128, offset: 256)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3385, line: 404, size: 128, elements: !3554)
!3554 = !{!3555, !3556, !3557}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3553, file: !3385, line: 424, baseType: !277, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3553, file: !3385, line: 432, baseType: !7, size: 32, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3553, file: !3385, line: 440, baseType: !7, size: 32, offset: 96)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3384, file: !3385, line: 498, baseType: !3553, size: 128, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3384, file: !3385, line: 508, baseType: !3391, size: 33280, align: 512, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1459, file: !1460, line: 16, baseType: !1469, size: 192, offset: 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1459, file: !1460, line: 17, baseType: !224, size: 32, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !609, file: !14, line: 1240, baseType: !199, size: 64, offset: 6912)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !609, file: !14, line: 1243, baseType: !315, size: 32, offset: 6976)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !609, file: !14, line: 1245, baseType: !1217, size: 64, offset: 7040)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !609, file: !14, line: 1246, baseType: !1217, size: 64, offset: 7104)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !609, file: !14, line: 1248, baseType: !316, size: 32, offset: 7168)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !609, file: !14, line: 1249, baseType: !3568, size: 64, offset: 7232)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !609, file: !14, line: 1252, baseType: !3571, size: 256, offset: 7296)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !539)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !609, file: !14, line: 1253, baseType: !3573, size: 128, offset: 7552)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3574, line: 21, baseType: !3575)
!3574 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3574, line: 19, size: 128, elements: !3576)
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3575, file: !3574, line: 20, baseType: !3578, size: 128)
!3578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 128, elements: !2796)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !609, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !609, file: !14, line: 1261, baseType: !718, size: 256, offset: 7744)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !609, file: !14, line: 1267, baseType: !282, size: 64, offset: 8000)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !609, file: !14, line: 1269, baseType: !555, size: 64, offset: 8064)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !609, file: !14, line: 1271, baseType: !3584, size: 448, offset: 8128)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1226, line: 63, size: 448, elements: !3585)
!3585 = !{!3586, !3591, !3592, !3593, !3594, !3595, !3596}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3584, file: !1226, line: 64, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!191, !3590, !1224}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3584, file: !1226, line: 66, baseType: !3587, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3584, file: !1226, line: 69, baseType: !419, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3584, file: !1226, line: 70, baseType: !109, size: 32, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3584, file: !1226, line: 71, baseType: !7, size: 32, offset: 224)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3584, file: !1226, line: 74, baseType: !195, size: 128, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3584, file: !1226, line: 85, baseType: !3597, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !609, file: !14, line: 1274, baseType: !722, size: 64, offset: 8576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !609, file: !14, line: 1280, baseType: !722, size: 64, offset: 8640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !609, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !609, file: !14, line: 1286, baseType: !2530, size: 32, offset: 8736)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !609, file: !14, line: 1289, baseType: !1037, size: 64, offset: 8768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !609, file: !14, line: 1290, baseType: !1085, size: 64, offset: 8832)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !609, file: !14, line: 1297, baseType: !2043, size: 64, offset: 8896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !609, file: !14, line: 1304, baseType: !3606, size: 64, offset: 8960)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3607, line: 49, size: 64, elements: !3608)
!3607 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3608 = !{!3609}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3606, file: !3607, line: 50, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3607, line: 41, size: 512, align: 512, elements: !3612)
!3612 = !{!3613, !3614, !3619}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3611, file: !3607, line: 43, baseType: !204, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3611, file: !3607, line: 45, baseType: !3615, size: 192, offset: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3607, line: 29, size: 192, elements: !3616)
!3616 = !{!3617, !3618}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3615, file: !3607, line: 30, baseType: !195, size: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3615, file: !3607, line: 32, baseType: !419, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3611, file: !3607, line: 46, baseType: !419, size: 64, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !609, file: !14, line: 1305, baseType: !3606, size: 64, offset: 9024)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !609, file: !14, line: 1306, baseType: !938, size: 128, align: 64, offset: 9088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !609, file: !14, line: 1307, baseType: !976, size: 256, offset: 9216)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !609, file: !14, line: 1309, baseType: !718, size: 256, offset: 9472)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !609, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !609, file: !14, line: 1317, baseType: !204, size: 32, align: 512, offset: 10240)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !609, file: !14, line: 1318, baseType: !195, size: 128, offset: 10304)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !609, file: !14, line: 1320, baseType: !204, size: 32, offset: 10432)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !609, file: !14, line: 1321, baseType: !195, size: 128, offset: 10496)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !603, file: !604, line: 73, baseType: !109, size: 32, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !603, file: !604, line: 74, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1890, line: 42, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !557, file: !499, line: 141, baseType: !3635, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!109, !1286, !798}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !557, file: !499, line: 142, baseType: !3639, size: 64, offset: 768)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!497, !497, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !498, file: !499, line: 96, baseType: !608, size: 64, offset: 832)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !498, file: !499, line: 97, baseType: !191, size: 64, offset: 896)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !498, file: !499, line: 98, baseType: !199, size: 64, offset: 960)
!3647 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !499, line: 100, baseType: !3648, size: 128, offset: 1024)
!3648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !499, line: 100, size: 128, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3648, file: !499, line: 101, baseType: !195, size: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3648, file: !499, line: 102, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !498, file: !499, line: 104, baseType: !195, size: 128, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !498, file: !499, line: 105, baseType: !195, size: 128, offset: 1280)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !498, file: !499, line: 113, baseType: !3656, size: 128, offset: 1408)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !499, line: 109, size: 128, elements: !3657)
!3657 = !{!3658, !3659, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3656, file: !499, line: 110, baseType: !962, size: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3656, file: !499, line: 111, baseType: !513, size: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3656, file: !499, line: 112, baseType: !938, size: 128, align: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !491, file: !14, line: 1968, baseType: !3662, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!282, !497, !462, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3667, line: 10, size: 128, elements: !3668)
!3667 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3666, file: !3667, line: 11, baseType: !761, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3666, file: !3667, line: 12, baseType: !199, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !491, file: !14, line: 1969, baseType: !3672, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !3631, !462, !109}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !491, file: !14, line: 1970, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!485, !462, !109, !798}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !491, file: !14, line: 1972, baseType: !3680, size: 64, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!109, !497, !383, !109}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !491, file: !14, line: 1974, baseType: !3684, size: 64, offset: 320)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!109, !3631, !462, !497, !425, !798}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !491, file: !14, line: 1976, baseType: !3688, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !497, !462, !497}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !491, file: !14, line: 1977, baseType: !3692, size: 64, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !462, !497}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !491, file: !14, line: 1978, baseType: !3696, size: 64, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!109, !3631, !462, !497, !282}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !491, file: !14, line: 1980, baseType: !3700, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!109, !3631, !462, !497, !425}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !491, file: !14, line: 1982, baseType: !3692, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !491, file: !14, line: 1983, baseType: !3705, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!109, !3631, !462, !497, !425, !613}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !491, file: !14, line: 1985, baseType: !3709, size: 64, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!109, !3631, !462, !497, !462, !497, !7}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !491, file: !14, line: 1987, baseType: !3713, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!109, !3631, !497, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3731, !3740, !3741, !3746, !3747, !3748}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3717, file: !14, line: 227, baseType: !7, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3717, file: !14, line: 228, baseType: !425, size: 16, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3717, file: !14, line: 241, baseType: !3722, size: 32, offset: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3717, file: !14, line: 241, size: 32, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3722, file: !14, line: 242, baseType: !468, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3722, file: !14, line: 243, baseType: !3726, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3727, line: 16, baseType: !3728)
!3727 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3727, line: 14, size: 32, elements: !3729)
!3729 = !{!3730}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3728, file: !3727, line: 15, baseType: !473, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3717, file: !14, line: 245, baseType: !3732, size: 32, offset: 96)
!3732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3717, file: !14, line: 245, size: 32, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3732, file: !14, line: 246, baseType: !477, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3732, file: !14, line: 247, baseType: !3736, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3727, line: 20, baseType: !3737)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3727, line: 18, size: 32, elements: !3738)
!3738 = !{!3739}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3737, file: !3727, line: 19, baseType: !481, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3717, file: !14, line: 249, baseType: !618, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3717, file: !14, line: 250, baseType: !3742, size: 128, offset: 192)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1218, line: 13, size: 128, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3742, file: !1218, line: 14, baseType: !1217, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3742, file: !1218, line: 15, baseType: !419, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3717, file: !14, line: 251, baseType: !3742, size: 128, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3717, file: !14, line: 252, baseType: !3742, size: 128, offset: 448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3717, file: !14, line: 259, baseType: !1806, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !491, file: !14, line: 1988, baseType: !3750, size: 64, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!109, !3631, !1286, !3753, !315, !7}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3755, line: 22, size: 1280, elements: !3756)
!3755 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3756 = !{!3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3754, file: !3755, line: 23, baseType: !315, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3754, file: !3755, line: 24, baseType: !425, size: 16, offset: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3754, file: !3755, line: 25, baseType: !7, size: 32, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3754, file: !3755, line: 26, baseType: !1928, size: 32, offset: 96)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3754, file: !3755, line: 27, baseType: !277, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3754, file: !3755, line: 28, baseType: !277, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3754, file: !3755, line: 41, baseType: !277, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3754, file: !3755, line: 42, baseType: !613, size: 32, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3754, file: !3755, line: 43, baseType: !613, size: 32, offset: 352)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3754, file: !3755, line: 44, baseType: !468, size: 32, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3754, file: !3755, line: 45, baseType: !477, size: 32, offset: 416)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3754, file: !3755, line: 46, baseType: !618, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3754, file: !3755, line: 47, baseType: !3742, size: 128, offset: 512)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3754, file: !3755, line: 48, baseType: !3742, size: 128, offset: 640)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3754, file: !3755, line: 49, baseType: !3742, size: 128, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3754, file: !3755, line: 50, baseType: !3742, size: 128, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3754, file: !3755, line: 51, baseType: !277, size: 64, offset: 1024)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3754, file: !3755, line: 52, baseType: !277, size: 64, offset: 1088)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3754, file: !3755, line: 53, baseType: !315, size: 32, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3754, file: !3755, line: 54, baseType: !315, size: 32, offset: 1184)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3754, file: !3755, line: 55, baseType: !277, size: 64, offset: 1216)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !491, file: !14, line: 1990, baseType: !3779, size: 64, offset: 960)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!415, !497, !383, !430}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !491, file: !14, line: 1991, baseType: !3783, size: 64, offset: 1024)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!109, !462, !3786, !277, !277}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !491, file: !14, line: 1993, baseType: !3789, size: 64, offset: 1088)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!109, !462, !109}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !491, file: !14, line: 1994, baseType: !3793, size: 64, offset: 1152)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!109, !462, !497, !1806, !7, !425}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !491, file: !14, line: 1997, baseType: !3797, size: 64, offset: 1216)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!109, !3631, !462, !1806, !425}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !491, file: !14, line: 1999, baseType: !3801, size: 64, offset: 1280)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!485, !3631, !497, !109}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !491, file: !14, line: 2001, baseType: !3805, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!109, !3631, !497, !485, !109}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !491, file: !14, line: 2003, baseType: !3809, size: 64, offset: 1408)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!109, !3631, !497, !3812}
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !491, file: !14, line: 2005, baseType: !3815, size: 64, offset: 1472)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!109, !497, !3812}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !491, file: !14, line: 2006, baseType: !3819, size: 64, offset: 1536)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!3822, !462}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3824)
!3824 = !{!3825, !3832}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3823, file: !14, line: 3193, baseType: !3826, size: 128)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3827, line: 296, size: 128, elements: !3828)
!3827 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3828 = !{!3829, !3830, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3826, file: !3827, line: 297, baseType: !204, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3826, file: !3827, line: 299, baseType: !189, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3826, file: !3827, line: 300, baseType: !199, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3823, file: !14, line: 3194, baseType: !315, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !463, file: !14, line: 655, baseType: !608, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !463, file: !14, line: 656, baseType: !458, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !463, file: !14, line: 659, baseType: !199, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !463, file: !14, line: 663, baseType: !191, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !14, line: 671, baseType: !3838, size: 32, offset: 704)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !14, line: 671, size: 32, elements: !3839)
!3839 = !{!3840, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3838, file: !14, line: 672, baseType: !3841, size: 32)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3838, file: !14, line: 673, baseType: !7, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !463, file: !14, line: 675, baseType: !613, size: 32, offset: 736)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !463, file: !14, line: 676, baseType: !618, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !463, file: !14, line: 677, baseType: !3742, size: 128, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !463, file: !14, line: 678, baseType: !3742, size: 128, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !463, file: !14, line: 679, baseType: !3742, size: 128, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !463, file: !14, line: 680, baseType: !204, size: 32, offset: 1216)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !463, file: !14, line: 681, baseType: !244, size: 16, offset: 1248)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !463, file: !14, line: 682, baseType: !232, size: 8, offset: 1264)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !463, file: !14, line: 683, baseType: !232, size: 8, offset: 1272)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !463, file: !14, line: 684, baseType: !1364, size: 64, offset: 1280)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !463, file: !14, line: 691, baseType: !191, size: 64, offset: 1344)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !463, file: !14, line: 692, baseType: !1376, size: 320, offset: 1408)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !463, file: !14, line: 694, baseType: !191, size: 64, offset: 1728)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !463, file: !14, line: 695, baseType: !191, size: 64, offset: 1792)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !463, file: !14, line: 697, baseType: !962, size: 128, offset: 1856)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !463, file: !14, line: 698, baseType: !195, size: 128, offset: 1984)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !463, file: !14, line: 707, baseType: !195, size: 128, offset: 2112)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !463, file: !14, line: 708, baseType: !195, size: 128, offset: 2240)
!3861 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !14, line: 709, baseType: !3862, size: 128, offset: 2368)
!3862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !14, line: 709, size: 128, elements: !3863)
!3863 = !{!3864, !3865}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3862, file: !14, line: 710, baseType: !1085, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3862, file: !14, line: 711, baseType: !938, size: 128, align: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !463, file: !14, line: 713, baseType: !724, size: 64, offset: 2496)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !463, file: !14, line: 714, baseType: !724, size: 64, offset: 2560)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !463, file: !14, line: 715, baseType: !224, size: 32, offset: 2624)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !463, file: !14, line: 716, baseType: !224, size: 32, offset: 2656)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !463, file: !14, line: 717, baseType: !224, size: 32, offset: 2688)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !463, file: !14, line: 719, baseType: !224, size: 32, offset: 2720)
!3872 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !14, line: 721, baseType: !3873, size: 64, offset: 2752)
!3873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !14, line: 721, size: 64, elements: !3874)
!3874 = !{!3875, !3876}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3873, file: !14, line: 722, baseType: !2074, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3873, file: !14, line: 723, baseType: !1108, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !463, file: !14, line: 725, baseType: !3878, size: 64, offset: 2816)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !463, file: !14, line: 726, baseType: !459, size: 1536, align: 64, offset: 2880)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !463, file: !14, line: 727, baseType: !195, size: 128, offset: 4416)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !14, line: 728, baseType: !3883, size: 64, offset: 4544)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !14, line: 728, size: 64, elements: !3884)
!3884 = !{!3885, !3886, !3889, !3890}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3883, file: !14, line: 729, baseType: !2480, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3883, file: !14, line: 730, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3883, file: !14, line: 731, baseType: !383, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3883, file: !14, line: 732, baseType: !7, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !463, file: !14, line: 735, baseType: !316, size: 32, offset: 4608)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !463, file: !14, line: 738, baseType: !316, size: 32, offset: 4640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !463, file: !14, line: 739, baseType: !3568, size: 64, offset: 4672)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !463, file: !14, line: 750, baseType: !199, size: 64, offset: 4736)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !459, file: !14, line: 474, baseType: !3826, size: 128, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !459, file: !14, line: 475, baseType: !1376, size: 320, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !459, file: !14, line: 476, baseType: !189, size: 32, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !459, file: !14, line: 477, baseType: !224, size: 32, offset: 544)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !459, file: !14, line: 482, baseType: !1662, size: 128, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !459, file: !14, line: 483, baseType: !191, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !459, file: !14, line: 484, baseType: !191, size: 64, offset: 768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !459, file: !14, line: 485, baseType: !3903, size: 64, offset: 832)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3906)
!3906 = !{!3907, !3911, !3981, !3985, !3989, !3995, !3999, !4003, !4008, !4012, !4016, !4020, !4021, !4025, !4029, !4033, !4038, !4042, !4049, !4050}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3905, file: !14, line: 405, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!109, !2267, !1120}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3905, file: !14, line: 406, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!109, !1806, !3915}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3917)
!3917 = !{!3918, !3948, !3962}
!3918 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !38, line: 295, baseType: !3919, size: 512)
!3919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !38, line: 295, size: 512, elements: !3920)
!3920 = !{!3921, !3947}
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3919, file: !38, line: 296, baseType: !3922, size: 448)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3919, file: !38, line: 296, size: 448, elements: !3923)
!3923 = !{!3924, !3925, !3934, !3935, !3936, !3945, !3946}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3922, file: !38, line: 298, baseType: !191, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !38, line: 299, baseType: !3926, size: 128, offset: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !38, line: 299, size: 128, elements: !3927)
!3927 = !{!3928, !3929}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3926, file: !38, line: 300, baseType: !195, size: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 302, baseType: !3930, size: 128)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !38, line: 302, size: 128, elements: !3931)
!3931 = !{!3932, !3933}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3930, file: !38, line: 303, baseType: !199, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3930, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3922, file: !38, line: 310, baseType: !458, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3922, file: !38, line: 311, baseType: !191, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !38, line: 312, baseType: !3937, size: 64, offset: 320)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3922, file: !38, line: 312, size: 64, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3937, file: !38, line: 313, baseType: !199, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3937, file: !38, line: 314, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3942)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3943)
!3943 = !{!3944}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3942, file: !38, line: 256, baseType: !191, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3922, file: !38, line: 316, baseType: !224, size: 32, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3922, file: !38, line: 317, baseType: !224, size: 32, offset: 416)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3919, file: !38, line: 323, baseType: !2268, size: 512, align: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !38, line: 325, baseType: !3949, size: 512, offset: 512)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !38, line: 325, size: 512, elements: !3950)
!3950 = !{!3951, !3961}
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !3949, file: !38, line: 326, baseType: !3952, size: 320)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !38, line: 326, size: 320, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3952, file: !38, line: 327, baseType: !191, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3952, file: !38, line: 328, baseType: !191, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3952, file: !38, line: 329, baseType: !191, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3952, file: !38, line: 331, baseType: !224, size: 32, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3952, file: !38, line: 332, baseType: !224, size: 32, offset: 224)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3952, file: !38, line: 333, baseType: !224, size: 32, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3952, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3949, file: !38, line: 339, baseType: !2268, size: 512, align: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !38, line: 341, baseType: !3963, size: 512, offset: 1024)
!3963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !38, line: 341, size: 512, elements: !3964)
!3964 = !{!3965, !3974, !3980}
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !38, line: 342, baseType: !3966, size: 384)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3963, file: !38, line: 342, size: 384, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3966, file: !38, line: 343, baseType: !191, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3966, file: !38, line: 344, baseType: !191, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3966, file: !38, line: 346, baseType: !199, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3966, file: !38, line: 347, baseType: !199, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3966, file: !38, line: 348, baseType: !199, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3966, file: !38, line: 349, baseType: !199, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !38, line: 352, baseType: !3975, size: 256)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3963, file: !38, line: 352, size: 256, elements: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3975, file: !38, line: 353, baseType: !191, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3975, file: !38, line: 354, baseType: !191, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3975, file: !38, line: 356, baseType: !195, size: 128, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3963, file: !38, line: 359, baseType: !2268, size: 512, align: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3905, file: !14, line: 409, baseType: !3982, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!109, !458, !1120}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3905, file: !14, line: 412, baseType: !3986, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!798, !458, !3915}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3905, file: !14, line: 414, baseType: !3990, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3993}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3905, file: !14, line: 416, baseType: !3996, size: 64, offset: 320)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!109, !1806, !458, !618, !7, !3318, !2495}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3905, file: !14, line: 419, baseType: !4000, size: 64, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!109, !1806, !458, !618, !7, !7, !2267, !199}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3905, file: !14, line: 424, baseType: !4004, size: 64, offset: 448)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!4007, !458, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !190, line: 131, baseType: !277)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3905, file: !14, line: 425, baseType: !4009, size: 64, offset: 512)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !3915, !430, !430}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3905, file: !14, line: 426, baseType: !4013, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!798, !3915, !189}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3905, file: !14, line: 427, baseType: !4017, size: 64, offset: 640)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3915}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3905, file: !14, line: 428, baseType: !2093, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3905, file: !14, line: 433, baseType: !4022, size: 64, offset: 768)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!109, !458, !3915, !3915, !74}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3905, file: !14, line: 435, baseType: !4026, size: 64, offset: 832)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!109, !3915}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3905, file: !14, line: 436, baseType: !4030, size: 64, offset: 896)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!798, !3915, !430, !430}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3905, file: !14, line: 438, baseType: !4034, size: 64, offset: 960)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !3915, !4037, !4037}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3905, file: !14, line: 439, baseType: !4039, size: 64, offset: 1024)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!109, !458, !2267}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3905, file: !14, line: 442, baseType: !4043, size: 64, offset: 1088)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!109, !4046, !1806, !4048}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3905, file: !14, line: 444, baseType: !2487, size: 64, offset: 1152)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3905, file: !14, line: 445, baseType: !4051, size: 64, offset: 1216)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!109, !2096, !2118}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !14, line: 486, baseType: !191, size: 64, offset: 896)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !459, file: !14, line: 487, baseType: !1376, size: 320, offset: 960)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !459, file: !14, line: 488, baseType: !2530, size: 32, offset: 1280)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !459, file: !14, line: 489, baseType: !204, size: 32, offset: 1312)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !459, file: !14, line: 490, baseType: !195, size: 128, offset: 1344)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !459, file: !14, line: 491, baseType: !199, size: 64, offset: 1472)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !449, file: !409, line: 180, baseType: !4061, size: 64, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!415, !1806, !348, !448, !383, !618, !430}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !449, file: !409, line: 182, baseType: !4061, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !449, file: !409, line: 184, baseType: !4066, size: 64, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!109, !1806, !348, !448, !2158}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !437, file: !409, line: 90, baseType: !4070, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !437, file: !409, line: 91, baseType: !4072, size: 64, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !399, file: !343, line: 120, baseType: !4074, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!4077, !366}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4079)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4080)
!4080 = !{!4081, !4082, !4086, !4090, !4096, !4100}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4079, file: !82, line: 40, baseType: !81, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4079, file: !82, line: 41, baseType: !4083, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!798}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4079, file: !82, line: 42, baseType: !4087, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!199}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4079, file: !82, line: 43, baseType: !4091, size: 64, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!2619, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4079, file: !82, line: 44, baseType: !4097, size: 64, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!2619}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4079, file: !82, line: 45, baseType: !761, size: 64, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !399, file: !343, line: 121, baseType: !4102, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!2619, !366}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !399, file: !343, line: 122, baseType: !4106, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !366, !4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !342, file: !343, line: 70, baseType: !4112, size: 64, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !633, line: 190, size: 1152, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4206, !4207, !4208, !4209, !4210, !4213}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4113, file: !633, line: 191, baseType: !224, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4113, file: !633, line: 192, baseType: !224, size: 32, offset: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4113, file: !633, line: 202, baseType: !4112, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4113, file: !633, line: 203, baseType: !282, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4113, file: !633, line: 205, baseType: !830, size: 192, align: 64, offset: 192)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4113, file: !633, line: 207, baseType: !2619, size: 64, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4113, file: !633, line: 208, baseType: !7, size: 32, offset: 448)
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !633, line: 209, baseType: !4123, size: 256, offset: 512)
!4123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4113, file: !633, line: 209, size: 256, elements: !4124)
!4124 = !{!4125, !4134, !4138}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4123, file: !633, line: 210, baseType: !4126, size: 256)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !633, line: 153, size: 256, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4133}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4126, file: !633, line: 154, baseType: !191, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4126, file: !633, line: 156, baseType: !1665, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4126, file: !633, line: 162, baseType: !4131, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !633, line: 162, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4126, file: !633, line: 167, baseType: !191, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4123, file: !633, line: 211, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !633, line: 170, size: 64, elements: !4136)
!4136 = !{!4137}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4135, file: !633, line: 171, baseType: !4112, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4123, file: !633, line: 212, baseType: !4139, size: 256)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !633, line: 174, size: 256, elements: !4140)
!4140 = !{!4141, !4201, !4204, !4205}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4139, file: !633, line: 175, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !633, line: 271, size: 768, elements: !4145)
!4145 = !{!4146, !4166, !4170, !4174, !4178, !4182, !4186, !4190, !4191, !4192, !4193, !4197}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4144, file: !633, line: 276, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!109, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !633, line: 251, size: 1216, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4151, file: !633, line: 253, baseType: !4112, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4151, file: !633, line: 254, baseType: !1806, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4151, file: !633, line: 255, baseType: !1157, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4151, file: !633, line: 256, baseType: !199, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4151, file: !633, line: 259, baseType: !718, size: 256, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4151, file: !633, line: 260, baseType: !718, size: 256, offset: 512)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4151, file: !633, line: 261, baseType: !109, size: 32, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4151, file: !633, line: 262, baseType: !195, size: 128, offset: 832)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4151, file: !633, line: 263, baseType: !383, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4151, file: !633, line: 265, baseType: !430, size: 64, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4151, file: !633, line: 266, baseType: !798, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4151, file: !633, line: 267, baseType: !798, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4151, file: !633, line: 268, baseType: !2203, size: 64, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4144, file: !633, line: 277, baseType: !4167, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !4150}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4144, file: !633, line: 290, baseType: !4171, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!109, !1157, !199}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4144, file: !633, line: 292, baseType: !4175, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!199, !1157, !2087}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4144, file: !633, line: 293, baseType: !4179, size: 64, offset: 256)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!199, !1157, !199, !2087}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4144, file: !633, line: 294, baseType: !4183, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !1157, !199}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4144, file: !633, line: 296, baseType: !4187, size: 64, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!415, !4150, !383, !430, !618}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4144, file: !633, line: 306, baseType: !430, size: 64, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4144, file: !633, line: 313, baseType: !798, size: 8, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4144, file: !633, line: 314, baseType: !4187, size: 64, offset: 576)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4144, file: !633, line: 317, baseType: !4194, size: 64, offset: 640)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!2145, !4150, !2147}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4144, file: !633, line: 320, baseType: !4198, size: 64, offset: 704)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!109, !4150, !2158}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4139, file: !633, line: 176, baseType: !4202, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !633, line: 35, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4139, file: !633, line: 177, baseType: !618, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4139, file: !633, line: 178, baseType: !4112, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4113, file: !633, line: 215, baseType: !199, size: 64, offset: 768)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4113, file: !633, line: 221, baseType: !277, size: 64, offset: 832)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4113, file: !633, line: 223, baseType: !244, size: 16, offset: 896)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4113, file: !633, line: 224, baseType: !425, size: 16, offset: 912)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4113, file: !633, line: 225, baseType: !4211, size: 64, offset: 960)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !633, line: 36, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4113, file: !633, line: 227, baseType: !938, size: 128, align: 64, offset: 1024)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !342, file: !343, line: 71, baseType: !4215, size: 32, offset: 448)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4216, line: 19, size: 32, elements: !4217)
!4216 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4217 = !{!4218}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4215, file: !4216, line: 20, baseType: !1496, size: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !342, file: !343, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !342, file: !343, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !342, file: !343, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !342, file: !343, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !342, file: !343, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !339, file: !94, line: 707, baseType: !338, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !339, file: !94, line: 709, baseType: !4226, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !339, file: !94, line: 711, baseType: !282, size: 64, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !339, file: !94, line: 712, baseType: !4230, size: 64, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4242, !4247, !4251}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4232, file: !94, line: 90, baseType: !282, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4232, file: !94, line: 91, baseType: !434, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4232, file: !94, line: 92, baseType: !4237, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!109, !4240, !378}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4232, file: !94, line: 93, baseType: !4243, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!383, !4240, !4246, !4109, !4110}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4232, file: !94, line: 95, baseType: !4248, size: 64, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !338}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4232, file: !94, line: 97, baseType: !4252, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4254)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4255)
!4255 = !{!4256, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4254, file: !101, line: 287, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!109, !338}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4254, file: !101, line: 288, baseType: !4248, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4254, file: !101, line: 289, baseType: !4257, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4254, file: !101, line: 290, baseType: !4257, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4254, file: !101, line: 291, baseType: !4257, size: 64, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4254, file: !101, line: 292, baseType: !4257, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4254, file: !101, line: 293, baseType: !4257, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4254, file: !101, line: 294, baseType: !4257, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4254, file: !101, line: 295, baseType: !4257, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4254, file: !101, line: 296, baseType: !4257, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4254, file: !101, line: 297, baseType: !4257, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4254, file: !101, line: 298, baseType: !4257, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4254, file: !101, line: 299, baseType: !4257, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4254, file: !101, line: 300, baseType: !4257, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4254, file: !101, line: 301, baseType: !4257, size: 64, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4254, file: !101, line: 302, baseType: !4257, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4254, file: !101, line: 303, baseType: !4257, size: 64, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4254, file: !101, line: 304, baseType: !4257, size: 64, offset: 1088)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4254, file: !101, line: 305, baseType: !4257, size: 64, offset: 1152)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4254, file: !101, line: 306, baseType: !4257, size: 64, offset: 1216)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4254, file: !101, line: 307, baseType: !4257, size: 64, offset: 1280)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4254, file: !101, line: 308, baseType: !4257, size: 64, offset: 1344)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4254, file: !101, line: 309, baseType: !4257, size: 64, offset: 1408)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !339, file: !94, line: 714, baseType: !4283, size: 64, offset: 768)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4286, line: 80, size: 1344, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4287 = !{!4288, !4289, !4290, !4291, !4292, !4293, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4366}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4285, file: !4286, line: 81, baseType: !282, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4285, file: !4286, line: 82, baseType: !282, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4285, file: !4286, line: 83, baseType: !434, size: 64, offset: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4285, file: !4286, line: 84, baseType: !434, size: 64, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4285, file: !4286, line: 85, baseType: !434, size: 64, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4285, file: !4286, line: 87, baseType: !4294, size: 64, offset: 320)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!109, !338, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4303, !4304, !4305, !4306, !4319, !4329, !4330, !4331, !4332, !4333, !4341, !4342, !4343, !4344, !4345, !4346}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4298, file: !88, line: 97, baseType: !282, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4298, file: !88, line: 98, baseType: !4283, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4298, file: !88, line: 100, baseType: !647, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4298, file: !88, line: 101, baseType: !282, size: 64, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4298, file: !88, line: 103, baseType: !798, size: 8, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4298, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4298, file: !88, line: 106, baseType: !4307, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4310, line: 282, size: 1600, elements: !4311)
!4310 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4311 = !{!4312, !4313, !4314, !4318}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4309, file: !4310, line: 283, baseType: !3571, size: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4309, file: !4310, line: 284, baseType: !3571, size: 256, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4309, file: !4310, line: 285, baseType: !4315, size: 1024, offset: 512)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !4316)
!4316 = !{!4317}
!4317 = !DISubrange(count: 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4309, file: !4310, line: 286, baseType: !2619, size: 64, offset: 1536)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4298, file: !88, line: 107, baseType: !4320, size: 64, offset: 384)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4322)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4310, line: 217, size: 256, elements: !4323)
!4323 = !{!4324, !4325, !4327, !4328}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4322, file: !4310, line: 218, baseType: !3578, size: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4322, file: !4310, line: 219, baseType: !4326, size: 64, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4310, line: 15, baseType: !191)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4322, file: !4310, line: 220, baseType: !316, size: 32, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4322, file: !4310, line: 221, baseType: !316, size: 32, offset: 224)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4298, file: !88, line: 109, baseType: !4257, size: 64, offset: 448)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4298, file: !88, line: 110, baseType: !4248, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4298, file: !88, line: 111, baseType: !4257, size: 64, offset: 576)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4298, file: !88, line: 112, baseType: !4248, size: 64, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4298, file: !88, line: 113, baseType: !4334, size: 64, offset: 704)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!109, !338, !4337}
!4337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4339)
!4339 = !{!4340}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4338, file: !101, line: 59, baseType: !109, size: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4298, file: !88, line: 114, baseType: !4257, size: 64, offset: 768)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4298, file: !88, line: 115, baseType: !434, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4298, file: !88, line: 116, baseType: !434, size: 64, offset: 896)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4298, file: !88, line: 118, baseType: !4252, size: 64, offset: 960)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4298, file: !88, line: 119, baseType: !4248, size: 64, offset: 1024)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4298, file: !88, line: 121, baseType: !4347, size: 64, offset: 1088)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4285, file: !4286, line: 88, baseType: !4237, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4285, file: !4286, line: 89, baseType: !4257, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4285, file: !4286, line: 90, baseType: !4248, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4285, file: !4286, line: 91, baseType: !4248, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4285, file: !4286, line: 92, baseType: !4248, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4285, file: !4286, line: 94, baseType: !4257, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4285, file: !4286, line: 95, baseType: !4257, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4285, file: !4286, line: 97, baseType: !4334, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4285, file: !4286, line: 98, baseType: !4257, size: 64, offset: 896)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4285, file: !4286, line: 100, baseType: !4257, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4285, file: !4286, line: 102, baseType: !4257, size: 64, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4285, file: !4286, line: 103, baseType: !4248, size: 64, offset: 1088)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4285, file: !4286, line: 105, baseType: !4252, size: 64, offset: 1152)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4285, file: !4286, line: 107, baseType: !4363, size: 64, offset: 1216)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4365)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4286, line: 107, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4285, file: !4286, line: 109, baseType: !798, size: 8, offset: 1280)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !339, file: !94, line: 715, baseType: !4297, size: 64, offset: 832)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !339, file: !94, line: 717, baseType: !199, size: 64, offset: 896)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !339, file: !94, line: 719, baseType: !199, size: 64, offset: 960)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !339, file: !94, line: 721, baseType: !718, size: 256, offset: 1024)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !339, file: !94, line: 725, baseType: !4372, size: 448, offset: 1280)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4372, file: !94, line: 518, baseType: !195, size: 128)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4372, file: !94, line: 519, baseType: !195, size: 128, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4372, file: !94, line: 520, baseType: !195, size: 128, offset: 256)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4372, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !339, file: !94, line: 726, baseType: !4379, size: 2496, offset: 1728)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4463, !4467}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4379, file: !101, line: 664, baseType: !4337, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4379, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4379, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4379, file: !101, line: 667, baseType: !798, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4379, file: !101, line: 668, baseType: !798, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4379, file: !101, line: 669, baseType: !798, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4379, file: !101, line: 670, baseType: !798, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4379, file: !101, line: 671, baseType: !798, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4379, file: !101, line: 672, baseType: !798, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4379, file: !101, line: 673, baseType: !798, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4379, file: !101, line: 674, baseType: !798, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4379, file: !101, line: 675, baseType: !315, size: 32, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4379, file: !101, line: 676, baseType: !204, size: 32, offset: 96)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4379, file: !101, line: 678, baseType: !195, size: 128, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4379, file: !101, line: 679, baseType: !667, size: 256, offset: 256)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4379, file: !101, line: 680, baseType: !4397, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4399, line: 43, size: 1536, elements: !4400)
!4399 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4398, file: !4399, line: 44, baseType: !282, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4398, file: !4399, line: 45, baseType: !109, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4398, file: !4399, line: 46, baseType: !195, size: 128, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4398, file: !4399, line: 47, baseType: !204, size: 32, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4398, file: !4399, line: 48, baseType: !4406, size: 64, offset: 320)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4398, file: !4399, line: 49, baseType: !958, size: 320, offset: 384)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4398, file: !4399, line: 50, baseType: !191, size: 64, offset: 704)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4398, file: !4399, line: 51, baseType: !1611, size: 64, offset: 768)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4398, file: !4399, line: 52, baseType: !1611, size: 64, offset: 832)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4398, file: !4399, line: 53, baseType: !1611, size: 64, offset: 896)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4398, file: !4399, line: 54, baseType: !1611, size: 64, offset: 960)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4398, file: !4399, line: 55, baseType: !1611, size: 64, offset: 1024)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4398, file: !4399, line: 56, baseType: !191, size: 64, offset: 1088)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4398, file: !4399, line: 57, baseType: !191, size: 64, offset: 1152)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4398, file: !4399, line: 58, baseType: !191, size: 64, offset: 1216)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4398, file: !4399, line: 59, baseType: !191, size: 64, offset: 1280)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4398, file: !4399, line: 60, baseType: !191, size: 64, offset: 1344)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4398, file: !4399, line: 61, baseType: !338, size: 64, offset: 1408)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4398, file: !4399, line: 62, baseType: !798, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4398, file: !4399, line: 63, baseType: !798, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4379, file: !101, line: 681, baseType: !798, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4379, file: !101, line: 682, baseType: !798, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4379, file: !101, line: 683, baseType: !798, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4379, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4379, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4379, file: !101, line: 690, baseType: !1603, size: 512, offset: 640)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4379, file: !101, line: 691, baseType: !277, size: 64, offset: 1152)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4379, file: !101, line: 692, baseType: !976, size: 256, offset: 1216)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4379, file: !101, line: 693, baseType: !1469, size: 192, offset: 1472)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4379, file: !101, line: 694, baseType: !4406, size: 64, offset: 1664)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4379, file: !101, line: 695, baseType: !224, size: 32, offset: 1728)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4379, file: !101, line: 696, baseType: !224, size: 32, offset: 1760)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4379, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4379, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4379, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4379, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4379, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4379, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4379, file: !101, line: 703, baseType: !798, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4379, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4379, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4379, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4379, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4379, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4379, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4379, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4379, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4379, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4379, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4379, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4379, file: !101, line: 715, baseType: !277, size: 64, offset: 2048)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4379, file: !101, line: 716, baseType: !277, size: 64, offset: 2112)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4379, file: !101, line: 717, baseType: !277, size: 64, offset: 2176)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4379, file: !101, line: 718, baseType: !277, size: 64, offset: 2240)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4379, file: !101, line: 720, baseType: !4458, size: 64, offset: 2304)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4460)
!4460 = !{!4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4459, file: !101, line: 633, baseType: !204, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4459, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4379, file: !101, line: 721, baseType: !4464, size: 64, offset: 2368)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !338, !714}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4379, file: !101, line: 722, baseType: !4468, size: 64, offset: 2432)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !339, file: !94, line: 727, baseType: !4471, size: 64, offset: 4224)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4480, !4481, !4482}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4472, file: !101, line: 743, baseType: !4254, size: 1472)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4472, file: !101, line: 744, baseType: !4257, size: 64, offset: 1472)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4472, file: !101, line: 745, baseType: !4477, size: 64, offset: 1536)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !338, !798}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4472, file: !101, line: 746, baseType: !4257, size: 64, offset: 1600)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4472, file: !101, line: 747, baseType: !4248, size: 64, offset: 1664)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4472, file: !101, line: 748, baseType: !4248, size: 64, offset: 1728)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !339, file: !94, line: 736, baseType: !4484, size: 128, offset: 4288)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4485)
!4485 = !{!4486, !4490}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4484, file: !94, line: 531, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4489, line: 13, flags: DIFlagFwdDecl)
!4489 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4484, file: !94, line: 532, baseType: !4491, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !339, file: !94, line: 738, baseType: !4494, size: 64, offset: 4416)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !339, file: !94, line: 740, baseType: !4498, size: 64, offset: 4480)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !339, file: !94, line: 741, baseType: !277, size: 64, offset: 4544)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !339, file: !94, line: 746, baseType: !277, size: 64, offset: 4608)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !339, file: !94, line: 747, baseType: !4502, size: 64, offset: 4672)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4504)
!4504 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !339, file: !94, line: 749, baseType: !4506, size: 64, offset: 4736)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4508)
!4508 = !{!4509, !4510, !4511}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4507, file: !94, line: 433, baseType: !7, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4507, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4507, file: !94, line: 435, baseType: !191, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !339, file: !94, line: 751, baseType: !195, size: 128, offset: 4800)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !339, file: !94, line: 762, baseType: !4514, size: 64, offset: 4928)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !339, file: !94, line: 770, baseType: !4517, offset: 4992)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4518, line: 5, elements: !1004)
!4518 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !339, file: !94, line: 772, baseType: !4520, size: 64, offset: 4992)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4522, line: 18, flags: DIFlagFwdDecl)
!4522 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !339, file: !94, line: 773, baseType: !4524, size: 64, offset: 5056)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4526, line: 41, size: 512, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4527 = !{!4528, !4529, !4623, !4624, !4625, !4626}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4525, file: !4526, line: 42, baseType: !4524, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4525, file: !4526, line: 43, baseType: !4530, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4532)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4526, line: 125, size: 1408, elements: !4533)
!4533 = !{!4534, !4538, !4542, !4548, !4552, !4553, !4558, !4562, !4566, !4570, !4574, !4575, !4579, !4583, !4587, !4598, !4599, !4600, !4601, !4611, !4615, !4619}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4532, file: !4526, line: 126, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!4524, !4524}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4532, file: !4526, line: 127, baseType: !4539, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !4524}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4532, file: !4526, line: 128, baseType: !4543, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!798, !4546}
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4532, file: !4526, line: 129, baseType: !4549, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!2619, !4546, !4240}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4532, file: !4526, line: 131, baseType: !4543, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4532, file: !4526, line: 133, baseType: !4554, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!4557, !4546}
!4557 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4526, line: 132, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4532, file: !4526, line: 134, baseType: !4559, size: 64, offset: 384)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!798, !4546, !282}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4532, file: !4526, line: 136, baseType: !4563, size: 64, offset: 448)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!109, !4546, !282, !7, !199, !430}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4532, file: !4526, line: 141, baseType: !4567, size: 64, offset: 512)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!109, !4546, !282, !1052, !430}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4532, file: !4526, line: 144, baseType: !4571, size: 64, offset: 576)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!282, !4546}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4532, file: !4526, line: 145, baseType: !4571, size: 64, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4532, file: !4526, line: 146, baseType: !4576, size: 64, offset: 704)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!4524, !4546}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4532, file: !4526, line: 148, baseType: !4580, size: 64, offset: 768)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4524, !4546, !4524}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4532, file: !4526, line: 151, baseType: !4584, size: 64, offset: 832)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!4524, !4546, !282}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4532, file: !4526, line: 153, baseType: !4588, size: 64, offset: 896)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!109, !4546, !282, !282, !7, !7, !4591}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4526, line: 94, size: 640, elements: !4593)
!4593 = !{!4594, !4595, !4596}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4592, file: !4526, line: 95, baseType: !4524, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4592, file: !4526, line: 96, baseType: !7, size: 32, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4592, file: !4526, line: 97, baseType: !4597, size: 512, offset: 128)
!4597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 512, elements: !1646)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4532, file: !4526, line: 158, baseType: !4580, size: 64, offset: 960)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4532, file: !4526, line: 161, baseType: !4576, size: 64, offset: 1024)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4532, file: !4526, line: 163, baseType: !4535, size: 64, offset: 1088)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4532, file: !4526, line: 164, baseType: !4602, size: 64, offset: 1152)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!109, !4546, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4526, line: 73, size: 128, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4606, file: !4526, line: 74, baseType: !7, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4606, file: !4526, line: 75, baseType: !7, size: 32, offset: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4606, file: !4526, line: 76, baseType: !4546, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4532, file: !4526, line: 166, baseType: !4612, size: 64, offset: 1216)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!199, !4524, !109}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4532, file: !4526, line: 167, baseType: !4616, size: 64, offset: 1280)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!109, !4546, !7}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4532, file: !4526, line: 168, baseType: !4620, size: 64, offset: 1344)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!109, !4524}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4525, file: !4526, line: 44, baseType: !338, size: 64, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4525, file: !4526, line: 45, baseType: !195, size: 128, offset: 192)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4525, file: !4526, line: 46, baseType: !195, size: 128, offset: 320)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4525, file: !4526, line: 47, baseType: !232, size: 8, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !339, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !339, file: !94, line: 778, baseType: !613, size: 32, offset: 5152)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !339, file: !94, line: 779, baseType: !315, size: 32, offset: 5184)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !339, file: !94, line: 781, baseType: !204, size: 32, offset: 5216)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !339, file: !94, line: 782, baseType: !195, size: 128, offset: 5248)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !339, file: !94, line: 784, baseType: !4633, size: 64, offset: 5376)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4635)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4636, line: 52, size: 768, elements: !4637)
!4636 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4646, !4650, !4651, !4652, !4653, !4657, !4661}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4635, file: !4636, line: 53, baseType: !282, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4635, file: !4636, line: 55, baseType: !434, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4635, file: !4636, line: 56, baseType: !434, size: 64, offset: 128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4635, file: !4636, line: 58, baseType: !4237, size: 64, offset: 192)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4635, file: !4636, line: 59, baseType: !4643, size: 64, offset: 256)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!383, !4240, !4246}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4635, file: !4636, line: 61, baseType: !4647, size: 64, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4633}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4635, file: !4636, line: 62, baseType: !4248, size: 64, offset: 384)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4635, file: !4636, line: 64, baseType: !4257, size: 64, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4635, file: !4636, line: 66, baseType: !4077, size: 64, offset: 512)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4635, file: !4636, line: 67, baseType: !4654, size: 64, offset: 576)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!2619, !4240}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4635, file: !4636, line: 69, baseType: !4658, size: 64, offset: 640)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{null, !4240, !4109, !4110}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4635, file: !4636, line: 71, baseType: !4252, size: 64, offset: 704)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !339, file: !94, line: 785, baseType: !434, size: 64, offset: 5440)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !339, file: !94, line: 787, baseType: !4248, size: 64, offset: 5504)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !339, file: !94, line: 788, baseType: !4665, size: 64, offset: 5568)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !339, file: !94, line: 789, baseType: !4668, size: 64, offset: 5632)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !339, file: !94, line: 791, baseType: !4671, size: 64, offset: 5696)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4673)
!4673 = !{!4674, !4675, !4676, !4677, !4678}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4672, file: !94, line: 598, baseType: !116, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4672, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4672, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4672, file: !94, line: 601, baseType: !798, size: 8, offset: 96)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4672, file: !94, line: 602, baseType: !798, size: 8, offset: 104)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !339, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !339, file: !94, line: 795, baseType: !798, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !339, file: !94, line: 796, baseType: !798, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !339, file: !94, line: 797, baseType: !798, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !339, file: !94, line: 798, baseType: !798, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !339, file: !94, line: 799, baseType: !798, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !260, file: !255, line: 676, baseType: !339, size: 5824, offset: 2240)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !260, file: !255, line: 677, baseType: !448, size: 64, offset: 8064)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !260, file: !255, line: 678, baseType: !448, size: 64, offset: 8128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !260, file: !255, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !260, file: !255, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !254, file: !255, line: 325, baseType: !259, size: 64, offset: 192)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !254, file: !255, line: 327, baseType: !199, size: 64, offset: 256)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !254, file: !255, line: 328, baseType: !323, size: 64, offset: 320)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !254, file: !255, line: 329, baseType: !4694, size: 64, offset: 384)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !255, line: 76, size: 832, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4702, !4703}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4695, file: !255, line: 77, baseType: !259, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4695, file: !255, line: 78, baseType: !195, size: 128, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4695, file: !255, line: 79, baseType: !4700, size: 64, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !255, line: 79, flags: DIFlagFwdDecl)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4695, file: !255, line: 80, baseType: !236, size: 8, offset: 256)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4695, file: !255, line: 81, baseType: !342, size: 512, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !254, file: !255, line: 331, baseType: !7, size: 32, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !254, file: !255, line: 332, baseType: !244, size: 16, offset: 480)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !254, file: !255, line: 333, baseType: !244, size: 16, offset: 496)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !254, file: !255, line: 334, baseType: !244, size: 16, offset: 512)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !254, file: !255, line: 335, baseType: !244, size: 16, offset: 528)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !254, file: !255, line: 336, baseType: !7, size: 32, offset: 544)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !254, file: !255, line: 337, baseType: !232, size: 8, offset: 576)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !254, file: !255, line: 338, baseType: !232, size: 8, offset: 584)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !254, file: !255, line: 344, baseType: !4713, size: 64, offset: 640)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4715, line: 415, size: 64, elements: !4716)
!4715 = !DIFile(filename: "drivers/pci/pcie/../pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4716 = !{!4717, !4718, !4719}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4714, file: !4715, line: 416, baseType: !232, size: 8)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4714, file: !4715, line: 417, baseType: !232, size: 8, offset: 8)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4714, file: !4715, line: 418, baseType: !315, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !254, file: !255, line: 345, baseType: !253, size: 64, offset: 704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !254, file: !255, line: 347, baseType: !315, size: 32, offset: 768)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !254, file: !255, line: 348, baseType: !232, size: 8, offset: 800)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !254, file: !255, line: 349, baseType: !232, size: 8, offset: 808)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !254, file: !255, line: 350, baseType: !232, size: 8, offset: 816)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !254, file: !255, line: 351, baseType: !232, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !254, file: !255, line: 352, baseType: !232, size: 8, offset: 832)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !254, file: !255, line: 353, baseType: !232, size: 8, offset: 840)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !254, file: !255, line: 354, baseType: !242, size: 16, offset: 848)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !254, file: !255, line: 355, baseType: !1066, size: 64, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !254, file: !255, line: 357, baseType: !4731, size: 64, offset: 960)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !255, line: 918, size: 2368, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4749, !4753, !4757, !4761, !4765, !4766, !4770, !4771, !4775, !4795, !4796, !4797, !4798, !4803}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4732, file: !255, line: 919, baseType: !195, size: 128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4732, file: !255, line: 920, baseType: !282, size: 64, offset: 128)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4732, file: !255, line: 921, baseType: !4737, size: 64, offset: 192)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4739)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4310, line: 44, size: 320, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4739, file: !4310, line: 45, baseType: !316, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4739, file: !4310, line: 45, baseType: !316, size: 32, offset: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4739, file: !4310, line: 46, baseType: !316, size: 32, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4739, file: !4310, line: 46, baseType: !316, size: 32, offset: 96)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4739, file: !4310, line: 47, baseType: !316, size: 32, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4739, file: !4310, line: 47, baseType: !316, size: 32, offset: 160)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4739, file: !4310, line: 48, baseType: !4326, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4739, file: !4310, line: 49, baseType: !316, size: 32, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4732, file: !255, line: 922, baseType: !4750, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!109, !253, !4737}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4732, file: !255, line: 923, baseType: !4754, size: 64, offset: 320)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{null, !253}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4732, file: !255, line: 924, baseType: !4758, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!109, !253, !4337}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4732, file: !255, line: 925, baseType: !4762, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!109, !253}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4732, file: !255, line: 926, baseType: !4754, size: 64, offset: 512)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4732, file: !255, line: 927, baseType: !4767, size: 64, offset: 576)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!109, !253, !109}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4732, file: !255, line: 928, baseType: !4767, size: 64, offset: 640)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4732, file: !255, line: 929, baseType: !4772, size: 64, offset: 704)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!315, !253}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4732, file: !255, line: 930, baseType: !4776, size: 64, offset: 768)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4778)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !255, line: 837, size: 448, elements: !4779)
!4779 = !{!4780, !4786, !4790, !4791, !4792, !4793, !4794}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4778, file: !255, line: 839, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!4784, !253, !4785}
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !255, line: 814, baseType: !7)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !255, line: 196, baseType: !7)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4778, file: !255, line: 843, baseType: !4787, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!4784, !253}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4778, file: !255, line: 846, baseType: !4787, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4778, file: !255, line: 849, baseType: !4754, size: 64, offset: 192)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4778, file: !255, line: 850, baseType: !4754, size: 64, offset: 256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4778, file: !255, line: 853, baseType: !4754, size: 64, offset: 320)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4778, file: !255, line: 856, baseType: !4754, size: 64, offset: 384)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4732, file: !255, line: 931, baseType: !434, size: 64, offset: 832)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4732, file: !255, line: 932, baseType: !434, size: 64, offset: 896)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4732, file: !255, line: 933, baseType: !4298, size: 1152, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4732, file: !255, line: 934, baseType: !4799, size: 192, offset: 2112)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !255, line: 801, size: 192, elements: !4800)
!4800 = !{!4801, !4802}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4799, file: !255, line: 802, baseType: !204, size: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4799, file: !255, line: 803, baseType: !195, size: 128, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4732, file: !255, line: 935, baseType: !798, size: 8, offset: 2304)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !254, file: !255, line: 358, baseType: !277, size: 64, offset: 1024)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !254, file: !255, line: 364, baseType: !4507, size: 128, offset: 1088)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !254, file: !255, line: 366, baseType: !4807, size: 32, offset: 1216)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !255, line: 171, baseType: !109)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !254, file: !255, line: 369, baseType: !232, size: 8, offset: 1248)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !254, file: !255, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !254, file: !255, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !254, file: !255, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !254, file: !255, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !254, file: !255, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !254, file: !255, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !254, file: !255, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !254, file: !255, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !254, file: !255, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !254, file: !255, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !254, file: !255, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !254, file: !255, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !254, file: !255, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !254, file: !255, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !254, file: !255, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !254, file: !255, line: 390, baseType: !7, size: 32, offset: 1280)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !254, file: !255, line: 391, baseType: !7, size: 32, offset: 1312)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !254, file: !255, line: 394, baseType: !4827, size: 64, offset: 1344)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !255, line: 316, flags: DIFlagFwdDecl)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !254, file: !255, line: 395, baseType: !242, size: 16, offset: 1408)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !254, file: !255, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !254, file: !255, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !254, file: !255, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !254, file: !255, line: 402, baseType: !4785, size: 32, offset: 1440)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !254, file: !255, line: 403, baseType: !339, size: 5824, offset: 1472)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !254, file: !255, line: 405, baseType: !109, size: 32, offset: 7296)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !254, file: !255, line: 411, baseType: !7, size: 32, offset: 7328)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !254, file: !255, line: 412, baseType: !4838, size: 5632, offset: 7360)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 5632, elements: !4839)
!4839 = !{!4840}
!4840 = !DISubrange(count: 11)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !254, file: !255, line: 413, baseType: !271, size: 512, offset: 12992)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !254, file: !255, line: 415, baseType: !798, size: 8, offset: 13504)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !254, file: !255, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !254, file: !255, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !254, file: !255, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !254, file: !255, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !254, file: !255, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !254, file: !255, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !254, file: !255, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !254, file: !255, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !254, file: !255, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !254, file: !255, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !254, file: !255, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !254, file: !255, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !254, file: !255, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !254, file: !255, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !254, file: !255, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !254, file: !255, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !254, file: !255, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !254, file: !255, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !254, file: !255, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !254, file: !255, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !254, file: !255, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !254, file: !255, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !254, file: !255, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !254, file: !255, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !254, file: !255, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !254, file: !255, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !254, file: !255, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !254, file: !255, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !254, file: !255, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !254, file: !255, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !254, file: !255, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !254, file: !255, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !254, file: !255, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !254, file: !255, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !254, file: !255, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !254, file: !255, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !254, file: !255, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !254, file: !255, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !254, file: !255, line: 468, baseType: !4882, size: 16, offset: 13552)
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !255, line: 222, baseType: !244)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !254, file: !255, line: 469, baseType: !224, size: 32, offset: 13568)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !254, file: !255, line: 471, baseType: !204, size: 32, offset: 13600)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !254, file: !255, line: 472, baseType: !4886, size: 512, offset: 13632)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 512, elements: !2796)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !254, file: !255, line: 473, baseType: !1085, size: 64, offset: 14144)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !254, file: !255, line: 474, baseType: !4889, size: 704, offset: 14208)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 704, elements: !4839)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !254, file: !255, line: 475, baseType: !4889, size: 704, offset: 14912)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !254, file: !255, line: 487, baseType: !199, size: 64, offset: 15616)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !254, file: !255, line: 488, baseType: !676, size: 32, offset: 15680)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !254, file: !255, line: 490, baseType: !4894, size: 320, offset: 15744)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !255, line: 309, size: 320, elements: !4895)
!4895 = !{!4896, !4897, !4898}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4894, file: !255, line: 310, baseType: !718, size: 256)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4894, file: !255, line: 311, baseType: !7, size: 32, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4894, file: !255, line: 312, baseType: !232, size: 8, offset: 288)
!4899 = !DIDerivedType(tag: DW_TAG_member, scope: !254, file: !255, line: 497, baseType: !4900, size: 64, offset: 16064)
!4900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !254, file: !255, line: 497, size: 64, elements: !4901)
!4901 = !{!4902, !4929}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4900, file: !255, line: 498, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4715, line: 294, size: 1024, elements: !4905)
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4928}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4904, file: !4715, line: 295, baseType: !109, size: 32)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4904, file: !4715, line: 296, baseType: !109, size: 32, offset: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4904, file: !4715, line: 297, baseType: !315, size: 32, offset: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4904, file: !4715, line: 298, baseType: !242, size: 16, offset: 96)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4904, file: !4715, line: 299, baseType: !242, size: 16, offset: 112)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4904, file: !4715, line: 300, baseType: !242, size: 16, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4904, file: !4715, line: 301, baseType: !242, size: 16, offset: 144)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4904, file: !4715, line: 302, baseType: !242, size: 16, offset: 160)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4904, file: !4715, line: 303, baseType: !242, size: 16, offset: 176)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4904, file: !4715, line: 304, baseType: !242, size: 16, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4904, file: !4715, line: 305, baseType: !315, size: 32, offset: 224)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4904, file: !4715, line: 306, baseType: !232, size: 8, offset: 256)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4904, file: !4715, line: 307, baseType: !232, size: 8, offset: 264)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4904, file: !4715, line: 308, baseType: !242, size: 16, offset: 272)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4904, file: !4715, line: 309, baseType: !253, size: 64, offset: 320)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4904, file: !4715, line: 310, baseType: !253, size: 64, offset: 384)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4904, file: !4715, line: 311, baseType: !315, size: 32, offset: 448)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4904, file: !4715, line: 312, baseType: !232, size: 8, offset: 480)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4904, file: !4715, line: 313, baseType: !242, size: 16, offset: 496)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4904, file: !4715, line: 314, baseType: !242, size: 16, offset: 512)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4904, file: !4715, line: 315, baseType: !4927, size: 384, offset: 576)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 384, elements: !1949)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4904, file: !4715, line: 316, baseType: !798, size: 8, offset: 960)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4900, file: !255, line: 499, baseType: !253, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !254, file: !255, line: 501, baseType: !242, size: 16, offset: 16128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !254, file: !255, line: 502, baseType: !232, size: 8, offset: 16144)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !254, file: !255, line: 505, baseType: !242, size: 16, offset: 16160)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !254, file: !255, line: 506, baseType: !315, size: 32, offset: 16192)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !254, file: !255, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !254, file: !255, line: 510, baseType: !242, size: 16, offset: 16240)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !254, file: !255, line: 511, baseType: !242, size: 16, offset: 16256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !254, file: !255, line: 519, baseType: !242, size: 16, offset: 16272)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !254, file: !255, line: 520, baseType: !276, size: 64, offset: 16320)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !254, file: !255, line: 521, baseType: !430, size: 64, offset: 16384)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !254, file: !255, line: 526, baseType: !282, size: 64, offset: 16448)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !254, file: !255, line: 528, baseType: !191, size: 64, offset: 16512)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !254, file: !255, line: 531, baseType: !4943, size: 56, offset: 16576)
!4943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 56, elements: !839)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !248, file: !249, line: 60, baseType: !315, size: 32, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !248, file: !249, line: 61, baseType: !199, size: 64, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !248, file: !249, line: 62, baseType: !339, size: 5824, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !201, file: !3, line: 44, baseType: !976, size: 256, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "noirq", scope: !201, file: !3, line: 45, baseType: !798, size: 8, offset: 384)
!4949 = !{!4950, !4961, !0, !4963, !4965, !4970, !4992, !5001, !5003, !5008, !5013, !5018}
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(name: "__setup_pcie_pme_setup", scope: !2, file: !3, line: 39, type: !4952, isLocal: true, isDefinition: true, align: 64)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4953, line: 324, size: 192, elements: !4954)
!4953 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4954 = !{!4955, !4956, !4960}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4952, file: !4953, line: 325, baseType: !282, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4952, file: !4953, line: 326, baseType: !4957, size: 64, offset: 64)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!109, !383}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4952, file: !4953, line: 327, baseType: !109, size: 32, offset: 128)
!4961 = !DIGlobalVariableExpression(var: !4962, expr: !DIExpression())
!4962 = distinct !DIGlobalVariable(name: "pcie_pme_msi_disabled", scope: !2, file: !3, line: 30, type: !798, isLocal: false, isDefinition: true)
!4963 = !DIGlobalVariableExpression(var: !4964, expr: !DIExpression())
!4964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !1948, isLocal: true, isDefinition: true)
!4965 = !DIGlobalVariableExpression(var: !4966, expr: !DIExpression())
!4966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !4967, isLocal: true, isDefinition: true)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 72, elements: !4968)
!4968 = !{!4969}
!4969 = !DISubrange(count: 9)
!4970 = !DIGlobalVariableExpression(var: !4971, expr: !DIExpression())
!4971 = distinct !DIGlobalVariable(name: "pcie_pme_driver", scope: !2, file: !3, line: 454, type: !4972, isLocal: true, isDefinition: true)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_port_service_driver", file: !249, line: 76, size: 1792, elements: !4973)
!4973 = !{!4974, !4975, !4979, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4972, file: !249, line: 77, baseType: !282, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4972, file: !249, line: 78, baseType: !4976, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!109, !247}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4972, file: !249, line: 79, baseType: !4980, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !247}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4972, file: !249, line: 80, baseType: !4976, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4972, file: !249, line: 81, baseType: !4976, size: 64, offset: 256)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4972, file: !249, line: 82, baseType: !4976, size: 64, offset: 320)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4972, file: !249, line: 83, baseType: !4976, size: 64, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4972, file: !249, line: 84, baseType: !4976, size: 64, offset: 448)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4972, file: !249, line: 86, baseType: !4976, size: 64, offset: 512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "port_type", scope: !4972, file: !249, line: 88, baseType: !109, size: 32, offset: 576)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !4972, file: !249, line: 89, baseType: !315, size: 32, offset: 608)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4972, file: !249, line: 91, baseType: !4298, size: 1152, offset: 640)
!4992 = !DIGlobalVariableExpression(var: !4993, expr: !DIExpression())
!4993 = distinct !DIGlobalVariable(name: "__key", scope: !4994, file: !3, line: 341, type: !1089, isLocal: true, isDefinition: true)
!4994 = distinct !DISubprogram(name: "pcie_pme_probe", scope: !3, file: !3, line: 324, type: !4977, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4995)
!4995 = !{!4996, !4997, !4998, !4999, !5000}
!4996 = !DILocalVariable(name: "srv", arg: 1, scope: !4994, file: !3, line: 324, type: !247)
!4997 = !DILocalVariable(name: "port", scope: !4994, file: !3, line: 326, type: !253)
!4998 = !DILocalVariable(name: "data", scope: !4994, file: !3, line: 327, type: !200)
!4999 = !DILocalVariable(name: "type", scope: !4994, file: !3, line: 328, type: !109)
!5000 = !DILocalVariable(name: "ret", scope: !4994, file: !3, line: 329, type: !109)
!5001 = !DIGlobalVariableExpression(var: !5002, expr: !DIExpression())
!5002 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !4967, isLocal: true, isDefinition: true)
!5003 = !DIGlobalVariableExpression(var: !5004, expr: !DIExpression())
!5004 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !5005, isLocal: true, isDefinition: true)
!5005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 224, elements: !5006)
!5006 = !{!5007}
!5007 = !DISubrange(count: 28)
!5008 = !DIGlobalVariableExpression(var: !5009, expr: !DIExpression())
!5009 = distinct !DIGlobalVariable(scope: null, file: !173, line: 480, type: !5010, isLocal: true, isDefinition: true)
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 168, elements: !5011)
!5011 = !{!5012}
!5012 = !DISubrange(count: 21)
!5013 = !DIGlobalVariableExpression(var: !5014, expr: !DIExpression())
!5014 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !5015, isLocal: true, isDefinition: true)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 504, elements: !5016)
!5016 = !{!5017}
!5017 = !DISubrange(count: 63)
!5018 = !DIGlobalVariableExpression(var: !5019, expr: !DIExpression())
!5019 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !5020, isLocal: true, isDefinition: true)
!5020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 264, elements: !5021)
!5021 = !{!5022}
!5022 = !DISubrange(count: 33)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 80, elements: !5024)
!5024 = !{!5025}
!5025 = !DISubrange(count: 10)
!5026 = !{i32 7, !"Dwarf Version", i32 5}
!5027 = !{i32 2, !"Debug Info Version", i32 3}
!5028 = !{i32 1, !"wchar_size", i32 2}
!5029 = !{i32 8, !"cf-protection-branch", i32 1}
!5030 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5031 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5032 = !{i32 1, !"Code Model", i32 2}
!5033 = !{i32 1, !"override-stack-alignment", i32 8}
!5034 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5035 = distinct !DISubprogram(name: "pcie_pme_setup", scope: !3, file: !3, line: 32, type: !4958, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5036)
!5036 = !{!5037}
!5037 = !DILocalVariable(name: "str", arg: 1, scope: !5035, file: !3, line: 32, type: !383)
!5038 = !DILocation(line: 32, column: 40, scope: !5035)
!5039 = !DILocation(line: 34, column: 15, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 34, column: 6)
!5041 = !DILocation(line: 34, column: 7, scope: !5040)
!5042 = !DILocation(line: 34, column: 6, scope: !5035)
!5043 = !DILocation(line: 35, column: 25, scope: !5040)
!5044 = !DILocation(line: 35, column: 3, scope: !5040)
!5045 = !DILocation(line: 37, column: 2, scope: !5035)
!5046 = distinct !DISubprogram(name: "pcie_pme_interrupt_enable", scope: !3, file: !3, line: 53, type: !5047, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !253, !798}
!5049 = !{!5050, !5051}
!5050 = !DILocalVariable(name: "dev", arg: 1, scope: !5046, file: !3, line: 53, type: !253)
!5051 = !DILocalVariable(name: "enable", arg: 2, scope: !5046, file: !3, line: 53, type: !798)
!5052 = !DILocation(line: 53, column: 48, scope: !5046)
!5053 = !DILocation(line: 53, column: 58, scope: !5046)
!5054 = !DILocation(line: 55, column: 6, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 55, column: 6)
!5056 = !{i8 0, i8 2}
!5057 = !DILocation(line: 55, column: 6, scope: !5046)
!5058 = !DILocation(line: 56, column: 28, scope: !5055)
!5059 = !DILocation(line: 56, column: 3, scope: !5055)
!5060 = !DILocation(line: 59, column: 30, scope: !5055)
!5061 = !DILocation(line: 59, column: 3, scope: !5055)
!5062 = !DILocation(line: 61, column: 1, scope: !5046)
!5063 = distinct !DISubprogram(name: "pcie_capability_set_word", scope: !255, file: !255, line: 1258, type: !5064, scopeLine: 1260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!109, !253, !109, !242}
!5066 = !{!5067, !5068, !5069}
!5067 = !DILocalVariable(name: "dev", arg: 1, scope: !5063, file: !255, line: 1258, type: !253)
!5068 = !DILocalVariable(name: "pos", arg: 2, scope: !5063, file: !255, line: 1258, type: !109)
!5069 = !DILocalVariable(name: "set", arg: 3, scope: !5063, file: !255, line: 1259, type: !242)
!5070 = !DILocation(line: 1258, column: 60, scope: !5063)
!5071 = !DILocation(line: 1258, column: 69, scope: !5063)
!5072 = !DILocation(line: 1259, column: 13, scope: !5063)
!5073 = !DILocation(line: 1261, column: 44, scope: !5063)
!5074 = !DILocation(line: 1261, column: 49, scope: !5063)
!5075 = !DILocation(line: 1261, column: 57, scope: !5063)
!5076 = !DILocation(line: 1261, column: 9, scope: !5063)
!5077 = !DILocation(line: 1261, column: 2, scope: !5063)
!5078 = distinct !DISubprogram(name: "pcie_capability_clear_word", scope: !255, file: !255, line: 1270, type: !5064, scopeLine: 1272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5079 = !{!5080, !5081, !5082}
!5080 = !DILocalVariable(name: "dev", arg: 1, scope: !5078, file: !255, line: 1270, type: !253)
!5081 = !DILocalVariable(name: "pos", arg: 2, scope: !5078, file: !255, line: 1270, type: !109)
!5082 = !DILocalVariable(name: "clear", arg: 3, scope: !5078, file: !255, line: 1271, type: !242)
!5083 = !DILocation(line: 1270, column: 62, scope: !5078)
!5084 = !DILocation(line: 1270, column: 71, scope: !5078)
!5085 = !DILocation(line: 1271, column: 15, scope: !5078)
!5086 = !DILocation(line: 1273, column: 44, scope: !5078)
!5087 = !DILocation(line: 1273, column: 49, scope: !5078)
!5088 = !DILocation(line: 1273, column: 54, scope: !5078)
!5089 = !DILocation(line: 1273, column: 9, scope: !5078)
!5090 = !DILocation(line: 1273, column: 2, scope: !5078)
!5091 = distinct !DISubprogram(name: "pcie_pme_init", scope: !3, file: !3, line: 468, type: !812, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5092 = !DILocation(line: 470, column: 9, scope: !5091)
!5093 = !DILocation(line: 470, column: 2, scope: !5091)
!5094 = !DISubprogram(name: "pcie_port_service_register", scope: !249, file: !249, line: 96, type: !5095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!109, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!5098 = !DISubprogram(name: "strncmp", scope: !5099, file: !5099, line: 91, type: !5100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5099 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!109, !282, !282, !431}
!5102 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_word", scope: !255, file: !255, line: 1243, type: !5103, scopeLine: 1246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!109, !253, !109, !242, !242}
!5105 = !{!5106, !5107, !5108, !5109}
!5106 = !DILocalVariable(name: "dev", arg: 1, scope: !5102, file: !255, line: 1243, type: !253)
!5107 = !DILocalVariable(name: "pos", arg: 2, scope: !5102, file: !255, line: 1244, type: !109)
!5108 = !DILocalVariable(name: "clear", arg: 3, scope: !5102, file: !255, line: 1245, type: !242)
!5109 = !DILocalVariable(name: "set", arg: 4, scope: !5102, file: !255, line: 1245, type: !242)
!5110 = !DILocation(line: 1243, column: 70, scope: !5102)
!5111 = !DILocation(line: 1244, column: 16, scope: !5102)
!5112 = !DILocation(line: 1245, column: 16, scope: !5102)
!5113 = !DILocation(line: 1245, column: 27, scope: !5102)
!5114 = !DILocation(line: 1247, column: 10, scope: !5102)
!5115 = !DILocation(line: 1247, column: 2, scope: !5102)
!5116 = !DILocation(line: 1250, column: 52, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5102, file: !255, line: 1247, column: 15)
!5118 = !DILocation(line: 1250, column: 57, scope: !5117)
!5119 = !DILocation(line: 1251, column: 10, scope: !5117)
!5120 = !DILocation(line: 1251, column: 17, scope: !5117)
!5121 = !DILocation(line: 1250, column: 10, scope: !5117)
!5122 = !DILocation(line: 1250, column: 3, scope: !5117)
!5123 = !DILocation(line: 1253, column: 54, scope: !5117)
!5124 = !DILocation(line: 1253, column: 59, scope: !5117)
!5125 = !DILocation(line: 1254, column: 12, scope: !5117)
!5126 = !DILocation(line: 1254, column: 19, scope: !5117)
!5127 = !DILocation(line: 1253, column: 10, scope: !5117)
!5128 = !DILocation(line: 1253, column: 3, scope: !5117)
!5129 = !DILocation(line: 1256, column: 1, scope: !5102)
!5130 = !DISubprogram(name: "pcie_capability_clear_and_set_word_locked", scope: !255, file: !255, line: 1226, type: !5103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DISubprogram(name: "pcie_capability_clear_and_set_word_unlocked", scope: !255, file: !255, line: 1224, type: !5103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5132 = !DILocation(line: 324, column: 47, scope: !4994)
!5133 = !DILocation(line: 326, column: 2, scope: !4994)
!5134 = !DILocation(line: 326, column: 18, scope: !4994)
!5135 = !DILocation(line: 326, column: 25, scope: !4994)
!5136 = !DILocation(line: 326, column: 30, scope: !4994)
!5137 = !DILocation(line: 327, column: 2, scope: !4994)
!5138 = !DILocation(line: 327, column: 32, scope: !4994)
!5139 = !DILocation(line: 328, column: 2, scope: !4994)
!5140 = !DILocation(line: 328, column: 6, scope: !4994)
!5141 = !DILocation(line: 328, column: 27, scope: !4994)
!5142 = !DILocation(line: 328, column: 13, scope: !4994)
!5143 = !DILocation(line: 329, column: 2, scope: !4994)
!5144 = !DILocation(line: 329, column: 6, scope: !4994)
!5145 = !DILocation(line: 332, column: 6, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 332, column: 6)
!5147 = !DILocation(line: 332, column: 11, scope: !5146)
!5148 = !DILocation(line: 332, column: 33, scope: !5146)
!5149 = !DILocation(line: 333, column: 6, scope: !5146)
!5150 = !DILocation(line: 333, column: 11, scope: !5146)
!5151 = !DILocation(line: 332, column: 6, scope: !4994)
!5152 = !DILocation(line: 334, column: 3, scope: !5146)
!5153 = !DILocation(line: 336, column: 9, scope: !4994)
!5154 = !DILocation(line: 336, column: 7, scope: !4994)
!5155 = !DILocation(line: 337, column: 7, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 337, column: 6)
!5157 = !DILocation(line: 337, column: 6, scope: !4994)
!5158 = !DILocation(line: 338, column: 3, scope: !5156)
!5159 = !DILocation(line: 340, column: 2, scope: !4994)
!5160 = !DILocation(line: 340, column: 2, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 340, column: 2)
!5162 = !DILocation(line: 341, column: 2, scope: !4994)
!5163 = !DILocation(line: 341, column: 2, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 341, column: 2)
!5165 = !DILocation(line: 341, column: 2, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 341, column: 2)
!5167 = !DILocation(line: 342, column: 14, scope: !4994)
!5168 = !DILocation(line: 342, column: 2, scope: !4994)
!5169 = !DILocation(line: 342, column: 8, scope: !4994)
!5170 = !DILocation(line: 342, column: 12, scope: !4994)
!5171 = !DILocation(line: 343, column: 19, scope: !4994)
!5172 = !DILocation(line: 343, column: 24, scope: !4994)
!5173 = !DILocation(line: 343, column: 2, scope: !4994)
!5174 = !DILocation(line: 345, column: 28, scope: !4994)
!5175 = !DILocation(line: 345, column: 2, scope: !4994)
!5176 = !DILocation(line: 346, column: 29, scope: !4994)
!5177 = !DILocation(line: 346, column: 2, scope: !4994)
!5178 = !DILocation(line: 348, column: 20, scope: !4994)
!5179 = !DILocation(line: 348, column: 25, scope: !4994)
!5180 = !DILocation(line: 348, column: 69, scope: !4994)
!5181 = !DILocation(line: 348, column: 8, scope: !4994)
!5182 = !DILocation(line: 348, column: 6, scope: !4994)
!5183 = !DILocation(line: 349, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 349, column: 6)
!5185 = !DILocation(line: 349, column: 6, scope: !4994)
!5186 = !DILocation(line: 350, column: 9, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 349, column: 11)
!5188 = !DILocation(line: 350, column: 3, scope: !5187)
!5189 = !DILocation(line: 351, column: 10, scope: !5187)
!5190 = !DILocation(line: 351, column: 3, scope: !5187)
!5191 = !DILocation(line: 354, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 354, column: 2)
!5193 = !DILocation(line: 354, column: 2, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 354, column: 2)
!5195 = !DILocation(line: 356, column: 24, scope: !4994)
!5196 = !DILocation(line: 356, column: 2, scope: !4994)
!5197 = !DILocation(line: 357, column: 28, scope: !4994)
!5198 = !DILocation(line: 357, column: 2, scope: !4994)
!5199 = !DILocation(line: 358, column: 2, scope: !4994)
!5200 = !DILocation(line: 359, column: 1, scope: !4994)
!5201 = distinct !DISubprogram(name: "pcie_pme_remove", scope: !3, file: !3, line: 444, type: !4981, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5202)
!5202 = !{!5203, !5204}
!5203 = !DILocalVariable(name: "srv", arg: 1, scope: !5201, file: !3, line: 444, type: !247)
!5204 = !DILocalVariable(name: "data", scope: !5201, file: !3, line: 446, type: !200)
!5205 = !DILocation(line: 444, column: 49, scope: !5201)
!5206 = !DILocation(line: 446, column: 2, scope: !5201)
!5207 = !DILocation(line: 446, column: 32, scope: !5201)
!5208 = !DILocation(line: 446, column: 56, scope: !5201)
!5209 = !DILocation(line: 446, column: 39, scope: !5201)
!5210 = !DILocation(line: 448, column: 29, scope: !5201)
!5211 = !DILocation(line: 448, column: 34, scope: !5201)
!5212 = !DILocation(line: 448, column: 40, scope: !5201)
!5213 = !DILocation(line: 448, column: 2, scope: !5201)
!5214 = !DILocation(line: 449, column: 11, scope: !5201)
!5215 = !DILocation(line: 449, column: 16, scope: !5201)
!5216 = !DILocation(line: 449, column: 21, scope: !5201)
!5217 = !DILocation(line: 449, column: 2, scope: !5201)
!5218 = !DILocation(line: 450, column: 20, scope: !5201)
!5219 = !DILocation(line: 450, column: 26, scope: !5201)
!5220 = !DILocation(line: 450, column: 2, scope: !5201)
!5221 = !DILocation(line: 451, column: 8, scope: !5201)
!5222 = !DILocation(line: 451, column: 2, scope: !5201)
!5223 = !DILocation(line: 452, column: 1, scope: !5201)
!5224 = distinct !DISubprogram(name: "pcie_pme_suspend", scope: !3, file: !3, line: 390, type: !4977, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230}
!5226 = !DILocalVariable(name: "srv", arg: 1, scope: !5224, file: !3, line: 390, type: !247)
!5227 = !DILocalVariable(name: "data", scope: !5224, file: !3, line: 392, type: !200)
!5228 = !DILocalVariable(name: "port", scope: !5224, file: !3, line: 393, type: !253)
!5229 = !DILocalVariable(name: "wakeup", scope: !5224, file: !3, line: 394, type: !798)
!5230 = !DILocalVariable(name: "ret", scope: !5224, file: !3, line: 395, type: !109)
!5231 = !DILocation(line: 390, column: 49, scope: !5224)
!5232 = !DILocation(line: 392, column: 2, scope: !5224)
!5233 = !DILocation(line: 392, column: 32, scope: !5224)
!5234 = !DILocation(line: 392, column: 56, scope: !5224)
!5235 = !DILocation(line: 392, column: 39, scope: !5224)
!5236 = !DILocation(line: 393, column: 2, scope: !5224)
!5237 = !DILocation(line: 393, column: 18, scope: !5224)
!5238 = !DILocation(line: 393, column: 25, scope: !5224)
!5239 = !DILocation(line: 393, column: 30, scope: !5224)
!5240 = !DILocation(line: 394, column: 2, scope: !5224)
!5241 = !DILocation(line: 394, column: 7, scope: !5224)
!5242 = !DILocation(line: 395, column: 2, scope: !5224)
!5243 = !DILocation(line: 395, column: 6, scope: !5224)
!5244 = !DILocation(line: 397, column: 25, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 397, column: 6)
!5246 = !DILocation(line: 397, column: 31, scope: !5245)
!5247 = !DILocation(line: 397, column: 6, scope: !5245)
!5248 = !DILocation(line: 397, column: 6, scope: !5224)
!5249 = !DILocation(line: 398, column: 10, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5245, file: !3, line: 397, column: 37)
!5251 = !DILocation(line: 399, column: 2, scope: !5250)
!5252 = !DILocation(line: 400, column: 3, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5245, file: !3, line: 399, column: 9)
!5254 = !DILocation(line: 401, column: 34, scope: !5253)
!5255 = !DILocation(line: 401, column: 40, scope: !5253)
!5256 = !DILocation(line: 401, column: 12, scope: !5253)
!5257 = !DILocation(line: 401, column: 10, scope: !5253)
!5258 = !DILocation(line: 402, column: 3, scope: !5253)
!5259 = !DILocation(line: 404, column: 6, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 404, column: 6)
!5261 = !DILocation(line: 404, column: 6, scope: !5224)
!5262 = !DILocation(line: 405, column: 25, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 404, column: 14)
!5264 = !DILocation(line: 405, column: 30, scope: !5263)
!5265 = !DILocation(line: 405, column: 9, scope: !5263)
!5266 = !DILocation(line: 405, column: 7, scope: !5263)
!5267 = !DILocation(line: 406, column: 8, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 406, column: 7)
!5269 = !DILocation(line: 406, column: 7, scope: !5263)
!5270 = !DILocation(line: 407, column: 4, scope: !5268)
!5271 = !DILocation(line: 408, column: 2, scope: !5263)
!5272 = !DILocation(line: 410, column: 29, scope: !5224)
!5273 = !DILocation(line: 410, column: 35, scope: !5224)
!5274 = !DILocation(line: 410, column: 2, scope: !5224)
!5275 = !DILocation(line: 412, column: 18, scope: !5224)
!5276 = !DILocation(line: 412, column: 23, scope: !5224)
!5277 = !DILocation(line: 412, column: 2, scope: !5224)
!5278 = !DILocation(line: 414, column: 2, scope: !5224)
!5279 = !DILocation(line: 415, column: 1, scope: !5224)
!5280 = distinct !DISubprogram(name: "pcie_pme_resume", scope: !3, file: !3, line: 421, type: !4977, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5281 = !{!5282, !5283, !5284}
!5282 = !DILocalVariable(name: "srv", arg: 1, scope: !5280, file: !3, line: 421, type: !247)
!5283 = !DILocalVariable(name: "data", scope: !5280, file: !3, line: 423, type: !200)
!5284 = !DILocalVariable(name: "port", scope: !5285, file: !3, line: 427, type: !253)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 426, column: 19)
!5286 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 426, column: 6)
!5287 = !DILocation(line: 421, column: 48, scope: !5280)
!5288 = !DILocation(line: 423, column: 2, scope: !5280)
!5289 = !DILocation(line: 423, column: 32, scope: !5280)
!5290 = !DILocation(line: 423, column: 56, scope: !5280)
!5291 = !DILocation(line: 423, column: 39, scope: !5280)
!5292 = !DILocation(line: 425, column: 17, scope: !5280)
!5293 = !DILocation(line: 425, column: 23, scope: !5280)
!5294 = !DILocation(line: 425, column: 2, scope: !5280)
!5295 = !DILocation(line: 426, column: 6, scope: !5286)
!5296 = !DILocation(line: 426, column: 12, scope: !5286)
!5297 = !DILocation(line: 426, column: 6, scope: !5280)
!5298 = !DILocation(line: 427, column: 3, scope: !5285)
!5299 = !DILocation(line: 427, column: 19, scope: !5285)
!5300 = !DILocation(line: 427, column: 26, scope: !5285)
!5301 = !DILocation(line: 427, column: 31, scope: !5285)
!5302 = !DILocation(line: 429, column: 30, scope: !5285)
!5303 = !DILocation(line: 429, column: 3, scope: !5285)
!5304 = !DILocation(line: 430, column: 29, scope: !5285)
!5305 = !DILocation(line: 430, column: 3, scope: !5285)
!5306 = !DILocation(line: 431, column: 3, scope: !5285)
!5307 = !DILocation(line: 431, column: 9, scope: !5285)
!5308 = !DILocation(line: 431, column: 15, scope: !5285)
!5309 = !DILocation(line: 432, column: 2, scope: !5286)
!5310 = !DILocation(line: 432, column: 2, scope: !5285)
!5311 = !DILocation(line: 433, column: 20, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 432, column: 9)
!5313 = !DILocation(line: 433, column: 25, scope: !5312)
!5314 = !DILocation(line: 433, column: 3, scope: !5312)
!5315 = !DILocation(line: 435, column: 19, scope: !5280)
!5316 = !DILocation(line: 435, column: 25, scope: !5280)
!5317 = !DILocation(line: 435, column: 2, scope: !5280)
!5318 = !DILocation(line: 438, column: 1, scope: !5280)
!5319 = !DILocation(line: 437, column: 2, scope: !5280)
!5320 = distinct !DISubprogram(name: "pci_pcie_type", scope: !255, file: !255, line: 2442, type: !5321, scopeLine: 2443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5325)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!109, !5323}
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!5325 = !{!5326}
!5326 = !DILocalVariable(name: "dev", arg: 1, scope: !5320, file: !255, line: 2442, type: !5323)
!5327 = !DILocation(line: 2442, column: 55, scope: !5320)
!5328 = !DILocation(line: 2444, column: 24, scope: !5320)
!5329 = !DILocation(line: 2444, column: 10, scope: !5320)
!5330 = !DILocation(line: 2444, column: 29, scope: !5320)
!5331 = !DILocation(line: 2444, column: 51, scope: !5320)
!5332 = !DILocation(line: 2444, column: 2, scope: !5320)
!5333 = distinct !DISubprogram(name: "kzalloc", scope: !173, file: !173, line: 719, type: !5334, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5336)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!199, !430, !189}
!5336 = !{!5337, !5338}
!5337 = !DILocalVariable(name: "size", arg: 1, scope: !5333, file: !173, line: 719, type: !430)
!5338 = !DILocalVariable(name: "flags", arg: 2, scope: !5333, file: !173, line: 719, type: !189)
!5339 = !DILocation(line: 719, column: 52, scope: !5333)
!5340 = !DILocation(line: 719, column: 64, scope: !5333)
!5341 = !DILocation(line: 721, column: 17, scope: !5333)
!5342 = !DILocation(line: 721, column: 23, scope: !5333)
!5343 = !DILocation(line: 721, column: 29, scope: !5333)
!5344 = !DILocation(line: 721, column: 9, scope: !5333)
!5345 = !DILocation(line: 721, column: 2, scope: !5333)
!5346 = distinct !DISubprogram(name: "spinlock_check", scope: !5347, file: !5347, line: 324, type: !5348, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5351)
!5347 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!5350, !2399}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "lock", arg: 1, scope: !5346, file: !5347, line: 324, type: !2399)
!5353 = !DILocation(line: 324, column: 67, scope: !5346)
!5354 = !DILocation(line: 326, column: 10, scope: !5346)
!5355 = !DILocation(line: 326, column: 16, scope: !5346)
!5356 = !DILocation(line: 326, column: 2, scope: !5346)
!5357 = distinct !DISubprogram(name: "__init_work", scope: !147, file: !147, line: 263, type: !5358, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5360)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{null, !985, !109}
!5360 = !{!5361, !5362}
!5361 = !DILocalVariable(name: "work", arg: 1, scope: !5357, file: !147, line: 263, type: !985)
!5362 = !DILocalVariable(name: "onstack", arg: 2, scope: !5357, file: !147, line: 263, type: !109)
!5363 = !DILocation(line: 263, column: 52, scope: !5357)
!5364 = !DILocation(line: 263, column: 62, scope: !5357)
!5365 = !DILocation(line: 263, column: 73, scope: !5357)
!5366 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5367, file: !5367, line: 35, type: !5368, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5370)
!5367 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5368 = !DISubroutineType(types: !5369)
!5369 = !{null, !194}
!5370 = !{!5371}
!5371 = !DILocalVariable(name: "list", arg: 1, scope: !5366, file: !5367, line: 35, type: !194)
!5372 = !DILocation(line: 35, column: 53, scope: !5366)
!5373 = !DILocation(line: 37, column: 2, scope: !5366)
!5374 = !DILocation(line: 37, column: 2, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5366, file: !5367, line: 37, column: 2)
!5376 = !DILocation(line: 37, column: 2, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5375, file: !5367, line: 37, column: 2)
!5378 = !DILocation(line: 37, column: 2, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5375, file: !5367, line: 37, column: 2)
!5380 = !DILocation(line: 38, column: 2, scope: !5366)
!5381 = !DILocation(line: 38, column: 2, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5366, file: !5367, line: 38, column: 2)
!5383 = !DILocation(line: 38, column: 2, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5382, file: !5367, line: 38, column: 2)
!5385 = !DILocation(line: 38, column: 2, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5382, file: !5367, line: 38, column: 2)
!5387 = !DILocation(line: 39, column: 1, scope: !5366)
!5388 = distinct !DISubprogram(name: "pcie_pme_work_fn", scope: !3, file: !3, line: 213, type: !983, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5389 = !{!5390, !5391, !5392, !5394, !5395}
!5390 = !DILocalVariable(name: "work", arg: 1, scope: !5388, file: !3, line: 213, type: !985)
!5391 = !DILocalVariable(name: "data", scope: !5388, file: !3, line: 215, type: !200)
!5392 = !DILocalVariable(name: "__mptr", scope: !5393, file: !3, line: 216, type: !199)
!5393 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 216, column: 4)
!5394 = !DILocalVariable(name: "port", scope: !5388, file: !3, line: 217, type: !253)
!5395 = !DILocalVariable(name: "rtsta", scope: !5388, file: !3, line: 218, type: !315)
!5396 = !DILocation(line: 213, column: 50, scope: !5388)
!5397 = !DILocation(line: 215, column: 2, scope: !5388)
!5398 = !DILocation(line: 215, column: 32, scope: !5388)
!5399 = !DILocation(line: 216, column: 4, scope: !5393)
!5400 = !DILocation(line: 216, column: 4, scope: !5388)
!5401 = !DILocation(line: 217, column: 2, scope: !5388)
!5402 = !DILocation(line: 217, column: 18, scope: !5388)
!5403 = !DILocation(line: 217, column: 25, scope: !5388)
!5404 = !DILocation(line: 217, column: 31, scope: !5388)
!5405 = !DILocation(line: 217, column: 36, scope: !5388)
!5406 = !DILocation(line: 218, column: 2, scope: !5388)
!5407 = !DILocation(line: 218, column: 6, scope: !5388)
!5408 = !DILocation(line: 220, column: 17, scope: !5388)
!5409 = !DILocation(line: 220, column: 23, scope: !5388)
!5410 = !DILocation(line: 220, column: 2, scope: !5388)
!5411 = !DILocation(line: 222, column: 2, scope: !5388)
!5412 = !DILocation(line: 223, column: 7, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 223, column: 7)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 222, column: 11)
!5415 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 222, column: 2)
!5416 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 222, column: 2)
!5417 = !DILocation(line: 223, column: 13, scope: !5413)
!5418 = !DILocation(line: 223, column: 7, scope: !5414)
!5419 = !DILocation(line: 224, column: 4, scope: !5413)
!5420 = !DILocation(line: 226, column: 30, scope: !5414)
!5421 = !DILocation(line: 226, column: 3, scope: !5414)
!5422 = !DILocation(line: 227, column: 7, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 227, column: 7)
!5424 = !DILocation(line: 227, column: 7, scope: !5414)
!5425 = !DILocation(line: 228, column: 4, scope: !5423)
!5426 = !DILocation(line: 230, column: 7, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 230, column: 7)
!5428 = !DILocation(line: 230, column: 13, scope: !5427)
!5429 = !DILocation(line: 230, column: 7, scope: !5414)
!5430 = !DILocation(line: 235, column: 31, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 230, column: 34)
!5432 = !DILocation(line: 235, column: 4, scope: !5431)
!5433 = !DILocation(line: 237, column: 21, scope: !5431)
!5434 = !DILocation(line: 237, column: 27, scope: !5431)
!5435 = !DILocation(line: 237, column: 4, scope: !5431)
!5436 = !DILocation(line: 238, column: 28, scope: !5431)
!5437 = !DILocation(line: 238, column: 34, scope: !5431)
!5438 = !DILocation(line: 238, column: 40, scope: !5431)
!5439 = !DILocation(line: 238, column: 4, scope: !5431)
!5440 = !DILocation(line: 239, column: 19, scope: !5431)
!5441 = !DILocation(line: 239, column: 25, scope: !5431)
!5442 = !DILocation(line: 239, column: 4, scope: !5431)
!5443 = !DILocation(line: 241, column: 4, scope: !5431)
!5444 = distinct !{!5444, !5445, !5446, !5447}
!5445 = !DILocation(line: 222, column: 2, scope: !5416)
!5446 = !DILocation(line: 251, column: 2, scope: !5416)
!5447 = !{!"llvm.loop.unroll.disable"}
!5448 = !DILocation(line: 245, column: 9, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 245, column: 7)
!5450 = !DILocation(line: 245, column: 15, scope: !5449)
!5451 = !DILocation(line: 245, column: 7, scope: !5414)
!5452 = !DILocation(line: 246, column: 4, scope: !5449)
!5453 = !DILocation(line: 248, column: 20, scope: !5414)
!5454 = !DILocation(line: 248, column: 26, scope: !5414)
!5455 = !DILocation(line: 248, column: 3, scope: !5414)
!5456 = !DILocation(line: 249, column: 3, scope: !5414)
!5457 = !DILocation(line: 250, column: 18, scope: !5414)
!5458 = !DILocation(line: 250, column: 24, scope: !5414)
!5459 = !DILocation(line: 250, column: 3, scope: !5414)
!5460 = !DILocation(line: 222, column: 2, scope: !5415)
!5461 = !DILocation(line: 253, column: 7, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 253, column: 6)
!5463 = !DILocation(line: 253, column: 13, scope: !5462)
!5464 = !DILocation(line: 253, column: 6, scope: !5388)
!5465 = !DILocation(line: 254, column: 29, scope: !5462)
!5466 = !DILocation(line: 254, column: 3, scope: !5462)
!5467 = !DILocation(line: 256, column: 19, scope: !5388)
!5468 = !DILocation(line: 256, column: 25, scope: !5388)
!5469 = !DILocation(line: 256, column: 2, scope: !5388)
!5470 = !DILocation(line: 257, column: 1, scope: !5388)
!5471 = distinct !DISubprogram(name: "set_service_data", scope: !249, file: !249, line: 66, type: !5472, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{null, !247, !199}
!5474 = !{!5475, !5476}
!5475 = !DILocalVariable(name: "dev", arg: 1, scope: !5471, file: !249, line: 66, type: !247)
!5476 = !DILocalVariable(name: "data", arg: 2, scope: !5471, file: !249, line: 66, type: !199)
!5477 = !DILocation(line: 66, column: 57, scope: !5471)
!5478 = !DILocation(line: 66, column: 68, scope: !5471)
!5479 = !DILocation(line: 68, column: 19, scope: !5471)
!5480 = !DILocation(line: 68, column: 2, scope: !5471)
!5481 = !DILocation(line: 68, column: 7, scope: !5471)
!5482 = !DILocation(line: 68, column: 17, scope: !5471)
!5483 = !DILocation(line: 69, column: 1, scope: !5471)
!5484 = !DISubprogram(name: "pcie_clear_root_pme_status", scope: !4715, file: !4715, line: 85, type: !4755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5485 = distinct !DISubprogram(name: "request_irq", scope: !325, file: !325, line: 165, type: !5486, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5493)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!109, !7, !5488, !191, !282, !199}
!5488 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !325, line: 100, baseType: !5489)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!5492, !109, !199}
!5492 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !183, line: 17, baseType: !182)
!5493 = !{!5494, !5495, !5496, !5497, !5498}
!5494 = !DILocalVariable(name: "irq", arg: 1, scope: !5485, file: !325, line: 165, type: !7)
!5495 = !DILocalVariable(name: "handler", arg: 2, scope: !5485, file: !325, line: 165, type: !5488)
!5496 = !DILocalVariable(name: "flags", arg: 3, scope: !5485, file: !325, line: 165, type: !191)
!5497 = !DILocalVariable(name: "name", arg: 4, scope: !5485, file: !325, line: 166, type: !282)
!5498 = !DILocalVariable(name: "dev", arg: 5, scope: !5485, file: !325, line: 166, type: !199)
!5499 = !DILocation(line: 165, column: 26, scope: !5485)
!5500 = !DILocation(line: 165, column: 45, scope: !5485)
!5501 = !DILocation(line: 165, column: 68, scope: !5485)
!5502 = !DILocation(line: 166, column: 18, scope: !5485)
!5503 = !DILocation(line: 166, column: 30, scope: !5485)
!5504 = !DILocation(line: 168, column: 30, scope: !5485)
!5505 = !DILocation(line: 168, column: 35, scope: !5485)
!5506 = !DILocation(line: 168, column: 50, scope: !5485)
!5507 = !DILocation(line: 168, column: 57, scope: !5485)
!5508 = !DILocation(line: 168, column: 63, scope: !5485)
!5509 = !DILocation(line: 168, column: 9, scope: !5485)
!5510 = !DILocation(line: 168, column: 2, scope: !5485)
!5511 = distinct !DISubprogram(name: "pcie_pme_irq", scope: !3, file: !3, line: 264, type: !5490, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5512)
!5512 = !{!5513, !5514, !5515, !5516, !5517, !5518, !5519, !5523}
!5513 = !DILocalVariable(name: "irq", arg: 1, scope: !5511, file: !3, line: 264, type: !109)
!5514 = !DILocalVariable(name: "context", arg: 2, scope: !5511, file: !3, line: 264, type: !199)
!5515 = !DILocalVariable(name: "port", scope: !5511, file: !3, line: 266, type: !253)
!5516 = !DILocalVariable(name: "data", scope: !5511, file: !3, line: 267, type: !200)
!5517 = !DILocalVariable(name: "rtsta", scope: !5511, file: !3, line: 268, type: !315)
!5518 = !DILocalVariable(name: "flags", scope: !5511, file: !3, line: 269, type: !191)
!5519 = !DILocalVariable(name: "__dummy", scope: !5520, file: !3, line: 274, type: !191)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 274, column: 2)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 274, column: 2)
!5522 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 274, column: 2)
!5523 = !DILocalVariable(name: "__dummy2", scope: !5520, file: !3, line: 274, type: !191)
!5524 = !DILocation(line: 264, column: 37, scope: !5511)
!5525 = !DILocation(line: 264, column: 48, scope: !5511)
!5526 = !DILocation(line: 266, column: 2, scope: !5511)
!5527 = !DILocation(line: 266, column: 18, scope: !5511)
!5528 = !DILocation(line: 267, column: 2, scope: !5511)
!5529 = !DILocation(line: 267, column: 32, scope: !5511)
!5530 = !DILocation(line: 268, column: 2, scope: !5511)
!5531 = !DILocation(line: 268, column: 6, scope: !5511)
!5532 = !DILocation(line: 269, column: 2, scope: !5511)
!5533 = !DILocation(line: 269, column: 16, scope: !5511)
!5534 = !DILocation(line: 271, column: 32, scope: !5511)
!5535 = !DILocation(line: 271, column: 42, scope: !5511)
!5536 = !DILocation(line: 271, column: 7, scope: !5511)
!5537 = !DILocation(line: 272, column: 48, scope: !5511)
!5538 = !DILocation(line: 272, column: 9, scope: !5511)
!5539 = !DILocation(line: 272, column: 7, scope: !5511)
!5540 = !DILocation(line: 274, column: 2, scope: !5511)
!5541 = !DILocation(line: 274, column: 2, scope: !5522)
!5542 = !DILocation(line: 274, column: 2, scope: !5520)
!5543 = !DILocation(line: 274, column: 2, scope: !5521)
!5544 = !DILocation(line: 275, column: 29, scope: !5511)
!5545 = !DILocation(line: 275, column: 2, scope: !5511)
!5546 = !DILocation(line: 277, column: 6, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 277, column: 6)
!5548 = !DILocation(line: 277, column: 32, scope: !5547)
!5549 = !DILocation(line: 277, column: 37, scope: !5547)
!5550 = !DILocation(line: 277, column: 43, scope: !5547)
!5551 = !DILocation(line: 277, column: 6, scope: !5511)
!5552 = !DILocation(line: 278, column: 27, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 277, column: 65)
!5554 = !DILocation(line: 278, column: 33, scope: !5553)
!5555 = !DILocation(line: 278, column: 39, scope: !5553)
!5556 = !DILocation(line: 278, column: 3, scope: !5553)
!5557 = !DILocation(line: 279, column: 3, scope: !5553)
!5558 = !DILocation(line: 282, column: 28, scope: !5511)
!5559 = !DILocation(line: 282, column: 2, scope: !5511)
!5560 = !DILocation(line: 283, column: 26, scope: !5511)
!5561 = !DILocation(line: 283, column: 32, scope: !5511)
!5562 = !DILocation(line: 283, column: 38, scope: !5511)
!5563 = !DILocation(line: 283, column: 2, scope: !5511)
!5564 = !DILocation(line: 286, column: 17, scope: !5511)
!5565 = !DILocation(line: 286, column: 23, scope: !5511)
!5566 = !DILocation(line: 286, column: 2, scope: !5511)
!5567 = !DILocation(line: 288, column: 2, scope: !5511)
!5568 = !DILocation(line: 289, column: 1, scope: !5511)
!5569 = !DISubprogram(name: "kfree", scope: !173, file: !173, line: 227, type: !5570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{null, !2619}
!5572 = !DISubprogram(name: "_dev_info", scope: !5573, file: !5573, line: 56, type: !5574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5573 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5574 = !DISubroutineType(types: !5575)
!5575 = !{null, !4240, !282, null}
!5576 = distinct !DISubprogram(name: "pcie_pme_mark_devices", scope: !3, file: !3, line: 310, type: !4755, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5577)
!5577 = !{!5578}
!5578 = !DILocalVariable(name: "port", arg: 1, scope: !5576, file: !3, line: 310, type: !253)
!5579 = !DILocation(line: 310, column: 51, scope: !5576)
!5580 = !DILocation(line: 312, column: 22, scope: !5576)
!5581 = !DILocation(line: 312, column: 2, scope: !5576)
!5582 = !DILocation(line: 314, column: 20, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 314, column: 6)
!5584 = !DILocation(line: 314, column: 6, scope: !5583)
!5585 = !DILocation(line: 314, column: 26, scope: !5583)
!5586 = !DILocation(line: 314, column: 6, scope: !5576)
!5587 = !DILocation(line: 315, column: 18, scope: !5583)
!5588 = !DILocation(line: 315, column: 3, scope: !5583)
!5589 = !DILocation(line: 316, column: 11, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 316, column: 11)
!5591 = !DILocation(line: 316, column: 17, scope: !5590)
!5592 = !DILocation(line: 316, column: 11, scope: !5583)
!5593 = !DILocation(line: 317, column: 16, scope: !5590)
!5594 = !DILocation(line: 317, column: 22, scope: !5590)
!5595 = !DILocation(line: 317, column: 3, scope: !5590)
!5596 = !DILocation(line: 318, column: 1, scope: !5576)
!5597 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !255, file: !255, line: 2433, type: !5598, scopeLine: 2434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!242, !5323}
!5600 = !{!5601}
!5601 = !DILocalVariable(name: "dev", arg: 1, scope: !5597, file: !255, line: 2433, type: !5323)
!5602 = !DILocation(line: 2433, column: 55, scope: !5597)
!5603 = !DILocation(line: 2435, column: 9, scope: !5597)
!5604 = !DILocation(line: 2435, column: 14, scope: !5597)
!5605 = !DILocation(line: 2435, column: 2, scope: !5597)
!5606 = distinct !DISubprogram(name: "kmalloc", scope: !173, file: !173, line: 591, type: !5334, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5607)
!5607 = !{!5608, !5609, !5610}
!5608 = !DILocalVariable(name: "size", arg: 1, scope: !5606, file: !173, line: 591, type: !430)
!5609 = !DILocalVariable(name: "flags", arg: 2, scope: !5606, file: !173, line: 591, type: !189)
!5610 = !DILocalVariable(name: "index", scope: !5611, file: !173, line: 594, type: !7)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !173, line: 593, column: 42)
!5612 = distinct !DILexicalBlock(scope: !5606, file: !173, line: 593, column: 6)
!5613 = !DILocation(line: 591, column: 61, scope: !5606)
!5614 = !DILocation(line: 591, column: 73, scope: !5606)
!5615 = !DILocation(line: 593, column: 27, scope: !5612)
!5616 = !DILocation(line: 593, column: 6, scope: !5612)
!5617 = !DILocation(line: 593, column: 33, scope: !5612)
!5618 = !DILocation(line: 593, column: 36, scope: !5612)
!5619 = !DILocation(line: 593, column: 6, scope: !5606)
!5620 = !DILocation(line: 594, column: 3, scope: !5611)
!5621 = !DILocation(line: 594, column: 16, scope: !5611)
!5622 = !DILocation(line: 596, column: 7, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5611, file: !173, line: 596, column: 7)
!5624 = !DILocation(line: 596, column: 12, scope: !5623)
!5625 = !DILocation(line: 596, column: 7, scope: !5611)
!5626 = !DILocation(line: 597, column: 25, scope: !5623)
!5627 = !DILocation(line: 597, column: 31, scope: !5623)
!5628 = !DILocation(line: 597, column: 11, scope: !5623)
!5629 = !DILocation(line: 597, column: 4, scope: !5623)
!5630 = !DILocation(line: 599, column: 11, scope: !5611)
!5631 = !DILocation(line: 599, column: 9, scope: !5611)
!5632 = !DILocation(line: 601, column: 33, scope: !5611)
!5633 = !DILocation(line: 601, column: 40, scope: !5611)
!5634 = !DILocation(line: 601, column: 20, scope: !5611)
!5635 = !DILocation(line: 601, column: 5, scope: !5611)
!5636 = !DILocation(line: 601, column: 51, scope: !5611)
!5637 = !DILocation(line: 602, column: 5, scope: !5611)
!5638 = !DILocation(line: 602, column: 12, scope: !5611)
!5639 = !DILocation(line: 600, column: 10, scope: !5611)
!5640 = !DILocation(line: 600, column: 3, scope: !5611)
!5641 = !DILocation(line: 603, column: 2, scope: !5612)
!5642 = !DILocation(line: 604, column: 19, scope: !5606)
!5643 = !DILocation(line: 604, column: 25, scope: !5606)
!5644 = !DILocation(line: 604, column: 9, scope: !5606)
!5645 = !DILocation(line: 604, column: 2, scope: !5606)
!5646 = !DILocation(line: 605, column: 1, scope: !5606)
!5647 = !DISubprogram(name: "kmalloc_large", scope: !173, file: !173, line: 531, type: !5334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = distinct !DISubprogram(name: "__kmalloc_index", scope: !173, file: !173, line: 444, type: !5649, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5651)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!7, !430, !798}
!5651 = !{!5652, !5653}
!5652 = !DILocalVariable(name: "size", arg: 1, scope: !5648, file: !173, line: 444, type: !430)
!5653 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5648, file: !173, line: 445, type: !798)
!5654 = !DILocation(line: 444, column: 60, scope: !5648)
!5655 = !DILocation(line: 445, column: 16, scope: !5648)
!5656 = !DILocation(line: 447, column: 7, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 447, column: 6)
!5658 = !DILocation(line: 447, column: 6, scope: !5648)
!5659 = !DILocation(line: 448, column: 3, scope: !5657)
!5660 = !DILocation(line: 450, column: 6, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 450, column: 6)
!5662 = !DILocation(line: 450, column: 11, scope: !5661)
!5663 = !DILocation(line: 450, column: 6, scope: !5648)
!5664 = !DILocation(line: 451, column: 3, scope: !5661)
!5665 = !DILocation(line: 453, column: 32, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 453, column: 6)
!5667 = !DILocation(line: 453, column: 37, scope: !5666)
!5668 = !DILocation(line: 453, column: 42, scope: !5666)
!5669 = !DILocation(line: 453, column: 45, scope: !5666)
!5670 = !DILocation(line: 453, column: 50, scope: !5666)
!5671 = !DILocation(line: 453, column: 6, scope: !5648)
!5672 = !DILocation(line: 454, column: 3, scope: !5666)
!5673 = !DILocation(line: 455, column: 32, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 455, column: 6)
!5675 = !DILocation(line: 455, column: 37, scope: !5674)
!5676 = !DILocation(line: 455, column: 43, scope: !5674)
!5677 = !DILocation(line: 455, column: 46, scope: !5674)
!5678 = !DILocation(line: 455, column: 51, scope: !5674)
!5679 = !DILocation(line: 455, column: 6, scope: !5648)
!5680 = !DILocation(line: 456, column: 3, scope: !5674)
!5681 = !DILocation(line: 457, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 457, column: 6)
!5683 = !DILocation(line: 457, column: 11, scope: !5682)
!5684 = !DILocation(line: 457, column: 6, scope: !5648)
!5685 = !DILocation(line: 457, column: 26, scope: !5682)
!5686 = !DILocation(line: 458, column: 6, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 458, column: 6)
!5688 = !DILocation(line: 458, column: 11, scope: !5687)
!5689 = !DILocation(line: 458, column: 6, scope: !5648)
!5690 = !DILocation(line: 458, column: 26, scope: !5687)
!5691 = !DILocation(line: 459, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 459, column: 6)
!5693 = !DILocation(line: 459, column: 11, scope: !5692)
!5694 = !DILocation(line: 459, column: 6, scope: !5648)
!5695 = !DILocation(line: 459, column: 26, scope: !5692)
!5696 = !DILocation(line: 460, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 460, column: 6)
!5698 = !DILocation(line: 460, column: 11, scope: !5697)
!5699 = !DILocation(line: 460, column: 6, scope: !5648)
!5700 = !DILocation(line: 460, column: 26, scope: !5697)
!5701 = !DILocation(line: 461, column: 6, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 461, column: 6)
!5703 = !DILocation(line: 461, column: 11, scope: !5702)
!5704 = !DILocation(line: 461, column: 6, scope: !5648)
!5705 = !DILocation(line: 461, column: 26, scope: !5702)
!5706 = !DILocation(line: 462, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 462, column: 6)
!5708 = !DILocation(line: 462, column: 11, scope: !5707)
!5709 = !DILocation(line: 462, column: 6, scope: !5648)
!5710 = !DILocation(line: 462, column: 26, scope: !5707)
!5711 = !DILocation(line: 463, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 463, column: 6)
!5713 = !DILocation(line: 463, column: 11, scope: !5712)
!5714 = !DILocation(line: 463, column: 6, scope: !5648)
!5715 = !DILocation(line: 463, column: 26, scope: !5712)
!5716 = !DILocation(line: 464, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 464, column: 6)
!5718 = !DILocation(line: 464, column: 11, scope: !5717)
!5719 = !DILocation(line: 464, column: 6, scope: !5648)
!5720 = !DILocation(line: 464, column: 26, scope: !5717)
!5721 = !DILocation(line: 465, column: 6, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 465, column: 6)
!5723 = !DILocation(line: 465, column: 11, scope: !5722)
!5724 = !DILocation(line: 465, column: 6, scope: !5648)
!5725 = !DILocation(line: 465, column: 26, scope: !5722)
!5726 = !DILocation(line: 466, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 466, column: 6)
!5728 = !DILocation(line: 466, column: 11, scope: !5727)
!5729 = !DILocation(line: 466, column: 6, scope: !5648)
!5730 = !DILocation(line: 466, column: 26, scope: !5727)
!5731 = !DILocation(line: 467, column: 6, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 467, column: 6)
!5733 = !DILocation(line: 467, column: 11, scope: !5732)
!5734 = !DILocation(line: 467, column: 6, scope: !5648)
!5735 = !DILocation(line: 467, column: 26, scope: !5732)
!5736 = !DILocation(line: 468, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 468, column: 6)
!5738 = !DILocation(line: 468, column: 11, scope: !5737)
!5739 = !DILocation(line: 468, column: 6, scope: !5648)
!5740 = !DILocation(line: 468, column: 26, scope: !5737)
!5741 = !DILocation(line: 469, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 469, column: 6)
!5743 = !DILocation(line: 469, column: 11, scope: !5742)
!5744 = !DILocation(line: 469, column: 6, scope: !5648)
!5745 = !DILocation(line: 469, column: 26, scope: !5742)
!5746 = !DILocation(line: 470, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 470, column: 6)
!5748 = !DILocation(line: 470, column: 11, scope: !5747)
!5749 = !DILocation(line: 470, column: 6, scope: !5648)
!5750 = !DILocation(line: 470, column: 26, scope: !5747)
!5751 = !DILocation(line: 471, column: 6, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 471, column: 6)
!5753 = !DILocation(line: 471, column: 11, scope: !5752)
!5754 = !DILocation(line: 471, column: 6, scope: !5648)
!5755 = !DILocation(line: 471, column: 26, scope: !5752)
!5756 = !DILocation(line: 472, column: 6, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 472, column: 6)
!5758 = !DILocation(line: 472, column: 11, scope: !5757)
!5759 = !DILocation(line: 472, column: 6, scope: !5648)
!5760 = !DILocation(line: 472, column: 26, scope: !5757)
!5761 = !DILocation(line: 473, column: 6, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 473, column: 6)
!5763 = !DILocation(line: 473, column: 11, scope: !5762)
!5764 = !DILocation(line: 473, column: 6, scope: !5648)
!5765 = !DILocation(line: 473, column: 26, scope: !5762)
!5766 = !DILocation(line: 474, column: 6, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 474, column: 6)
!5768 = !DILocation(line: 474, column: 11, scope: !5767)
!5769 = !DILocation(line: 474, column: 6, scope: !5648)
!5770 = !DILocation(line: 474, column: 27, scope: !5767)
!5771 = !DILocation(line: 475, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 475, column: 6)
!5773 = !DILocation(line: 475, column: 11, scope: !5772)
!5774 = !DILocation(line: 475, column: 6, scope: !5648)
!5775 = !DILocation(line: 475, column: 32, scope: !5772)
!5776 = !DILocation(line: 477, column: 50, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5648, file: !173, line: 477, column: 6)
!5778 = !DILocation(line: 477, column: 6, scope: !5648)
!5779 = !DILocation(line: 478, column: 3, scope: !5777)
!5780 = !DILocation(line: 478, column: 3, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5782, file: !173, line: 478, column: 3)
!5782 = distinct !DILexicalBlock(scope: !5777, file: !173, line: 478, column: 3)
!5783 = !{i32 -2141976702}
!5784 = !DILocation(line: 478, column: 3, scope: !5782)
!5785 = !DILocation(line: 480, column: 3, scope: !5777)
!5786 = !DILocation(line: 480, column: 3, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5777, file: !173, line: 480, column: 3)
!5788 = !DILocation(line: 480, column: 3, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5787, file: !173, line: 480, column: 3)
!5790 = !DILocation(line: 480, column: 3, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5787, file: !173, line: 480, column: 3)
!5792 = !{i64 2152990797, i64 2152990826, i64 2152990872, i64 2152990930, i64 2152990984, i64 2152991038, i64 2152991093, i64 2152991124}
!5793 = !DILocation(line: 483, column: 2, scope: !5648)
!5794 = !DILocation(line: 484, column: 1, scope: !5648)
!5795 = !DISubprogram(name: "kmalloc_trace", scope: !173, file: !173, line: 525, type: !5796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{!199, !5798, !189, !430}
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5799, size: 64)
!5799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5800, line: 11, flags: DIFlagFwdDecl)
!5800 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5801 = distinct !DISubprogram(name: "kmalloc_type", scope: !173, file: !173, line: 401, type: !5802, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5804)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!172, !189, !191}
!5804 = !{!5805, !5806}
!5805 = !DILocalVariable(name: "flags", arg: 1, scope: !5801, file: !173, line: 401, type: !189)
!5806 = !DILocalVariable(name: "caller", arg: 2, scope: !5801, file: !173, line: 401, type: !191)
!5807 = !DILocation(line: 401, column: 67, scope: !5801)
!5808 = !DILocation(line: 401, column: 88, scope: !5801)
!5809 = !DILocation(line: 407, column: 6, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5801, file: !173, line: 407, column: 6)
!5811 = !DILocation(line: 407, column: 6, scope: !5801)
!5812 = !DILocation(line: 413, column: 3, scope: !5810)
!5813 = !DILocation(line: 423, column: 38, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5801, file: !173, line: 423, column: 6)
!5815 = !DILocation(line: 423, column: 44, scope: !5814)
!5816 = !DILocation(line: 423, column: 6, scope: !5801)
!5817 = !DILocation(line: 424, column: 3, scope: !5814)
!5818 = !DILocation(line: 426, column: 3, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5801, file: !173, line: 425, column: 6)
!5820 = !DILocation(line: 429, column: 1, scope: !5801)
!5821 = !DISubprogram(name: "__kmalloc", scope: !173, file: !173, line: 488, type: !5334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = !DISubprogram(name: "__compiletime_assert_204", scope: !173, file: !173, line: 478, type: !1080, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5823 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5347, file: !5347, line: 374, type: !5824, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{null, !2399}
!5826 = !{!5827}
!5827 = !DILocalVariable(name: "lock", arg: 1, scope: !5823, file: !5347, line: 374, type: !2399)
!5828 = !DILocation(line: 374, column: 55, scope: !5823)
!5829 = !DILocation(line: 376, column: 2, scope: !5823)
!5830 = !DILocation(line: 377, column: 1, scope: !5823)
!5831 = !DISubprogram(name: "pcie_capability_read_dword", scope: !255, file: !255, line: 1221, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!109, !253, !109, !314}
!5834 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5347, file: !5347, line: 399, type: !5824, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5835)
!5835 = !{!5836}
!5836 = !DILocalVariable(name: "lock", arg: 1, scope: !5834, file: !5347, line: 399, type: !2399)
!5837 = !DILocation(line: 399, column: 57, scope: !5834)
!5838 = !DILocation(line: 401, column: 2, scope: !5834)
!5839 = !DILocation(line: 402, column: 1, scope: !5834)
!5840 = distinct !DISubprogram(name: "pcie_pme_handle_request", scope: !3, file: !3, line: 129, type: !5841, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{null, !253, !242}
!5843 = !{!5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5854, !5857}
!5844 = !DILocalVariable(name: "port", arg: 1, scope: !5840, file: !3, line: 129, type: !253)
!5845 = !DILocalVariable(name: "req_id", arg: 2, scope: !5840, file: !3, line: 129, type: !242)
!5846 = !DILocalVariable(name: "busnr", scope: !5840, file: !3, line: 131, type: !232)
!5847 = !DILocalVariable(name: "devfn", scope: !5840, file: !3, line: 131, type: !232)
!5848 = !DILocalVariable(name: "bus", scope: !5840, file: !3, line: 132, type: !259)
!5849 = !DILocalVariable(name: "dev", scope: !5840, file: !3, line: 133, type: !253)
!5850 = !DILocalVariable(name: "found", scope: !5840, file: !3, line: 134, type: !798)
!5851 = !DILocalVariable(name: "__mptr", scope: !5852, file: !3, line: 172, type: !199)
!5852 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 172, column: 2)
!5853 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 172, column: 2)
!5854 = !DILocalVariable(name: "__mptr", scope: !5855, file: !3, line: 172, type: !199)
!5855 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 172, column: 2)
!5856 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 172, column: 2)
!5857 = !DILabel(scope: !5840, name: "out", file: !3, line: 204)
!5858 = !DILocation(line: 129, column: 53, scope: !5840)
!5859 = !DILocation(line: 129, column: 63, scope: !5840)
!5860 = !DILocation(line: 131, column: 2, scope: !5840)
!5861 = !DILocation(line: 131, column: 5, scope: !5840)
!5862 = !DILocation(line: 131, column: 13, scope: !5840)
!5863 = !DILocation(line: 131, column: 20, scope: !5840)
!5864 = !DILocation(line: 131, column: 26, scope: !5840)
!5865 = !DILocation(line: 131, column: 34, scope: !5840)
!5866 = !DILocation(line: 131, column: 41, scope: !5840)
!5867 = !DILocation(line: 132, column: 2, scope: !5840)
!5868 = !DILocation(line: 132, column: 18, scope: !5840)
!5869 = !DILocation(line: 133, column: 2, scope: !5840)
!5870 = !DILocation(line: 133, column: 18, scope: !5840)
!5871 = !DILocation(line: 134, column: 2, scope: !5840)
!5872 = !DILocation(line: 134, column: 7, scope: !5840)
!5873 = !DILocation(line: 137, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 137, column: 6)
!5875 = !DILocation(line: 137, column: 12, scope: !5874)
!5876 = !DILocation(line: 137, column: 21, scope: !5874)
!5877 = !DILocation(line: 137, column: 18, scope: !5874)
!5878 = !DILocation(line: 137, column: 27, scope: !5874)
!5879 = !DILocation(line: 137, column: 30, scope: !5874)
!5880 = !DILocation(line: 137, column: 36, scope: !5874)
!5881 = !DILocation(line: 137, column: 41, scope: !5874)
!5882 = !DILocation(line: 137, column: 51, scope: !5874)
!5883 = !DILocation(line: 137, column: 48, scope: !5874)
!5884 = !DILocation(line: 137, column: 6, scope: !5840)
!5885 = !DILocation(line: 138, column: 7, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 138, column: 7)
!5887 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 137, column: 58)
!5888 = !DILocation(line: 138, column: 13, scope: !5886)
!5889 = !DILocation(line: 138, column: 7, scope: !5887)
!5890 = !DILocation(line: 139, column: 4, scope: !5886)
!5891 = !DILocation(line: 139, column: 10, scope: !5886)
!5892 = !DILocation(line: 139, column: 19, scope: !5886)
!5893 = !DILocation(line: 141, column: 28, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 141, column: 7)
!5895 = !DILocation(line: 141, column: 7, scope: !5894)
!5896 = !DILocation(line: 141, column: 7, scope: !5887)
!5897 = !DILocation(line: 142, column: 23, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 141, column: 35)
!5899 = !DILocation(line: 142, column: 29, scope: !5898)
!5900 = !DILocation(line: 142, column: 4, scope: !5898)
!5901 = !DILocation(line: 143, column: 10, scope: !5898)
!5902 = !DILocation(line: 144, column: 3, scope: !5898)
!5903 = !DILocation(line: 153, column: 4, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 144, column: 10)
!5905 = !DILocation(line: 154, column: 30, scope: !5904)
!5906 = !DILocation(line: 154, column: 36, scope: !5904)
!5907 = !DILocation(line: 154, column: 12, scope: !5904)
!5908 = !DILocation(line: 154, column: 10, scope: !5904)
!5909 = !DILocation(line: 155, column: 4, scope: !5904)
!5910 = !DILocation(line: 157, column: 3, scope: !5887)
!5911 = !DILocation(line: 161, column: 35, scope: !5840)
!5912 = !DILocation(line: 161, column: 41, scope: !5840)
!5913 = !DILocation(line: 161, column: 21, scope: !5840)
!5914 = !DILocation(line: 161, column: 47, scope: !5840)
!5915 = !DILocation(line: 161, column: 8, scope: !5840)
!5916 = !DILocation(line: 161, column: 6, scope: !5840)
!5917 = !DILocation(line: 162, column: 7, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 162, column: 6)
!5919 = !DILocation(line: 162, column: 6, scope: !5840)
!5920 = !DILocation(line: 163, column: 3, scope: !5918)
!5921 = !DILocation(line: 166, column: 35, scope: !5840)
!5922 = !DILocation(line: 166, column: 40, scope: !5840)
!5923 = !DILocation(line: 166, column: 10, scope: !5840)
!5924 = !DILocation(line: 166, column: 8, scope: !5840)
!5925 = !DILocation(line: 167, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 167, column: 6)
!5927 = !DILocation(line: 167, column: 6, scope: !5840)
!5928 = !DILocation(line: 168, column: 3, scope: !5926)
!5929 = !DILocation(line: 171, column: 2, scope: !5840)
!5930 = !DILocation(line: 172, column: 2, scope: !5852)
!5931 = !DILocation(line: 172, column: 2, scope: !5853)
!5932 = !DILocation(line: 172, column: 2, scope: !5856)
!5933 = !DILocation(line: 173, column: 15, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 172, column: 52)
!5935 = !DILocation(line: 173, column: 3, scope: !5934)
!5936 = !DILocation(line: 174, column: 7, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 174, column: 7)
!5938 = !DILocation(line: 174, column: 12, scope: !5937)
!5939 = !DILocation(line: 174, column: 21, scope: !5937)
!5940 = !DILocation(line: 174, column: 18, scope: !5937)
!5941 = !DILocation(line: 174, column: 7, scope: !5934)
!5942 = !DILocation(line: 175, column: 10, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 174, column: 28)
!5944 = !DILocation(line: 176, column: 4, scope: !5943)
!5945 = !DILocation(line: 178, column: 15, scope: !5934)
!5946 = !DILocation(line: 178, column: 3, scope: !5934)
!5947 = !DILocation(line: 179, column: 2, scope: !5934)
!5948 = !DILocation(line: 172, column: 2, scope: !5855)
!5949 = distinct !{!5949, !5931, !5950, !5951, !5447}
!5950 = !DILocation(line: 179, column: 2, scope: !5853)
!5951 = !{!"llvm.loop.mustprogress"}
!5952 = !DILocation(line: 180, column: 2, scope: !5840)
!5953 = !DILocation(line: 182, column: 6, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 182, column: 6)
!5955 = !DILocation(line: 182, column: 6, scope: !5840)
!5956 = !DILocation(line: 184, column: 32, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 182, column: 13)
!5958 = !DILocation(line: 184, column: 11, scope: !5957)
!5959 = !DILocation(line: 184, column: 9, scope: !5957)
!5960 = !DILocation(line: 185, column: 7, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 185, column: 7)
!5962 = !DILocation(line: 185, column: 7, scope: !5957)
!5963 = !DILocation(line: 186, column: 8, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 186, column: 8)
!5965 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 185, column: 14)
!5966 = !DILocation(line: 186, column: 13, scope: !5964)
!5967 = !DILocation(line: 186, column: 8, scope: !5965)
!5968 = !DILocation(line: 187, column: 5, scope: !5964)
!5969 = !DILocation(line: 187, column: 10, scope: !5964)
!5970 = !DILocation(line: 187, column: 19, scope: !5964)
!5971 = !DILocation(line: 189, column: 21, scope: !5965)
!5972 = !DILocation(line: 189, column: 4, scope: !5965)
!5973 = !DILocation(line: 190, column: 23, scope: !5965)
!5974 = !DILocation(line: 190, column: 28, scope: !5965)
!5975 = !DILocation(line: 190, column: 4, scope: !5965)
!5976 = !DILocation(line: 191, column: 3, scope: !5965)
!5977 = !DILocation(line: 192, column: 15, scope: !5957)
!5978 = !DILocation(line: 192, column: 3, scope: !5957)
!5979 = !DILocation(line: 193, column: 2, scope: !5957)
!5980 = !DILocation(line: 193, column: 13, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 193, column: 13)
!5982 = !DILocation(line: 193, column: 13, scope: !5954)
!5983 = !DILocation(line: 199, column: 3, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 199, column: 3)
!5985 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 193, column: 20)
!5986 = !DILocation(line: 199, column: 3, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 199, column: 3)
!5988 = !DILocation(line: 201, column: 36, scope: !5985)
!5989 = !DILocation(line: 201, column: 11, scope: !5985)
!5990 = !DILocation(line: 201, column: 9, scope: !5985)
!5991 = !DILocation(line: 202, column: 2, scope: !5985)
!5992 = !DILocation(line: 204, column: 2, scope: !5840)
!5993 = !DILocation(line: 205, column: 7, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 205, column: 6)
!5995 = !DILocation(line: 205, column: 6, scope: !5840)
!5996 = !DILocation(line: 206, column: 3, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 206, column: 3)
!5998 = !DILocation(line: 206, column: 3, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 206, column: 3)
!6000 = !DILocation(line: 206, column: 3, scope: !5994)
!6001 = !DILocation(line: 207, column: 1, scope: !5840)
!6002 = distinct !DISubprogram(name: "cpu_relax", scope: !6003, file: !6003, line: 16, type: !1080, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6003 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!6004 = !DILocation(line: 18, column: 2, scope: !6002)
!6005 = !DILocation(line: 19, column: 1, scope: !6002)
!6006 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6007, file: !6007, line: 29, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6007 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !5350}
!6010 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6007, file: !6007, line: 41, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6011 = !DISubprogram(name: "pci_check_pme_status", scope: !4715, file: !4715, line: 86, type: !6012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{!798, !253}
!6014 = distinct !DISubprogram(name: "pm_request_resume", scope: !6015, file: !6015, line: 382, type: !4258, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6016)
!6015 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!6016 = !{!6017}
!6017 = !DILocalVariable(name: "dev", arg: 1, scope: !6014, file: !6015, line: 382, type: !338)
!6018 = !DILocation(line: 382, column: 52, scope: !6014)
!6019 = !DILocation(line: 384, column: 29, scope: !6014)
!6020 = !DILocation(line: 384, column: 9, scope: !6014)
!6021 = !DILocation(line: 384, column: 2, scope: !6014)
!6022 = !DISubprogram(name: "down_read", scope: !1377, file: !1377, line: 175, type: !6023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{null, !6025}
!6025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!6026 = distinct !DISubprogram(name: "pcie_pme_walk_bus", scope: !3, file: !3, line: 69, type: !6027, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6029)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{!798, !259}
!6029 = !{!6030, !6031, !6032, !6033, !6036}
!6030 = !DILocalVariable(name: "bus", arg: 1, scope: !6026, file: !3, line: 69, type: !259)
!6031 = !DILocalVariable(name: "dev", scope: !6026, file: !3, line: 71, type: !253)
!6032 = !DILocalVariable(name: "ret", scope: !6026, file: !3, line: 72, type: !798)
!6033 = !DILocalVariable(name: "__mptr", scope: !6034, file: !3, line: 74, type: !199)
!6034 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 74, column: 2)
!6035 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 74, column: 2)
!6036 = !DILocalVariable(name: "__mptr", scope: !6037, file: !3, line: 74, type: !199)
!6037 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 74, column: 2)
!6038 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 74, column: 2)
!6039 = !DILocation(line: 69, column: 47, scope: !6026)
!6040 = !DILocation(line: 71, column: 2, scope: !6026)
!6041 = !DILocation(line: 71, column: 18, scope: !6026)
!6042 = !DILocation(line: 72, column: 2, scope: !6026)
!6043 = !DILocation(line: 72, column: 7, scope: !6026)
!6044 = !DILocation(line: 74, column: 2, scope: !6034)
!6045 = !DILocation(line: 74, column: 2, scope: !6035)
!6046 = !DILocation(line: 74, column: 2, scope: !6038)
!6047 = !DILocation(line: 76, column: 20, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 76, column: 7)
!6049 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 74, column: 52)
!6050 = !DILocation(line: 76, column: 8, scope: !6048)
!6051 = !DILocation(line: 76, column: 25, scope: !6048)
!6052 = !DILocation(line: 76, column: 49, scope: !6048)
!6053 = !DILocation(line: 76, column: 28, scope: !6048)
!6054 = !DILocation(line: 76, column: 7, scope: !6049)
!6055 = !DILocation(line: 77, column: 8, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 77, column: 8)
!6057 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 76, column: 55)
!6058 = !DILocation(line: 77, column: 13, scope: !6056)
!6059 = !DILocation(line: 77, column: 8, scope: !6057)
!6060 = !DILocation(line: 78, column: 5, scope: !6056)
!6061 = !DILocation(line: 78, column: 10, scope: !6056)
!6062 = !DILocation(line: 78, column: 19, scope: !6056)
!6063 = !DILocation(line: 80, column: 21, scope: !6057)
!6064 = !DILocation(line: 80, column: 4, scope: !6057)
!6065 = !DILocation(line: 81, column: 23, scope: !6057)
!6066 = !DILocation(line: 81, column: 28, scope: !6057)
!6067 = !DILocation(line: 81, column: 4, scope: !6057)
!6068 = !DILocation(line: 82, column: 8, scope: !6057)
!6069 = !DILocation(line: 83, column: 3, scope: !6057)
!6070 = !DILocation(line: 85, column: 7, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6049, file: !3, line: 85, column: 7)
!6072 = !DILocation(line: 85, column: 12, scope: !6071)
!6073 = !DILocation(line: 85, column: 24, scope: !6071)
!6074 = !DILocation(line: 85, column: 45, scope: !6071)
!6075 = !DILocation(line: 85, column: 50, scope: !6071)
!6076 = !DILocation(line: 85, column: 27, scope: !6071)
!6077 = !DILocation(line: 85, column: 7, scope: !6049)
!6078 = !DILocation(line: 86, column: 8, scope: !6071)
!6079 = !DILocation(line: 86, column: 4, scope: !6071)
!6080 = !DILocation(line: 87, column: 2, scope: !6049)
!6081 = !DILocation(line: 74, column: 2, scope: !6037)
!6082 = distinct !{!6082, !6045, !6083, !5951, !5447}
!6083 = !DILocation(line: 87, column: 2, scope: !6035)
!6084 = !DILocation(line: 89, column: 9, scope: !6026)
!6085 = !DILocation(line: 90, column: 1, scope: !6026)
!6086 = !DILocation(line: 89, column: 2, scope: !6026)
!6087 = !DISubprogram(name: "up_read", scope: !1377, file: !1377, line: 198, type: !6023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DISubprogram(name: "pci_find_bus", scope: !255, file: !255, line: 1111, type: !6089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!259, !109, !109}
!6091 = distinct !DISubprogram(name: "pci_domain_nr", scope: !6092, file: !6092, line: 44, type: !300, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6093)
!6092 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!6093 = !{!6094}
!6094 = !DILocalVariable(name: "bus", arg: 1, scope: !6091, file: !6092, line: 44, type: !259)
!6095 = !DILocation(line: 44, column: 49, scope: !6091)
!6096 = !DILocation(line: 46, column: 24, scope: !6091)
!6097 = !DILocation(line: 46, column: 9, scope: !6091)
!6098 = !DILocation(line: 46, column: 30, scope: !6091)
!6099 = !DILocation(line: 46, column: 2, scope: !6091)
!6100 = distinct !DISubprogram(name: "pcie_pme_from_pci_bridge", scope: !3, file: !3, line: 101, type: !6101, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6103)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!798, !259, !232}
!6103 = !{!6104, !6105, !6106, !6107}
!6104 = !DILocalVariable(name: "bus", arg: 1, scope: !6100, file: !3, line: 101, type: !259)
!6105 = !DILocalVariable(name: "devfn", arg: 2, scope: !6100, file: !3, line: 101, type: !232)
!6106 = !DILocalVariable(name: "dev", scope: !6100, file: !3, line: 103, type: !253)
!6107 = !DILocalVariable(name: "found", scope: !6100, file: !3, line: 104, type: !798)
!6108 = !DILocation(line: 101, column: 54, scope: !6100)
!6109 = !DILocation(line: 101, column: 62, scope: !6100)
!6110 = !DILocation(line: 103, column: 2, scope: !6100)
!6111 = !DILocation(line: 103, column: 18, scope: !6100)
!6112 = !DILocation(line: 104, column: 2, scope: !6100)
!6113 = !DILocation(line: 104, column: 7, scope: !6100)
!6114 = !DILocation(line: 106, column: 6, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 106, column: 6)
!6116 = !DILocation(line: 106, column: 6, scope: !6100)
!6117 = !DILocation(line: 107, column: 3, scope: !6115)
!6118 = !DILocation(line: 109, column: 20, scope: !6100)
!6119 = !DILocation(line: 109, column: 25, scope: !6100)
!6120 = !DILocation(line: 109, column: 8, scope: !6100)
!6121 = !DILocation(line: 109, column: 6, scope: !6100)
!6122 = !DILocation(line: 110, column: 7, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 110, column: 6)
!6124 = !DILocation(line: 110, column: 6, scope: !6100)
!6125 = !DILocation(line: 111, column: 3, scope: !6123)
!6126 = !DILocation(line: 113, column: 18, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 113, column: 6)
!6128 = !DILocation(line: 113, column: 6, scope: !6127)
!6129 = !DILocation(line: 113, column: 23, scope: !6127)
!6130 = !DILocation(line: 113, column: 40, scope: !6127)
!6131 = !DILocation(line: 113, column: 26, scope: !6127)
!6132 = !DILocation(line: 113, column: 45, scope: !6127)
!6133 = !DILocation(line: 113, column: 6, scope: !6100)
!6134 = !DILocation(line: 114, column: 3, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 113, column: 73)
!6136 = !DILocation(line: 115, column: 25, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 115, column: 7)
!6138 = !DILocation(line: 115, column: 7, scope: !6137)
!6139 = !DILocation(line: 115, column: 7, scope: !6135)
!6140 = !DILocation(line: 116, column: 10, scope: !6137)
!6141 = !DILocation(line: 116, column: 4, scope: !6137)
!6142 = !DILocation(line: 117, column: 3, scope: !6135)
!6143 = !DILocation(line: 118, column: 2, scope: !6135)
!6144 = !DILocation(line: 120, column: 14, scope: !6100)
!6145 = !DILocation(line: 120, column: 2, scope: !6100)
!6146 = !DILocation(line: 121, column: 9, scope: !6100)
!6147 = !DILocation(line: 121, column: 2, scope: !6100)
!6148 = !DILocation(line: 122, column: 1, scope: !6100)
!6149 = !DISubprogram(name: "pci_dev_get", scope: !255, file: !255, line: 1147, type: !6150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{!253, !253}
!6152 = !DISubprogram(name: "pci_dev_put", scope: !255, file: !255, line: 1148, type: !4755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6153 = distinct !DISubprogram(name: "pci_wakeup_event", scope: !4715, file: !4715, line: 104, type: !4755, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6154)
!6154 = !{!6155}
!6155 = !DILocalVariable(name: "dev", arg: 1, scope: !6153, file: !4715, line: 104, type: !253)
!6156 = !DILocation(line: 104, column: 53, scope: !6153)
!6157 = !DILocation(line: 107, column: 19, scope: !6153)
!6158 = !DILocation(line: 107, column: 24, scope: !6153)
!6159 = !DILocation(line: 107, column: 2, scope: !6153)
!6160 = !DILocation(line: 108, column: 1, scope: !6153)
!6161 = !DISubprogram(name: "__pm_runtime_resume", scope: !6015, file: !6015, line: 74, type: !6162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!109, !338, !109}
!6164 = distinct !DISubprogram(name: "pci_is_pcie", scope: !255, file: !255, line: 2424, type: !6012, scopeLine: 2425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6165)
!6165 = !{!6166}
!6166 = !DILocalVariable(name: "dev", arg: 1, scope: !6164, file: !255, line: 2424, type: !253)
!6167 = !DILocation(line: 2424, column: 48, scope: !6164)
!6168 = !DILocation(line: 2426, column: 22, scope: !6164)
!6169 = !DILocation(line: 2426, column: 9, scope: !6164)
!6170 = !DILocation(line: 2426, column: 2, scope: !6164)
!6171 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !255, file: !255, line: 2413, type: !4763, scopeLine: 2414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6172)
!6172 = !{!6173}
!6173 = !DILocalVariable(name: "dev", arg: 1, scope: !6171, file: !255, line: 2413, type: !253)
!6174 = !DILocation(line: 2413, column: 48, scope: !6171)
!6175 = !DILocation(line: 2415, column: 9, scope: !6171)
!6176 = !DILocation(line: 2415, column: 14, scope: !6171)
!6177 = !DILocation(line: 2415, column: 2, scope: !6171)
!6178 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !6092, file: !6092, line: 36, type: !6179, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!6181, !6191}
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6182, size: 64)
!6182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !6092, line: 15, size: 256, elements: !6183)
!6183 = !{!6184, !6185, !6186, !6189, !6190}
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6182, file: !6092, line: 16, baseType: !109, size: 32)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6182, file: !6092, line: 17, baseType: !109, size: 32, offset: 32)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !6182, file: !6092, line: 19, baseType: !6187, size: 64, offset: 64)
!6187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6188, size: 64)
!6188 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !4286, line: 212, flags: DIFlagFwdDecl)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6182, file: !6092, line: 22, baseType: !199, size: 64, offset: 128)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6182, file: !6092, line: 25, baseType: !199, size: 64, offset: 192)
!6191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6192, size: 64)
!6192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!6193 = !{!6194}
!6194 = !DILocalVariable(name: "bus", arg: 1, scope: !6178, file: !6092, line: 36, type: !6191)
!6195 = !DILocation(line: 36, column: 72, scope: !6178)
!6196 = !DILocation(line: 38, column: 9, scope: !6178)
!6197 = !DILocation(line: 38, column: 14, scope: !6178)
!6198 = !DILocation(line: 38, column: 2, scope: !6178)
!6199 = distinct !DISubprogram(name: "pm_wakeup_event", scope: !4399, file: !4399, line: 212, type: !6200, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6200 = !DISubroutineType(types: !6201)
!6201 = !{null, !338, !7}
!6202 = !{!6203, !6204}
!6203 = !DILocalVariable(name: "dev", arg: 1, scope: !6199, file: !4399, line: 212, type: !338)
!6204 = !DILocalVariable(name: "msec", arg: 2, scope: !6199, file: !4399, line: 212, type: !7)
!6205 = !DILocation(line: 212, column: 51, scope: !6199)
!6206 = !DILocation(line: 212, column: 69, scope: !6199)
!6207 = !DILocation(line: 214, column: 29, scope: !6199)
!6208 = !DILocation(line: 214, column: 34, scope: !6199)
!6209 = !DILocation(line: 214, column: 9, scope: !6199)
!6210 = !DILocation(line: 214, column: 2, scope: !6199)
!6211 = !DISubprogram(name: "pm_wakeup_dev_event", scope: !4399, file: !4399, line: 118, type: !6212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !338, !7, !798}
!6214 = distinct !DISubprogram(name: "rep_nop", scope: !6003, file: !6003, line: 11, type: !1080, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6215 = !DILocation(line: 13, column: 2, scope: !6214)
!6216 = !{i64 2197014}
!6217 = !DILocation(line: 14, column: 1, scope: !6214)
!6218 = !DISubprogram(name: "request_threaded_irq", scope: !325, file: !325, line: 147, type: !6219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!109, !7, !5488, !5488, !191, !282, !199}
!6221 = distinct !DISubprogram(name: "get_service_data", scope: !249, file: !249, line: 71, type: !6222, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{!199, !247}
!6224 = !{!6225}
!6225 = !DILocalVariable(name: "dev", arg: 1, scope: !6221, file: !249, line: 71, type: !247)
!6226 = !DILocation(line: 71, column: 58, scope: !6221)
!6227 = !DILocation(line: 73, column: 9, scope: !6221)
!6228 = !DILocation(line: 73, column: 14, scope: !6221)
!6229 = !DILocation(line: 73, column: 2, scope: !6221)
!6230 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6007, file: !6007, line: 32, type: !6231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{!191, !5350}
!6233 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5347, file: !5347, line: 404, type: !6234, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{null, !2399, !191}
!6236 = !{!6237, !6238, !6239, !6242}
!6237 = !DILocalVariable(name: "lock", arg: 1, scope: !6233, file: !5347, line: 404, type: !2399)
!6238 = !DILocalVariable(name: "flags", arg: 2, scope: !6233, file: !5347, line: 404, type: !191)
!6239 = !DILocalVariable(name: "__dummy", scope: !6240, file: !5347, line: 406, type: !191)
!6240 = distinct !DILexicalBlock(scope: !6241, file: !5347, line: 406, column: 2)
!6241 = distinct !DILexicalBlock(scope: !6233, file: !5347, line: 406, column: 2)
!6242 = !DILocalVariable(name: "__dummy2", scope: !6240, file: !5347, line: 406, type: !191)
!6243 = !DILocation(line: 404, column: 64, scope: !6233)
!6244 = !DILocation(line: 404, column: 84, scope: !6233)
!6245 = !DILocation(line: 406, column: 2, scope: !6233)
!6246 = !DILocation(line: 406, column: 2, scope: !6240)
!6247 = !DILocation(line: 406, column: 2, scope: !6241)
!6248 = !DILocation(line: 407, column: 1, scope: !6233)
!6249 = distinct !DISubprogram(name: "schedule_work", scope: !147, file: !147, line: 621, type: !6250, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6252)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{!798, !985}
!6252 = !{!6253}
!6253 = !DILocalVariable(name: "work", arg: 1, scope: !6249, file: !147, line: 621, type: !985)
!6254 = !DILocation(line: 621, column: 54, scope: !6249)
!6255 = !DILocation(line: 623, column: 20, scope: !6249)
!6256 = !DILocation(line: 623, column: 31, scope: !6249)
!6257 = !DILocation(line: 623, column: 9, scope: !6249)
!6258 = !DILocation(line: 623, column: 2, scope: !6249)
!6259 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6007, file: !6007, line: 43, type: !6260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{null, !5350, !191}
!6262 = distinct !DISubprogram(name: "queue_work", scope: !147, file: !147, line: 559, type: !6263, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6265)
!6263 = !DISubroutineType(types: !6264)
!6264 = !{!798, !1037, !985}
!6265 = !{!6266, !6267}
!6266 = !DILocalVariable(name: "wq", arg: 1, scope: !6262, file: !147, line: 559, type: !1037)
!6267 = !DILocalVariable(name: "work", arg: 2, scope: !6262, file: !147, line: 560, type: !985)
!6268 = !DILocation(line: 559, column: 56, scope: !6262)
!6269 = !DILocation(line: 560, column: 30, scope: !6262)
!6270 = !DILocation(line: 562, column: 41, scope: !6262)
!6271 = !DILocation(line: 562, column: 45, scope: !6262)
!6272 = !DILocation(line: 562, column: 9, scope: !6262)
!6273 = !DILocation(line: 562, column: 2, scope: !6262)
!6274 = !DISubprogram(name: "queue_work_on", scope: !147, file: !147, line: 496, type: !6275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!798, !109, !1037, !985}
!6277 = distinct !DISubprogram(name: "pcie_pme_can_wakeup", scope: !3, file: !3, line: 296, type: !6278, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6278 = !DISubroutineType(types: !6279)
!6279 = !{!109, !253, !199}
!6280 = !{!6281, !6282}
!6281 = !DILocalVariable(name: "dev", arg: 1, scope: !6277, file: !3, line: 296, type: !253)
!6282 = !DILocalVariable(name: "ign", arg: 2, scope: !6277, file: !3, line: 296, type: !199)
!6283 = !DILocation(line: 296, column: 48, scope: !6277)
!6284 = !DILocation(line: 296, column: 59, scope: !6277)
!6285 = !DILocation(line: 298, column: 29, scope: !6277)
!6286 = !DILocation(line: 298, column: 34, scope: !6277)
!6287 = !DILocation(line: 298, column: 2, scope: !6277)
!6288 = !DILocation(line: 299, column: 2, scope: !6277)
!6289 = !DISubprogram(name: "pcie_walk_rcec", scope: !4715, file: !4715, line: 440, type: !6290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{null, !253, !6292, !199}
!6292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6278, size: 64)
!6293 = !DISubprogram(name: "pci_walk_bus", scope: !255, file: !255, line: 1599, type: !6294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6294 = !DISubroutineType(types: !6295)
!6295 = !{null, !259, !6292, !199}
!6296 = !DISubprogram(name: "device_set_wakeup_capable", scope: !4399, file: !4399, line: 111, type: !4478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6297 = distinct !DISubprogram(name: "pcie_pme_disable_interrupt", scope: !3, file: !3, line: 376, type: !6298, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6298 = !DISubroutineType(types: !6299)
!6299 = !{null, !253, !200}
!6300 = !{!6301, !6302}
!6301 = !DILocalVariable(name: "port", arg: 1, scope: !6297, file: !3, line: 376, type: !253)
!6302 = !DILocalVariable(name: "data", arg: 2, scope: !6297, file: !3, line: 377, type: !200)
!6303 = !DILocation(line: 376, column: 56, scope: !6297)
!6304 = !DILocation(line: 377, column: 42, scope: !6297)
!6305 = !DILocation(line: 379, column: 17, scope: !6297)
!6306 = !DILocation(line: 379, column: 23, scope: !6297)
!6307 = !DILocation(line: 379, column: 2, scope: !6297)
!6308 = !DILocation(line: 380, column: 28, scope: !6297)
!6309 = !DILocation(line: 380, column: 2, scope: !6297)
!6310 = !DILocation(line: 381, column: 29, scope: !6297)
!6311 = !DILocation(line: 381, column: 2, scope: !6297)
!6312 = !DILocation(line: 382, column: 2, scope: !6297)
!6313 = !DILocation(line: 382, column: 8, scope: !6297)
!6314 = !DILocation(line: 382, column: 14, scope: !6297)
!6315 = !DILocation(line: 383, column: 19, scope: !6297)
!6316 = !DILocation(line: 383, column: 25, scope: !6297)
!6317 = !DILocation(line: 383, column: 2, scope: !6297)
!6318 = !DILocation(line: 384, column: 1, scope: !6297)
!6319 = !DISubprogram(name: "free_irq", scope: !325, file: !325, line: 196, type: !6320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = !DISubroutineType(types: !6321)
!6321 = !{!2619, !7, !199}
!6322 = !DISubprogram(name: "cancel_work_sync", scope: !147, file: !147, line: 515, type: !6250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6323 = distinct !DISubprogram(name: "device_may_wakeup", scope: !4399, file: !4399, line: 82, type: !6324, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!798, !338}
!6326 = !{!6327}
!6327 = !DILocalVariable(name: "dev", arg: 1, scope: !6323, file: !4399, line: 82, type: !338)
!6328 = !DILocation(line: 82, column: 53, scope: !6323)
!6329 = !DILocation(line: 84, column: 9, scope: !6323)
!6330 = !DILocation(line: 84, column: 14, scope: !6323)
!6331 = !DILocation(line: 84, column: 20, scope: !6323)
!6332 = !DILocation(line: 84, column: 31, scope: !6323)
!6333 = !DILocation(line: 84, column: 36, scope: !6323)
!6334 = !DILocation(line: 84, column: 41, scope: !6323)
!6335 = !DILocation(line: 84, column: 47, scope: !6323)
!6336 = !DILocation(line: 84, column: 35, scope: !6323)
!6337 = !DILocation(line: 84, column: 34, scope: !6323)
!6338 = !DILocation(line: 0, scope: !6323)
!6339 = !DILocation(line: 84, column: 2, scope: !6323)
!6340 = distinct !DISubprogram(name: "pcie_pme_check_wakeup", scope: !3, file: !3, line: 361, type: !6027, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6341 = !{!6342, !6343, !6344, !6347}
!6342 = !DILocalVariable(name: "bus", arg: 1, scope: !6340, file: !3, line: 361, type: !259)
!6343 = !DILocalVariable(name: "dev", scope: !6340, file: !3, line: 363, type: !253)
!6344 = !DILocalVariable(name: "__mptr", scope: !6345, file: !3, line: 368, type: !199)
!6345 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 368, column: 2)
!6346 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 368, column: 2)
!6347 = !DILocalVariable(name: "__mptr", scope: !6348, file: !3, line: 368, type: !199)
!6348 = distinct !DILexicalBlock(scope: !6349, file: !3, line: 368, column: 2)
!6349 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 368, column: 2)
!6350 = !DILocation(line: 361, column: 51, scope: !6340)
!6351 = !DILocation(line: 363, column: 2, scope: !6340)
!6352 = !DILocation(line: 363, column: 18, scope: !6340)
!6353 = !DILocation(line: 365, column: 7, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 365, column: 6)
!6355 = !DILocation(line: 365, column: 6, scope: !6340)
!6356 = !DILocation(line: 366, column: 3, scope: !6354)
!6357 = !DILocation(line: 368, column: 2, scope: !6345)
!6358 = !DILocation(line: 368, column: 2, scope: !6346)
!6359 = !DILocation(line: 368, column: 2, scope: !6349)
!6360 = !DILocation(line: 369, column: 26, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6349, file: !3, line: 369, column: 7)
!6362 = !DILocation(line: 369, column: 31, scope: !6361)
!6363 = !DILocation(line: 369, column: 7, scope: !6361)
!6364 = !DILocation(line: 370, column: 7, scope: !6361)
!6365 = !DILocation(line: 370, column: 32, scope: !6361)
!6366 = !DILocation(line: 370, column: 37, scope: !6361)
!6367 = !DILocation(line: 370, column: 10, scope: !6361)
!6368 = !DILocation(line: 369, column: 7, scope: !6349)
!6369 = !DILocation(line: 371, column: 4, scope: !6361)
!6370 = !DILocation(line: 370, column: 48, scope: !6361)
!6371 = !DILocation(line: 368, column: 2, scope: !6348)
!6372 = distinct !{!6372, !6358, !6373, !5951, !5447}
!6373 = !DILocation(line: 371, column: 11, scope: !6346)
!6374 = !DILocation(line: 373, column: 2, scope: !6340)
!6375 = !DILocation(line: 374, column: 1, scope: !6340)
!6376 = distinct !DISubprogram(name: "enable_irq_wake", scope: !325, file: !325, line: 484, type: !6377, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6377 = !DISubroutineType(types: !6378)
!6378 = !{!109, !7}
!6379 = !{!6380}
!6380 = !DILocalVariable(name: "irq", arg: 1, scope: !6376, file: !325, line: 484, type: !7)
!6381 = !DILocation(line: 484, column: 48, scope: !6376)
!6382 = !DILocation(line: 486, column: 26, scope: !6376)
!6383 = !DILocation(line: 486, column: 9, scope: !6376)
!6384 = !DILocation(line: 486, column: 2, scope: !6376)
!6385 = !DISubprogram(name: "synchronize_irq", scope: !6386, file: !6386, line: 13, type: !6387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6386 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!6387 = !DISubroutineType(types: !6388)
!6388 = !{null, !7}
!6389 = !DISubprogram(name: "irq_set_irq_wake", scope: !325, file: !325, line: 482, type: !6390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!109, !7, !7}
!6392 = distinct !DISubprogram(name: "disable_irq_wake", scope: !325, file: !325, line: 489, type: !6377, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6393)
!6393 = !{!6394}
!6394 = !DILocalVariable(name: "irq", arg: 1, scope: !6392, file: !325, line: 489, type: !7)
!6395 = !DILocation(line: 489, column: 49, scope: !6392)
!6396 = !DILocation(line: 491, column: 26, scope: !6392)
!6397 = !DILocation(line: 491, column: 9, scope: !6392)
!6398 = !DILocation(line: 491, column: 2, scope: !6392)
