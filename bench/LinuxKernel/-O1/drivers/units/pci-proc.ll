; ModuleID = 'drivers/pci/proc.c'
source_filename = "drivers/pci/proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_proc__294_472_pci_proc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_proc__294_472_pci_proc_init6:\09\09\09"
module asm ".long\09__initstub__kmod_proc__294_472_pci_proc_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }
%struct.pci_filp_private = type { i32, i32 }
%struct.file = type { %union.anon.14, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.vm_area_struct = type { %union.anon.22, ptr, %struct.pgprot, %union.anon.24, i32, ptr, i8, %struct.anon.25, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.24 = type { i64 }
%struct.anon.25 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.17, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.18, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.19, ptr, %struct.address_space, %struct.list_head, %union.anon.20, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.17 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { %struct.callback_head }
%union.anon.19 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.20 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }

@proc_initialized = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"%04x:%02x\00", align 1, !dbg !229
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !234
@proc_bus_pci_dir = internal global ptr null, align 8, !dbg !246
@.str.2 = private unnamed_addr constant [8 x i8] c"%02x.%x\00", align 1, !dbg !239
@proc_bus_pci_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_bus_pci_open, ptr @proc_bus_pci_read, ptr null, ptr @proc_bus_pci_write, ptr @proc_bus_pci_lseek, ptr @proc_bus_pci_release, ptr null, ptr @proc_bus_pci_ioctl, ptr @proc_bus_pci_ioctl, ptr @proc_bus_pci_mmap, ptr null }, align 8, !dbg !251
@__UNIQUE_ID___addressable___initstub__kmod_proc__294_472_pci_proc_init6295 = internal global ptr @__initstub__kmod_proc__294_472_pci_proc_init6, section ".discard.addressable", align 8, !dbg !244
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4221
@.str.4 = private unnamed_addr constant [19 x i8] c"drivers/pci/proc.c\00", align 1, !dbg !4226
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched176 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !4231
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"bus/pci\00", align 1, !dbg !4234
@.str.6 = private unnamed_addr constant [8 x i8] c"devices\00", align 1, !dbg !4236
@proc_bus_pci_devices_op = internal constant %struct.seq_operations { ptr @pci_seq_start, ptr @pci_seq_stop, ptr @pci_seq_next, ptr @show_device }, align 8, !dbg !4238
@.str.7 = private unnamed_addr constant [21 x i8] c"%02x%02x\09%04x%04x\09%x\00", align 1, !dbg !4240
@.str.8 = private unnamed_addr constant [8 x i8] c"\09%16llx\00", align 1, !dbg !4242
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_proc__294_472_pci_proc_init6295, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched176], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_proc_attach_device(ptr noundef %dev) #0 align 16 !dbg !4254 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %e = alloca ptr, align 8
  %name = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5048, metadata !DIExpression()), !dbg !5052
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #15, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5049, metadata !DIExpression()), !dbg !5054
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5055
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5056
  %1 = load ptr, ptr %bus1, align 8, !dbg !5056
  store ptr %1, ptr %bus, align 8, !dbg !5054
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %e, metadata !5050, metadata !DIExpression()), !dbg !5058
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #15, !dbg !5059
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5051, metadata !DIExpression()), !dbg !5060
  %2 = load i32, ptr @proc_initialized, align 4, !dbg !5061
  %tobool = icmp ne i32 %2, 0, !dbg !5061
  br i1 %tobool, label %if.end, label %if.then, !dbg !5063

if.then:                                          ; preds = %entry
  store i32 -13, ptr %retval, align 4, !dbg !5064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5064

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bus, align 8, !dbg !5065
  %procdir = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 11, !dbg !5067
  %4 = load ptr, ptr %procdir, align 8, !dbg !5067
  %tobool2 = icmp ne ptr %4, null, !dbg !5065
  br i1 %tobool2, label %if.end20, label %if.then3, !dbg !5068

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %bus, align 8, !dbg !5069
  %call = call i32 @pci_proc_domain(ptr noundef %5) #16, !dbg !5072
  %tobool4 = icmp ne i32 %call, 0, !dbg !5072
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5073

if.then5:                                         ; preds = %if.then3
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5074
  %6 = load ptr, ptr %bus, align 8, !dbg !5076
  %call6 = call i32 @pci_domain_nr(ptr noundef %6) #16, !dbg !5077
  %7 = load ptr, ptr %bus, align 8, !dbg !5078
  %number = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12, !dbg !5079
  %8 = load i8, ptr %number, align 8, !dbg !5079
  %conv = zext i8 %8 to i32, !dbg !5078
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef %call6, i32 noundef %conv) #16, !dbg !5080
  br label %if.end12, !dbg !5081

if.else:                                          ; preds = %if.then3
  %arraydecay8 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5082
  %9 = load ptr, ptr %bus, align 8, !dbg !5084
  %number9 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12, !dbg !5085
  %10 = load i8, ptr %number9, align 8, !dbg !5085
  %conv10 = zext i8 %10 to i32, !dbg !5084
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay8, ptr noundef @.str.1, i32 noundef %conv10) #16, !dbg !5086
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %arraydecay13 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5087
  %11 = load ptr, ptr @proc_bus_pci_dir, align 8, !dbg !5088
  %call14 = call ptr @proc_mkdir(ptr noundef %arraydecay13, ptr noundef %11) #16, !dbg !5089
  %12 = load ptr, ptr %bus, align 8, !dbg !5090
  %procdir15 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 11, !dbg !5091
  store ptr %call14, ptr %procdir15, align 8, !dbg !5092
  %13 = load ptr, ptr %bus, align 8, !dbg !5093
  %procdir16 = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 11, !dbg !5095
  %14 = load ptr, ptr %procdir16, align 8, !dbg !5095
  %tobool17 = icmp ne ptr %14, null, !dbg !5093
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5096

if.then18:                                        ; preds = %if.end12
  store i32 -12, ptr %retval, align 4, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

if.end19:                                         ; preds = %if.end12
  br label %if.end20, !dbg !5098

if.end20:                                         ; preds = %if.end19, %if.end
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5099
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5100
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 6, !dbg !5100
  %16 = load i32, ptr %devfn, align 8, !dbg !5100
  %shr = lshr i32 %16, 3, !dbg !5100
  %and = and i32 %shr, 31, !dbg !5100
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5101
  %devfn22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 6, !dbg !5101
  %18 = load i32, ptr %devfn22, align 8, !dbg !5101
  %and23 = and i32 %18, 7, !dbg !5101
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay21, ptr noundef @.str.2, i32 noundef %and, i32 noundef %and23) #16, !dbg !5102
  %arraydecay25 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !5103
  %19 = load ptr, ptr %bus, align 8, !dbg !5104
  %procdir26 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 11, !dbg !5105
  %20 = load ptr, ptr %procdir26, align 8, !dbg !5105
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5106
  %call27 = call ptr @proc_create_data(ptr noundef %arraydecay25, i16 noundef zeroext -32348, ptr noundef %20, ptr noundef @proc_bus_pci_ops, ptr noundef %21) #16, !dbg !5107
  store ptr %call27, ptr %e, align 8, !dbg !5108
  %22 = load ptr, ptr %e, align 8, !dbg !5109
  %tobool28 = icmp ne ptr %22, null, !dbg !5109
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5111

if.then29:                                        ; preds = %if.end20
  store i32 -12, ptr %retval, align 4, !dbg !5112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5112

if.end30:                                         ; preds = %if.end20
  %23 = load ptr, ptr %e, align 8, !dbg !5113
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5114
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 38, !dbg !5115
  %25 = load i32, ptr %cfg_size, align 8, !dbg !5115
  %conv31 = sext i32 %25 to i64, !dbg !5114
  call void @proc_set_size(ptr noundef %23, i64 noundef %conv31) #16, !dbg !5116
  %26 = load ptr, ptr %e, align 8, !dbg !5117
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5118
  %procent = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 4, !dbg !5119
  store ptr %26, ptr %procent, align 8, !dbg !5120
  store i32 0, ptr %retval, align 4, !dbg !5121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5121

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #15, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #15, !dbg !5122
  %28 = load i32, ptr %retval, align 4, !dbg !5122
  ret i32 %28, !dbg !5122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_proc_domain(ptr noundef %bus) #3 align 16 !dbg !5123 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5128
  %call = call i32 @pci_domain_nr(ptr noundef %0) #16, !dbg !5129
  ret i32 %call, !dbg !5130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5131 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #3 align 16 !dbg !5135 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5139
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #16, !dbg !5140
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !5141
  %1 = load i32, ptr %domain, align 8, !dbg !5141
  ret i32 %1, !dbg !5142
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5143 dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5146 dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5150 dso_local void @proc_set_size(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_proc_detach_device(ptr noundef %dev) #0 align 16 !dbg !5153 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5155, metadata !DIExpression()), !dbg !5156
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5157
  %procent = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 4, !dbg !5158
  %1 = load ptr, ptr %procent, align 8, !dbg !5158
  call void @proc_remove(ptr noundef %1) #16, !dbg !5159
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5160
  %procent1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 4, !dbg !5161
  store ptr null, ptr %procent1, align 8, !dbg !5162
  ret i32 0, !dbg !5163
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5164 dso_local void @proc_remove(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_proc_detach_bus(ptr noundef %bus) #0 align 16 !dbg !5167 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5171
  %procdir = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 11, !dbg !5172
  %1 = load ptr, ptr %procdir, align 8, !dbg !5172
  call void @proc_remove(ptr noundef %1) #16, !dbg !5173
  ret i32 0, !dbg !5174
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_proc__294_472_pci_proc_init6() #5 section ".init.text" align 16 !dbg !5175 {
entry:
  %call = call i32 @pci_proc_init() #17, !dbg !5176
  ret i32 %call, !dbg !5176
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_proc_init() #5 section ".init.text" align 16 !dbg !5177 {
entry:
  %dev = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5179, metadata !DIExpression()), !dbg !5181
  store ptr null, ptr %dev, align 8, !dbg !5181
  %call = call ptr @proc_mkdir(ptr noundef @.str.5, ptr noundef null) #16, !dbg !5182
  store ptr %call, ptr @proc_bus_pci_dir, align 8, !dbg !5183
  %0 = load ptr, ptr @proc_bus_pci_dir, align 8, !dbg !5184
  %call1 = call ptr @proc_create_seq_private(ptr noundef @.str.6, i16 noundef zeroext 0, ptr noundef %0, ptr noundef @proc_bus_pci_devices_op, i32 noundef 0, ptr noundef null) #16, !dbg !5184
  store i32 1, ptr @proc_initialized, align 4, !dbg !5185
  br label %while.cond, !dbg !5186

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %dev, align 8, !dbg !5186
  %call2 = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %1) #16, !dbg !5186
  store ptr %call2, ptr %dev, align 8, !dbg !5186
  %cmp = icmp ne ptr %call2, null, !dbg !5186
  br i1 %cmp, label %while.body, label %while.end, !dbg !5186

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %dev, align 8, !dbg !5187
  %call3 = call i32 @pci_proc_attach_device(ptr noundef %2) #16, !dbg !5188
  br label %while.cond, !dbg !5186, !llvm.loop !5189

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5193
  ret i32 0, !dbg !5194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #3 align 16 !dbg !5195 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5213
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !5214
  %1 = load ptr, ptr %sysdata, align 8, !dbg !5214
  ret ptr %1, !dbg !5215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_bus_pci_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5216 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %fpriv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5218, metadata !DIExpression()), !dbg !5226
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5219, metadata !DIExpression()), !dbg !5227
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpriv) #15, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %fpriv, metadata !5220, metadata !DIExpression()), !dbg !5229
  %call = call noalias ptr @kmalloc(i64 noundef 8, i32 noundef 3264) #18, !dbg !5230
  store ptr %call, ptr %fpriv, align 8, !dbg !5229
  %0 = load ptr, ptr %fpriv, align 8, !dbg !5231
  %tobool = icmp ne ptr %0, null, !dbg !5231
  br i1 %tobool, label %if.end, label %if.then, !dbg !5233

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5234

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fpriv, align 8, !dbg !5235
  %mmap_state = getelementptr inbounds %struct.pci_filp_private, ptr %1, i32 0, i32 0, !dbg !5236
  store i32 0, ptr %mmap_state, align 4, !dbg !5237
  %2 = load ptr, ptr %fpriv, align 8, !dbg !5238
  %write_combine = getelementptr inbounds %struct.pci_filp_private, ptr %2, i32 0, i32 1, !dbg !5239
  store i32 0, ptr %write_combine, align 4, !dbg !5240
  %3 = load ptr, ptr %fpriv, align 8, !dbg !5241
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5242
  %private_data = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15, !dbg !5243
  store ptr %3, ptr %private_data, align 8, !dbg !5244
  %call1 = call ptr @iomem_get_mapping() #16, !dbg !5245
  %5 = load ptr, ptr %file.addr, align 8, !dbg !5246
  %f_mapping = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17, !dbg !5247
  store ptr %call1, ptr %f_mapping, align 8, !dbg !5248
  store i32 0, ptr %retval, align 4, !dbg !5249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5249

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpriv) #15, !dbg !5250
  %6 = load i32, ptr %retval, align 4, !dbg !5250
  ret i32 %6, !dbg !5250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_bus_pci_read(ptr noundef %file, ptr noundef %buf, i64 noundef %nbytes, ptr noundef %ppos) #0 align 16 !dbg !5251 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %pos = alloca i32, align 4
  %cnt = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %val = alloca i8, align 1
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i8, align 1
  %__x = alloca i8, align 1
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %val46 = alloca i16, align 2
  %__ret_pu48 = alloca i32, align 4
  %__ptr_pu49 = alloca ptr, align 8
  %__val_pu50 = alloca i16, align 2
  %__x51 = alloca i16, align 2
  %__ptr52 = alloca ptr, align 8
  %tmp55 = alloca i64, align 8
  %val63 = alloca i32, align 4
  %__ret_pu65 = alloca i32, align 4
  %__ptr_pu66 = alloca ptr, align 8
  %__val_pu67 = alloca i32, align 4
  %__x68 = alloca i32, align 4
  %__ptr69 = alloca ptr, align 8
  %tmp72 = alloca i64, align 8
  %tmp78 = alloca i32, align 4
  %val83 = alloca i16, align 2
  %__ret_pu85 = alloca i32, align 4
  %__ptr_pu86 = alloca ptr, align 8
  %__val_pu87 = alloca i16, align 2
  %__x88 = alloca i16, align 2
  %__ptr89 = alloca ptr, align 8
  %tmp92 = alloca i64, align 8
  %val101 = alloca i8, align 1
  %__ret_pu103 = alloca i32, align 4
  %__ptr_pu104 = alloca ptr, align 8
  %__val_pu105 = alloca i8, align 1
  %__x106 = alloca i8, align 1
  %__ptr107 = alloca ptr, align 8
  %tmp110 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5253, metadata !DIExpression()), !dbg !5305
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5254, metadata !DIExpression()), !dbg !5306
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !5255, metadata !DIExpression()), !dbg !5307
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5256, metadata !DIExpression()), !dbg !5308
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5257, metadata !DIExpression()), !dbg !5310
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5311
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !5312
  %call1 = call ptr @pde_data(ptr noundef %call) #16, !dbg !5313
  store ptr %call1, ptr %dev, align 8, !dbg !5310
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #15, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5258, metadata !DIExpression()), !dbg !5315
  %1 = load ptr, ptr %ppos.addr, align 8, !dbg !5316
  %2 = load i64, ptr %1, align 8, !dbg !5317
  %conv = trunc i64 %2 to i32, !dbg !5317
  store i32 %conv, ptr %pos, align 4, !dbg !5315
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #15, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5259, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5260, metadata !DIExpression()), !dbg !5320
  %call2 = call zeroext i1 @capable(i32 noundef 21) #16, !dbg !5321
  br i1 %call2, label %if.then, label %if.else, !dbg !5323

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !5324
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 38, !dbg !5325
  %4 = load i32, ptr %cfg_size, align 8, !dbg !5325
  store i32 %4, ptr %size, align 4, !dbg !5326
  br label %if.end7, !dbg !5327

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !5328
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 13, !dbg !5330
  %6 = load i8, ptr %hdr_type, align 1, !dbg !5330
  %conv3 = zext i8 %6 to i32, !dbg !5328
  %cmp = icmp eq i32 %conv3, 2, !dbg !5331
  br i1 %cmp, label %if.then5, label %if.else6, !dbg !5332

if.then5:                                         ; preds = %if.else
  store i32 128, ptr %size, align 4, !dbg !5333
  br label %if.end, !dbg !5334

if.else6:                                         ; preds = %if.else
  store i32 64, ptr %size, align 4, !dbg !5335
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %7 = load i32, ptr %pos, align 4, !dbg !5336
  %8 = load i32, ptr %size, align 4, !dbg !5338
  %cmp8 = icmp uge i32 %7, %8, !dbg !5339
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5340

if.then10:                                        ; preds = %if.end7
  store i64 0, ptr %retval, align 8, !dbg !5341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5341

if.end11:                                         ; preds = %if.end7
  %9 = load i64, ptr %nbytes.addr, align 8, !dbg !5342
  %10 = load i32, ptr %size, align 4, !dbg !5344
  %conv12 = zext i32 %10 to i64, !dbg !5344
  %cmp13 = icmp uge i64 %9, %conv12, !dbg !5345
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !5346

if.then15:                                        ; preds = %if.end11
  %11 = load i32, ptr %size, align 4, !dbg !5347
  %conv16 = zext i32 %11 to i64, !dbg !5347
  store i64 %conv16, ptr %nbytes.addr, align 8, !dbg !5348
  br label %if.end17, !dbg !5349

if.end17:                                         ; preds = %if.then15, %if.end11
  %12 = load i32, ptr %pos, align 4, !dbg !5350
  %conv18 = zext i32 %12 to i64, !dbg !5350
  %13 = load i64, ptr %nbytes.addr, align 8, !dbg !5352
  %add = add i64 %conv18, %13, !dbg !5353
  %14 = load i32, ptr %size, align 4, !dbg !5354
  %conv19 = zext i32 %14 to i64, !dbg !5354
  %cmp20 = icmp ugt i64 %add, %conv19, !dbg !5355
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !5356

if.then22:                                        ; preds = %if.end17
  %15 = load i32, ptr %size, align 4, !dbg !5357
  %16 = load i32, ptr %pos, align 4, !dbg !5358
  %sub = sub i32 %15, %16, !dbg !5359
  %conv23 = zext i32 %sub to i64, !dbg !5357
  store i64 %conv23, ptr %nbytes.addr, align 8, !dbg !5360
  br label %if.end24, !dbg !5361

if.end24:                                         ; preds = %if.then22, %if.end17
  %17 = load i64, ptr %nbytes.addr, align 8, !dbg !5362
  %conv25 = trunc i64 %17 to i32, !dbg !5362
  store i32 %conv25, ptr %cnt, align 4, !dbg !5363
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !5364
  %19 = load i32, ptr %cnt, align 4, !dbg !5364
  %conv26 = zext i32 %19 to i64, !dbg !5364
  %call27 = call zeroext i1 @__access_ok(ptr noundef %18, i64 noundef %conv26) #16, !dbg !5364
  %lnot = xor i1 %call27, true, !dbg !5364
  %lnot28 = xor i1 %lnot, true, !dbg !5364
  %lnot.ext = zext i1 %lnot28 to i32, !dbg !5364
  %conv29 = sext i32 %lnot.ext to i64, !dbg !5364
  %expval = call i64 @llvm.expect.i64(i64 %conv29, i64 1), !dbg !5364
  %tobool = icmp ne i64 %expval, 0, !dbg !5364
  br i1 %tobool, label %if.end31, label %if.then30, !dbg !5366

if.then30:                                        ; preds = %if.end24
  store i64 -22, ptr %retval, align 8, !dbg !5367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5367

if.end31:                                         ; preds = %if.end24
  %20 = load ptr, ptr %dev, align 8, !dbg !5368
  call void @pci_config_pm_runtime_get(ptr noundef %20) #16, !dbg !5369
  %21 = load i32, ptr %pos, align 4, !dbg !5370
  %and = and i32 %21, 1, !dbg !5371
  %tobool32 = icmp ne i32 %and, 0, !dbg !5371
  br i1 %tobool32, label %land.lhs.true, label %if.end39, !dbg !5372

land.lhs.true:                                    ; preds = %if.end31
  %22 = load i32, ptr %cnt, align 4, !dbg !5373
  %tobool33 = icmp ne i32 %22, 0, !dbg !5373
  br i1 %tobool33, label %if.then34, label %if.end39, !dbg !5374

if.then34:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #15, !dbg !5375
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5261, metadata !DIExpression()), !dbg !5376
  %23 = load ptr, ptr %dev, align 8, !dbg !5377
  %24 = load i32, ptr %pos, align 4, !dbg !5378
  %call35 = call i32 @pci_user_read_config_byte(ptr noundef %23, i32 noundef %24, ptr noundef %val) #16, !dbg !5379
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5264, metadata !DIExpression()), !dbg !5380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5266, metadata !DIExpression()), !dbg !5380
  call void @llvm.lifetime.start.p0(i64 1, ptr %__val_pu) #15, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5267, metadata !DIExpression()), !dbg !5380
  call void @llvm.lifetime.start.p0(i64 1, ptr %__x) #15, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5268, metadata !DIExpression()), !dbg !5380
  %25 = load i8, ptr %val, align 1, !dbg !5380
  store i8 %25, ptr %__x, align 1, !dbg !5380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5269, metadata !DIExpression()), !dbg !5380
  %26 = load ptr, ptr %buf.addr, align 8, !dbg !5380
  store ptr %26, ptr %__ptr, align 8, !dbg !5380
  %27 = load ptr, ptr %__ptr, align 8, !dbg !5380
  store ptr %27, ptr %__ptr_pu, align 8, !dbg !5380
  %28 = load i8, ptr %__x, align 1, !dbg !5380
  store i8 %28, ptr %__val_pu, align 1, !dbg !5380
  %29 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5380
  %30 = load ptr, ptr %__ptr_pu, align 8, !dbg !5380
  %31 = load i8, ptr %__val_pu, align 1, !dbg !5380
  %32 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %30, i8 %31, i64 1, i64 %29) #15, !dbg !5380, !srcloc !5381
  %asmresult = extractvalue { ptr, i64 } %32, 0, !dbg !5380
  %asmresult36 = extractvalue { ptr, i64 } %32, 1, !dbg !5380
  %33 = ptrtoint ptr %asmresult to i64, !dbg !5380
  %34 = trunc i64 %33 to i32, !dbg !5380
  store i32 %34, ptr %__ret_pu, align 4, !dbg !5380
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult36), !dbg !5380
  %35 = load ptr, ptr %__ptr, align 8, !dbg !5382
  call void @kmsan_copy_to_user(ptr noundef %35, ptr noundef %__x, i64 noundef 1, i64 noundef 0) #16, !dbg !5382
  %36 = load i32, ptr %__ret_pu, align 4, !dbg !5380
  %conv37 = sext i32 %36 to i64, !dbg !5380
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !5380
  store i64 %expval38, ptr %tmp, align 8, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 1, ptr %__x) #15, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 1, ptr %__val_pu) #15, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5384
  %37 = load i64, ptr %tmp, align 8, !dbg !5380
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !5385
  %incdec.ptr = getelementptr i8, ptr %38, i32 1, !dbg !5385
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !5385
  %39 = load i32, ptr %pos, align 4, !dbg !5386
  %inc = add i32 %39, 1, !dbg !5386
  store i32 %inc, ptr %pos, align 4, !dbg !5386
  %40 = load i32, ptr %cnt, align 4, !dbg !5387
  %dec = add i32 %40, -1, !dbg !5387
  store i32 %dec, ptr %cnt, align 4, !dbg !5387
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #15, !dbg !5388
  br label %if.end39, !dbg !5389

if.end39:                                         ; preds = %if.then34, %land.lhs.true, %if.end31
  %41 = load i32, ptr %pos, align 4, !dbg !5390
  %and40 = and i32 %41, 3, !dbg !5391
  %tobool41 = icmp ne i32 %and40, 0, !dbg !5391
  br i1 %tobool41, label %land.lhs.true42, label %if.end60, !dbg !5392

land.lhs.true42:                                  ; preds = %if.end39
  %42 = load i32, ptr %cnt, align 4, !dbg !5393
  %cmp43 = icmp ugt i32 %42, 2, !dbg !5394
  br i1 %cmp43, label %if.then45, label %if.end60, !dbg !5395

if.then45:                                        ; preds = %land.lhs.true42
  call void @llvm.lifetime.start.p0(i64 2, ptr %val46) #15, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %val46, metadata !5270, metadata !DIExpression()), !dbg !5397
  %43 = load ptr, ptr %dev, align 8, !dbg !5398
  %44 = load i32, ptr %pos, align 4, !dbg !5399
  %call47 = call i32 @pci_user_read_config_word(ptr noundef %43, i32 noundef %44, ptr noundef %val46) #16, !dbg !5400
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu48) #15, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__ret_pu48, metadata !5273, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu49) #15, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu49, metadata !5275, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu50) #15, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__val_pu50, metadata !5276, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x51) #15, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__x51, metadata !5277, metadata !DIExpression()), !dbg !5401
  %45 = load i16, ptr %val46, align 2, !dbg !5401
  store i16 %45, ptr %__x51, align 2, !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr52) #15, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %__ptr52, metadata !5278, metadata !DIExpression()), !dbg !5401
  %46 = load ptr, ptr %buf.addr, align 8, !dbg !5401
  store ptr %46, ptr %__ptr52, align 8, !dbg !5401
  %47 = load ptr, ptr %__ptr52, align 8, !dbg !5401
  store ptr %47, ptr %__ptr_pu49, align 8, !dbg !5401
  %48 = load i16, ptr %__x51, align 2, !dbg !5401
  store i16 %48, ptr %__val_pu50, align 2, !dbg !5401
  %49 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5401
  %50 = load ptr, ptr %__ptr_pu49, align 8, !dbg !5401
  %51 = load i16, ptr %__val_pu50, align 2, !dbg !5401
  %52 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %50, i16 %51, i64 2, i64 %49) #15, !dbg !5401, !srcloc !5402
  %asmresult53 = extractvalue { ptr, i64 } %52, 0, !dbg !5401
  %asmresult54 = extractvalue { ptr, i64 } %52, 1, !dbg !5401
  %53 = ptrtoint ptr %asmresult53 to i64, !dbg !5401
  %54 = trunc i64 %53 to i32, !dbg !5401
  store i32 %54, ptr %__ret_pu48, align 4, !dbg !5401
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult54), !dbg !5401
  %55 = load ptr, ptr %__ptr52, align 8, !dbg !5403
  call void @kmsan_copy_to_user(ptr noundef %55, ptr noundef %__x51, i64 noundef 2, i64 noundef 0) #16, !dbg !5403
  %56 = load i32, ptr %__ret_pu48, align 4, !dbg !5401
  %conv56 = sext i32 %56 to i64, !dbg !5401
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5401
  store i64 %expval57, ptr %tmp55, align 8, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr52) #15, !dbg !5405
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x51) #15, !dbg !5405
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu50) #15, !dbg !5405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu49) #15, !dbg !5405
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu48) #15, !dbg !5405
  %57 = load i64, ptr %tmp55, align 8, !dbg !5401
  %58 = load ptr, ptr %buf.addr, align 8, !dbg !5406
  %add.ptr = getelementptr i8, ptr %58, i64 2, !dbg !5406
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !5406
  %59 = load i32, ptr %pos, align 4, !dbg !5407
  %add58 = add i32 %59, 2, !dbg !5407
  store i32 %add58, ptr %pos, align 4, !dbg !5407
  %60 = load i32, ptr %cnt, align 4, !dbg !5408
  %sub59 = sub i32 %60, 2, !dbg !5408
  store i32 %sub59, ptr %cnt, align 4, !dbg !5408
  call void @llvm.lifetime.end.p0(i64 2, ptr %val46) #15, !dbg !5409
  br label %if.end60, !dbg !5410

if.end60:                                         ; preds = %if.then45, %land.lhs.true42, %if.end39
  br label %while.cond, !dbg !5411

while.cond:                                       ; preds = %while.body, %if.end60
  %61 = load i32, ptr %cnt, align 4, !dbg !5412
  %cmp61 = icmp uge i32 %61, 4, !dbg !5413
  br i1 %cmp61, label %while.body, label %while.end, !dbg !5411

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %val63) #15, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %val63, metadata !5279, metadata !DIExpression()), !dbg !5415
  %62 = load ptr, ptr %dev, align 8, !dbg !5416
  %63 = load i32, ptr %pos, align 4, !dbg !5417
  %call64 = call i32 @pci_user_read_config_dword(ptr noundef %62, i32 noundef %63, ptr noundef %val63) #16, !dbg !5418
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu65) #15, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__ret_pu65, metadata !5281, metadata !DIExpression()), !dbg !5419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu66) #15, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu66, metadata !5283, metadata !DIExpression()), !dbg !5419
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu67) #15, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__val_pu67, metadata !5284, metadata !DIExpression()), !dbg !5419
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x68) #15, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__x68, metadata !5285, metadata !DIExpression()), !dbg !5419
  %64 = load i32, ptr %val63, align 4, !dbg !5419
  store i32 %64, ptr %__x68, align 4, !dbg !5419
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr69) #15, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__ptr69, metadata !5286, metadata !DIExpression()), !dbg !5419
  %65 = load ptr, ptr %buf.addr, align 8, !dbg !5419
  store ptr %65, ptr %__ptr69, align 8, !dbg !5419
  %66 = load ptr, ptr %__ptr69, align 8, !dbg !5419
  store ptr %66, ptr %__ptr_pu66, align 8, !dbg !5419
  %67 = load i32, ptr %__x68, align 4, !dbg !5419
  store i32 %67, ptr %__val_pu67, align 4, !dbg !5419
  %68 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5419
  %69 = load ptr, ptr %__ptr_pu66, align 8, !dbg !5419
  %70 = load i32, ptr %__val_pu67, align 4, !dbg !5419
  %71 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %69, i32 %70, i64 4, i64 %68) #15, !dbg !5419, !srcloc !5420
  %asmresult70 = extractvalue { ptr, i64 } %71, 0, !dbg !5419
  %asmresult71 = extractvalue { ptr, i64 } %71, 1, !dbg !5419
  %72 = ptrtoint ptr %asmresult70 to i64, !dbg !5419
  %73 = trunc i64 %72 to i32, !dbg !5419
  store i32 %73, ptr %__ret_pu65, align 4, !dbg !5419
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult71), !dbg !5419
  %74 = load ptr, ptr %__ptr69, align 8, !dbg !5421
  call void @kmsan_copy_to_user(ptr noundef %74, ptr noundef %__x68, i64 noundef 4, i64 noundef 0) #16, !dbg !5421
  %75 = load i32, ptr %__ret_pu65, align 4, !dbg !5419
  %conv73 = sext i32 %75 to i64, !dbg !5419
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !5419
  store i64 %expval74, ptr %tmp72, align 8, !dbg !5419
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr69) #15, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x68) #15, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu67) #15, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu66) #15, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu65) #15, !dbg !5423
  %76 = load i64, ptr %tmp72, align 8, !dbg !5419
  %77 = load ptr, ptr %buf.addr, align 8, !dbg !5424
  %add.ptr75 = getelementptr i8, ptr %77, i64 4, !dbg !5424
  store ptr %add.ptr75, ptr %buf.addr, align 8, !dbg !5424
  %78 = load i32, ptr %pos, align 4, !dbg !5425
  %add76 = add i32 %78, 4, !dbg !5425
  store i32 %add76, ptr %pos, align 4, !dbg !5425
  %79 = load i32, ptr %cnt, align 4, !dbg !5426
  %sub77 = sub i32 %79, 4, !dbg !5426
  store i32 %sub77, ptr %cnt, align 4, !dbg !5426
  call void @__might_resched(ptr noundef @.str.4, i32 noundef 86, i32 noundef 0) #16, !dbg !5427
  %call79 = call i32 @_cond_resched() #16, !dbg !5427
  store i32 %call79, ptr %tmp78, align 4, !dbg !5427
  %80 = load i32, ptr %tmp78, align 4, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 4, ptr %val63) #15, !dbg !5429
  br label %while.cond, !dbg !5411, !llvm.loop !5430

while.end:                                        ; preds = %while.cond
  %81 = load i32, ptr %cnt, align 4, !dbg !5431
  %cmp80 = icmp uge i32 %81, 2, !dbg !5432
  br i1 %cmp80, label %if.then82, label %if.end98, !dbg !5433

if.then82:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %val83) #15, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %val83, metadata !5287, metadata !DIExpression()), !dbg !5435
  %82 = load ptr, ptr %dev, align 8, !dbg !5436
  %83 = load i32, ptr %pos, align 4, !dbg !5437
  %call84 = call i32 @pci_user_read_config_word(ptr noundef %82, i32 noundef %83, ptr noundef %val83) #16, !dbg !5438
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu85) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__ret_pu85, metadata !5290, metadata !DIExpression()), !dbg !5439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu86) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu86, metadata !5292, metadata !DIExpression()), !dbg !5439
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu87) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__val_pu87, metadata !5293, metadata !DIExpression()), !dbg !5439
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x88) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__x88, metadata !5294, metadata !DIExpression()), !dbg !5439
  %84 = load i16, ptr %val83, align 2, !dbg !5439
  store i16 %84, ptr %__x88, align 2, !dbg !5439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr89) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__ptr89, metadata !5295, metadata !DIExpression()), !dbg !5439
  %85 = load ptr, ptr %buf.addr, align 8, !dbg !5439
  store ptr %85, ptr %__ptr89, align 8, !dbg !5439
  %86 = load ptr, ptr %__ptr89, align 8, !dbg !5439
  store ptr %86, ptr %__ptr_pu86, align 8, !dbg !5439
  %87 = load i16, ptr %__x88, align 2, !dbg !5439
  store i16 %87, ptr %__val_pu87, align 2, !dbg !5439
  %88 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5439
  %89 = load ptr, ptr %__ptr_pu86, align 8, !dbg !5439
  %90 = load i16, ptr %__val_pu87, align 2, !dbg !5439
  %91 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %89, i16 %90, i64 2, i64 %88) #15, !dbg !5439, !srcloc !5440
  %asmresult90 = extractvalue { ptr, i64 } %91, 0, !dbg !5439
  %asmresult91 = extractvalue { ptr, i64 } %91, 1, !dbg !5439
  %92 = ptrtoint ptr %asmresult90 to i64, !dbg !5439
  %93 = trunc i64 %92 to i32, !dbg !5439
  store i32 %93, ptr %__ret_pu85, align 4, !dbg !5439
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult91), !dbg !5439
  %94 = load ptr, ptr %__ptr89, align 8, !dbg !5441
  call void @kmsan_copy_to_user(ptr noundef %94, ptr noundef %__x88, i64 noundef 2, i64 noundef 0) #16, !dbg !5441
  %95 = load i32, ptr %__ret_pu85, align 4, !dbg !5439
  %conv93 = sext i32 %95 to i64, !dbg !5439
  %expval94 = call i64 @llvm.expect.i64(i64 %conv93, i64 0), !dbg !5439
  store i64 %expval94, ptr %tmp92, align 8, !dbg !5439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr89) #15, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x88) #15, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu87) #15, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu86) #15, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu85) #15, !dbg !5443
  %96 = load i64, ptr %tmp92, align 8, !dbg !5439
  %97 = load ptr, ptr %buf.addr, align 8, !dbg !5444
  %add.ptr95 = getelementptr i8, ptr %97, i64 2, !dbg !5444
  store ptr %add.ptr95, ptr %buf.addr, align 8, !dbg !5444
  %98 = load i32, ptr %pos, align 4, !dbg !5445
  %add96 = add i32 %98, 2, !dbg !5445
  store i32 %add96, ptr %pos, align 4, !dbg !5445
  %99 = load i32, ptr %cnt, align 4, !dbg !5446
  %sub97 = sub i32 %99, 2, !dbg !5446
  store i32 %sub97, ptr %cnt, align 4, !dbg !5446
  call void @llvm.lifetime.end.p0(i64 2, ptr %val83) #15, !dbg !5447
  br label %if.end98, !dbg !5448

if.end98:                                         ; preds = %if.then82, %while.end
  %100 = load i32, ptr %cnt, align 4, !dbg !5449
  %tobool99 = icmp ne i32 %100, 0, !dbg !5449
  br i1 %tobool99, label %if.then100, label %if.end114, !dbg !5450

if.then100:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 1, ptr %val101) #15, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %val101, metadata !5296, metadata !DIExpression()), !dbg !5452
  %101 = load ptr, ptr %dev, align 8, !dbg !5453
  %102 = load i32, ptr %pos, align 4, !dbg !5454
  %call102 = call i32 @pci_user_read_config_byte(ptr noundef %101, i32 noundef %102, ptr noundef %val101) #16, !dbg !5455
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu103) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__ret_pu103, metadata !5299, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu104) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu104, metadata !5301, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 1, ptr %__val_pu105) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__val_pu105, metadata !5302, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 1, ptr %__x106) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__x106, metadata !5303, metadata !DIExpression()), !dbg !5456
  %103 = load i8, ptr %val101, align 1, !dbg !5456
  store i8 %103, ptr %__x106, align 1, !dbg !5456
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr107) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__ptr107, metadata !5304, metadata !DIExpression()), !dbg !5456
  %104 = load ptr, ptr %buf.addr, align 8, !dbg !5456
  store ptr %104, ptr %__ptr107, align 8, !dbg !5456
  %105 = load ptr, ptr %__ptr107, align 8, !dbg !5456
  store ptr %105, ptr %__ptr_pu104, align 8, !dbg !5456
  %106 = load i8, ptr %__x106, align 1, !dbg !5456
  store i8 %106, ptr %__val_pu105, align 1, !dbg !5456
  %107 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5456
  %108 = load ptr, ptr %__ptr_pu104, align 8, !dbg !5456
  %109 = load i8, ptr %__val_pu105, align 1, !dbg !5456
  %110 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %108, i8 %109, i64 1, i64 %107) #15, !dbg !5456, !srcloc !5457
  %asmresult108 = extractvalue { ptr, i64 } %110, 0, !dbg !5456
  %asmresult109 = extractvalue { ptr, i64 } %110, 1, !dbg !5456
  %111 = ptrtoint ptr %asmresult108 to i64, !dbg !5456
  %112 = trunc i64 %111 to i32, !dbg !5456
  store i32 %112, ptr %__ret_pu103, align 4, !dbg !5456
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult109), !dbg !5456
  %113 = load ptr, ptr %__ptr107, align 8, !dbg !5458
  call void @kmsan_copy_to_user(ptr noundef %113, ptr noundef %__x106, i64 noundef 1, i64 noundef 0) #16, !dbg !5458
  %114 = load i32, ptr %__ret_pu103, align 4, !dbg !5456
  %conv111 = sext i32 %114 to i64, !dbg !5456
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0), !dbg !5456
  store i64 %expval112, ptr %tmp110, align 8, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr107) #15, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 1, ptr %__x106) #15, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 1, ptr %__val_pu105) #15, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu104) #15, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu103) #15, !dbg !5460
  %115 = load i64, ptr %tmp110, align 8, !dbg !5456
  %116 = load i32, ptr %pos, align 4, !dbg !5461
  %inc113 = add i32 %116, 1, !dbg !5461
  store i32 %inc113, ptr %pos, align 4, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 1, ptr %val101) #15, !dbg !5462
  br label %if.end114, !dbg !5463

if.end114:                                        ; preds = %if.then100, %if.end98
  %117 = load ptr, ptr %dev, align 8, !dbg !5464
  call void @pci_config_pm_runtime_put(ptr noundef %117) #16, !dbg !5465
  %118 = load i32, ptr %pos, align 4, !dbg !5466
  %conv115 = zext i32 %118 to i64, !dbg !5466
  %119 = load ptr, ptr %ppos.addr, align 8, !dbg !5467
  store i64 %conv115, ptr %119, align 8, !dbg !5468
  %120 = load i64, ptr %nbytes.addr, align 8, !dbg !5469
  store i64 %120, ptr %retval, align 8, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5470

cleanup:                                          ; preds = %if.end114, %if.then30, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #15, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #15, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5471
  %121 = load i64, ptr %retval, align 8, !dbg !5471
  ret i64 %121, !dbg !5471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_bus_pci_write(ptr noundef %file, ptr noundef %buf, i64 noundef %nbytes, ptr noundef %ppos) #0 align 16 !dbg !5472 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %pos = alloca i32, align 4
  %size = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %val = alloca i8, align 1
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i8, align 1
  %__tmp = alloca i64, align 8
  %tmp = alloca i8, align 1
  %tmp35 = alloca i64, align 8
  %val46 = alloca i16, align 2
  %__ret_gu47 = alloca i32, align 4
  %__val_gu48 = alloca i16, align 2
  %__tmp52 = alloca i64, align 8
  %tmp54 = alloca i16, align 2
  %tmp56 = alloca i64, align 8
  %val65 = alloca i32, align 4
  %__ret_gu66 = alloca i32, align 4
  %__val_gu67 = alloca i32, align 4
  %__tmp71 = alloca i64, align 8
  %tmp73 = alloca i32, align 4
  %tmp75 = alloca i64, align 8
  %val85 = alloca i16, align 2
  %__ret_gu86 = alloca i32, align 4
  %__val_gu87 = alloca i16, align 2
  %__tmp91 = alloca i64, align 8
  %tmp93 = alloca i16, align 2
  %tmp95 = alloca i64, align 8
  %val105 = alloca i8, align 1
  %__ret_gu106 = alloca i32, align 4
  %__val_gu107 = alloca i8, align 1
  %__tmp111 = alloca i64, align 8
  %tmp113 = alloca i8, align 1
  %tmp115 = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5474, metadata !DIExpression()), !dbg !5523
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5475, metadata !DIExpression()), !dbg !5524
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !5476, metadata !DIExpression()), !dbg !5525
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5477, metadata !DIExpression()), !dbg !5526
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #15, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !5478, metadata !DIExpression()), !dbg !5528
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5529
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !5530
  store ptr %call, ptr %ino, align 8, !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5479, metadata !DIExpression()), !dbg !5532
  %1 = load ptr, ptr %ino, align 8, !dbg !5533
  %call1 = call ptr @pde_data(ptr noundef %1) #16, !dbg !5534
  store ptr %call1, ptr %dev, align 8, !dbg !5532
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #15, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5480, metadata !DIExpression()), !dbg !5536
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !5537
  %3 = load i64, ptr %2, align 8, !dbg !5538
  %conv = trunc i64 %3 to i32, !dbg !5538
  store i32 %conv, ptr %pos, align 4, !dbg !5536
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5481, metadata !DIExpression()), !dbg !5540
  %4 = load ptr, ptr %dev, align 8, !dbg !5541
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 38, !dbg !5542
  %5 = load i32, ptr %cfg_size, align 8, !dbg !5542
  store i32 %5, ptr %size, align 4, !dbg !5540
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #15, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5482, metadata !DIExpression()), !dbg !5544
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5483, metadata !DIExpression()), !dbg !5545
  %call2 = call i32 @security_locked_down(i32 noundef 6) #16, !dbg !5546
  store i32 %call2, ptr %ret, align 4, !dbg !5547
  %6 = load i32, ptr %ret, align 4, !dbg !5548
  %tobool = icmp ne i32 %6, 0, !dbg !5548
  br i1 %tobool, label %if.then, label %if.end, !dbg !5550

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %ret, align 4, !dbg !5551
  %conv3 = sext i32 %7 to i64, !dbg !5551
  store i64 %conv3, ptr %retval, align 8, !dbg !5552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5552

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %pos, align 4, !dbg !5553
  %9 = load i32, ptr %size, align 4, !dbg !5555
  %cmp = icmp sge i32 %8, %9, !dbg !5556
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5557

if.then5:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5558

if.end6:                                          ; preds = %if.end
  %10 = load i64, ptr %nbytes.addr, align 8, !dbg !5559
  %11 = load i32, ptr %size, align 4, !dbg !5561
  %conv7 = sext i32 %11 to i64, !dbg !5561
  %cmp8 = icmp uge i64 %10, %conv7, !dbg !5562
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !5563

if.then10:                                        ; preds = %if.end6
  %12 = load i32, ptr %size, align 4, !dbg !5564
  %conv11 = sext i32 %12 to i64, !dbg !5564
  store i64 %conv11, ptr %nbytes.addr, align 8, !dbg !5565
  br label %if.end12, !dbg !5566

if.end12:                                         ; preds = %if.then10, %if.end6
  %13 = load i32, ptr %pos, align 4, !dbg !5567
  %conv13 = sext i32 %13 to i64, !dbg !5567
  %14 = load i64, ptr %nbytes.addr, align 8, !dbg !5569
  %add = add i64 %conv13, %14, !dbg !5570
  %15 = load i32, ptr %size, align 4, !dbg !5571
  %conv14 = sext i32 %15 to i64, !dbg !5571
  %cmp15 = icmp ugt i64 %add, %conv14, !dbg !5572
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !5573

if.then17:                                        ; preds = %if.end12
  %16 = load i32, ptr %size, align 4, !dbg !5574
  %17 = load i32, ptr %pos, align 4, !dbg !5575
  %sub = sub i32 %16, %17, !dbg !5576
  %conv18 = sext i32 %sub to i64, !dbg !5574
  store i64 %conv18, ptr %nbytes.addr, align 8, !dbg !5577
  br label %if.end19, !dbg !5578

if.end19:                                         ; preds = %if.then17, %if.end12
  %18 = load i64, ptr %nbytes.addr, align 8, !dbg !5579
  %conv20 = trunc i64 %18 to i32, !dbg !5579
  store i32 %conv20, ptr %cnt, align 4, !dbg !5580
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !5581
  %20 = load i32, ptr %cnt, align 4, !dbg !5581
  %conv21 = sext i32 %20 to i64, !dbg !5581
  %call22 = call zeroext i1 @__access_ok(ptr noundef %19, i64 noundef %conv21) #16, !dbg !5581
  %lnot = xor i1 %call22, true, !dbg !5581
  %lnot23 = xor i1 %lnot, true, !dbg !5581
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !5581
  %conv24 = sext i32 %lnot.ext to i64, !dbg !5581
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !5581
  %tobool25 = icmp ne i64 %expval, 0, !dbg !5581
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5583

if.then26:                                        ; preds = %if.end19
  store i64 -22, ptr %retval, align 8, !dbg !5584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5584

if.end27:                                         ; preds = %if.end19
  %21 = load ptr, ptr %dev, align 8, !dbg !5585
  call void @pci_config_pm_runtime_get(ptr noundef %21) #16, !dbg !5586
  %22 = load i32, ptr %pos, align 4, !dbg !5587
  %and = and i32 %22, 1, !dbg !5588
  %tobool28 = icmp ne i32 %and, 0, !dbg !5588
  br i1 %tobool28, label %land.lhs.true, label %if.end39, !dbg !5589

land.lhs.true:                                    ; preds = %if.end27
  %23 = load i32, ptr %cnt, align 4, !dbg !5590
  %tobool29 = icmp ne i32 %23, 0, !dbg !5590
  br i1 %tobool29, label %if.then30, label %if.end39, !dbg !5591

if.then30:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #15, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5484, metadata !DIExpression()), !dbg !5593
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #15, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5487, metadata !DIExpression()), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 1, ptr %__val_gu) #15, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5489, metadata !DIExpression()), !dbg !5594
  %24 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5594
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !5594
  %26 = call { ptr, i8, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %25, i64 1, i64 %24) #15, !dbg !5594, !srcloc !5595
  %asmresult = extractvalue { ptr, i8, i64 } %26, 0, !dbg !5594
  %asmresult31 = extractvalue { ptr, i8, i64 } %26, 1, !dbg !5594
  %asmresult32 = extractvalue { ptr, i8, i64 } %26, 2, !dbg !5594
  %27 = ptrtoint ptr %asmresult to i64, !dbg !5594
  %28 = trunc i64 %27 to i32, !dbg !5594
  store i32 %28, ptr %__ret_gu, align 4, !dbg !5594
  store i8 %asmresult31, ptr %__val_gu, align 1, !dbg !5594
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult32), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !5596
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5490, metadata !DIExpression()), !dbg !5596
  %29 = load i8, ptr %__val_gu, align 1, !dbg !5596
  %conv33 = zext i8 %29 to i64, !dbg !5596
  store i64 %conv33, ptr %__tmp, align 8, !dbg !5596
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !5596
  %30 = load i64, ptr %__tmp, align 8, !dbg !5596
  %conv34 = trunc i64 %30 to i8, !dbg !5596
  store i8 %conv34, ptr %__val_gu, align 1, !dbg !5596
  store i8 %conv34, ptr %tmp, align 1, !dbg !5596
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !5594
  %31 = load i8, ptr %tmp, align 1, !dbg !5596
  %32 = load i8, ptr %__val_gu, align 1, !dbg !5594
  store i8 %32, ptr %val, align 1, !dbg !5594
  %33 = load i32, ptr %__ret_gu, align 4, !dbg !5594
  %conv36 = sext i32 %33 to i64, !dbg !5594
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !5594
  store i64 %expval37, ptr %tmp35, align 8, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 1, ptr %__val_gu) #15, !dbg !5597
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #15, !dbg !5597
  %34 = load i64, ptr %tmp35, align 8, !dbg !5594
  %35 = load ptr, ptr %dev, align 8, !dbg !5598
  %36 = load i32, ptr %pos, align 4, !dbg !5599
  %37 = load i8, ptr %val, align 1, !dbg !5600
  %call38 = call i32 @pci_user_write_config_byte(ptr noundef %35, i32 noundef %36, i8 noundef zeroext %37) #16, !dbg !5601
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !5602
  %incdec.ptr = getelementptr i8, ptr %38, i32 1, !dbg !5602
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !5602
  %39 = load i32, ptr %pos, align 4, !dbg !5603
  %inc = add i32 %39, 1, !dbg !5603
  store i32 %inc, ptr %pos, align 4, !dbg !5603
  %40 = load i32, ptr %cnt, align 4, !dbg !5604
  %dec = add i32 %40, -1, !dbg !5604
  store i32 %dec, ptr %cnt, align 4, !dbg !5604
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #15, !dbg !5605
  br label %if.end39, !dbg !5606

if.end39:                                         ; preds = %if.then30, %land.lhs.true, %if.end27
  %41 = load i32, ptr %pos, align 4, !dbg !5607
  %and40 = and i32 %41, 3, !dbg !5608
  %tobool41 = icmp ne i32 %and40, 0, !dbg !5608
  br i1 %tobool41, label %land.lhs.true42, label %if.end62, !dbg !5609

land.lhs.true42:                                  ; preds = %if.end39
  %42 = load i32, ptr %cnt, align 4, !dbg !5610
  %cmp43 = icmp sgt i32 %42, 2, !dbg !5611
  br i1 %cmp43, label %if.then45, label %if.end62, !dbg !5612

if.then45:                                        ; preds = %land.lhs.true42
  call void @llvm.lifetime.start.p0(i64 2, ptr %val46) #15, !dbg !5613
  call void @llvm.dbg.declare(metadata ptr %val46, metadata !5492, metadata !DIExpression()), !dbg !5614
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu47) #15, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %__ret_gu47, metadata !5495, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_gu48) #15, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %__val_gu48, metadata !5497, metadata !DIExpression()), !dbg !5615
  %43 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5615
  %44 = load ptr, ptr %buf.addr, align 8, !dbg !5615
  %45 = call { ptr, i16, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %44, i64 2, i64 %43) #15, !dbg !5615, !srcloc !5616
  %asmresult49 = extractvalue { ptr, i16, i64 } %45, 0, !dbg !5615
  %asmresult50 = extractvalue { ptr, i16, i64 } %45, 1, !dbg !5615
  %asmresult51 = extractvalue { ptr, i16, i64 } %45, 2, !dbg !5615
  %46 = ptrtoint ptr %asmresult49 to i64, !dbg !5615
  %47 = trunc i64 %46 to i32, !dbg !5615
  store i32 %47, ptr %__ret_gu47, align 4, !dbg !5615
  store i16 %asmresult50, ptr %__val_gu48, align 2, !dbg !5615
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult51), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp52) #15, !dbg !5617
  call void @llvm.dbg.declare(metadata ptr %__tmp52, metadata !5498, metadata !DIExpression()), !dbg !5617
  %48 = load i16, ptr %__val_gu48, align 2, !dbg !5617
  %conv53 = zext i16 %48 to i64, !dbg !5617
  store i64 %conv53, ptr %__tmp52, align 8, !dbg !5617
  call void @kmsan_unpoison_memory(ptr noundef %__tmp52, i64 noundef 8) #16, !dbg !5617
  %49 = load i64, ptr %__tmp52, align 8, !dbg !5617
  %conv55 = trunc i64 %49 to i16, !dbg !5617
  store i16 %conv55, ptr %__val_gu48, align 2, !dbg !5617
  store i16 %conv55, ptr %tmp54, align 2, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp52) #15, !dbg !5615
  %50 = load i16, ptr %tmp54, align 2, !dbg !5617
  %51 = load i16, ptr %__val_gu48, align 2, !dbg !5615
  store i16 %51, ptr %val46, align 2, !dbg !5615
  %52 = load i32, ptr %__ret_gu47, align 4, !dbg !5615
  %conv57 = sext i32 %52 to i64, !dbg !5615
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !5615
  store i64 %expval58, ptr %tmp56, align 8, !dbg !5615
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_gu48) #15, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu47) #15, !dbg !5618
  %53 = load i64, ptr %tmp56, align 8, !dbg !5615
  %54 = load ptr, ptr %dev, align 8, !dbg !5619
  %55 = load i32, ptr %pos, align 4, !dbg !5620
  %56 = load i16, ptr %val46, align 2, !dbg !5621
  %call59 = call i32 @pci_user_write_config_word(ptr noundef %54, i32 noundef %55, i16 noundef zeroext %56) #16, !dbg !5622
  %57 = load ptr, ptr %buf.addr, align 8, !dbg !5623
  %add.ptr = getelementptr i8, ptr %57, i64 2, !dbg !5623
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !5623
  %58 = load i32, ptr %pos, align 4, !dbg !5624
  %add60 = add i32 %58, 2, !dbg !5624
  store i32 %add60, ptr %pos, align 4, !dbg !5624
  %59 = load i32, ptr %cnt, align 4, !dbg !5625
  %sub61 = sub i32 %59, 2, !dbg !5625
  store i32 %sub61, ptr %cnt, align 4, !dbg !5625
  call void @llvm.lifetime.end.p0(i64 2, ptr %val46) #15, !dbg !5626
  br label %if.end62, !dbg !5627

if.end62:                                         ; preds = %if.then45, %land.lhs.true42, %if.end39
  br label %while.cond, !dbg !5628

while.cond:                                       ; preds = %while.body, %if.end62
  %60 = load i32, ptr %cnt, align 4, !dbg !5629
  %cmp63 = icmp sge i32 %60, 4, !dbg !5630
  br i1 %cmp63, label %while.body, label %while.end, !dbg !5628

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %val65) #15, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %val65, metadata !5500, metadata !DIExpression()), !dbg !5632
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu66) #15, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %__ret_gu66, metadata !5502, metadata !DIExpression()), !dbg !5633
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu67) #15, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %__val_gu67, metadata !5504, metadata !DIExpression()), !dbg !5633
  %61 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5633
  %62 = load ptr, ptr %buf.addr, align 8, !dbg !5633
  %63 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %62, i64 4, i64 %61) #15, !dbg !5633, !srcloc !5634
  %asmresult68 = extractvalue { ptr, i32, i64 } %63, 0, !dbg !5633
  %asmresult69 = extractvalue { ptr, i32, i64 } %63, 1, !dbg !5633
  %asmresult70 = extractvalue { ptr, i32, i64 } %63, 2, !dbg !5633
  %64 = ptrtoint ptr %asmresult68 to i64, !dbg !5633
  %65 = trunc i64 %64 to i32, !dbg !5633
  store i32 %65, ptr %__ret_gu66, align 4, !dbg !5633
  store i32 %asmresult69, ptr %__val_gu67, align 4, !dbg !5633
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult70), !dbg !5633
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp71) #15, !dbg !5635
  call void @llvm.dbg.declare(metadata ptr %__tmp71, metadata !5505, metadata !DIExpression()), !dbg !5635
  %66 = load i32, ptr %__val_gu67, align 4, !dbg !5635
  %conv72 = zext i32 %66 to i64, !dbg !5635
  store i64 %conv72, ptr %__tmp71, align 8, !dbg !5635
  call void @kmsan_unpoison_memory(ptr noundef %__tmp71, i64 noundef 8) #16, !dbg !5635
  %67 = load i64, ptr %__tmp71, align 8, !dbg !5635
  %conv74 = trunc i64 %67 to i32, !dbg !5635
  store i32 %conv74, ptr %__val_gu67, align 4, !dbg !5635
  store i32 %conv74, ptr %tmp73, align 4, !dbg !5635
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp71) #15, !dbg !5633
  %68 = load i32, ptr %tmp73, align 4, !dbg !5635
  %69 = load i32, ptr %__val_gu67, align 4, !dbg !5633
  store i32 %69, ptr %val65, align 4, !dbg !5633
  %70 = load i32, ptr %__ret_gu66, align 4, !dbg !5633
  %conv76 = sext i32 %70 to i64, !dbg !5633
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 0), !dbg !5633
  store i64 %expval77, ptr %tmp75, align 8, !dbg !5633
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu67) #15, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu66) #15, !dbg !5636
  %71 = load i64, ptr %tmp75, align 8, !dbg !5633
  %72 = load ptr, ptr %dev, align 8, !dbg !5637
  %73 = load i32, ptr %pos, align 4, !dbg !5638
  %74 = load i32, ptr %val65, align 4, !dbg !5639
  %call78 = call i32 @pci_user_write_config_dword(ptr noundef %72, i32 noundef %73, i32 noundef %74) #16, !dbg !5640
  %75 = load ptr, ptr %buf.addr, align 8, !dbg !5641
  %add.ptr79 = getelementptr i8, ptr %75, i64 4, !dbg !5641
  store ptr %add.ptr79, ptr %buf.addr, align 8, !dbg !5641
  %76 = load i32, ptr %pos, align 4, !dbg !5642
  %add80 = add i32 %76, 4, !dbg !5642
  store i32 %add80, ptr %pos, align 4, !dbg !5642
  %77 = load i32, ptr %cnt, align 4, !dbg !5643
  %sub81 = sub i32 %77, 4, !dbg !5643
  store i32 %sub81, ptr %cnt, align 4, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 4, ptr %val65) #15, !dbg !5644
  br label %while.cond, !dbg !5628, !llvm.loop !5645

while.end:                                        ; preds = %while.cond
  %78 = load i32, ptr %cnt, align 4, !dbg !5646
  %cmp82 = icmp sge i32 %78, 2, !dbg !5647
  br i1 %cmp82, label %if.then84, label %if.end102, !dbg !5648

if.then84:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %val85) #15, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %val85, metadata !5507, metadata !DIExpression()), !dbg !5650
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu86) #15, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %__ret_gu86, metadata !5510, metadata !DIExpression()), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_gu87) #15, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %__val_gu87, metadata !5512, metadata !DIExpression()), !dbg !5651
  %79 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5651
  %80 = load ptr, ptr %buf.addr, align 8, !dbg !5651
  %81 = call { ptr, i16, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %80, i64 2, i64 %79) #15, !dbg !5651, !srcloc !5652
  %asmresult88 = extractvalue { ptr, i16, i64 } %81, 0, !dbg !5651
  %asmresult89 = extractvalue { ptr, i16, i64 } %81, 1, !dbg !5651
  %asmresult90 = extractvalue { ptr, i16, i64 } %81, 2, !dbg !5651
  %82 = ptrtoint ptr %asmresult88 to i64, !dbg !5651
  %83 = trunc i64 %82 to i32, !dbg !5651
  store i32 %83, ptr %__ret_gu86, align 4, !dbg !5651
  store i16 %asmresult89, ptr %__val_gu87, align 2, !dbg !5651
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult90), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp91) #15, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %__tmp91, metadata !5513, metadata !DIExpression()), !dbg !5653
  %84 = load i16, ptr %__val_gu87, align 2, !dbg !5653
  %conv92 = zext i16 %84 to i64, !dbg !5653
  store i64 %conv92, ptr %__tmp91, align 8, !dbg !5653
  call void @kmsan_unpoison_memory(ptr noundef %__tmp91, i64 noundef 8) #16, !dbg !5653
  %85 = load i64, ptr %__tmp91, align 8, !dbg !5653
  %conv94 = trunc i64 %85 to i16, !dbg !5653
  store i16 %conv94, ptr %__val_gu87, align 2, !dbg !5653
  store i16 %conv94, ptr %tmp93, align 2, !dbg !5653
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp91) #15, !dbg !5651
  %86 = load i16, ptr %tmp93, align 2, !dbg !5653
  %87 = load i16, ptr %__val_gu87, align 2, !dbg !5651
  store i16 %87, ptr %val85, align 2, !dbg !5651
  %88 = load i32, ptr %__ret_gu86, align 4, !dbg !5651
  %conv96 = sext i32 %88 to i64, !dbg !5651
  %expval97 = call i64 @llvm.expect.i64(i64 %conv96, i64 0), !dbg !5651
  store i64 %expval97, ptr %tmp95, align 8, !dbg !5651
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_gu87) #15, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu86) #15, !dbg !5654
  %89 = load i64, ptr %tmp95, align 8, !dbg !5651
  %90 = load ptr, ptr %dev, align 8, !dbg !5655
  %91 = load i32, ptr %pos, align 4, !dbg !5656
  %92 = load i16, ptr %val85, align 2, !dbg !5657
  %call98 = call i32 @pci_user_write_config_word(ptr noundef %90, i32 noundef %91, i16 noundef zeroext %92) #16, !dbg !5658
  %93 = load ptr, ptr %buf.addr, align 8, !dbg !5659
  %add.ptr99 = getelementptr i8, ptr %93, i64 2, !dbg !5659
  store ptr %add.ptr99, ptr %buf.addr, align 8, !dbg !5659
  %94 = load i32, ptr %pos, align 4, !dbg !5660
  %add100 = add i32 %94, 2, !dbg !5660
  store i32 %add100, ptr %pos, align 4, !dbg !5660
  %95 = load i32, ptr %cnt, align 4, !dbg !5661
  %sub101 = sub i32 %95, 2, !dbg !5661
  store i32 %sub101, ptr %cnt, align 4, !dbg !5661
  call void @llvm.lifetime.end.p0(i64 2, ptr %val85) #15, !dbg !5662
  br label %if.end102, !dbg !5663

if.end102:                                        ; preds = %if.then84, %while.end
  %96 = load i32, ptr %cnt, align 4, !dbg !5664
  %tobool103 = icmp ne i32 %96, 0, !dbg !5664
  br i1 %tobool103, label %if.then104, label %if.end120, !dbg !5665

if.then104:                                       ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 1, ptr %val105) #15, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %val105, metadata !5515, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu106) #15, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %__ret_gu106, metadata !5518, metadata !DIExpression()), !dbg !5668
  call void @llvm.lifetime.start.p0(i64 1, ptr %__val_gu107) #15, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %__val_gu107, metadata !5520, metadata !DIExpression()), !dbg !5668
  %97 = call i64 @llvm.read_register.i64(metadata !4244), !dbg !5668
  %98 = load ptr, ptr %buf.addr, align 8, !dbg !5668
  %99 = call { ptr, i8, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %98, i64 1, i64 %97) #15, !dbg !5668, !srcloc !5669
  %asmresult108 = extractvalue { ptr, i8, i64 } %99, 0, !dbg !5668
  %asmresult109 = extractvalue { ptr, i8, i64 } %99, 1, !dbg !5668
  %asmresult110 = extractvalue { ptr, i8, i64 } %99, 2, !dbg !5668
  %100 = ptrtoint ptr %asmresult108 to i64, !dbg !5668
  %101 = trunc i64 %100 to i32, !dbg !5668
  store i32 %101, ptr %__ret_gu106, align 4, !dbg !5668
  store i8 %asmresult109, ptr %__val_gu107, align 1, !dbg !5668
  call void @llvm.write_register.i64(metadata !4244, i64 %asmresult110), !dbg !5668
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp111) #15, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %__tmp111, metadata !5521, metadata !DIExpression()), !dbg !5670
  %102 = load i8, ptr %__val_gu107, align 1, !dbg !5670
  %conv112 = zext i8 %102 to i64, !dbg !5670
  store i64 %conv112, ptr %__tmp111, align 8, !dbg !5670
  call void @kmsan_unpoison_memory(ptr noundef %__tmp111, i64 noundef 8) #16, !dbg !5670
  %103 = load i64, ptr %__tmp111, align 8, !dbg !5670
  %conv114 = trunc i64 %103 to i8, !dbg !5670
  store i8 %conv114, ptr %__val_gu107, align 1, !dbg !5670
  store i8 %conv114, ptr %tmp113, align 1, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp111) #15, !dbg !5668
  %104 = load i8, ptr %tmp113, align 1, !dbg !5670
  %105 = load i8, ptr %__val_gu107, align 1, !dbg !5668
  store i8 %105, ptr %val105, align 1, !dbg !5668
  %106 = load i32, ptr %__ret_gu106, align 4, !dbg !5668
  %conv116 = sext i32 %106 to i64, !dbg !5668
  %expval117 = call i64 @llvm.expect.i64(i64 %conv116, i64 0), !dbg !5668
  store i64 %expval117, ptr %tmp115, align 8, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 1, ptr %__val_gu107) #15, !dbg !5671
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu106) #15, !dbg !5671
  %107 = load i64, ptr %tmp115, align 8, !dbg !5668
  %108 = load ptr, ptr %dev, align 8, !dbg !5672
  %109 = load i32, ptr %pos, align 4, !dbg !5673
  %110 = load i8, ptr %val105, align 1, !dbg !5674
  %call118 = call i32 @pci_user_write_config_byte(ptr noundef %108, i32 noundef %109, i8 noundef zeroext %110) #16, !dbg !5675
  %111 = load i32, ptr %pos, align 4, !dbg !5676
  %inc119 = add i32 %111, 1, !dbg !5676
  store i32 %inc119, ptr %pos, align 4, !dbg !5676
  call void @llvm.lifetime.end.p0(i64 1, ptr %val105) #15, !dbg !5677
  br label %if.end120, !dbg !5678

if.end120:                                        ; preds = %if.then104, %if.end102
  %112 = load ptr, ptr %dev, align 8, !dbg !5679
  call void @pci_config_pm_runtime_put(ptr noundef %112) #16, !dbg !5680
  %113 = load i32, ptr %pos, align 4, !dbg !5681
  %conv121 = sext i32 %113 to i64, !dbg !5681
  %114 = load ptr, ptr %ppos.addr, align 8, !dbg !5682
  store i64 %conv121, ptr %114, align 8, !dbg !5683
  %115 = load ptr, ptr %ino, align 8, !dbg !5684
  %116 = load ptr, ptr %dev, align 8, !dbg !5685
  %cfg_size122 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 38, !dbg !5686
  %117 = load i32, ptr %cfg_size122, align 8, !dbg !5686
  %conv123 = sext i32 %117 to i64, !dbg !5685
  call void @i_size_write(ptr noundef %115, i64 noundef %conv123) #16, !dbg !5687
  %118 = load i64, ptr %nbytes.addr, align 8, !dbg !5688
  store i64 %118, ptr %retval, align 8, !dbg !5689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5689

cleanup:                                          ; preds = %if.end120, %if.then26, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #15, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #15, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5690
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #15, !dbg !5690
  %119 = load i64, ptr %retval, align 8, !dbg !5690
  ret i64 %119, !dbg !5690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_bus_pci_lseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence) #0 align 16 !dbg !5691 {
entry:
  %file.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5693, metadata !DIExpression()), !dbg !5697
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5694, metadata !DIExpression()), !dbg !5698
  store i32 %whence, ptr %whence.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %whence.addr, metadata !5695, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5696, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5702
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !5703
  %call1 = call ptr @pde_data(ptr noundef %call) #16, !dbg !5704
  store ptr %call1, ptr %dev, align 8, !dbg !5701
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5705
  %2 = load i64, ptr %off.addr, align 8, !dbg !5706
  %3 = load i32, ptr %whence.addr, align 4, !dbg !5707
  %4 = load ptr, ptr %dev, align 8, !dbg !5708
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 38, !dbg !5709
  %5 = load i32, ptr %cfg_size, align 8, !dbg !5709
  %conv = sext i32 %5 to i64, !dbg !5708
  %call2 = call i64 @fixed_size_llseek(ptr noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %conv) #16, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5711
  ret i64 %call2, !dbg !5712
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_bus_pci_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5713 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5715, metadata !DIExpression()), !dbg !5717
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5716, metadata !DIExpression()), !dbg !5718
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5719
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5720
  %1 = load ptr, ptr %private_data, align 8, !dbg !5720
  call void @kfree(ptr noundef %1) #16, !dbg !5721
  %2 = load ptr, ptr %file.addr, align 8, !dbg !5722
  %private_data1 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15, !dbg !5723
  store ptr null, ptr %private_data1, align 8, !dbg !5724
  ret i32 0, !dbg !5725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_bus_pci_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5726 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %fpriv = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5728, metadata !DIExpression()), !dbg !5734
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5729, metadata !DIExpression()), !dbg !5735
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5730, metadata !DIExpression()), !dbg !5736
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5731, metadata !DIExpression()), !dbg !5738
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5739
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !5740
  %call1 = call ptr @pde_data(ptr noundef %call) #16, !dbg !5741
  store ptr %call1, ptr %dev, align 8, !dbg !5738
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpriv) #15, !dbg !5742
  call void @llvm.dbg.declare(metadata ptr %fpriv, metadata !5732, metadata !DIExpression()), !dbg !5743
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5744
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !5745
  %2 = load ptr, ptr %private_data, align 8, !dbg !5745
  store ptr %2, ptr %fpriv, align 8, !dbg !5743
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5746
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5733, metadata !DIExpression()), !dbg !5747
  store i32 0, ptr %ret, align 4, !dbg !5747
  %call2 = call i32 @security_locked_down(i32 noundef 6) #16, !dbg !5748
  store i32 %call2, ptr %ret, align 4, !dbg !5749
  %3 = load i32, ptr %ret, align 4, !dbg !5750
  %tobool = icmp ne i32 %3, 0, !dbg !5750
  br i1 %tobool, label %if.then, label %if.end, !dbg !5752

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !5753
  %conv = sext i32 %4 to i64, !dbg !5753
  store i64 %conv, ptr %retval, align 8, !dbg !5754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5754

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5755
  switch i32 %5, label %sw.default [
    i32 1346586880, label %sw.bb
    i32 1346586881, label %sw.bb4
    i32 1346586882, label %sw.bb5
    i32 1346586883, label %sw.bb6
  ], !dbg !5756

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %dev, align 8, !dbg !5757
  %bus = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1, !dbg !5759
  %7 = load ptr, ptr %bus, align 8, !dbg !5759
  %call3 = call i32 @pci_domain_nr(ptr noundef %7) #16, !dbg !5760
  store i32 %call3, ptr %ret, align 4, !dbg !5761
  br label %sw.epilog, !dbg !5762

sw.bb4:                                           ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !5763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5763

sw.bb5:                                           ; preds = %if.end
  %8 = load ptr, ptr %fpriv, align 8, !dbg !5765
  %mmap_state = getelementptr inbounds %struct.pci_filp_private, ptr %8, i32 0, i32 0, !dbg !5766
  store i32 1, ptr %mmap_state, align 4, !dbg !5767
  br label %sw.epilog, !dbg !5768

sw.bb6:                                           ; preds = %if.end
  %call7 = call zeroext i1 @pat_enabled() #16, !dbg !5769
  br i1 %call7, label %if.then8, label %if.end13, !dbg !5771

if.then8:                                         ; preds = %sw.bb6
  %9 = load i64, ptr %arg.addr, align 8, !dbg !5772
  %tobool9 = icmp ne i64 %9, 0, !dbg !5772
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5775

if.then10:                                        ; preds = %if.then8
  %10 = load ptr, ptr %fpriv, align 8, !dbg !5776
  %write_combine = getelementptr inbounds %struct.pci_filp_private, ptr %10, i32 0, i32 1, !dbg !5777
  store i32 1, ptr %write_combine, align 4, !dbg !5778
  br label %if.end12, !dbg !5776

if.else:                                          ; preds = %if.then8
  %11 = load ptr, ptr %fpriv, align 8, !dbg !5779
  %write_combine11 = getelementptr inbounds %struct.pci_filp_private, ptr %11, i32 0, i32 1, !dbg !5780
  store i32 0, ptr %write_combine11, align 4, !dbg !5781
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog, !dbg !5782

if.end13:                                         ; preds = %sw.bb6
  br label %sw.default, !dbg !5769

sw.default:                                       ; preds = %if.end, %if.end13
  store i32 -22, ptr %ret, align 4, !dbg !5783
  br label %sw.epilog, !dbg !5784

sw.epilog:                                        ; preds = %sw.default, %if.end12, %sw.bb5, %sw.bb
  %12 = load i32, ptr %ret, align 4, !dbg !5785
  %conv14 = sext i32 %12 to i64, !dbg !5785
  store i64 %conv14, ptr %retval, align 8, !dbg !5786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5786

cleanup:                                          ; preds = %sw.epilog, %sw.bb4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5787
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpriv) #15, !dbg !5787
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5787
  %13 = load i64, ptr %retval, align 8, !dbg !5787
  ret i64 %13, !dbg !5787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_bus_pci_mmap(ptr noundef %file, ptr noundef %vma) #0 align 16 !dbg !5788 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %fpriv = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %write_combine = alloca i32, align 4
  %res_bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5790, metadata !DIExpression()), !dbg !5800
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5791, metadata !DIExpression()), !dbg !5801
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5802
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5792, metadata !DIExpression()), !dbg !5803
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5804
  %call = call ptr @file_inode(ptr noundef %0) #16, !dbg !5805
  %call1 = call ptr @pde_data(ptr noundef %call) #16, !dbg !5806
  store ptr %call1, ptr %dev, align 8, !dbg !5803
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpriv) #15, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %fpriv, metadata !5793, metadata !DIExpression()), !dbg !5808
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5809
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !5810
  %2 = load ptr, ptr %private_data, align 8, !dbg !5810
  store ptr %2, ptr %fpriv, align 8, !dbg !5808
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5794, metadata !DIExpression()), !dbg !5812
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5795, metadata !DIExpression()), !dbg !5813
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5796, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5797, metadata !DIExpression()), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 4, ptr %write_combine) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %write_combine, metadata !5798, metadata !DIExpression()), !dbg !5817
  store i32 0, ptr %write_combine, align 4, !dbg !5817
  call void @llvm.lifetime.start.p0(i64 4, ptr %res_bit) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %res_bit, metadata !5799, metadata !DIExpression()), !dbg !5818
  store i32 512, ptr %res_bit, align 4, !dbg !5818
  %call2 = call zeroext i1 @capable(i32 noundef 17) #16, !dbg !5819
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !5821

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @security_locked_down(i32 noundef 6) #16, !dbg !5822
  %tobool = icmp ne i32 %call3, 0, !dbg !5822
  br i1 %tobool, label %if.then, label %if.end, !dbg !5823

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !5824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5824

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %fpriv, align 8, !dbg !5825
  %mmap_state = getelementptr inbounds %struct.pci_filp_private, ptr %3, i32 0, i32 0, !dbg !5827
  %4 = load i32, ptr %mmap_state, align 4, !dbg !5827
  %cmp = icmp eq i32 %4, 0, !dbg !5828
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5829

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5830

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5833
  br label %for.cond, !dbg !5835

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i32, ptr %i, align 4, !dbg !5836
  %cmp6 = icmp slt i32 %5, 6, !dbg !5838
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5839

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !5840
  %resource = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 40, !dbg !5843
  %7 = load i32, ptr %i, align 4, !dbg !5844
  %idxprom = sext i32 %7 to i64, !dbg !5840
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5840
  %flags = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 3, !dbg !5845
  %8 = load i64, ptr %flags, align 8, !dbg !5845
  %9 = load i32, ptr %res_bit, align 4, !dbg !5846
  %conv = sext i32 %9 to i64, !dbg !5846
  %and = and i64 %8, %conv, !dbg !5847
  %tobool7 = icmp ne i64 %and, 0, !dbg !5847
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !5848

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %dev, align 8, !dbg !5849
  %11 = load i32, ptr %i, align 4, !dbg !5850
  %12 = load ptr, ptr %vma.addr, align 8, !dbg !5851
  %call8 = call i32 @pci_mmap_fits(ptr noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1) #16, !dbg !5852
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5852
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5853

if.then10:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !5854

if.end11:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5855

for.inc:                                          ; preds = %if.end11
  %13 = load i32, ptr %i, align 4, !dbg !5856
  %inc = add i32 %13, 1, !dbg !5856
  store i32 %inc, ptr %i, align 4, !dbg !5856
  br label %for.cond, !dbg !5857, !llvm.loop !5858

for.end:                                          ; preds = %if.then10, %for.cond
  %14 = load i32, ptr %i, align 4, !dbg !5860
  %cmp12 = icmp sge i32 %14, 6, !dbg !5862
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5863

if.then14:                                        ; preds = %for.end
  store i32 -19, ptr %retval, align 4, !dbg !5864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5864

if.end15:                                         ; preds = %for.end
  %15 = load ptr, ptr %fpriv, align 8, !dbg !5865
  %mmap_state16 = getelementptr inbounds %struct.pci_filp_private, ptr %15, i32 0, i32 0, !dbg !5867
  %16 = load i32, ptr %mmap_state16, align 4, !dbg !5867
  %cmp17 = icmp eq i32 %16, 1, !dbg !5868
  br i1 %cmp17, label %land.lhs.true19, label %if.end31, !dbg !5869

land.lhs.true19:                                  ; preds = %if.end15
  %17 = load ptr, ptr %fpriv, align 8, !dbg !5870
  %write_combine20 = getelementptr inbounds %struct.pci_filp_private, ptr %17, i32 0, i32 1, !dbg !5871
  %18 = load i32, ptr %write_combine20, align 4, !dbg !5871
  %tobool21 = icmp ne i32 %18, 0, !dbg !5870
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !5872

if.then22:                                        ; preds = %land.lhs.true19
  %19 = load ptr, ptr %dev, align 8, !dbg !5873
  %resource23 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 40, !dbg !5876
  %20 = load i32, ptr %i, align 4, !dbg !5877
  %idxprom24 = sext i32 %20 to i64, !dbg !5873
  %arrayidx25 = getelementptr [11 x %struct.resource], ptr %resource23, i64 0, i64 %idxprom24, !dbg !5873
  %flags26 = getelementptr inbounds %struct.resource, ptr %arrayidx25, i32 0, i32 3, !dbg !5878
  %21 = load i64, ptr %flags26, align 8, !dbg !5878
  %and27 = and i64 %21, 8192, !dbg !5879
  %tobool28 = icmp ne i64 %and27, 0, !dbg !5879
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !5880

if.then29:                                        ; preds = %if.then22
  store i32 1, ptr %write_combine, align 4, !dbg !5881
  br label %if.end30, !dbg !5882

if.else:                                          ; preds = %if.then22
  store i32 -22, ptr %retval, align 4, !dbg !5883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5883

if.end30:                                         ; preds = %if.then29
  br label %if.end31, !dbg !5884

if.end31:                                         ; preds = %if.end30, %land.lhs.true19, %if.end15
  %22 = load ptr, ptr %dev, align 8, !dbg !5885
  %resource32 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 40, !dbg !5887
  %23 = load i32, ptr %i, align 4, !dbg !5888
  %idxprom33 = sext i32 %23 to i64, !dbg !5885
  %arrayidx34 = getelementptr [11 x %struct.resource], ptr %resource32, i64 0, i64 %idxprom33, !dbg !5885
  %flags35 = getelementptr inbounds %struct.resource, ptr %arrayidx34, i32 0, i32 3, !dbg !5889
  %24 = load i64, ptr %flags35, align 8, !dbg !5889
  %and36 = and i64 %24, 512, !dbg !5890
  %tobool37 = icmp ne i64 %and36, 0, !dbg !5890
  br i1 %tobool37, label %land.lhs.true38, label %if.end46, !dbg !5891

land.lhs.true38:                                  ; preds = %if.end31
  %25 = load ptr, ptr %dev, align 8, !dbg !5892
  %resource39 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 40, !dbg !5893
  %26 = load i32, ptr %i, align 4, !dbg !5894
  %idxprom40 = sext i32 %26 to i64, !dbg !5892
  %arrayidx41 = getelementptr [11 x %struct.resource], ptr %resource39, i64 0, i64 %idxprom40, !dbg !5892
  %start42 = getelementptr inbounds %struct.resource, ptr %arrayidx41, i32 0, i32 0, !dbg !5895
  %27 = load i64, ptr %start42, align 8, !dbg !5895
  %call43 = call zeroext i1 @iomem_is_exclusive(i64 noundef %27) #16, !dbg !5896
  br i1 %call43, label %if.then45, label %if.end46, !dbg !5897

if.then45:                                        ; preds = %land.lhs.true38
  store i32 -22, ptr %retval, align 4, !dbg !5898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

if.end46:                                         ; preds = %land.lhs.true38, %if.end31
  %28 = load ptr, ptr %dev, align 8, !dbg !5899
  %29 = load i32, ptr %i, align 4, !dbg !5900
  %30 = load ptr, ptr %dev, align 8, !dbg !5901
  %resource47 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 40, !dbg !5902
  %31 = load i32, ptr %i, align 4, !dbg !5903
  %idxprom48 = sext i32 %31 to i64, !dbg !5901
  %arrayidx49 = getelementptr [11 x %struct.resource], ptr %resource47, i64 0, i64 %idxprom48, !dbg !5901
  call void @pci_resource_to_user(ptr noundef %28, i32 noundef %29, ptr noundef %arrayidx49, ptr noundef %start, ptr noundef %end) #16, !dbg !5904
  %32 = load i64, ptr %start, align 8, !dbg !5905
  %shr = lshr i64 %32, 12, !dbg !5906
  %33 = load ptr, ptr %vma.addr, align 8, !dbg !5907
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %33, i32 0, i32 11, !dbg !5908
  %34 = load i64, ptr %vm_pgoff, align 8, !dbg !5909
  %sub = sub i64 %34, %shr, !dbg !5909
  store i64 %sub, ptr %vm_pgoff, align 8, !dbg !5909
  %35 = load ptr, ptr %dev, align 8, !dbg !5910
  %36 = load i32, ptr %i, align 4, !dbg !5911
  %37 = load ptr, ptr %vma.addr, align 8, !dbg !5912
  %38 = load ptr, ptr %fpriv, align 8, !dbg !5913
  %mmap_state50 = getelementptr inbounds %struct.pci_filp_private, ptr %38, i32 0, i32 0, !dbg !5914
  %39 = load i32, ptr %mmap_state50, align 4, !dbg !5914
  %40 = load i32, ptr %write_combine, align 4, !dbg !5915
  %call51 = call i32 @pci_mmap_resource_range(ptr noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %39, i32 noundef %40) #16, !dbg !5916
  store i32 %call51, ptr %ret, align 4, !dbg !5917
  %41 = load i32, ptr %ret, align 4, !dbg !5918
  %cmp52 = icmp slt i32 %41, 0, !dbg !5920
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !5921

if.then54:                                        ; preds = %if.end46
  %42 = load i32, ptr %ret, align 4, !dbg !5922
  store i32 %42, ptr %retval, align 4, !dbg !5923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5923

if.end55:                                         ; preds = %if.end46
  store i32 0, ptr %retval, align 4, !dbg !5924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5924

cleanup:                                          ; preds = %if.end55, %if.then54, %if.then45, %if.else, %if.then14, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res_bit) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 4, ptr %write_combine) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpriv) #15, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5925
  %43 = load i32, ptr %retval, align 4, !dbg !5925
  ret i32 %43, !dbg !5925
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5926 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5930, metadata !DIExpression()), !dbg !5935
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5931, metadata !DIExpression()), !dbg !5936
  %0 = load i64, ptr %size.addr, align 8, !dbg !5937
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5938
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5939

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5940
  %tobool = icmp ne i64 %2, 0, !dbg !5940
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5941

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5932, metadata !DIExpression()), !dbg !5943
  %3 = load i64, ptr %size.addr, align 8, !dbg !5944
  %cmp = icmp ugt i64 %3, 8192, !dbg !5946
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5947

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5948
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5949
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5950
  store ptr %call, ptr %retval, align 8, !dbg !5951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5951

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5952
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5952
  store i32 %call2, ptr %index, align 4, !dbg !5953
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5954
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5955
  %9 = ptrtoint ptr %8 to i64, !dbg !5955
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5956
  %idxprom = zext i32 %call3 to i64, !dbg !5957
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5957
  %10 = load i32, ptr %index, align 4, !dbg !5958
  %idxprom4 = zext i32 %10 to i64, !dbg !5957
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5957
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5957
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5959
  %13 = load i64, ptr %size.addr, align 8, !dbg !5960
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5961
  store ptr %call6, ptr %retval, align 8, !dbg !5962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5962

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5963
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5964
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5965
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5966
  store ptr %call8, ptr %retval, align 8, !dbg !5967
  br label %return, !dbg !5967

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5968
  ret ptr %16, !dbg !5968
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5969 dso_local ptr @iomem_get_mapping() #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5970 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5971 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5975, metadata !DIExpression()), !dbg !5977
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5976, metadata !DIExpression()), !dbg !5978
  %0 = load i64, ptr %size.addr, align 8, !dbg !5979
  %tobool = icmp ne i64 %0, 0, !dbg !5979
  br i1 %tobool, label %if.end, label %if.then, !dbg !5981

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5982
  br label %return, !dbg !5982

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5983
  %cmp = icmp ule i64 %1, 8, !dbg !5985
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5986

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5987
  br label %return, !dbg !5987

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5988
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5990
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5991

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5992
  %cmp4 = icmp ule i64 %3, 96, !dbg !5993
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5994

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5995
  br label %return, !dbg !5995

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5996
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5998
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5999

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6000
  %cmp9 = icmp ule i64 %5, 192, !dbg !6001
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6002

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6003
  br label %return, !dbg !6003

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6004
  %cmp12 = icmp ule i64 %6, 8, !dbg !6006
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6007

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6008
  br label %return, !dbg !6008

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6009
  %cmp15 = icmp ule i64 %7, 16, !dbg !6011
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6012

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6013
  br label %return, !dbg !6013

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6014
  %cmp18 = icmp ule i64 %8, 32, !dbg !6016
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6017

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6018
  br label %return, !dbg !6018

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6019
  %cmp21 = icmp ule i64 %9, 64, !dbg !6021
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6022

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6023
  br label %return, !dbg !6023

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6024
  %cmp24 = icmp ule i64 %10, 128, !dbg !6026
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6027

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6028
  br label %return, !dbg !6028

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6029
  %cmp27 = icmp ule i64 %11, 256, !dbg !6031
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6032

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6033
  br label %return, !dbg !6033

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6034
  %cmp30 = icmp ule i64 %12, 512, !dbg !6036
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6037

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6038
  br label %return, !dbg !6038

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6039
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6041
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6042

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6043
  br label %return, !dbg !6043

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6044
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6046
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6047

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6048
  br label %return, !dbg !6048

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6049
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6051
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6052

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6054
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6056
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6057

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6058
  br label %return, !dbg !6058

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6059
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6061
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6062

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6063
  br label %return, !dbg !6063

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6064
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6066
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6067

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6068
  br label %return, !dbg !6068

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6069
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6071
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6072

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6073
  br label %return, !dbg !6073

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6074
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6076
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6077

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6079
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6081
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6082

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6083
  br label %return, !dbg !6083

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6084
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6086
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6087

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6088
  br label %return, !dbg !6088

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6089
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6091
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6092

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6093
  br label %return, !dbg !6093

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6094
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6096
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6097

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6098
  br label %return, !dbg !6098

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6099, !range !6101, !noundef !846
  %tobool69 = trunc i8 %25 to i1, !dbg !6099
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6102

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6103

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !6104, !srcloc !6107
  unreachable, !dbg !6104

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6108

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6109

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6110

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6112

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6110

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !6114, !srcloc !6116
  br label %do.end75, !dbg !6114

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6110

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6117
  br label %return, !dbg !6117

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6118
  ret i32 %26, !dbg !6118
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6119 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !6125 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6129, metadata !DIExpression()), !dbg !6131
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6130, metadata !DIExpression()), !dbg !6132
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6133
  %and = and i32 %0, 17, !dbg !6133
  %cmp = icmp eq i32 %and, 0, !dbg !6133
  %lnot = xor i1 %cmp, true, !dbg !6133
  %lnot1 = xor i1 %lnot, true, !dbg !6133
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6133
  %conv = sext i32 %lnot.ext to i64, !dbg !6133
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6133
  %tobool = icmp ne i64 %expval, 0, !dbg !6133
  br i1 %tobool, label %if.then, label %if.end, !dbg !6135

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6136
  br label %return, !dbg !6136

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6137
  %and2 = and i32 %1, 1, !dbg !6139
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6139
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6140

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6141
  br label %return, !dbg !6141

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6142
  br label %return, !dbg !6142

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6144
  ret i32 %2, !dbg !6144
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6145 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6146 dso_local void @__compiletime_assert_204() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pde_data(ptr noundef %inode) #3 align 16 !dbg !6147 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6153
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6154
  %1 = load ptr, ptr %i_private, align 8, !dbg !6154
  ret ptr %1, !dbg !6155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !6156 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6160, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6162
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6163
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6163
  ret ptr %1, !dbg !6164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local zeroext i1 @capable(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !6168 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6173, metadata !DIExpression()), !dbg !6178
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6174, metadata !DIExpression()), !dbg !6179
  %0 = load i64, ptr %size.addr, align 8, !dbg !6180
  %cmp = icmp ule i64 %0, 4096, !dbg !6181
  %conv = zext i1 %cmp to i32, !dbg !6181
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6182
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6183

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6184
  %cmp1 = icmp ule i64 %2, 4096, !dbg !6185
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6186

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !6187
  %4 = ptrtoint ptr %3 to i64, !dbg !6187
  %cmp3 = icmp sge i64 %4, 0, !dbg !6187
  store i1 %cmp3, ptr %retval, align 1, !dbg !6189
  br label %return, !dbg !6189

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #15, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !6175, metadata !DIExpression()), !dbg !6191
  %5 = load i64, ptr %size.addr, align 8, !dbg !6192
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !6193
  %7 = ptrtoint ptr %6 to i64, !dbg !6194
  %add = add i64 %5, %7, !dbg !6195
  store i64 %add, ptr %sum, align 8, !dbg !6191
  %8 = load i64, ptr %sum, align 8, !dbg !6196
  %cmp5 = icmp sge i64 %8, 0, !dbg !6196
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !6197

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !6198
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !6199
  %11 = ptrtoint ptr %10 to i64, !dbg !6200
  %cmp7 = icmp uge i64 %9, %11, !dbg !6201
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !6202
  store i1 %12, ptr %retval, align 1, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #15, !dbg !6204
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !6205
  ret i1 %13, !dbg !6205
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6206 dso_local void @pci_config_pm_runtime_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6207 dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !6211 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6216, metadata !DIExpression()), !dbg !6220
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6217, metadata !DIExpression()), !dbg !6221
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6218, metadata !DIExpression()), !dbg !6222
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6219, metadata !DIExpression()), !dbg !6223
  ret void, !dbg !6224
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6225 dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6229 dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !6232 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6237, metadata !DIExpression()), !dbg !6240
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !6238, metadata !DIExpression()), !dbg !6241
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !6239, metadata !DIExpression()), !dbg !6242
  ret void, !dbg !6243
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #9 align 16 !dbg !4233 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !6244
  %0 = load ptr, ptr %tmp, align 8, !dbg !6244
  %call = call i32 %0() #16, !dbg !6246
  ret i32 %call, !dbg !6247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6248 dso_local void @pci_config_pm_runtime_put(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6249 dso_local i32 @security_locked_down(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !6252 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6256, metadata !DIExpression()), !dbg !6258
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6257, metadata !DIExpression()), !dbg !6259
  ret void, !dbg !6260
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6261 dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6264 dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6267 dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_size_write(ptr noundef %inode, i64 noundef %i_size) #3 align 16 !dbg !6270 {
entry:
  %inode.addr = alloca ptr, align 8
  %i_size.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6274, metadata !DIExpression()), !dbg !6276
  store i64 %i_size, ptr %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_size.addr, metadata !6275, metadata !DIExpression()), !dbg !6277
  %0 = load i64, ptr %i_size.addr, align 8, !dbg !6278
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6279
  %i_size1 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, !dbg !6280
  store i64 %0, ptr %i_size1, align 8, !dbg !6281
  ret void, !dbg !6282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6283 dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6286 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6289 dso_local zeroext i1 @pat_enabled() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6291 dso_local i32 @pci_mmap_fits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6294 dso_local zeroext i1 @iomem_is_exclusive(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6297 dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6305 dso_local i32 @pci_mmap_resource_range(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6308 dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6311 dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_seq_start(ptr noundef %m, ptr noundef %pos) #0 align 16 !dbg !6314 {
entry:
  %m.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6316, metadata !DIExpression()), !dbg !6320
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6317, metadata !DIExpression()), !dbg !6321
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6318, metadata !DIExpression()), !dbg !6323
  store ptr null, ptr %dev, align 8, !dbg !6323
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6319, metadata !DIExpression()), !dbg !6325
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !6326
  %1 = load i64, ptr %0, align 8, !dbg !6327
  store i64 %1, ptr %n, align 8, !dbg !6325
  br label %while.cond, !dbg !6328

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !6328
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %2) #16, !dbg !6328
  store ptr %call, ptr %dev, align 8, !dbg !6328
  %cmp = icmp ne ptr %call, null, !dbg !6328
  br i1 %cmp, label %while.body, label %while.end, !dbg !6328

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %n, align 8, !dbg !6329
  %dec = add i64 %3, -1, !dbg !6329
  store i64 %dec, ptr %n, align 8, !dbg !6329
  %tobool = icmp ne i64 %3, 0, !dbg !6329
  br i1 %tobool, label %if.end, label %if.then, !dbg !6332

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !6333

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !6328, !llvm.loop !6334

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load ptr, ptr %dev, align 8, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6337
  ret ptr %4, !dbg !6338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_seq_stop(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !6339 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6341, metadata !DIExpression()), !dbg !6346
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6342, metadata !DIExpression()), !dbg !6347
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6348
  %tobool = icmp ne ptr %0, null, !dbg !6348
  br i1 %tobool, label %if.then, label %if.end, !dbg !6349

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6343, metadata !DIExpression()), !dbg !6351
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6352
  store ptr %1, ptr %dev, align 8, !dbg !6351
  %2 = load ptr, ptr %dev, align 8, !dbg !6353
  call void @pci_dev_put(ptr noundef %2) #16, !dbg !6354
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6355
  br label %if.end, !dbg !6356

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_seq_next(ptr noundef %m, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !6358 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6360, metadata !DIExpression()), !dbg !6364
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6361, metadata !DIExpression()), !dbg !6365
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6362, metadata !DIExpression()), !dbg !6366
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6367
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6363, metadata !DIExpression()), !dbg !6368
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6369
  store ptr %0, ptr %dev, align 8, !dbg !6368
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !6370
  %2 = load i64, ptr %1, align 8, !dbg !6371
  %inc = add i64 %2, 1, !dbg !6371
  store i64 %inc, ptr %1, align 8, !dbg !6371
  %3 = load ptr, ptr %dev, align 8, !dbg !6372
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %3) #16, !dbg !6373
  store ptr %call, ptr %dev, align 8, !dbg !6374
  %4 = load ptr, ptr %dev, align 8, !dbg !6375
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6376
  ret ptr %4, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_device(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !6378 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %start12 = alloca i64, align 8
  %end13 = alloca i64, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6380, metadata !DIExpression()), !dbg !6397
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6381, metadata !DIExpression()), !dbg !6398
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6382, metadata !DIExpression()), !dbg !6400
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6401
  store ptr %0, ptr %dev, align 8, !dbg !6400
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !6383, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6386, metadata !DIExpression()), !dbg !6405
  %1 = load ptr, ptr %dev, align 8, !dbg !6406
  %cmp = icmp eq ptr %1, null, !dbg !6408
  br i1 %cmp, label %if.then, label %if.end, !dbg !6409

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !6411
  %call = call ptr @pci_dev_driver(ptr noundef %2) #16, !dbg !6412
  store ptr %call, ptr %drv, align 8, !dbg !6413
  %3 = load ptr, ptr %m.addr, align 8, !dbg !6414
  %4 = load ptr, ptr %dev, align 8, !dbg !6415
  %bus = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1, !dbg !6416
  %5 = load ptr, ptr %bus, align 8, !dbg !6416
  %number = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12, !dbg !6417
  %6 = load i8, ptr %number, align 8, !dbg !6417
  %conv = zext i8 %6 to i32, !dbg !6415
  %7 = load ptr, ptr %dev, align 8, !dbg !6418
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6, !dbg !6419
  %8 = load i32, ptr %devfn, align 8, !dbg !6419
  %9 = load ptr, ptr %dev, align 8, !dbg !6420
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 7, !dbg !6421
  %10 = load i16, ptr %vendor, align 4, !dbg !6421
  %conv1 = zext i16 %10 to i32, !dbg !6420
  %11 = load ptr, ptr %dev, align 8, !dbg !6422
  %device = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8, !dbg !6423
  %12 = load i16, ptr %device, align 2, !dbg !6423
  %conv2 = zext i16 %12 to i32, !dbg !6422
  %13 = load ptr, ptr %dev, align 8, !dbg !6424
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 39, !dbg !6425
  %14 = load i32, ptr %irq, align 4, !dbg !6425
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.7, i32 noundef %conv, i32 noundef %8, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %14) #16, !dbg !6426
  store i32 0, ptr %i, align 4, !dbg !6427
  br label %for.cond, !dbg !6428

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4, !dbg !6429
  %cmp3 = icmp sle i32 %15, 6, !dbg !6430
  br i1 %cmp3, label %for.body, label %for.end, !dbg !6431

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !6432
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6387, metadata !DIExpression()), !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !6432
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6391, metadata !DIExpression()), !dbg !6434
  %16 = load ptr, ptr %dev, align 8, !dbg !6435
  %17 = load i32, ptr %i, align 4, !dbg !6436
  %18 = load ptr, ptr %dev, align 8, !dbg !6437
  %resource = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 40, !dbg !6438
  %19 = load i32, ptr %i, align 4, !dbg !6439
  %idxprom = sext i32 %19 to i64, !dbg !6437
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !6437
  call void @pci_resource_to_user(ptr noundef %16, i32 noundef %17, ptr noundef %arrayidx, ptr noundef %start, ptr noundef %end) #16, !dbg !6440
  %20 = load ptr, ptr %m.addr, align 8, !dbg !6441
  %21 = load i64, ptr %start, align 8, !dbg !6442
  %22 = load ptr, ptr %dev, align 8, !dbg !6443
  %resource5 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 40, !dbg !6444
  %23 = load i32, ptr %i, align 4, !dbg !6445
  %idxprom6 = sext i32 %23 to i64, !dbg !6443
  %arrayidx7 = getelementptr [11 x %struct.resource], ptr %resource5, i64 0, i64 %idxprom6, !dbg !6443
  %flags = getelementptr inbounds %struct.resource, ptr %arrayidx7, i32 0, i32 3, !dbg !6446
  %24 = load i64, ptr %flags, align 8, !dbg !6446
  %and = and i64 %24, 15, !dbg !6447
  %or = or i64 %21, %and, !dbg !6448
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef @.str.8, i64 noundef %or) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !6450
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !6450
  br label %for.inc, !dbg !6451

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !dbg !6452
  %inc = add i32 %25, 1, !dbg !6452
  store i32 %inc, ptr %i, align 4, !dbg !6452
  br label %for.cond, !dbg !6453, !llvm.loop !6454

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !6456
  br label %for.cond8, !dbg !6457

for.cond8:                                        ; preds = %for.inc27, %for.end
  %26 = load i32, ptr %i, align 4, !dbg !6458
  %cmp9 = icmp sle i32 %26, 6, !dbg !6459
  br i1 %cmp9, label %for.body11, label %for.end29, !dbg !6460

for.body11:                                       ; preds = %for.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %start12) #15, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %start12, metadata !6392, metadata !DIExpression()), !dbg !6462
  call void @llvm.lifetime.start.p0(i64 8, ptr %end13) #15, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %end13, metadata !6396, metadata !DIExpression()), !dbg !6463
  %27 = load ptr, ptr %dev, align 8, !dbg !6464
  %28 = load i32, ptr %i, align 4, !dbg !6465
  %29 = load ptr, ptr %dev, align 8, !dbg !6466
  %resource14 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 40, !dbg !6467
  %30 = load i32, ptr %i, align 4, !dbg !6468
  %idxprom15 = sext i32 %30 to i64, !dbg !6466
  %arrayidx16 = getelementptr [11 x %struct.resource], ptr %resource14, i64 0, i64 %idxprom15, !dbg !6466
  call void @pci_resource_to_user(ptr noundef %27, i32 noundef %28, ptr noundef %arrayidx16, ptr noundef %start12, ptr noundef %end13) #16, !dbg !6469
  %31 = load ptr, ptr %m.addr, align 8, !dbg !6470
  %32 = load ptr, ptr %dev, align 8, !dbg !6471
  %resource17 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 40, !dbg !6472
  %33 = load i32, ptr %i, align 4, !dbg !6473
  %idxprom18 = sext i32 %33 to i64, !dbg !6471
  %arrayidx19 = getelementptr [11 x %struct.resource], ptr %resource17, i64 0, i64 %idxprom18, !dbg !6471
  %start20 = getelementptr inbounds %struct.resource, ptr %arrayidx19, i32 0, i32 0, !dbg !6474
  %34 = load i64, ptr %start20, align 8, !dbg !6474
  %35 = load ptr, ptr %dev, align 8, !dbg !6475
  %resource21 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 40, !dbg !6476
  %36 = load i32, ptr %i, align 4, !dbg !6477
  %idxprom22 = sext i32 %36 to i64, !dbg !6475
  %arrayidx23 = getelementptr [11 x %struct.resource], ptr %resource21, i64 0, i64 %idxprom22, !dbg !6475
  %end24 = getelementptr inbounds %struct.resource, ptr %arrayidx23, i32 0, i32 1, !dbg !6478
  %37 = load i64, ptr %end24, align 8, !dbg !6478
  %cmp25 = icmp ult i64 %34, %37, !dbg !6479
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !6471

cond.true:                                        ; preds = %for.body11
  %38 = load i64, ptr %end13, align 8, !dbg !6480
  %39 = load i64, ptr %start12, align 8, !dbg !6481
  %sub = sub i64 %38, %39, !dbg !6482
  %add = add i64 %sub, 1, !dbg !6483
  br label %cond.end, !dbg !6471

cond.false:                                       ; preds = %for.body11
  br label %cond.end, !dbg !6471

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %cond.false ], !dbg !6471
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef @.str.8, i64 noundef %cond) #16, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 8, ptr %end13) #15, !dbg !6485
  call void @llvm.lifetime.end.p0(i64 8, ptr %start12) #15, !dbg !6485
  br label %for.inc27, !dbg !6486

for.inc27:                                        ; preds = %cond.end
  %40 = load i32, ptr %i, align 4, !dbg !6487
  %inc28 = add i32 %40, 1, !dbg !6487
  store i32 %inc28, ptr %i, align 4, !dbg !6487
  br label %for.cond8, !dbg !6488, !llvm.loop !6489

for.end29:                                        ; preds = %for.cond8
  %41 = load ptr, ptr %m.addr, align 8, !dbg !6491
  call void @seq_putc(ptr noundef %41, i8 noundef zeroext 9) #16, !dbg !6492
  %42 = load ptr, ptr %drv, align 8, !dbg !6493
  %tobool = icmp ne ptr %42, null, !dbg !6493
  br i1 %tobool, label %if.then30, label %if.end31, !dbg !6495

if.then30:                                        ; preds = %for.end29
  %43 = load ptr, ptr %m.addr, align 8, !dbg !6496
  %44 = load ptr, ptr %drv, align 8, !dbg !6497
  %name = getelementptr inbounds %struct.pci_driver, ptr %44, i32 0, i32 1, !dbg !6498
  %45 = load ptr, ptr %name, align 8, !dbg !6498
  call void @seq_puts(ptr noundef %43, ptr noundef %45) #16, !dbg !6499
  br label %if.end31, !dbg !6499

if.end31:                                         ; preds = %if.then30, %for.end29
  %46 = load ptr, ptr %m.addr, align 8, !dbg !6500
  call void @seq_putc(ptr noundef %46, i8 noundef zeroext 10) #16, !dbg !6501
  store i32 0, ptr %retval, align 4, !dbg !6502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6502

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6503
  %47 = load i32, ptr %retval, align 4, !dbg !6503
  ret i32 %47, !dbg !6503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6504 dso_local void @pci_dev_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6505 dso_local ptr @pci_dev_driver(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6508 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6511 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6514 dso_local void @seq_puts(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4244}
!llvm.module.flags = !{!4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252}
!llvm.ident = !{!4253}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "proc_initialized", scope: !2, file: !3, line: 20, type: !109, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.proc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/proc\22 -D KBUILD_BASENAME=\22proc\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/proc.ll drivers/pci/proc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !208, globals: !228, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/proc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1e5ef051548beedb69dcbe71be091670")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !151, !161, !194, !199}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_mmap_state", file: !142, line: 90, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "pci_mmap_io", value: 0)
!145 = !DIEnumerator(name: "pci_mmap_mem", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 10, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "false", value: 0)
!150 = !DIEnumerator(name: "true", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !152, line: 364, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!153 = !{!154, !155, !156, !157, !158, !159, !160}
!154 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!155 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!159 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!160 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !162, line: 107, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!164 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!165 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!166 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!167 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!168 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!169 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!170 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!171 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!172 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!173 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!174 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!175 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!176 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!177 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!178 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!179 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!180 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!181 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!182 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!183 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!184 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!185 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!186 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!187 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!188 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!189 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!190 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!191 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!192 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!193 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_mmap_api", file: !195, line: 41, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!196 = !{!197, !198}
!197 = !DIEnumerator(name: "PCI_MMAP_SYSFS", value: 0)
!198 = !DIEnumerator(name: "PCI_MMAP_PROCFS", value: 1)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 96, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207}
!201 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0)
!202 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5)
!203 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6)
!204 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 7)
!205 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 10)
!206 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 11)
!207 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 11)
!208 = !{!209, !210, !212, !213, !215, !218, !219, !220, !221, !222, !223, !227, !226}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !211, line: 154, baseType: !7)
!211 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!212 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !214, line: 36, baseType: !215)
!214 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !216, line: 24, baseType: !217)
!216 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !214, line: 38, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !216, line: 27, baseType: !7)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!222 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !224, line: 23, baseType: !225)
!224 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !216, line: 31, baseType: !226)
!226 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!227 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !{!229, !234, !239, !244, !0, !246, !251, !4221, !4226, !4231, !4234, !4236, !4238, !4240, !4242}
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 80, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 10)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 40, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 5)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 64, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 8)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_proc__294_472_pci_proc_init6295", scope: !2, file: !3, line: 472, type: !209, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "proc_bus_pci_dir", scope: !2, file: !3, line: 413, type: !248, isLocal: true, isDefinition: true)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !250, line: 131, flags: DIFlagFwdDecl)
!250 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "proc_bus_pci_ops", scope: !2, file: !3, line: 319, type: !253, isLocal: true, isDefinition: true)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !255, line: 29, size: 768, elements: !256)
!255 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!256 = !{!257, !258, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !254, file: !255, line: 30, baseType: !7, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !254, file: !255, line: 31, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!109, !262, !853}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !264)
!264 = !{!265, !267, !268, !277, !283, !290, !291, !294, !295, !4149, !4150, !4151, !4152, !4153, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4193, !4196, !4197, !4198, !4207, !4208, !4209, !4210}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !263, file: !14, line: 642, baseType: !266, size: 16)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !211, line: 24, baseType: !217)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !263, file: !14, line: 643, baseType: !217, size: 16, offset: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !263, file: !14, line: 644, baseType: !269, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !270, line: 23, baseType: !271)
!270 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 21, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !271, file: !270, line: 22, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !211, line: 37, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !276, line: 49, baseType: !7)
!276 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !263, file: !14, line: 645, baseType: !278, size: 128, offset: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !211, line: 190, size: 128, elements: !279)
!279 = !{!280, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !211, line: 191, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !278, file: !211, line: 191, baseType: !281, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !263, file: !14, line: 646, baseType: !284, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !270, line: 28, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 26, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !270, line: 27, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !211, line: 38, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !276, line: 50, baseType: !7)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !263, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !263, file: !14, line: 650, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !263, file: !14, line: 651, baseType: !292, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !263, file: !14, line: 654, baseType: !296, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !299)
!299 = !{!300, !3983, !3993, !3997, !4001, !4005, !4009, !4013, !4017, !4021, !4025, !4026, !4030, !4034, !4071, !4100, !4104, !4110, !4114, !4118, !4122, !4126, !4130, !4136, !4140}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !298, file: !14, line: 1967, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !262, !304, !7}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !306, line: 82, size: 1536, elements: !307)
!306 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!307 = !{!308, !309, !319, !327, !328, !345, !346, !350, !400, !3966, !3967, !3968, !3969, !3975, !3976, !3977}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !305, file: !306, line: 84, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !305, file: !306, line: 85, baseType: !310, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !311, line: 275, baseType: !312)
!311 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !311, line: 275, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !312, file: !311, line: 275, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !311, line: 69, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !311, line: 64, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !316, file: !311, line: 65, baseType: !7, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !305, file: !306, line: 86, baseType: !320, size: 128, offset: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !321, line: 38, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 39, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !320, file: !321, line: 39, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !305, file: !306, line: 87, baseType: !304, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !305, file: !306, line: 88, baseType: !329, size: 128, offset: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !306, line: 49, size: 128, elements: !330)
!330 = !{!331, !341}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !306, line: 50, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !306, line: 50, size: 64, elements: !333)
!333 = !{!334, !340}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !306, line: 51, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !306, line: 51, size: 64, elements: !336)
!336 = !{!337, !339}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !335, file: !306, line: 52, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !224, line: 21, baseType: !220)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !335, file: !306, line: 52, baseType: !338, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !332, file: !306, line: 54, baseType: !223, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !306, line: 56, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !305, file: !306, line: 89, baseType: !262, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !305, file: !306, line: 91, baseType: !347, size: 256, offset: 448)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !305, file: !306, line: 94, baseType: !351, size: 64, offset: 704)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !352, line: 25, size: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !352, line: 26, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !352, line: 26, size: 64, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !355, file: !352, line: 28, baseType: !225, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !352, line: 30, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !352, line: 30, size: 64, elements: !360)
!360 = !{!361, !399}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !352, line: 31, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !363, line: 29, baseType: !364)
!363 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !363, line: 17, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !363, line: 18, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !363, line: 18, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !367, file: !363, line: 19, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !371, line: 14, size: 32, elements: !372)
!371 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !370, file: !371, line: 15, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !375, line: 44, baseType: !376)
!375 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !375, line: 14, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !375, line: 15, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !375, line: 15, size: 32, elements: !380)
!380 = !{!381, !386, !393}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !375, line: 16, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !211, line: 174, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 172, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !383, file: !211, line: 173, baseType: !109, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !375, line: 24, baseType: !387, size: 16)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !375, line: 24, size: 16, elements: !388)
!388 = !{!389, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !387, file: !375, line: 25, baseType: !390, size: 8)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !224, line: 17, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !216, line: 21, baseType: !344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !387, file: !375, line: 26, baseType: !390, size: 8, offset: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !375, line: 28, baseType: !394, size: 32)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !375, line: 28, size: 32, elements: !395)
!395 = !{!396, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !394, file: !375, line: 29, baseType: !397, size: 16)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !224, line: 19, baseType: !215)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !394, file: !375, line: 30, baseType: !397, size: 16, offset: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !359, file: !352, line: 32, baseType: !109, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !305, file: !306, line: 95, baseType: !401, size: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !306, line: 128, size: 1024, align: 512, elements: !404)
!404 = !{!405, !409, !410, !417, !425, !429, !433, !437, !438, !442, !447, !3956, !3960}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !403, file: !306, line: 129, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!109, !304, !7}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !403, file: !306, line: 130, baseType: !406, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !403, file: !306, line: 131, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!109, !414, !416}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !403, file: !306, line: 132, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!109, !414, !7, !421, !423}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !403, file: !306, line: 134, baseType: !426, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!109, !414}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !403, file: !306, line: 135, baseType: !430, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!109, !304}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !403, file: !306, line: 136, baseType: !434, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !304}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !403, file: !306, line: 137, baseType: !434, size: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !403, file: !306, line: 138, baseType: !439, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !304, !262}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !403, file: !306, line: 139, baseType: !443, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !304, !446, !109}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !403, file: !306, line: 140, baseType: !448, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !3955}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !453, line: 70, size: 256, elements: !454)
!453 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!454 = !{!455, !456, !3951, !3952}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !452, file: !453, line: 71, baseType: !304, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !452, file: !453, line: 72, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !459)
!459 = !{!460, !461, !464, !465, !466, !470, !2344, !2476, !2516, !2601, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2618, !2622, !2623, !2626, !2629, !2632, !2635, !2636, !2637, !2678, !3884, !3885, !3886, !3887, !3888, !3889, !3892, !3894, !3901, !3902, !3903, !3904, !3905, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !458, file: !14, line: 1191, baseType: !278, size: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !458, file: !14, line: 1192, baseType: !462, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !211, line: 21, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !211, line: 18, baseType: !338)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !458, file: !14, line: 1193, baseType: !344, size: 8, offset: 160)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !458, file: !14, line: 1194, baseType: !212, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !458, file: !14, line: 1195, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !211, line: 52, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !276, line: 88, baseType: !469)
!469 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !458, file: !14, line: 1196, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !473)
!473 = !{!474, !475, !476, !483, !487, !491, !495, !2332, !2333, !2334, !2336, !2337, !2338, !2340, !2341, !2342, !2343}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !14, line: 2367, baseType: !421, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !472, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !472, file: !14, line: 2376, baseType: !477, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!109, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !482, line: 32, flags: DIFlagFwdDecl)
!482 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!483 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !472, file: !14, line: 2377, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !472, file: !14, line: 2378, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!304, !471, !109, !421, !209}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !472, file: !14, line: 2380, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !457}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !472, file: !14, line: 2381, baseType: !496, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !498)
!498 = !{!499, !500, !501, !505, !1988, !2014, !2015, !2016, !2017, !2021, !2024, !2025, !2026, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2094, !2098, !2118, !2136, !2137, !2138, !2139, !2148, !2171, !2172, !2175, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2189, !2190, !2290, !2298, !2299, !2300, !2302, !2306, !2307, !2311, !2312, !2313, !2314, !2316, !2317, !2318, !2325, !2326, !2327, !2331}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !497, file: !6, line: 403, baseType: !5, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !497, file: !6, line: 406, baseType: !278, size: 128, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !497, file: !6, line: 409, baseType: !502, size: 448, offset: 192)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 448, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 56)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !497, file: !6, line: 417, baseType: !506, size: 768, offset: 640)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !507)
!507 = !{!508, !1981, !1982, !1983, !1986}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !506, file: !6, line: 46, baseType: !509, size: 512)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !510, line: 64, size: 512, elements: !511)
!510 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!511 = !{!512, !513, !514, !516, !562, !1880, !1971, !1976, !1977, !1978, !1979, !1980}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !510, line: 65, baseType: !421, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !509, file: !510, line: 66, baseType: !278, size: 128, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !509, file: !510, line: 67, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !509, file: !510, line: 68, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !510, line: 168, size: 768, elements: !519)
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !518, file: !510, line: 169, baseType: !278, size: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !518, file: !510, line: 170, baseType: !362, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !518, file: !510, line: 171, baseType: !509, size: 512, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !518, file: !510, line: 172, baseType: !524, size: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !510, line: 133, size: 192, elements: !527)
!527 = !{!528, !535, !540}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !526, file: !510, line: 134, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!109, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !526, file: !510, line: 135, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!421, !533}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !526, file: !510, line: 136, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!109, !533, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !510, line: 125, size: 20736, elements: !547)
!547 = !{!548, !552, !556, !557, !561}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !546, file: !510, line: 126, baseType: !549, size: 192)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 192, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 3)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !546, file: !510, line: 127, baseType: !553, size: 4096, offset: 192)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 4096, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !546, file: !510, line: 128, baseType: !109, size: 32, offset: 4288)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !546, file: !510, line: 129, baseType: !558, size: 16384, offset: 4320)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 16384, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 2048)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !546, file: !510, line: 130, baseType: !109, size: 32, offset: 20704)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !509, file: !510, line: 69, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !510, line: 116, size: 384, elements: !566)
!566 = !{!567, !571, !596, !1839, !1870, !1874}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !565, file: !510, line: 117, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !515}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !565, file: !510, line: 118, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !575, line: 254, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!576 = !{!577, !589}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !574, file: !575, line: 255, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!581, !515, !584, !446}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !211, line: 66, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !276, line: 73, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !276, line: 15, baseType: !222)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !575, line: 30, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !575, line: 31, baseType: !421, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !585, file: !575, line: 32, baseType: !266, size: 16, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !574, file: !575, line: 256, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!581, !515, !584, !421, !593}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 61, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !276, line: 72, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !276, line: 16, baseType: !212)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !565, file: !510, line: 119, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !575, line: 84, size: 320, elements: !601)
!601 = !{!602, !603, !607, !1835, !1837}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !575, line: 85, baseType: !421, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !600, file: !575, line: 86, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!266, !515, !584, !109}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !600, file: !575, line: 88, baseType: !608, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!266, !515, !611, !109}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !575, line: 175, size: 512, elements: !613)
!613 = !{!614, !615, !616, !617, !1826, !1830, !1831}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !612, file: !575, line: 176, baseType: !585, size: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !612, file: !575, line: 177, baseType: !593, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !612, file: !575, line: 178, baseType: !209, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !612, file: !575, line: 179, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !623)
!623 = !{!624, !625, !632, !654, !655, !656, !671, !672, !673, !1820, !1821, !1822, !1823, !1824, !1825}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !622, file: !14, line: 473, baseType: !262, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !622, file: !14, line: 474, baseType: !626, size: 128, offset: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !627, line: 296, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!628 = !{!629, !630, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !626, file: !627, line: 297, baseType: !362, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !626, file: !627, line: 299, baseType: !210, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !626, file: !627, line: 300, baseType: !209, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !622, file: !14, line: 475, baseType: !633, size: 320, offset: 192)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !634, line: 48, size: 320, elements: !635)
!634 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!635 = !{!636, !645, !646, !651, !653}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !633, file: !634, line: 49, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !638, line: 13, baseType: !639)
!638 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !211, line: 181, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 179, size: 64, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !640, file: !211, line: 180, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !224, line: 22, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !216, line: 30, baseType: !469)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !633, file: !634, line: 55, baseType: !637, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !633, file: !634, line: 57, baseType: !647, size: 32, offset: 128)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !648, line: 15, size: 32, elements: !649)
!648 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !647, file: !648, line: 20, baseType: !382, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !633, file: !634, line: 59, baseType: !652, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !371, line: 23, baseType: !370)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !633, file: !634, line: 60, baseType: !278, size: 128, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !622, file: !14, line: 476, baseType: !210, size: 32, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !622, file: !14, line: 477, baseType: !382, size: 32, offset: 544)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !622, file: !14, line: 482, baseType: !657, size: 128, offset: 576)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !658, line: 26, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!659 = !{!660, !670}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !657, file: !658, line: 27, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !658, line: 12, size: 64, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !661, file: !658, line: 13, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !658, line: 5, size: 192, align: 64, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !665, file: !658, line: 6, baseType: !212, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !665, file: !658, line: 7, baseType: !664, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !665, file: !658, line: 8, baseType: !664, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !657, file: !658, line: 28, baseType: !664, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !622, file: !14, line: 483, baseType: !212, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !622, file: !14, line: 484, baseType: !212, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !622, file: !14, line: 485, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !677)
!677 = !{!678, !1676, !1746, !1750, !1754, !1760, !1765, !1769, !1774, !1778, !1782, !1786, !1787, !1791, !1795, !1799, !1804, !1808, !1815, !1816}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !676, file: !14, line: 405, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!109, !682, !1674}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !684)
!684 = !{!685, !686, !1668, !1673}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !27, line: 75, baseType: !212, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !27, line: 83, baseType: !687, size: 320, offset: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !27, line: 83, size: 320, elements: !688)
!688 = !{!689, !710, !724, !728, !1667}
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !27, line: 84, baseType: !690, size: 320)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !27, line: 84, size: 320, elements: !691)
!691 = !{!692, !703, !704, !709}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !27, line: 90, baseType: !693, size: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !27, line: 90, size: 128, elements: !694)
!694 = !{!695, !696, !701, !702}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !693, file: !27, line: 91, baseType: !278, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !27, line: 94, baseType: !697, size: 128)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !27, line: 94, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !697, file: !27, line: 96, baseType: !209, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !697, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !693, file: !27, line: 102, baseType: !278, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !693, file: !27, line: 103, baseType: !278, size: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !690, file: !27, line: 106, baseType: !621, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !27, line: 107, baseType: !705, size: 64, offset: 192)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !27, line: 107, size: 64, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !705, file: !27, line: 108, baseType: !212, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !705, file: !27, line: 109, baseType: !212, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !690, file: !27, line: 117, baseType: !212, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !27, line: 119, baseType: !711, size: 320)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !27, line: 119, size: 320, elements: !712)
!712 = !{!713, !714, !717, !718, !719}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !711, file: !27, line: 124, baseType: !212, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !711, file: !27, line: 125, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !711, file: !27, line: 126, baseType: !212, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !711, file: !27, line: 127, baseType: !212, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !27, line: 128, baseType: !720, size: 64, offset: 256)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !27, line: 128, size: 64, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !720, file: !27, line: 133, baseType: !212, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !720, file: !27, line: 138, baseType: !637, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !27, line: 141, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !27, line: 141, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !725, file: !27, line: 142, baseType: !212, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !27, line: 144, baseType: !729, size: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !27, line: 144, size: 128, elements: !730)
!730 = !{!731, !1666}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !729, file: !27, line: 146, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !734)
!734 = !{!735, !745, !776, !787, !788, !789, !790, !1648, !1649, !1650}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !733, file: !43, line: 127, baseType: !736, size: 384)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !737)
!737 = !{!738, !739, !741, !742, !743, !744}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !736, file: !43, line: 22, baseType: !212, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !736, file: !43, line: 23, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !736, file: !43, line: 24, baseType: !740, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !736, file: !43, line: 25, baseType: !212, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !736, file: !43, line: 26, baseType: !212, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !736, file: !43, line: 27, baseType: !212, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !733, file: !43, line: 128, baseType: !746, size: 128, offset: 384)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !747, line: 105, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !746, file: !747, line: 110, baseType: !212, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !746, file: !747, line: 118, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !747, line: 95, size: 448, elements: !753)
!753 = !{!754, !755, !761, !762, !765, !766, !775}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !747, line: 96, baseType: !637, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !752, file: !747, line: 97, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !747, line: 60, baseType: !758)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !752, file: !747, line: 98, baseType: !756, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !752, file: !747, line: 99, baseType: !763, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !211, line: 35, baseType: !764)
!764 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !752, file: !747, line: 100, baseType: !763, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !752, file: !747, line: 101, baseType: !767, size: 128, align: 64, offset: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !211, line: 232, size: 128, align: 64, elements: !768)
!768 = !{!769, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !211, line: 233, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !211, line: 234, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !770}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !752, file: !747, line: 102, baseType: !760, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !733, file: !43, line: 129, baseType: !777, size: 256, offset: 512)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !778, line: 26, size: 256, elements: !779)
!778 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !777, file: !778, line: 27, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !777, file: !778, line: 28, baseType: !782, size: 192, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !783, line: 43, size: 192, elements: !784)
!783 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !782, file: !783, line: 44, baseType: !652, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !782, file: !783, line: 45, baseType: !278, size: 128, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !733, file: !43, line: 132, baseType: !212, size: 64, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !733, file: !43, line: 133, baseType: !791, size: 64, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !794)
!794 = !{!795, !799, !1644}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !793, file: !43, line: 83, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !682}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !793, file: !43, line: 89, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !806, line: 512, size: 896, elements: !807)
!806 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!807 = !{!808, !1611, !1612, !1619, !1626, !1636, !1637, !1638, !1640, !1642}
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 513, baseType: !809, size: 320)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !806, line: 513, size: 320, elements: !810)
!810 = !{!811, !1607, !1608, !1609, !1610}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !809, file: !806, line: 514, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !814)
!814 = !{!815, !824, !1512, !1518, !1525, !1526, !1531, !1532, !1537, !1538, !1541, !1600, !1601, !1602, !1603, !1604, !1605}
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !27, line: 628, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !27, line: 628, size: 128, elements: !817)
!817 = !{!818, !823}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !27, line: 629, baseType: !819, size: 128)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !27, line: 629, size: 128, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !819, file: !27, line: 631, baseType: !212, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !819, file: !27, line: 632, baseType: !212, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !816, file: !27, line: 635, baseType: !767, size: 128, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !813, file: !27, line: 639, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !827)
!827 = !{!828, !1510}
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !27, line: 734, baseType: !829, size: 10240)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !27, line: 734, size: 10240, elements: !830)
!830 = !{!831, !835, !849, !1372, !1373, !1374, !1375, !1376, !1377, !1386, !1387, !1388, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1427, !1429, !1432, !1479, !1480, !1481, !1484, !1485, !1486, !1489, !1490, !1491, !1497, !1498}
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !27, line: 739, baseType: !832, size: 512, align: 512)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !829, file: !27, line: 739, size: 512, align: 512, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !832, file: !27, line: 747, baseType: !382, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !829, file: !27, line: 750, baseType: !836, size: 128, offset: 512)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !837, line: 218, size: 128, elements: !838)
!837 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!838 = !{!839, !847, !848}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 219, baseType: !840, size: 32)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 219, size: 32, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !840, file: !837, line: 220, baseType: !362, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !840, file: !837, line: 221, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !837, line: 197, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 197, elements: !846)
!846 = !{}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !836, file: !837, line: 223, baseType: !7, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !836, file: !837, line: 224, baseType: !209, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !829, file: !27, line: 752, baseType: !850, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!212, !853, !212, !212, !212, !212}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !855)
!855 = !{!856, !867, !868, !870, !871, !879, !880, !881, !953, !1148, !1157, !1163, !1164, !1362, !1363, !1364, !1365, !1367, !1368, !1371}
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !14, line: 995, baseType: !857, size: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !14, line: 995, size: 128, elements: !858)
!858 = !{!859, !865, !866}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !857, file: !14, line: 996, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !861, line: 60, size: 64, elements: !862)
!861 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !860, file: !861, line: 61, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !857, file: !14, line: 997, baseType: !767, size: 128, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !857, file: !14, line: 998, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !854, file: !14, line: 1005, baseType: !362, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !854, file: !14, line: 1006, baseType: !869, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !211, line: 156, baseType: !7)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !854, file: !14, line: 1007, baseType: !637, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !854, file: !14, line: 1008, baseType: !872, size: 256, offset: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !873, line: 66, size: 256, elements: !874)
!873 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!874 = !{!875, !876, !877, !878}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !872, file: !873, line: 67, baseType: !637, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !872, file: !873, line: 68, baseType: !652, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !872, file: !873, line: 70, baseType: !647, size: 32, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !872, file: !873, line: 72, baseType: !278, size: 128, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !854, file: !14, line: 1009, baseType: !467, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !854, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !854, file: !14, line: 1011, baseType: !882, size: 256, offset: 640)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !883)
!883 = !{!884, !905, !949, !950, !951, !952}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !882, file: !14, line: 949, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !886, line: 34, baseType: !887)
!886 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !886, line: 25, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !887, file: !886, line: 26, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !891, line: 27, baseType: !892)
!891 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !891, line: 13, size: 64, elements: !893)
!893 = !{!894, !904}
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !891, line: 14, baseType: !895, size: 32)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !891, line: 14, size: 32, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !895, file: !891, line: 15, baseType: !382, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 16, baseType: !899, size: 32)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 16, size: 32, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !899, file: !891, line: 18, baseType: !390, size: 8)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !899, file: !891, line: 19, baseType: !903, size: 24, offset: 8)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 24, elements: !550)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !892, file: !891, line: 26, baseType: !374, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !882, file: !14, line: 950, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !908)
!908 = !{!909, !915, !916, !917, !930, !931, !938, !939}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !907, file: !19, line: 61, baseType: !910, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !911, line: 113, baseType: !912)
!911 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !911, line: 111, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !912, file: !911, line: 112, baseType: !382, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !907, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !907, file: !19, line: 63, baseType: !362, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !907, file: !19, line: 65, baseType: !918, size: 256, offset: 128)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 256, elements: !928)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !211, line: 194, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !919, file: !211, line: 195, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !211, line: 198, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !211, line: 199, baseType: !922, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !923, file: !211, line: 199, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!928 = !{!929}
!929 = !DISubrange(count: 4)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !907, file: !19, line: 66, baseType: !919, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !907, file: !19, line: 68, baseType: !932, size: 192, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !933, line: 41, baseType: !934)
!933 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !933, line: 37, size: 192, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !933, line: 38, baseType: !362, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !934, file: !933, line: 39, baseType: !278, size: 128, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !907, file: !19, line: 69, baseType: !767, size: 128, align: 64, offset: 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !907, file: !19, line: 70, baseType: !940, offset: 768)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, elements: !947)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !941, file: !19, line: 55, baseType: !109, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !941, file: !19, line: 56, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!947 = !{!948}
!948 = !DISubrange(count: -1)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !882, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !882, file: !14, line: 952, baseType: !269, size: 32, offset: 160)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !882, file: !14, line: 952, baseType: !269, size: 32, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !882, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !854, file: !14, line: 1012, baseType: !954, size: 64, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !957, line: 110, size: 1472, elements: !958)
!957 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !975, !976, !977, !978, !979, !980, !1093, !1094, !1095, !1096, !1097, !1128, !1131, !1135, !1143}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !956, file: !957, line: 111, baseType: !637, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !956, file: !957, line: 112, baseType: !269, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !956, file: !957, line: 113, baseType: !284, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !956, file: !957, line: 114, baseType: !269, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !956, file: !957, line: 115, baseType: !284, size: 32, offset: 160)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !956, file: !957, line: 116, baseType: !269, size: 32, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !956, file: !957, line: 117, baseType: !284, size: 32, offset: 224)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !956, file: !957, line: 118, baseType: !269, size: 32, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !956, file: !957, line: 119, baseType: !284, size: 32, offset: 288)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !956, file: !957, line: 120, baseType: !7, size: 32, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !956, file: !957, line: 121, baseType: !970, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !971, line: 24, baseType: !972)
!971 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !971, line: 24, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !972, file: !971, line: 24, baseType: !223, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !956, file: !957, line: 122, baseType: !970, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !956, file: !957, line: 123, baseType: !970, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !956, file: !957, line: 124, baseType: !970, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !956, file: !957, line: 125, baseType: !970, size: 64, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !956, file: !957, line: 127, baseType: !344, size: 8, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !956, file: !957, line: 129, baseType: !981, size: 64, offset: 768)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !983, line: 195, size: 1728, elements: !984)
!983 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!984 = !{!985, !986, !991, !996, !997, !1000, !1001, !1008, !1009, !1010, !1011, !1014, !1015, !1016, !1018, !1019, !1057, !1078}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !982, file: !983, line: 196, baseType: !910, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !982, file: !983, line: 197, baseType: !987, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !983, line: 28, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !211, line: 104, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !224, line: 20, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !216, line: 26, baseType: !109)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 198, baseType: !992, size: 192, offset: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 198, size: 192, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !992, file: !983, line: 199, baseType: !278, size: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !992, file: !983, line: 200, baseType: !665, size: 192, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !982, file: !983, line: 205, baseType: !633, size: 320, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !982, file: !983, line: 206, baseType: !998, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !983, line: 206, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !982, file: !983, line: 207, baseType: !209, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 208, baseType: !1002, size: 64, offset: 704)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 208, size: 64, elements: !1003)
!1003 = !{!1004, !1007}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1002, file: !983, line: 209, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1006, line: 8, baseType: !644)
!1006 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1002, file: !983, line: 210, baseType: !1005, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !982, file: !983, line: 212, baseType: !1005, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !982, file: !983, line: 213, baseType: !269, size: 32, offset: 832)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !982, file: !983, line: 214, baseType: !284, size: 32, offset: 864)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !982, file: !983, line: 215, baseType: !1012, size: 32, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !983, line: 31, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !211, line: 110, baseType: !338)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !982, file: !983, line: 216, baseType: !217, size: 16, offset: 928)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !982, file: !983, line: 217, baseType: !217, size: 16, offset: 944)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !982, file: !983, line: 221, baseType: !1017, size: 16, offset: 960)
!1017 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 228, baseType: !212, size: 64, offset: 1024)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 245, baseType: !1020, size: 320, offset: 1088)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 245, size: 320, elements: !1021)
!1021 = !{!1022, !1049}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1020, file: !983, line: 246, baseType: !1023, size: 320)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !983, line: 114, size: 320, elements: !1024)
!1024 = !{!1025, !1026, !1038, !1041, !1048}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1023, file: !983, line: 116, baseType: !212, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !983, line: 117, baseType: !1027, size: 64, offset: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !983, line: 117, size: 64, elements: !1028)
!1028 = !{!1029, !1037}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !983, line: 118, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !983, line: 118, size: 64, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1030, file: !983, line: 120, baseType: !397, size: 16)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1030, file: !983, line: 121, baseType: !1034, size: 48, offset: 16)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 6)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1027, file: !983, line: 127, baseType: !212, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1023, file: !983, line: 129, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !983, line: 102, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1023, file: !983, line: 130, baseType: !1042, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !983, line: 108, size: 192, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1043, file: !983, line: 109, baseType: !767, size: 128, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1043, file: !983, line: 110, baseType: !910, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1043, file: !983, line: 111, baseType: !763, size: 8, offset: 160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1023, file: !983, line: 131, baseType: !421, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !983, line: 247, baseType: !1050, size: 320)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !983, line: 247, size: 320, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1050, file: !983, line: 248, baseType: !212, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1050, file: !983, line: 249, baseType: !212, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1050, file: !983, line: 250, baseType: !1039, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1050, file: !983, line: 251, baseType: !1042, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1050, file: !983, line: 252, baseType: !446, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 260, baseType: !1058, size: 256, offset: 1408)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 260, size: 256, elements: !1059)
!1059 = !{!1060, !1066}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1058, file: !983, line: 261, baseType: !1061, size: 256)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !983, line: 134, size: 256, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1061, file: !983, line: 135, baseType: !209, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1061, file: !983, line: 136, baseType: !1065, size: 256)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !928)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !983, line: 262, baseType: !1067, size: 256)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !983, line: 262, size: 256, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1067, file: !983, line: 264, baseType: !278, size: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1067, file: !983, line: 265, baseType: !1071, size: 128, offset: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1072, line: 22, size: 128, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1073 = !{!1074, !1077}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1071, file: !1072, line: 23, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1072, line: 23, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1071, file: !1072, line: 24, baseType: !212, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !982, file: !983, line: 280, baseType: !1079, size: 64, offset: 1664)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !983, line: 176, size: 192, elements: !1081)
!1081 = !{!1082, !1091, !1092}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1080, file: !983, line: 177, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !983, line: 171, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!109, !981, !1087, !1089, !981}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1080, file: !983, line: 178, baseType: !981, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1080, file: !983, line: 179, baseType: !1039, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !956, file: !957, line: 130, baseType: !981, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !956, file: !957, line: 131, baseType: !981, size: 64, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !956, file: !957, line: 132, baseType: !981, size: 64, offset: 960)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !956, file: !957, line: 135, baseType: !209, size: 64, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !956, file: !957, line: 137, baseType: !1098, size: 64, offset: 1088)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1100, line: 14, size: 1088, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1101 = !{!1102, !1103, !1112, !1113, !1114, !1115, !1116, !1117}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1099, file: !1100, line: 15, baseType: !910, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1099, file: !1100, line: 17, baseType: !1104, size: 320, offset: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1105, line: 22, size: 320, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1105, line: 23, baseType: !652, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1104, file: !1105, line: 24, baseType: !643, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1104, file: !1105, line: 26, baseType: !278, size: 128, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1104, file: !1105, line: 28, baseType: !1111, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1099, file: !1100, line: 19, baseType: !212, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1099, file: !1100, line: 20, baseType: !637, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1099, file: !1100, line: 23, baseType: !923, size: 128, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !1100, line: 24, baseType: !269, size: 32, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1099, file: !1100, line: 29, baseType: !637, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1099, file: !1100, line: 36, baseType: !1118, size: 320, offset: 768)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1119, line: 15, size: 320, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1118, file: !1119, line: 16, baseType: !652, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1118, file: !1119, line: 18, baseType: !109, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1118, file: !1119, line: 19, baseType: !109, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1118, file: !1119, line: 20, baseType: !109, size: 32, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1118, file: !1119, line: 21, baseType: !109, size: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1118, file: !1119, line: 22, baseType: !212, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 23, baseType: !212, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !956, file: !957, line: 138, baseType: !1129, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !27, line: 901, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !956, file: !957, line: 139, baseType: !1132, size: 64, offset: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1134, line: 16, flags: DIFlagFwdDecl)
!1134 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !956, file: !957, line: 140, baseType: !1136, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !957, line: 25, size: 64, elements: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1137, file: !957, line: 26, baseType: !382, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1137, file: !957, line: 27, baseType: !109, size: 32, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1137, file: !957, line: 28, baseType: !1142, offset: 64)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, elements: !947)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !957, line: 142, baseType: !1144, size: 128, offset: 1344)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !956, file: !957, line: 142, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1144, file: !957, line: 143, baseType: !109, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1144, file: !957, line: 144, baseType: !767, size: 128, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !854, file: !14, line: 1013, baseType: !1149, size: 256, offset: 960)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1149, file: !14, line: 971, baseType: !212, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1149, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1149, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1149, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1149, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1149, file: !14, line: 976, baseType: !467, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !854, file: !14, line: 1014, baseType: !1158, size: 128, offset: 1216)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1159, line: 8, size: 128, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1158, file: !1159, line: 9, baseType: !451, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1158, file: !1159, line: 10, baseType: !304, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !854, file: !14, line: 1015, baseType: !262, size: 64, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !854, file: !14, line: 1016, baseType: !1165, size: 64, offset: 1408)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1168)
!1168 = !{!1169, !1170, !1174, !1179, !1183, !1212, !1213, !1219, !1232, !1239, !1243, !1244, !1248, !1249, !1250, !1255, !1256, !1260, !1264, !1270, !1271, !1275, !1276, !1283, !1287, !1291, !1297, !1301, !1343, !1347, !1351, !1352, !1358}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1167, file: !14, line: 1915, baseType: !496, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1167, file: !14, line: 1916, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!467, !853, !467, !109}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1167, file: !14, line: 1917, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!581, !853, !446, !593, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1167, file: !14, line: 1918, baseType: !1180, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!581, !853, !421, !593, !1178}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1167, file: !14, line: 1919, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!581, !1187, !1209}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1196, !1197, !1198, !1199}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1188, file: !14, line: 374, baseType: !853, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1188, file: !14, line: 375, baseType: !467, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1188, file: !14, line: 376, baseType: !1193, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1187, !222}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1188, file: !14, line: 377, baseType: !209, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1188, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1188, file: !14, line: 379, baseType: !397, size: 16, offset: 288)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !14, line: 380, baseType: !1200, size: 64, offset: 320)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !14, line: 380, size: 64, elements: !1201)
!1201 = !{!1202, !1205}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1200, file: !14, line: 386, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1200, file: !14, line: 395, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!581, !209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1211, line: 17, flags: DIFlagFwdDecl)
!1211 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1167, file: !14, line: 1920, baseType: !1184, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1167, file: !14, line: 1921, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!109, !1187, !1217, !7}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1167, file: !14, line: 1923, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!109, !853, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1225)
!1225 = !{!1226, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1224, file: !14, line: 1859, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!763, !1223, !421, !109, !467, !223, !7}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1224, file: !14, line: 1860, baseType: !467, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1167, file: !14, line: 1924, baseType: !1233, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1236, !853, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !214, line: 59, baseType: !7)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !482, line: 31, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1167, file: !14, line: 1925, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!222, !853, !7, !212}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1167, file: !14, line: 1926, baseType: !1240, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1167, file: !14, line: 1927, baseType: !1245, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!109, !853, !812}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1167, file: !14, line: 1928, baseType: !212, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1167, file: !14, line: 1929, baseType: !259, size: 64, offset: 832)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1167, file: !14, line: 1930, baseType: !1251, size: 64, offset: 896)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!109, !853, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !209)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1167, file: !14, line: 1931, baseType: !259, size: 64, offset: 960)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1167, file: !14, line: 1932, baseType: !1257, size: 64, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!109, !853, !467, !467, !109}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1167, file: !14, line: 1933, baseType: !1261, size: 64, offset: 1088)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!109, !109, !853, !109}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1167, file: !14, line: 1934, baseType: !1265, size: 64, offset: 1152)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!109, !853, !109, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1167, file: !14, line: 1935, baseType: !850, size: 64, offset: 1216)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1167, file: !14, line: 1936, baseType: !1272, size: 64, offset: 1280)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!109, !109}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1167, file: !14, line: 1937, baseType: !1265, size: 64, offset: 1344)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1167, file: !14, line: 1938, baseType: !1277, size: 64, offset: 1408)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!581, !1280, !853, !1178, !593, !7}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1282, line: 59, flags: DIFlagFwdDecl)
!1282 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1167, file: !14, line: 1939, baseType: !1284, size: 64, offset: 1472)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!581, !853, !1178, !1280, !593, !7}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1167, file: !14, line: 1940, baseType: !1288, size: 64, offset: 1536)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !853}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1167, file: !14, line: 1941, baseType: !1292, size: 64, offset: 1600)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!109, !853, !109, !1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1167, file: !14, line: 1942, baseType: !1298, size: 64, offset: 1664)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!222, !853, !109, !467, !467}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1167, file: !14, line: 1944, baseType: !1302, size: 64, offset: 1728)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305, !853}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1307, line: 17, size: 960, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1338, !1339, !1342}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1306, file: !1307, line: 18, baseType: !446, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1306, file: !1307, line: 19, baseType: !593, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1306, file: !1307, line: 20, baseType: !593, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1306, file: !1307, line: 21, baseType: !593, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1306, file: !1307, line: 22, baseType: !593, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1306, file: !1307, line: 23, baseType: !467, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1306, file: !1307, line: 24, baseType: !467, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1306, file: !1307, line: 25, baseType: !872, size: 256, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1306, file: !1307, line: 26, baseType: !1318, size: 64, offset: 704)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1307, line: 32, size: 256, elements: !1321)
!1321 = !{!1322, !1326, !1330, !1334}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1320, file: !1307, line: 33, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!209, !1305, !1178}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1320, file: !1307, line: 34, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1305, !209}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1320, file: !1307, line: 35, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!209, !1305, !209, !1178}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1320, file: !1307, line: 36, baseType: !1335, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!109, !1305, !209}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1306, file: !1307, line: 27, baseType: !109, size: 32, offset: 768)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1306, file: !1307, line: 28, baseType: !1340, size: 64, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1306, file: !1307, line: 29, baseType: !209, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1167, file: !14, line: 1948, baseType: !1344, size: 64, offset: 1792)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!581, !853, !467, !853, !467, !593, !7}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1167, file: !14, line: 1950, baseType: !1348, size: 64, offset: 1856)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!467, !853, !467, !853, !467, !467, !7}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1167, file: !14, line: 1953, baseType: !1257, size: 64, offset: 1920)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1167, file: !14, line: 1954, baseType: !1353, size: 64, offset: 1984)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!109, !1356, !7}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1167, file: !14, line: 1955, baseType: !1359, size: 64, offset: 2048)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!109, !1356, !1217, !7}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !854, file: !14, line: 1018, baseType: !223, size: 64, offset: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !854, file: !14, line: 1020, baseType: !209, size: 64, offset: 1536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !854, file: !14, line: 1023, baseType: !209, size: 64, offset: 1600)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !854, file: !14, line: 1027, baseType: !1366, size: 64, offset: 1664)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !854, file: !14, line: 1029, baseType: !621, size: 64, offset: 1728)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !854, file: !14, line: 1030, baseType: !1369, size: 32, offset: 1792)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1370, line: 8, baseType: !338)
!1370 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !854, file: !14, line: 1031, baseType: !1369, size: 32, offset: 1824)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !829, file: !27, line: 756, baseType: !212, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !829, file: !27, line: 757, baseType: !212, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !829, file: !27, line: 760, baseType: !212, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !829, file: !27, line: 761, baseType: !212, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !829, file: !27, line: 763, baseType: !212, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !829, file: !27, line: 764, baseType: !1378, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1380, line: 299, baseType: !1381)
!1380 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 299, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1381, file: !1380, line: 299, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1385, line: 18, baseType: !212)
!1385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !829, file: !27, line: 773, baseType: !382, size: 32, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !829, file: !27, line: 785, baseType: !382, size: 32, offset: 1120)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !829, file: !27, line: 795, baseType: !1389, size: 64, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1390, file: !27, line: 727, baseType: !223, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1390, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !829, file: !27, line: 801, baseType: !212, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !829, file: !27, line: 804, baseType: !637, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !829, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !829, file: !27, line: 808, baseType: !362, size: 32, offset: 1376)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !829, file: !27, line: 823, baseType: !633, size: 320, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !829, file: !27, line: 825, baseType: !278, size: 128, offset: 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !829, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !829, file: !27, line: 849, baseType: !212, size: 64, offset: 1920)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !829, file: !27, line: 850, baseType: !212, size: 64, offset: 1984)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !829, file: !27, line: 852, baseType: !212, size: 64, offset: 2048)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !829, file: !27, line: 853, baseType: !212, size: 64, offset: 2112)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !829, file: !27, line: 854, baseType: !639, size: 64, offset: 2176)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !829, file: !27, line: 855, baseType: !212, size: 64, offset: 2240)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !829, file: !27, line: 856, baseType: !212, size: 64, offset: 2304)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !829, file: !27, line: 857, baseType: !212, size: 64, offset: 2368)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !829, file: !27, line: 858, baseType: !212, size: 64, offset: 2432)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !829, file: !27, line: 865, baseType: !315, size: 32, offset: 2496)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !829, file: !27, line: 867, baseType: !362, size: 32, offset: 2528)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !829, file: !27, line: 869, baseType: !212, size: 64, offset: 2560)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !829, file: !27, line: 869, baseType: !212, size: 64, offset: 2624)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !829, file: !27, line: 869, baseType: !212, size: 64, offset: 2688)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !829, file: !27, line: 869, baseType: !212, size: 64, offset: 2752)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !829, file: !27, line: 870, baseType: !212, size: 64, offset: 2816)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !829, file: !27, line: 870, baseType: !212, size: 64, offset: 2880)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !829, file: !27, line: 870, baseType: !212, size: 64, offset: 2944)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !829, file: !27, line: 871, baseType: !212, size: 64, offset: 3008)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !829, file: !27, line: 871, baseType: !212, size: 64, offset: 3072)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !829, file: !27, line: 871, baseType: !212, size: 64, offset: 3136)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !829, file: !27, line: 871, baseType: !212, size: 64, offset: 3200)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !829, file: !27, line: 873, baseType: !1424, size: 3328, offset: 3264)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 3328, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 52)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !829, file: !27, line: 875, baseType: !1428, size: 1280, offset: 6592)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 1280, elements: !928)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !829, file: !27, line: 877, baseType: !1430, size: 64, offset: 7872)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !829, file: !27, line: 880, baseType: !1433, size: 1088, offset: 7936)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1434, line: 72, baseType: !1435)
!1434 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 23, size: 1088, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1444, !1445, !1446, !1447, !1474, !1475, !1476}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1435, file: !1434, line: 28, baseType: !223, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1435, file: !1434, line: 38, baseType: !639, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1435, file: !1434, line: 40, baseType: !212, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1435, file: !1434, line: 43, baseType: !633, size: 320, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1435, file: !1434, line: 44, baseType: !1442, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1434, line: 44, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1434, line: 48, baseType: !212, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1434, line: 59, baseType: !872, size: 256, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1435, file: !1434, line: 60, baseType: !209, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1435, file: !1434, line: 61, baseType: !1448, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1451, line: 13, size: 1216, elements: !1452)
!1451 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1450, file: !1451, line: 14, baseType: !209, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1450, file: !1451, line: 15, baseType: !212, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1450, file: !1451, line: 17, baseType: !212, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1450, file: !1451, line: 17, baseType: !212, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1450, file: !1451, line: 18, baseType: !212, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1450, file: !1451, line: 18, baseType: !212, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1450, file: !1451, line: 19, baseType: !1460, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1450, file: !1451, line: 21, baseType: !222, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1450, file: !1451, line: 23, baseType: !222, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1450, file: !1451, line: 24, baseType: !222, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1450, file: !1451, line: 25, baseType: !222, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1450, file: !1451, line: 26, baseType: !222, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1450, file: !1451, line: 27, baseType: !222, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1450, file: !1451, line: 28, baseType: !222, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1450, file: !1451, line: 29, baseType: !222, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1450, file: !1451, line: 30, baseType: !222, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1450, file: !1451, line: 31, baseType: !222, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1450, file: !1451, line: 32, baseType: !222, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1450, file: !1451, line: 33, baseType: !222, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1435, file: !1434, line: 63, baseType: !382, size: 32, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1435, file: !1434, line: 69, baseType: !397, size: 16, offset: 1056)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1435, file: !1434, line: 70, baseType: !1477, size: 16, offset: 1072)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !224, line: 18, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !216, line: 23, baseType: !1017)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !27, line: 882, baseType: !212, size: 64, offset: 9024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !829, file: !27, line: 885, baseType: !362, size: 32, offset: 9088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !829, file: !27, line: 886, baseType: !1482, size: 64, offset: 9152)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !829, file: !27, line: 901, baseType: !1129, size: 64, offset: 9216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !829, file: !27, line: 904, baseType: !853, size: 64, offset: 9280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !829, file: !27, line: 906, baseType: !1487, size: 64, offset: 9344)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !829, file: !27, line: 930, baseType: !382, size: 32, offset: 9408)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !829, file: !27, line: 933, baseType: !382, size: 32, offset: 9440)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !829, file: !27, line: 935, baseType: !1492, size: 64, offset: 9472)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1492, file: !68, line: 104, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !829, file: !27, line: 940, baseType: !637, size: 64, offset: 9536)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !829, file: !27, line: 942, baseType: !1499, size: 256, offset: 9600)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1500, line: 98, size: 256, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1499, file: !1500, line: 99, baseType: !637, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1499, file: !1500, line: 100, baseType: !278, size: 128, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1499, file: !1500, line: 101, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1500, line: 21, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !826, file: !27, line: 986, baseType: !1511, offset: 10240)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, elements: !947)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !813, file: !27, line: 640, baseType: !1513, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1380, line: 297, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1380, line: 297, size: 64, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1514, file: !1380, line: 297, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1385, line: 19, baseType: !212)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !27, line: 646, baseType: !1519, size: 64, offset: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !27, line: 646, size: 64, elements: !1520)
!1520 = !{!1521, !1524}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1519, file: !27, line: 647, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !212)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1519, file: !27, line: 648, baseType: !1523, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !813, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !813, file: !27, line: 667, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !27, line: 580, baseType: !633, size: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !813, file: !27, line: 670, baseType: !763, size: 8, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !813, file: !27, line: 681, baseType: !1533, size: 256, offset: 512)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !27, line: 678, size: 256, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1533, file: !27, line: 679, baseType: !665, size: 192, align: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1533, file: !27, line: 680, baseType: !212, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !813, file: !27, line: 689, baseType: !278, size: 128, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !813, file: !27, line: 691, baseType: !1539, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !813, file: !27, line: 694, baseType: !1542, size: 64, offset: 960)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !806, line: 563, size: 1024, elements: !1545)
!1545 = !{!1546, !1550, !1551, !1555, !1559, !1563, !1564, !1568, !1572, !1576, !1577, !1578, !1582, !1586, !1592, !1596}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1544, file: !806, line: 564, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !812}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1544, file: !806, line: 569, baseType: !1547, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1544, file: !806, line: 571, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!109, !812, !212}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1544, file: !806, line: 572, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!109, !812}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1544, file: !806, line: 578, baseType: !1560, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!109, !812, !212, !212, !212}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1544, file: !806, line: 580, baseType: !800, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1544, file: !806, line: 581, baseType: !1565, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!803, !804, !7}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1544, file: !806, line: 582, baseType: !1569, size: 64, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!803, !804, !212, !212}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1544, file: !806, line: 584, baseType: !1573, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!212, !812}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1544, file: !806, line: 588, baseType: !800, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1544, file: !806, line: 591, baseType: !800, size: 64, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1544, file: !806, line: 597, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!109, !812, !212, !209, !109, !109}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1544, file: !806, line: 603, baseType: !1583, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!421, !812}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1544, file: !806, line: 613, baseType: !1587, size: 64, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!109, !812, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1544, file: !806, line: 625, baseType: !1593, size: 64, offset: 896)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1590, !812, !212}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1544, file: !806, line: 633, baseType: !1597, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!682, !812, !212}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !813, file: !27, line: 697, baseType: !212, size: 64, offset: 1024)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !813, file: !27, line: 699, baseType: !853, size: 64, offset: 1088)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !813, file: !27, line: 700, baseType: !209, size: 64, offset: 1152)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !813, file: !27, line: 711, baseType: !637, size: 64, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !813, file: !27, line: 717, baseType: !1590, size: 64, offset: 1280)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !813, file: !27, line: 722, baseType: !1606, offset: 1344)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !846)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !809, file: !806, line: 515, baseType: !210, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !809, file: !806, line: 516, baseType: !212, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !809, file: !806, line: 517, baseType: !212, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !809, file: !806, line: 518, baseType: !212, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 520, baseType: !26, size: 32, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !805, file: !806, line: 522, baseType: !1613, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1385, line: 22, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1385, line: 22, size: 64, elements: !1616)
!1616 = !{!1617}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1615, file: !1385, line: 22, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1385, line: 15, baseType: !212)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !805, file: !806, line: 524, baseType: !1620, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1380, line: 372, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 372, size: 64, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1622, file: !1380, line: 372, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1385, line: 16, baseType: !212)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 527, baseType: !1627, size: 64, offset: 512)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 527, size: 64, elements: !1628)
!1628 = !{!1629, !1635}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1627, file: !806, line: 528, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1385, line: 21, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1385, line: 21, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1631, file: !1385, line: 21, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1385, line: 14, baseType: !212)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1627, file: !806, line: 529, baseType: !1614, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !805, file: !806, line: 534, baseType: !682, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !805, file: !806, line: 535, baseType: !682, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !805, file: !806, line: 541, baseType: !1639, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !805, file: !806, line: 545, baseType: !1641, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !805, file: !806, line: 549, baseType: !1643, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1380, line: 520, baseType: !682)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !793, file: !43, line: 100, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!109, !732, !212, !212, !109}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !733, file: !43, line: 134, baseType: !209, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !733, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !43, line: 136, baseType: !1651, size: 128, offset: 1088)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !43, line: 136, size: 128, elements: !1652)
!1652 = !{!1653, !1659}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1651, file: !43, line: 137, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1655, line: 6, size: 128, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1654, file: !1655, line: 7, baseType: !223, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1654, file: !1655, line: 8, baseType: !223, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !43, line: 138, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !43, line: 138, elements: !1661)
!1661 = !{!1662, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1660, file: !43, line: 138, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !43, line: 138, elements: !846)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1660, file: !43, line: 138, baseType: !1665)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1654, elements: !947)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !729, file: !27, line: 147, baseType: !209, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !687, file: !27, line: 161, baseType: !767, size: 128, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !27, line: 164, baseType: !1669, size: 32, offset: 384)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !27, line: 164, size: 32, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1669, file: !27, line: 169, baseType: !382, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1669, file: !27, line: 177, baseType: !7, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !683, file: !27, line: 181, baseType: !382, size: 32, offset: 416)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !676, file: !14, line: 406, baseType: !1677, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!109, !853, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !1682)
!1682 = !{!1683, !1713, !1727}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !27, line: 295, baseType: !1684, size: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !27, line: 295, size: 512, elements: !1685)
!1685 = !{!1686, !1712}
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !27, line: 296, baseType: !1687, size: 448)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1684, file: !27, line: 296, size: 448, elements: !1688)
!1688 = !{!1689, !1690, !1699, !1700, !1701, !1710, !1711}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1687, file: !27, line: 298, baseType: !212, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !27, line: 299, baseType: !1691, size: 128, offset: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !27, line: 299, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1691, file: !27, line: 300, baseType: !278, size: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !27, line: 302, baseType: !1695, size: 128)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !27, line: 302, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1695, file: !27, line: 303, baseType: !209, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1695, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1687, file: !27, line: 310, baseType: !621, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1687, file: !27, line: 311, baseType: !212, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !27, line: 312, baseType: !1702, size: 64, offset: 320)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !27, line: 312, size: 64, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1702, file: !27, line: 313, baseType: !209, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1702, file: !27, line: 314, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1707, file: !27, line: 256, baseType: !212, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1687, file: !27, line: 316, baseType: !382, size: 32, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1687, file: !27, line: 317, baseType: !382, size: 32, offset: 416)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1684, file: !27, line: 323, baseType: !683, size: 512, align: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !27, line: 325, baseType: !1714, size: 512, offset: 512)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !27, line: 325, size: 512, elements: !1715)
!1715 = !{!1716, !1726}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !27, line: 326, baseType: !1717, size: 320)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !27, line: 326, size: 320, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1717, file: !27, line: 327, baseType: !212, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1717, file: !27, line: 328, baseType: !212, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1717, file: !27, line: 329, baseType: !212, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1717, file: !27, line: 331, baseType: !382, size: 32, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1717, file: !27, line: 332, baseType: !382, size: 32, offset: 224)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1717, file: !27, line: 333, baseType: !382, size: 32, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1717, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1714, file: !27, line: 339, baseType: !683, size: 512, align: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !27, line: 341, baseType: !1728, size: 512, offset: 1024)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !27, line: 341, size: 512, elements: !1729)
!1729 = !{!1730, !1739, !1745}
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !27, line: 342, baseType: !1731, size: 384)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !27, line: 342, size: 384, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1731, file: !27, line: 343, baseType: !212, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1731, file: !27, line: 344, baseType: !212, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1731, file: !27, line: 346, baseType: !209, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1731, file: !27, line: 347, baseType: !209, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1731, file: !27, line: 348, baseType: !209, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1731, file: !27, line: 349, baseType: !209, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !27, line: 352, baseType: !1740, size: 256)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !27, line: 352, size: 256, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1740, file: !27, line: 353, baseType: !212, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1740, file: !27, line: 354, baseType: !212, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1740, file: !27, line: 356, baseType: !278, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1728, file: !27, line: 359, baseType: !683, size: 512, align: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !676, file: !14, line: 409, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!109, !621, !1674}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !676, file: !14, line: 412, baseType: !1751, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!763, !621, !1680}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !676, file: !14, line: 414, baseType: !1755, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1758}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !676, file: !14, line: 416, baseType: !1761, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!109, !853, !621, !467, !7, !1764, !1296}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !676, file: !14, line: 419, baseType: !1766, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!109, !853, !621, !467, !7, !7, !682, !209}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !676, file: !14, line: 424, baseType: !1770, size: 64, offset: 448)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1773, !621, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !211, line: 131, baseType: !223)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !676, file: !14, line: 425, baseType: !1775, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1680, !593, !593}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !676, file: !14, line: 426, baseType: !1779, size: 64, offset: 576)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!763, !1680, !210}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !676, file: !14, line: 427, baseType: !1783, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1680}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !676, file: !14, line: 428, baseType: !1184, size: 64, offset: 704)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !676, file: !14, line: 433, baseType: !1788, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!109, !621, !1680, !1680, !74}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !676, file: !14, line: 435, baseType: !1792, size: 64, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!109, !1680}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !676, file: !14, line: 436, baseType: !1796, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!763, !1680, !593, !593}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !676, file: !14, line: 438, baseType: !1800, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1680, !1803, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !676, file: !14, line: 439, baseType: !1805, size: 64, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!109, !621, !682}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !676, file: !14, line: 442, baseType: !1809, size: 64, offset: 1088)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!109, !1812, !853, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !676, file: !14, line: 444, baseType: !1288, size: 64, offset: 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !676, file: !14, line: 445, baseType: !1817, size: 64, offset: 1216)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!109, !1187, !1209}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !14, line: 486, baseType: !212, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !622, file: !14, line: 487, baseType: !633, size: 320, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !622, file: !14, line: 488, baseType: !1369, size: 32, offset: 1280)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !622, file: !14, line: 489, baseType: !362, size: 32, offset: 1312)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !622, file: !14, line: 490, baseType: !278, size: 128, offset: 1344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !622, file: !14, line: 491, baseType: !209, size: 64, offset: 1472)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !612, file: !575, line: 180, baseType: !1827, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!581, !853, !515, !611, !446, !467, !593}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !612, file: !575, line: 182, baseType: !1827, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !612, file: !575, line: 184, baseType: !1832, size: 64, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!109, !853, !515, !611, !812}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !600, file: !575, line: 90, baseType: !1836, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !600, file: !575, line: 91, baseType: !1838, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !565, file: !510, line: 120, baseType: !1840, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1843, !533}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1846)
!1846 = !{!1847, !1848, !1852, !1856, !1862, !1866}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1845, file: !82, line: 40, baseType: !81, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1845, file: !82, line: 41, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!763}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1845, file: !82, line: 42, baseType: !1853, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!209}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1845, file: !82, line: 43, baseType: !1857, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1460, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1845, file: !82, line: 44, baseType: !1863, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1460}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1845, file: !82, line: 45, baseType: !1867, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !209}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !565, file: !510, line: 121, baseType: !1871, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1460, !533}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !565, file: !510, line: 122, baseType: !1875, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !533, !1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !509, file: !510, line: 70, baseType: !1881, size: 64, offset: 384)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !482, line: 190, size: 1152, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1963, !1964, !1965, !1966, !1967, !1970}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1882, file: !482, line: 191, baseType: !382, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1882, file: !482, line: 192, baseType: !382, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1882, file: !482, line: 202, baseType: !1881, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1882, file: !482, line: 203, baseType: !421, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1882, file: !482, line: 205, baseType: !665, size: 192, align: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1882, file: !482, line: 207, baseType: !1460, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1882, file: !482, line: 208, baseType: !7, size: 32, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !482, line: 209, baseType: !1892, size: 256, offset: 512)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1882, file: !482, line: 209, size: 256, elements: !1893)
!1893 = !{!1894, !1903, !1907}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1892, file: !482, line: 210, baseType: !1895, size: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !482, line: 153, size: 256, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1902}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1895, file: !482, line: 154, baseType: !212, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1895, file: !482, line: 156, baseType: !661, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1895, file: !482, line: 162, baseType: !1900, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !482, line: 162, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1895, file: !482, line: 167, baseType: !212, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1892, file: !482, line: 211, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !482, line: 170, size: 64, elements: !1905)
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1904, file: !482, line: 171, baseType: !1881, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1892, file: !482, line: 212, baseType: !1908, size: 256)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !482, line: 174, size: 256, elements: !1909)
!1909 = !{!1910, !1958, !1961, !1962}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1908, file: !482, line: 175, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !482, line: 271, size: 768, elements: !1914)
!1914 = !{!1915, !1935, !1939, !1940, !1941, !1942, !1943, !1947, !1948, !1949, !1950, !1954}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1913, file: !482, line: 276, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!109, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !482, line: 251, size: 1216, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1920, file: !482, line: 253, baseType: !1881, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1920, file: !482, line: 254, baseType: !853, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1920, file: !482, line: 255, baseType: !1305, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1920, file: !482, line: 256, baseType: !209, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1920, file: !482, line: 259, baseType: !872, size: 256, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1920, file: !482, line: 260, baseType: !872, size: 256, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1920, file: !482, line: 261, baseType: !109, size: 32, offset: 768)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1920, file: !482, line: 262, baseType: !278, size: 128, offset: 832)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1920, file: !482, line: 263, baseType: !446, size: 64, offset: 960)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1920, file: !482, line: 265, baseType: !593, size: 64, offset: 1024)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1920, file: !482, line: 266, baseType: !763, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1920, file: !482, line: 267, baseType: !763, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1920, file: !482, line: 268, baseType: !1542, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1913, file: !482, line: 277, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1919}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1913, file: !482, line: 290, baseType: !1335, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1913, file: !482, line: 292, baseType: !1323, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1913, file: !482, line: 293, baseType: !1331, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1913, file: !482, line: 294, baseType: !1327, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1913, file: !482, line: 296, baseType: !1944, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!581, !1919, !446, !593, !467}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1913, file: !482, line: 306, baseType: !593, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1913, file: !482, line: 313, baseType: !763, size: 8, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1913, file: !482, line: 314, baseType: !1944, size: 64, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1913, file: !482, line: 317, baseType: !1951, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1236, !1919, !1237}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1913, file: !482, line: 320, baseType: !1955, size: 64, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!109, !1919, !812}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1908, file: !482, line: 176, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !482, line: 35, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1908, file: !482, line: 177, baseType: !467, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1908, file: !482, line: 178, baseType: !1881, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1882, file: !482, line: 215, baseType: !209, size: 64, offset: 768)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1882, file: !482, line: 221, baseType: !223, size: 64, offset: 832)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1882, file: !482, line: 223, baseType: !217, size: 16, offset: 896)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1882, file: !482, line: 224, baseType: !266, size: 16, offset: 912)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1882, file: !482, line: 225, baseType: !1968, size: 64, offset: 960)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !482, line: 36, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1882, file: !482, line: 227, baseType: !767, size: 128, align: 64, offset: 1024)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !509, file: !510, line: 71, baseType: !1972, size: 32, offset: 448)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1973, line: 19, size: 32, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1972, file: !1973, line: 20, baseType: !910, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !509, file: !510, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !509, file: !510, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !509, file: !510, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !509, file: !510, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !509, file: !510, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !506, file: !6, line: 47, baseType: !496, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !506, file: !6, line: 48, baseType: !515, size: 64, offset: 576)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !506, file: !6, line: 49, baseType: !1984, size: 64, offset: 640)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !506, file: !6, line: 50, baseType: !1987, size: 64, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !497, file: !6, line: 418, baseType: !1989, size: 64, offset: 1408)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1991)
!1991 = !{!1992, !1993, !1998, !2002, !2006, !2010}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1990, file: !6, line: 54, baseType: !585, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1990, file: !6, line: 55, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!581, !1989, !1997, !446}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1990, file: !6, line: 57, baseType: !1999, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!581, !1989, !1997, !421, !593}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1990, file: !6, line: 59, baseType: !2003, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !496, !421}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1990, file: !6, line: 60, baseType: !2007, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!109, !496}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1990, file: !6, line: 61, baseType: !2011, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !496}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !497, file: !6, line: 419, baseType: !421, size: 64, offset: 1472)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !497, file: !6, line: 420, baseType: !421, size: 64, offset: 1536)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !497, file: !6, line: 421, baseType: !515, size: 64, offset: 1600)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !497, file: !6, line: 424, baseType: !2018, size: 64, offset: 1664)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2020)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !497, file: !6, line: 425, baseType: !2022, size: 64, offset: 1728)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !497, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !497, file: !6, line: 435, baseType: !872, size: 256, offset: 1856)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !497, file: !6, line: 437, baseType: !2027, size: 64, offset: 2112)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2029, line: 69, size: 320, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2030 = !{!2031, !2032, !2033, !2050, !2052, !2056, !2057}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2028, file: !2029, line: 70, baseType: !421, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2028, file: !2029, line: 71, baseType: !496, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2028, file: !2029, line: 72, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2029, line: 47, size: 256, elements: !2037)
!2037 = !{!2038, !2039, !2045, !2049}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2029, line: 49, baseType: !7, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2036, file: !2029, line: 51, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!109, !421, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2036, file: !2029, line: 53, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!109, !446, !2043}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2036, file: !2029, line: 55, baseType: !1867, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2028, file: !2029, line: 73, baseType: !2051, size: 16, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2028, file: !2029, line: 74, baseType: !2053, size: 8, offset: 208)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !224, line: 16, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !216, line: 20, baseType: !2055)
!2055 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2028, file: !2029, line: 75, baseType: !390, size: 8, offset: 216)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !2029, line: 76, baseType: !2058, size: 64, offset: 256)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !2029, line: 76, size: 64, elements: !2059)
!2059 = !{!2060, !2061, !2068}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2058, file: !2029, line: 77, baseType: !209, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2058, file: !2029, line: 78, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2029, line: 86, size: 128, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2064, file: !2029, line: 87, baseType: !7, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2064, file: !2029, line: 88, baseType: !446, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2058, file: !2029, line: 79, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2029, line: 92, size: 256, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2077, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2071, file: !2029, line: 94, baseType: !7, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2071, file: !2029, line: 95, baseType: !7, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2071, file: !2029, line: 96, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2071, file: !2029, line: 97, baseType: !2034, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2071, file: !2029, line: 98, baseType: !209, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !497, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !497, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !497, file: !6, line: 442, baseType: !2018, size: 64, offset: 2240)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !497, file: !6, line: 443, baseType: !2022, size: 64, offset: 2304)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !497, file: !6, line: 444, baseType: !763, size: 8, offset: 2368)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !497, file: !6, line: 451, baseType: !763, size: 8, offset: 2376)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !497, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !497, file: !6, line: 455, baseType: !2087, size: 64, offset: 2432)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2089, line: 23, size: 96, elements: !2090)
!2089 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2090 = !{!2091, !2092, !2093}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2088, file: !2089, line: 24, baseType: !109, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2088, file: !2089, line: 24, baseType: !109, size: 32, offset: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2088, file: !2089, line: 24, baseType: !109, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !497, file: !6, line: 458, baseType: !2095, size: 64, offset: 2496)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!109}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !497, file: !6, line: 460, baseType: !2099, size: 4032, align: 512, offset: 2560)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2100, size: 4032, elements: !2116)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2100, file: !6, line: 363, baseType: !209, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2100, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2100, file: !6, line: 367, baseType: !2105, size: 448, offset: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2105, file: !6, line: 320, baseType: !496, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2105, file: !6, line: 321, baseType: !2109, size: 384, offset: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2110, line: 40, size: 384, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2109, file: !2110, line: 41, baseType: !2113, size: 384, align: 64)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 384, align: 64, elements: !2114)
!2114 = !{!2115}
!2115 = !DISubrange(count: 2)
!2116 = !{!2117}
!2117 = !DISubrange(count: 7)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !497, file: !6, line: 463, baseType: !2119, size: 192, offset: 6592)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2120, line: 8, size: 192, elements: !2121)
!2120 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2121 = !{!2122, !2123, !2125}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2119, file: !2120, line: 10, baseType: !7, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2119, file: !2120, line: 11, baseType: !2124, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2119, file: !2120, line: 12, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2128, line: 59, size: 48, elements: !2129)
!2128 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2127, file: !2128, line: 60, baseType: !1477, size: 16)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2127, file: !2128, line: 61, baseType: !1477, size: 16, offset: 16)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2127, file: !2128, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2127, file: !2128, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2127, file: !2128, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2127, file: !2128, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !497, file: !6, line: 465, baseType: !212, size: 64, offset: 6784)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !497, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !497, file: !6, line: 470, baseType: !278, size: 128, offset: 6912)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !497, file: !6, line: 471, baseType: !2140, size: 64, offset: 7040)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2142, line: 33, size: 96, elements: !2143)
!2142 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2143 = !{!2144, !2145, !2146, !2147}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2141, file: !2142, line: 37, baseType: !109, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2141, file: !2142, line: 43, baseType: !109, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2141, file: !2142, line: 45, baseType: !217, size: 16, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2141, file: !2142, line: 47, baseType: !217, size: 16, offset: 80)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !497, file: !6, line: 476, baseType: !2149, size: 64, offset: 7104)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2151)
!2151 = !{!2152, !2168, !2169, !2170}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2150, file: !6, line: 379, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2155, line: 204, baseType: !2156)
!2155 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2155, line: 197, size: 192, elements: !2157)
!2157 = !{!2158, !2160, !2161, !2162, !2164, !2166}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2156, file: !2155, line: 198, baseType: !2159, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2155, line: 21, baseType: !220)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2156, file: !2155, line: 199, baseType: !344, size: 8, offset: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2156, file: !2155, line: 200, baseType: !344, size: 8, offset: 40)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2156, file: !2155, line: 201, baseType: !2163, size: 16, offset: 48)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2155, line: 17, baseType: !215)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2156, file: !2155, line: 202, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2155, line: 16, baseType: !225)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2156, file: !2155, line: 203, baseType: !2167, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2155, line: 22, baseType: !225)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2150, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2150, file: !6, line: 381, baseType: !446, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2150, file: !6, line: 382, baseType: !446, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !497, file: !6, line: 477, baseType: !2150, size: 256, offset: 7168)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !497, file: !6, line: 480, baseType: !2173, size: 64, offset: 7424)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !497, file: !6, line: 483, baseType: !2176, size: 64, offset: 7488)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !497, file: !6, line: 488, baseType: !446, size: 64, offset: 7552)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !497, file: !6, line: 492, baseType: !209, size: 64, offset: 7616)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !497, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !497, file: !6, line: 495, baseType: !209, size: 64, offset: 7744)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !497, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !497, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !497, file: !6, line: 500, baseType: !2185, size: 64, offset: 7872)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2187, line: 45, baseType: !2188)
!2187 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !497, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !497, file: !6, line: 504, baseType: !2191, size: 64, offset: 8000)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2194, line: 96, size: 192, elements: !2195)
!2194 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2195 = !{!2196, !2197, !2251, !2254}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2193, file: !2194, line: 97, baseType: !7, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2193, file: !2194, line: 98, baseType: !2198, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2194, line: 24, size: 3072, elements: !2200)
!2200 = !{!2201, !2203, !2204, !2205, !2206, !2220, !2221, !2222, !2223, !2235, !2236, !2237, !2248, !2249, !2250}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2199, file: !2194, line: 26, baseType: !2202, size: 128)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !2114)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2199, file: !2194, line: 27, baseType: !2202, size: 128, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2199, file: !2194, line: 28, baseType: !109, size: 32, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2199, file: !2194, line: 31, baseType: !362, size: 32, align: 512, offset: 512)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2199, file: !2194, line: 32, baseType: !2207, size: 960, offset: 576)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2208, line: 206, size: 960, elements: !2209)
!2208 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2209 = !{!2210, !2211, !2214, !2216, !2217, !2219}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2207, file: !2208, line: 207, baseType: !770, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2207, file: !2208, line: 208, baseType: !2212, size: 256, offset: 64)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2213, size: 256, elements: !928)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2207, file: !2208, line: 209, baseType: !2215, size: 256, offset: 320)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !928)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2207, file: !2208, line: 213, baseType: !222, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2207, file: !2208, line: 215, baseType: !2218, size: 256, offset: 640)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !928)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !2208, line: 216, baseType: !390, size: 8, offset: 896)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2199, file: !2194, line: 33, baseType: !212, size: 64, offset: 1536)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2199, file: !2194, line: 34, baseType: !212, size: 64, offset: 1600)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2199, file: !2194, line: 35, baseType: !763, size: 8, offset: 1664)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2199, file: !2194, line: 36, baseType: !2224, size: 320, offset: 1728)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2225, line: 11, size: 320, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2226 = !{!2227, !2228, !2229, !2234}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2224, file: !2225, line: 16, baseType: !923, size: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2224, file: !2225, line: 17, baseType: !212, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2224, file: !2225, line: 18, baseType: !2230, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2233}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2224, file: !2225, line: 19, baseType: !338, size: 32, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2199, file: !2194, line: 37, baseType: !1499, size: 256, offset: 2048)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2199, file: !2194, line: 38, baseType: !767, size: 128, align: 64, offset: 2304)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2199, file: !2194, line: 39, baseType: !2238, size: 64, offset: 2432)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2194, line: 49, size: 768, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2239, file: !2194, line: 50, baseType: !362, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2239, file: !2194, line: 51, baseType: !2215, size: 256, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2239, file: !2194, line: 53, baseType: !2215, size: 256, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2239, file: !2194, line: 54, baseType: !212, size: 64, offset: 576)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2239, file: !2194, line: 55, baseType: !2238, size: 64, offset: 640)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2239, file: !2194, line: 56, baseType: !109, size: 32, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2239, file: !2194, line: 57, baseType: !109, size: 32, offset: 736)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2199, file: !2194, line: 40, baseType: !212, size: 64, offset: 2496)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2199, file: !2194, line: 42, baseType: !109, size: 32, offset: 2560)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2199, file: !2194, line: 43, baseType: !2192, size: 64, offset: 2624)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2193, file: !2194, line: 99, baseType: !2252, offset: 128)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2253, line: 211, elements: !846)
!2253 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2193, file: !2194, line: 100, baseType: !2255, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2194, line: 63, size: 3008, elements: !2257)
!2257 = !{!2258, !2259, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2289}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2256, file: !2194, line: 64, baseType: !2238, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2256, file: !2194, line: 65, baseType: !2260, size: 192, offset: 64)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2238, size: 192, elements: !550)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2256, file: !2194, line: 67, baseType: !109, size: 32, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2256, file: !2194, line: 68, baseType: !872, size: 256, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2256, file: !2194, line: 69, baseType: !362, size: 32, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2256, file: !2194, line: 70, baseType: !872, size: 256, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2256, file: !2194, line: 71, baseType: !212, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2256, file: !2194, line: 72, baseType: !212, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2256, file: !2194, line: 73, baseType: !212, size: 64, offset: 1024)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2256, file: !2194, line: 74, baseType: !212, size: 64, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2256, file: !2194, line: 75, baseType: !212, size: 64, offset: 1152)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2256, file: !2194, line: 76, baseType: !212, size: 64, offset: 1216)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2256, file: !2194, line: 77, baseType: !212, size: 64, offset: 1280)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2256, file: !2194, line: 78, baseType: !212, size: 64, offset: 1344)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2256, file: !2194, line: 79, baseType: !763, size: 8, offset: 1408)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2256, file: !2194, line: 80, baseType: !212, size: 64, offset: 1472)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2256, file: !2194, line: 81, baseType: !872, size: 256, offset: 1536)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2256, file: !2194, line: 82, baseType: !777, size: 256, offset: 1792)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2256, file: !2194, line: 84, baseType: !382, size: 32, offset: 2048)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2256, file: !2194, line: 87, baseType: !212, size: 64, offset: 2112)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2256, file: !2194, line: 88, baseType: !212, size: 64, offset: 2176)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2256, file: !2194, line: 89, baseType: !2281, size: 704, offset: 2240)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1500, line: 111, size: 704, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2288}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2281, file: !1500, line: 112, baseType: !1499, size: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2281, file: !1500, line: 113, baseType: !2224, size: 320, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2281, file: !1500, line: 116, baseType: !2286, size: 64, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1500, line: 18, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2281, file: !1500, line: 117, baseType: !109, size: 32, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2256, file: !2194, line: 90, baseType: !2192, size: 64, offset: 2944)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !497, file: !6, line: 515, baseType: !2291, size: 64, offset: 8064)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2293, line: 117, size: 128, elements: !2294)
!2293 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2292, file: !2293, line: 118, baseType: !989, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2292, file: !2293, line: 119, baseType: !989, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2292, file: !2293, line: 120, baseType: !222, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !497, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !497, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !497, file: !6, line: 520, baseType: !2301, size: 64, offset: 8192)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !497, file: !6, line: 523, baseType: !2303, size: 64, offset: 8256)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !497, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !497, file: !6, line: 525, baseType: !2308, size: 64, offset: 8384)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !497, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !497, file: !6, line: 533, baseType: !209, size: 64, offset: 8512)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !497, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !497, file: !6, line: 535, baseType: !2315, size: 64, offset: 8640)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !497, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !497, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !497, file: !6, line: 540, baseType: !2319, size: 64, offset: 8768)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2321, line: 32, size: 64, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2320, file: !2321, line: 33, baseType: !989, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2320, file: !2321, line: 34, baseType: !989, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !497, file: !6, line: 563, baseType: !278, size: 128, offset: 8832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !497, file: !6, line: 565, baseType: !278, size: 128, offset: 8960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !497, file: !6, line: 568, baseType: !2328, size: 64, offset: 9088)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !497, file: !6, line: 570, baseType: !382, size: 32, offset: 9152)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !14, line: 2382, baseType: !471, size: 64, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !472, file: !14, line: 2383, baseType: !919, size: 64, offset: 512)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !472, file: !14, line: 2385, baseType: !2335, offset: 576)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2253, line: 206, elements: !846)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !472, file: !14, line: 2386, baseType: !2335, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !472, file: !14, line: 2387, baseType: !2335, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !472, file: !14, line: 2388, baseType: !2339, offset: 576)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2335, elements: !550)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !472, file: !14, line: 2390, baseType: !2335, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !472, file: !14, line: 2391, baseType: !2335, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !472, file: !14, line: 2392, baseType: !2335, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !472, file: !14, line: 2393, baseType: !2335, offset: 576)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !458, file: !14, line: 1197, baseType: !2345, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2347)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2348)
!2348 = !{!2349, !2353, !2357, !2358, !2362, !2366, !2370, !2371, !2372, !2376, !2380, !2384, !2385, !2386, !2392, !2396, !2397, !2401, !2402, !2403, !2404, !2408, !2412, !2459, !2474, !2475}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2347, file: !14, line: 2058, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!262, !457}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2347, file: !14, line: 2059, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !262}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2347, file: !14, line: 2060, baseType: !2354, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2347, file: !14, line: 2062, baseType: !2359, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !262, !109}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2347, file: !14, line: 2063, baseType: !2363, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!109, !262, !1674}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2347, file: !14, line: 2064, baseType: !2367, size: 64, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!109, !262}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2347, file: !14, line: 2065, baseType: !2354, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2347, file: !14, line: 2066, baseType: !492, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2347, file: !14, line: 2067, baseType: !2373, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!109, !457, !109}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2347, file: !14, line: 2068, baseType: !2377, size: 64, offset: 576)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!109, !457, !13}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2347, file: !14, line: 2069, baseType: !2381, size: 64, offset: 640)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!109, !457}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2347, file: !14, line: 2070, baseType: !2377, size: 64, offset: 704)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2347, file: !14, line: 2071, baseType: !2381, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2347, file: !14, line: 2072, baseType: !2387, size: 64, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!109, !304, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2347, file: !14, line: 2073, baseType: !2393, size: 64, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!109, !457, !2124, !446}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2347, file: !14, line: 2074, baseType: !492, size: 64, offset: 960)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2347, file: !14, line: 2076, baseType: !2398, size: 64, offset: 1024)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!109, !1305, !304}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2347, file: !14, line: 2077, baseType: !2398, size: 64, offset: 1088)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2347, file: !14, line: 2078, baseType: !2398, size: 64, offset: 1152)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2347, file: !14, line: 2079, baseType: !2398, size: 64, offset: 1216)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2347, file: !14, line: 2081, baseType: !2405, size: 64, offset: 1280)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!581, !457, !109, !446, !593, !467}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2347, file: !14, line: 2082, baseType: !2409, size: 64, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!581, !457, !109, !421, !593, !467}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2347, file: !14, line: 2083, baseType: !2413, size: 64, offset: 1408)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2416, !262}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2444, !2445, !2446}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2418, file: !51, line: 297, baseType: !923, size: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2418, file: !51, line: 298, baseType: !278, size: 128, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2418, file: !51, line: 299, baseType: !278, size: 128, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2418, file: !51, line: 300, baseType: !278, size: 128, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2418, file: !51, line: 301, baseType: !872, size: 256, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2418, file: !51, line: 302, baseType: !362, size: 32, offset: 768)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2418, file: !51, line: 303, baseType: !382, size: 32, offset: 800)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2418, file: !51, line: 304, baseType: !457, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2418, file: !51, line: 305, baseType: !2429, size: 64, offset: 896)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2430)
!2430 = !{!2431, !2443}
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2429, file: !51, line: 69, baseType: !2432, size: 32)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2429, file: !51, line: 69, size: 32, elements: !2433)
!2433 = !{!2434, !2435, !2436}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2432, file: !51, line: 70, baseType: !269, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2432, file: !51, line: 71, baseType: !284, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2432, file: !51, line: 72, baseType: !2437, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2438, line: 24, baseType: !2439)
!2438 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2438, line: 22, size: 32, elements: !2440)
!2440 = !{!2441}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2439, file: !2438, line: 23, baseType: !2442, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2438, line: 20, baseType: !275)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2429, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2418, file: !51, line: 306, baseType: !467, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2418, file: !51, line: 307, baseType: !212, size: 64, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2418, file: !51, line: 308, baseType: !2447, size: 576, offset: 1088)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2448)
!2448 = !{!2449, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2447, file: !51, line: 206, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !469)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2447, file: !51, line: 207, baseType: !2450, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2447, file: !51, line: 208, baseType: !2450, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2447, file: !51, line: 209, baseType: !2450, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2447, file: !51, line: 210, baseType: !2450, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2447, file: !51, line: 211, baseType: !2450, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2447, file: !51, line: 212, baseType: !2450, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2447, file: !51, line: 213, baseType: !1005, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2447, file: !51, line: 214, baseType: !1005, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2347, file: !14, line: 2085, baseType: !2460, size: 64, offset: 1472)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!222, !457, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2465, line: 15, size: 256, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2466 = !{!2467, !2468, !2469, !2470, !2471}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2464, file: !2465, line: 16, baseType: !210, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2464, file: !2465, line: 19, baseType: !109, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2464, file: !2465, line: 26, baseType: !212, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2464, file: !2465, line: 33, baseType: !212, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2464, file: !2465, line: 36, baseType: !2472, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2347, file: !14, line: 2087, baseType: !2460, size: 64, offset: 1536)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2347, file: !14, line: 2089, baseType: !492, size: 64, offset: 1600)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !458, file: !14, line: 1198, baseType: !2477, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2480)
!2480 = !{!2481, !2485, !2489, !2493, !2494, !2495, !2496, !2497, !2502, !2507, !2511}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2479, file: !51, line: 325, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!109, !2417}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2479, file: !51, line: 326, baseType: !2486, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2417, !457, !109}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2479, file: !51, line: 327, baseType: !2490, size: 64, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2417}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2479, file: !51, line: 328, baseType: !2482, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2479, file: !51, line: 329, baseType: !2482, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2479, file: !51, line: 330, baseType: !2482, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2479, file: !51, line: 331, baseType: !2373, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2479, file: !51, line: 334, baseType: !2498, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!2501, !262}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2479, file: !51, line: 335, baseType: !2503, size: 64, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!109, !262, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2479, file: !51, line: 337, baseType: !2508, size: 64, offset: 576)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!109, !262, !2501}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2479, file: !51, line: 339, baseType: !2512, size: 64, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!109, !457, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !458, file: !14, line: 1199, baseType: !2517, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2520)
!2520 = !{!2521, !2527, !2528, !2532, !2533, !2534, !2549, !2572, !2576, !2577, !2600}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2519, file: !51, line: 431, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!109, !457, !109, !109, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2519, file: !51, line: 432, baseType: !2373, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2519, file: !51, line: 433, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!109, !457, !7}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2519, file: !51, line: 434, baseType: !2529, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2519, file: !51, line: 435, baseType: !2373, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2519, file: !51, line: 436, baseType: !2535, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!109, !457, !109, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2539, file: !51, line: 418, baseType: !109, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2539, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2539, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2539, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2539, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2539, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2539, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2539, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2519, file: !51, line: 437, baseType: !2550, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!109, !457, !2429, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2554, file: !51, line: 346, baseType: !109, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2554, file: !51, line: 347, baseType: !223, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2554, file: !51, line: 348, baseType: !223, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2554, file: !51, line: 349, baseType: !223, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2554, file: !51, line: 350, baseType: !223, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2554, file: !51, line: 351, baseType: !223, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2554, file: !51, line: 352, baseType: !223, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2554, file: !51, line: 353, baseType: !643, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2554, file: !51, line: 355, baseType: !643, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2554, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2554, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2554, file: !51, line: 358, baseType: !223, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2554, file: !51, line: 359, baseType: !223, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2554, file: !51, line: 360, baseType: !223, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2554, file: !51, line: 361, baseType: !643, size: 64, offset: 832)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2554, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2519, file: !51, line: 438, baseType: !2573, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!109, !457, !2515, !2553}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2519, file: !51, line: 440, baseType: !2550, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2519, file: !51, line: 441, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!109, !457, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2582, file: !51, line: 412, baseType: !7, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2582, file: !51, line: 413, baseType: !2586, size: 1344, offset: 64)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 1344, elements: !550)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2599}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !51, line: 398, baseType: !7, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2587, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2587, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2587, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2587, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2587, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2587, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2587, file: !51, line: 406, baseType: !226, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2587, file: !51, line: 407, baseType: !2598, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !211, line: 132, baseType: !223)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2587, file: !51, line: 408, baseType: !2598, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2519, file: !51, line: 442, baseType: !2529, size: 64, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !458, file: !14, line: 1200, baseType: !2602, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !458, file: !14, line: 1201, baseType: !212, size: 64, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !458, file: !14, line: 1202, baseType: !212, size: 64, offset: 704)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !458, file: !14, line: 1203, baseType: !212, size: 64, offset: 768)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !458, file: !14, line: 1204, baseType: !304, size: 64, offset: 832)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !458, file: !14, line: 1205, baseType: !633, size: 320, offset: 896)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !458, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !458, file: !14, line: 1207, baseType: !382, size: 32, offset: 1248)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !458, file: !14, line: 1209, baseType: !209, size: 64, offset: 1280)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !458, file: !14, line: 1211, baseType: !2614, size: 64, offset: 1344)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2617)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !458, file: !14, line: 1223, baseType: !2619, size: 64, offset: 1408)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !321, line: 34, size: 64, elements: !2620)
!2620 = !{!2621}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2619, file: !321, line: 35, baseType: !324, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !458, file: !14, line: 1224, baseType: !278, size: 128, offset: 1472)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !458, file: !14, line: 1225, baseType: !2624, size: 64, offset: 1600)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !458, file: !14, line: 1226, baseType: !2627, size: 64, offset: 1664)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !458, file: !14, line: 1227, baseType: !2630, size: 64, offset: 1728)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !458, file: !14, line: 1228, baseType: !2633, size: 64, offset: 1792)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !458, file: !14, line: 1229, baseType: !923, size: 128, offset: 1856)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !458, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !458, file: !14, line: 1231, baseType: !2638, size: 2496, offset: 2048)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2644, !2676}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2638, file: !51, line: 522, baseType: !7, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2638, file: !51, line: 523, baseType: !633, size: 320, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2638, file: !51, line: 524, baseType: !2643, size: 192, offset: 384)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 192, elements: !550)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2638, file: !51, line: 525, baseType: !2645, size: 1728, offset: 576)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2646, size: 1728, elements: !550)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2647)
!2647 = !{!2648, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2646, file: !51, line: 223, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2651)
!2651 = !{!2652, !2653, !2666, !2667}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2650, file: !51, line: 446, baseType: !109, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2650, file: !51, line: 447, baseType: !2654, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2656, file: !51, line: 313, baseType: !2373, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2656, file: !51, line: 314, baseType: !2373, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2656, file: !51, line: 315, baseType: !2373, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2656, file: !51, line: 316, baseType: !2373, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2656, file: !51, line: 317, baseType: !2482, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2656, file: !51, line: 318, baseType: !2482, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2656, file: !51, line: 319, baseType: !2482, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2656, file: !51, line: 320, baseType: !2512, size: 64, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2650, file: !51, line: 448, baseType: !496, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2650, file: !51, line: 449, baseType: !2649, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2646, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2646, file: !51, line: 226, baseType: !278, size: 128, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2646, file: !51, line: 227, baseType: !212, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2646, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2646, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2646, file: !51, line: 230, baseType: !2450, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2646, file: !51, line: 231, baseType: !2450, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2646, file: !51, line: 232, baseType: !209, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2638, file: !51, line: 526, baseType: !2677, size: 192, offset: 2304)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2654, size: 192, elements: !550)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !458, file: !14, line: 1233, baseType: !2679, size: 2368, offset: 4544)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2680)
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2679, file: !14, line: 1185, baseType: !217, size: 16)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2679, file: !14, line: 1186, baseType: !217, size: 16, offset: 16)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2679, file: !14, line: 1187, baseType: !2684, size: 2304, offset: 64)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2685, size: 2304, elements: !550)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2686, line: 12, size: 768, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2687 = !{!2688, !2696, !2697, !3882, !3883}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2685, file: !2686, line: 13, baseType: !2689, size: 384)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2690, line: 17, size: 384, elements: !2691)
!2690 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2691 = !{!2692, !2693, !2694, !2695}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2689, file: !2690, line: 18, baseType: !109, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2689, file: !2690, line: 19, baseType: !109, size: 32, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2689, file: !2690, line: 20, baseType: !932, size: 192, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2689, file: !2690, line: 22, baseType: !767, size: 128, align: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2685, file: !2686, line: 14, baseType: !2076, size: 64, offset: 384)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2685, file: !2686, line: 15, baseType: !2698, size: 64, offset: 448)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2699, line: 16, size: 64, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2700 = !{!2701}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2698, file: !2699, line: 17, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1282, line: 746, size: 58368, elements: !2704)
!2704 = !{!2705, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2785, !2796, !2882, !2886, !2889, !2920, !2921, !2922, !2923, !2934, !2936, !2937, !2938, !2939, !2940, !2941, !2952, !2953, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2970, !2971, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3059, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3107, !3113, !3114, !3115, !3116, !3117, !3121, !3124, !3131, !3136, !3139, !3142, !3145, !3148, !3286, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3324, !3325, !3326, !3335, !3343, !3344, !3345, !3346, !3347, !3352, !3353, !3354, !3357, !3358, !3361, !3364, !3367, !3375, !3378, !3379, !3464, !3465, !3466, !3467, !3468, !3474, !3475, !3476, !3477, !3480, !3481, !3484, !3487, !3488, !3491, !3492, !3493, !3496, !3497, !3498, !3499, !3500, !3501, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3533, !3534, !3540, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3552, !3624, !3626, !3627, !3628, !3629, !3630, !3631, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3659, !3660, !3661}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2703, file: !1282, line: 752, baseType: !2706, size: 192)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2707, line: 56, size: 192, elements: !2708)
!2707 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2706, file: !2707, line: 57, baseType: !212, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2706, file: !2707, line: 58, baseType: !212, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2706, file: !2707, line: 59, baseType: !338, size: 32, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2706, file: !2707, line: 61, baseType: !338, size: 32, offset: 160)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2703, file: !1282, line: 754, baseType: !7, size: 32, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2703, file: !1282, line: 767, baseType: !209, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2703, file: !1282, line: 768, baseType: !910, size: 32, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2703, file: !1282, line: 770, baseType: !7, size: 32, offset: 352)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2703, file: !1282, line: 771, baseType: !7, size: 32, offset: 384)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2703, file: !1282, line: 774, baseType: !109, size: 32, offset: 416)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2703, file: !1282, line: 775, baseType: !2720, size: 128, offset: 448)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2721, line: 58, size: 128, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2722 = !{!2723, !2724, !2729, !2730}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2720, file: !2721, line: 59, baseType: !860, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !2721, line: 60, baseType: !2725, size: 32, offset: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !2721, line: 60, size: 32, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2725, file: !2721, line: 61, baseType: !7, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2725, file: !2721, line: 62, baseType: !382, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2720, file: !2721, line: 65, baseType: !397, size: 16, offset: 96)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2720, file: !2721, line: 65, baseType: !397, size: 16, offset: 112)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2703, file: !1282, line: 776, baseType: !7, size: 32, offset: 576)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2703, file: !1282, line: 777, baseType: !212, size: 64, offset: 640)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2703, file: !1282, line: 778, baseType: !2702, size: 64, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2703, file: !1282, line: 787, baseType: !109, size: 32, offset: 768)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2703, file: !1282, line: 788, baseType: !109, size: 32, offset: 800)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2703, file: !1282, line: 790, baseType: !109, size: 32, offset: 832)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2703, file: !1282, line: 792, baseType: !109, size: 32, offset: 864)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2703, file: !1282, line: 793, baseType: !109, size: 32, offset: 896)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2703, file: !1282, line: 794, baseType: !109, size: 32, offset: 928)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2703, file: !1282, line: 795, baseType: !7, size: 32, offset: 960)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2703, file: !1282, line: 797, baseType: !2742, size: 2048, offset: 1024)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1282, line: 551, size: 2048, elements: !2743)
!2743 = !{!2744, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2764, !2767, !2768, !2769}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2742, file: !1282, line: 553, baseType: !2745, size: 128)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1282, line: 411, size: 128, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2745, file: !1282, line: 412, baseType: !212, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2745, file: !1282, line: 413, baseType: !338, size: 32, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2742, file: !1282, line: 554, baseType: !665, size: 192, align: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2742, file: !1282, line: 555, baseType: !223, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2742, file: !1282, line: 556, baseType: !223, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2742, file: !1282, line: 558, baseType: !278, size: 128, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2742, file: !1282, line: 559, baseType: !7, size: 32, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2742, file: !1282, line: 561, baseType: !223, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2742, file: !1282, line: 562, baseType: !223, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2742, file: !1282, line: 563, baseType: !223, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2742, file: !1282, line: 564, baseType: !223, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2742, file: !1282, line: 565, baseType: !643, size: 64, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2742, file: !1282, line: 566, baseType: !223, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2742, file: !1282, line: 568, baseType: !223, size: 64, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2742, file: !1282, line: 571, baseType: !109, size: 32, offset: 1088)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2742, file: !1282, line: 572, baseType: !2763, size: 64, offset: 1152)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2742, file: !1282, line: 574, baseType: !2765, size: 64, offset: 1216)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1282, line: 49, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2742, file: !1282, line: 576, baseType: !2765, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2742, file: !1282, line: 578, baseType: !212, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2742, file: !1282, line: 588, baseType: !2770, size: 512, align: 512, offset: 1536)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1282, line: 497, size: 512, align: 512, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2770, file: !1282, line: 498, baseType: !223, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2770, file: !1282, line: 499, baseType: !223, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2770, file: !1282, line: 500, baseType: !223, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2770, file: !1282, line: 501, baseType: !338, size: 32, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2770, file: !1282, line: 502, baseType: !338, size: 32, offset: 224)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2770, file: !1282, line: 503, baseType: !212, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2770, file: !1282, line: 504, baseType: !212, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2770, file: !1282, line: 505, baseType: !212, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2770, file: !1282, line: 506, baseType: !2781, size: 64, align: 64, offset: 448)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1282, line: 445, size: 64, align: 64, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2781, file: !1282, line: 446, baseType: !7, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2781, file: !1282, line: 447, baseType: !7, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2703, file: !1282, line: 798, baseType: !2786, size: 384, offset: 3072)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1282, line: 592, size: 384, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2786, file: !1282, line: 593, baseType: !278, size: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2786, file: !1282, line: 594, baseType: !212, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2786, file: !1282, line: 595, baseType: !212, size: 64, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2786, file: !1282, line: 596, baseType: !7, size: 32, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2786, file: !1282, line: 597, baseType: !217, size: 16, offset: 288)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2786, file: !1282, line: 598, baseType: !217, size: 16, offset: 304)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2786, file: !1282, line: 600, baseType: !2795, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2703, file: !1282, line: 799, baseType: !2797, size: 1792, offset: 3456)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1282, line: 610, size: 1792, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2879, !2880}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2797, file: !1282, line: 611, baseType: !665, size: 192, align: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2797, file: !1282, line: 618, baseType: !223, size: 64, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2797, file: !1282, line: 619, baseType: !223, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2797, file: !1282, line: 620, baseType: !223, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2797, file: !1282, line: 621, baseType: !223, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2797, file: !1282, line: 622, baseType: !223, size: 64, offset: 448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2797, file: !1282, line: 629, baseType: !643, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2797, file: !1282, line: 630, baseType: !223, size: 64, offset: 576)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2797, file: !1282, line: 631, baseType: !7, size: 32, offset: 640)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2797, file: !1282, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2797, file: !1282, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2797, file: !1282, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2797, file: !1282, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2797, file: !1282, line: 662, baseType: !2813, size: 512, offset: 704)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2814)
!2814 = !{!2815, !2823, !2824, !2829, !2875, !2876, !2877, !2878}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2813, file: !57, line: 119, baseType: !2816, size: 256)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2817, line: 9, size: 256, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2816, file: !2817, line: 10, baseType: !665, size: 192, align: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2816, file: !2817, line: 11, baseType: !2821, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2822, line: 29, baseType: !643)
!2822 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2813, file: !57, line: 120, baseType: !2821, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2813, file: !57, line: 121, baseType: !2825, size: 64, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!56, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2813, file: !57, line: 122, baseType: !2830, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2832)
!2832 = !{!2833, !2856, !2857, !2860, !2865, !2866, !2870, !2874}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2831, file: !57, line: 160, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2835, file: !57, line: 216, baseType: !652, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2835, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2835, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2835, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2835, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2835, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2835, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2835, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2835, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2835, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2835, file: !57, line: 227, baseType: !217, size: 16, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2835, file: !57, line: 228, baseType: !217, size: 16, offset: 208)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2835, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2835, file: !57, line: 235, baseType: !2821, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2835, file: !57, line: 236, baseType: !2828, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2835, file: !57, line: 237, baseType: !2821, size: 64, offset: 384)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2835, file: !57, line: 238, baseType: !2828, size: 64, offset: 448)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2835, file: !57, line: 239, baseType: !2855, size: 4096, align: 512, offset: 512)
!2855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2831, size: 4096, align: 512, elements: !242)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2831, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2831, file: !57, line: 162, baseType: !2858, size: 32, offset: 96)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !211, line: 32, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !276, line: 96, baseType: !109)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2831, file: !57, line: 163, baseType: !2861, size: 32, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !311, line: 274, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !311, line: 274, size: 32, elements: !2863)
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2862, file: !311, line: 274, baseType: !315, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2831, file: !57, line: 164, baseType: !2828, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2831, file: !57, line: 165, baseType: !2867, size: 128, offset: 256)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2817, line: 14, size: 128, elements: !2868)
!2868 = !{!2869}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2867, file: !2817, line: 15, baseType: !657, size: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2831, file: !57, line: 166, baseType: !2871, size: 64, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!2821}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2831, file: !57, line: 167, baseType: !2821, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2813, file: !57, line: 123, baseType: !390, size: 8, offset: 448)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2813, file: !57, line: 124, baseType: !390, size: 8, offset: 456)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2813, file: !57, line: 125, baseType: !390, size: 8, offset: 464)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2813, file: !57, line: 126, baseType: !390, size: 8, offset: 472)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2797, file: !1282, line: 671, baseType: !2813, size: 512, offset: 1216)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2797, file: !1282, line: 679, baseType: !2881, size: 64, offset: 1728)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2703, file: !1282, line: 800, baseType: !2883, size: 64, offset: 5248)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2885)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1282, line: 800, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2703, file: !1282, line: 809, baseType: !2887, size: 64, offset: 5312)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1282, line: 70, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2703, file: !1282, line: 825, baseType: !2890, size: 2048, align: 512, offset: 5632)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1282, line: 509, size: 2048, align: 512, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2890, file: !1282, line: 511, baseType: !223, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2890, file: !1282, line: 512, baseType: !223, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2890, file: !1282, line: 513, baseType: !223, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2890, file: !1282, line: 514, baseType: !223, size: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2890, file: !1282, line: 515, baseType: !223, size: 64, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2890, file: !1282, line: 516, baseType: !223, size: 64, offset: 320)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2890, file: !1282, line: 518, baseType: !223, size: 64, offset: 384)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2890, file: !1282, line: 519, baseType: !223, size: 64, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2890, file: !1282, line: 520, baseType: !643, size: 64, offset: 512)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2890, file: !1282, line: 522, baseType: !223, size: 64, offset: 576)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2890, file: !1282, line: 523, baseType: !223, size: 64, offset: 640)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2890, file: !1282, line: 524, baseType: !643, size: 64, offset: 704)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2890, file: !1282, line: 526, baseType: !643, size: 64, offset: 768)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2890, file: !1282, line: 527, baseType: !223, size: 64, offset: 832)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2890, file: !1282, line: 529, baseType: !223, size: 64, offset: 896)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2890, file: !1282, line: 530, baseType: !223, size: 64, offset: 960)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2890, file: !1282, line: 531, baseType: !223, size: 64, offset: 1024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2890, file: !1282, line: 532, baseType: !223, size: 64, offset: 1088)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2890, file: !1282, line: 533, baseType: !223, size: 64, offset: 1152)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2890, file: !1282, line: 535, baseType: !223, size: 64, offset: 1216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2890, file: !1282, line: 536, baseType: !223, size: 64, offset: 1280)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2890, file: !1282, line: 537, baseType: !223, size: 64, offset: 1344)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2890, file: !1282, line: 538, baseType: !223, size: 64, offset: 1408)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2890, file: !1282, line: 539, baseType: !223, size: 64, offset: 1472)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2890, file: !1282, line: 540, baseType: !223, size: 64, offset: 1536)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2890, file: !1282, line: 541, baseType: !223, size: 64, offset: 1600)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2890, file: !1282, line: 542, baseType: !223, size: 64, offset: 1664)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2890, file: !1282, line: 543, baseType: !223, size: 64, offset: 1728)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2703, file: !1282, line: 833, baseType: !7, size: 32, offset: 7680)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2703, file: !1282, line: 836, baseType: !7, size: 32, offset: 7712)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2703, file: !1282, line: 837, baseType: !109, size: 32, offset: 7744)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2703, file: !1282, line: 838, baseType: !2924, size: 64, offset: 7808)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2927, line: 19, baseType: !2928)
!2927 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2927, line: 19, size: 64, elements: !2929)
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2928, file: !2927, line: 19, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !2932)
!2932 = !{!2933}
!2933 = !DISubrange(count: 1)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2703, file: !1282, line: 839, baseType: !2935, size: 64, offset: 7872)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2703, file: !1282, line: 840, baseType: !2926, size: 64, offset: 7936)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2703, file: !1282, line: 841, baseType: !209, size: 64, offset: 8000)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2703, file: !1282, line: 843, baseType: !217, size: 16, offset: 8064)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2703, file: !1282, line: 845, baseType: !217, size: 16, offset: 8080)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2703, file: !1282, line: 848, baseType: !109, size: 32, offset: 8096)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2703, file: !1282, line: 849, baseType: !2942, size: 32, offset: 8128)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1282, line: 718, size: 32, elements: !2943)
!2943 = !{!2944, !2951}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2942, file: !1282, line: 724, baseType: !2945, size: 32)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2942, file: !1282, line: 719, size: 32, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2945, file: !1282, line: 720, baseType: !390, size: 8)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2945, file: !1282, line: 721, baseType: !390, size: 8, offset: 8)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2945, file: !1282, line: 722, baseType: !390, size: 8, offset: 16)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2945, file: !1282, line: 723, baseType: !390, size: 8, offset: 24)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2942, file: !1282, line: 725, baseType: !338, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2703, file: !1282, line: 850, baseType: !278, size: 128, offset: 8192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2703, file: !1282, line: 851, baseType: !2954, size: 64, offset: 8320)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1282, line: 60, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2703, file: !1282, line: 855, baseType: !212, size: 64, offset: 8384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2703, file: !1282, line: 856, baseType: !390, size: 8, offset: 8448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2703, file: !1282, line: 857, baseType: !390, size: 8, offset: 8456)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2703, file: !1282, line: 858, baseType: !109, size: 32, offset: 8480)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2703, file: !1282, line: 859, baseType: !278, size: 128, offset: 8512)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2703, file: !1282, line: 860, baseType: !109, size: 32, offset: 8640)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2703, file: !1282, line: 861, baseType: !278, size: 128, offset: 8704)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2703, file: !1282, line: 873, baseType: !2964, size: 256, offset: 8832)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1282, line: 376, size: 256, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2964, file: !1282, line: 381, baseType: !212, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2964, file: !1282, line: 384, baseType: !226, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2964, file: !1282, line: 389, baseType: !226, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2964, file: !1282, line: 392, baseType: !226, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2703, file: !1282, line: 875, baseType: !278, size: 128, offset: 9088)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2703, file: !1282, line: 877, baseType: !2972, size: 320, offset: 9216)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2973, line: 86, size: 320, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2974 = !{!2975, !2976, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2972, file: !2973, line: 87, baseType: !109, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2972, file: !2973, line: 88, baseType: !278, size: 128, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2972, file: !2973, line: 89, baseType: !278, size: 128, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2703, file: !1282, line: 878, baseType: !665, size: 192, align: 64, offset: 9536)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2703, file: !1282, line: 881, baseType: !825, size: 64, offset: 9728)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2703, file: !1282, line: 882, baseType: !825, size: 64, offset: 9792)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2703, file: !1282, line: 884, baseType: !109, size: 32, offset: 9856)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2703, file: !1282, line: 885, baseType: !109, size: 32, offset: 9888)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2703, file: !1282, line: 886, baseType: !109, size: 32, offset: 9920)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2703, file: !1282, line: 888, baseType: !109, size: 32, offset: 9952)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2703, file: !1282, line: 890, baseType: !212, size: 64, offset: 9984)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2703, file: !1282, line: 893, baseType: !7, size: 32, offset: 10048)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2703, file: !1282, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2703, file: !1282, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2703, file: !1282, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2703, file: !1282, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2703, file: !1282, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2703, file: !1282, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2703, file: !1282, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2703, file: !1282, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2703, file: !1282, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !1282, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2703, file: !1282, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2703, file: !1282, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2703, file: !1282, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2703, file: !1282, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2703, file: !1282, line: 969, baseType: !212, size: 64, offset: 10176)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2703, file: !1282, line: 971, baseType: !3003, size: 448, offset: 10240)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3004)
!3004 = !{!3005, !3006, !3011}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3003, file: !62, line: 26, baseType: !212, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3003, file: !62, line: 27, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!222, !3010}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !3003, file: !62, line: 28, baseType: !3012, size: 320, offset: 128)
!3012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3003, file: !62, line: 28, size: 320, elements: !3013)
!3013 = !{!3014, !3024, !3049}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3012, file: !62, line: 37, baseType: !3015, size: 320)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !62, line: 30, size: 320, elements: !3016)
!3016 = !{!3017, !3019, !3020, !3021, !3022, !3023}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3015, file: !62, line: 31, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3015, file: !62, line: 32, baseType: !338, size: 32, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3015, file: !62, line: 33, baseType: !338, size: 32, offset: 96)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3015, file: !62, line: 34, baseType: !338, size: 32, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3015, file: !62, line: 35, baseType: !223, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3015, file: !62, line: 36, baseType: !3018, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3012, file: !62, line: 47, baseType: !3025, size: 192)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !62, line: 39, size: 192, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3048}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3025, file: !62, line: 40, baseType: !2858, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3025, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !3025, file: !62, line: 42, baseType: !3030, size: 64, offset: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3025, file: !62, line: 42, size: 64, elements: !3031)
!3031 = !{!3032, !3040}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3030, file: !62, line: 43, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3035, line: 7, size: 128, elements: !3036)
!3035 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3036 = !{!3037, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3034, file: !3035, line: 8, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !276, line: 93, baseType: !469)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3034, file: !3035, line: 9, baseType: !469, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3030, file: !62, line: 44, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3043, line: 7, size: 64, elements: !3044)
!3043 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3044 = !{!3045, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3042, file: !3043, line: 8, baseType: !3046, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3043, line: 5, baseType: !989)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3042, file: !3043, line: 9, baseType: !989, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3025, file: !62, line: 46, baseType: !223, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3012, file: !62, line: 55, baseType: !3050, size: 256)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !62, line: 49, size: 256, elements: !3051)
!3051 = !{!3052, !3055, !3056, !3057, !3058}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3050, file: !62, line: 50, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3050, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3050, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3050, file: !62, line: 53, baseType: !212, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3050, file: !62, line: 54, baseType: !212, size: 64, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2703, file: !1282, line: 973, baseType: !3060, size: 32, offset: 10688)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !211, line: 27, baseType: !3061)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !276, line: 28, baseType: !109)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2703, file: !1282, line: 974, baseType: !3060, size: 32, offset: 10720)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2703, file: !1282, line: 978, baseType: !212, size: 64, offset: 10752)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2703, file: !1282, line: 987, baseType: !2702, size: 64, offset: 10816)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2703, file: !1282, line: 990, baseType: !2702, size: 64, offset: 10880)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2703, file: !1282, line: 995, baseType: !278, size: 128, offset: 10944)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2703, file: !1282, line: 996, baseType: !278, size: 128, offset: 11072)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2703, file: !1282, line: 997, baseType: !2702, size: 64, offset: 11200)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2703, file: !1282, line: 1005, baseType: !278, size: 128, offset: 11264)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2703, file: !1282, line: 1006, baseType: !278, size: 128, offset: 11392)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2703, file: !1282, line: 1009, baseType: !906, size: 64, offset: 11520)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2703, file: !1282, line: 1010, baseType: !3073, size: 512, offset: 11584)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 512, elements: !928)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2703, file: !1282, line: 1011, baseType: !278, size: 128, offset: 12096)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2703, file: !1282, line: 1012, baseType: !278, size: 128, offset: 12224)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2703, file: !1282, line: 1014, baseType: !1987, size: 64, offset: 12352)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2703, file: !1282, line: 1017, baseType: !2124, size: 64, offset: 12416)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2703, file: !1282, line: 1020, baseType: !2124, size: 64, offset: 12480)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2703, file: !1282, line: 1023, baseType: !209, size: 64, offset: 12544)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2703, file: !1282, line: 1025, baseType: !223, size: 64, offset: 12608)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2703, file: !1282, line: 1026, baseType: !223, size: 64, offset: 12672)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2703, file: !1282, line: 1031, baseType: !223, size: 64, offset: 12736)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2703, file: !1282, line: 1032, baseType: !3084, size: 192, offset: 12800)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1282, line: 324, size: 192, elements: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3084, file: !1282, line: 326, baseType: !223, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3084, file: !1282, line: 327, baseType: !223, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3084, file: !1282, line: 328, baseType: !652, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2703, file: !1282, line: 1041, baseType: !212, size: 64, offset: 12992)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2703, file: !1282, line: 1042, baseType: !212, size: 64, offset: 13056)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2703, file: !1282, line: 1045, baseType: !223, size: 64, offset: 13120)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2703, file: !1282, line: 1048, baseType: !223, size: 64, offset: 13184)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2703, file: !1282, line: 1051, baseType: !212, size: 64, offset: 13248)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2703, file: !1282, line: 1052, baseType: !212, size: 64, offset: 13312)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2703, file: !1282, line: 1055, baseType: !3096, size: 640, offset: 13376)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3097, line: 132, size: 640, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3098 = !{!3099, !3105, !3106}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3096, file: !3097, line: 133, baseType: !3100, size: 576)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3101, size: 576, elements: !550)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3097, line: 117, size: 192, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3101, file: !3097, line: 118, baseType: !223, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3101, file: !3097, line: 119, baseType: !2867, size: 128, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3096, file: !3097, line: 134, baseType: !7, size: 32, offset: 576)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3096, file: !3097, line: 135, baseType: !7, size: 32, offset: 608)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2703, file: !1282, line: 1058, baseType: !3108, size: 448, offset: 14016)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3097, line: 144, size: 448, elements: !3109)
!3109 = !{!3110, !3111, !3112}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3108, file: !3097, line: 145, baseType: !767, size: 128, align: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3108, file: !3097, line: 146, baseType: !872, size: 256, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3108, file: !3097, line: 147, baseType: !7, size: 32, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2703, file: !1282, line: 1064, baseType: !954, size: 64, offset: 14464)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2703, file: !1282, line: 1067, baseType: !954, size: 64, offset: 14528)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2703, file: !1282, line: 1070, baseType: !954, size: 64, offset: 14592)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2703, file: !1282, line: 1074, baseType: !981, size: 64, offset: 14656)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2703, file: !1282, line: 1084, baseType: !3118, size: 128, offset: 14720)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !3119)
!3119 = !{!3120}
!3120 = !DISubrange(count: 16)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2703, file: !1282, line: 1086, baseType: !3122, size: 64, offset: 14848)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1282, line: 55, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2703, file: !1282, line: 1089, baseType: !3125, size: 64, offset: 14912)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3126, line: 12, size: 64, elements: !3127)
!3126 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3125, file: !3126, line: 13, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3126, line: 8, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2703, file: !1282, line: 1090, baseType: !3132, size: 128, offset: 14976)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3133, line: 13, size: 128, elements: !3134)
!3133 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3134 = !{!3135}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3132, file: !3133, line: 14, baseType: !278, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2703, file: !1282, line: 1097, baseType: !3137, size: 64, offset: 15104)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1282, line: 50, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2703, file: !1282, line: 1100, baseType: !3140, size: 64, offset: 15168)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1282, line: 1100, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2703, file: !1282, line: 1103, baseType: !3143, size: 64, offset: 15232)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1282, line: 53, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2703, file: !1282, line: 1107, baseType: !3146, size: 64, offset: 15296)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1282, line: 56, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2703, file: !1282, line: 1110, baseType: !3149, size: 64, offset: 15360)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3151, line: 93, size: 8768, elements: !3152)
!3151 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3152 = !{!3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3200, !3209, !3210, !3212, !3213, !3214, !3217, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3255, !3256, !3263, !3273, !3276, !3277, !3280, !3281, !3282, !3283, !3284, !3285}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3150, file: !3151, line: 94, baseType: !910, size: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3150, file: !3151, line: 95, baseType: !382, size: 32, offset: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3150, file: !3151, line: 96, baseType: !109, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3150, file: !3151, line: 97, baseType: !109, size: 32, offset: 96)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3150, file: !3151, line: 98, baseType: !278, size: 128, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3150, file: !3151, line: 100, baseType: !932, size: 192, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3150, file: !3151, line: 103, baseType: !2702, size: 64, offset: 448)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3150, file: !3151, line: 106, baseType: !3161, size: 192, offset: 512)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1134, line: 32, size: 192, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3161, file: !1134, line: 33, baseType: !278, size: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3161, file: !1134, line: 34, baseType: !3165, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3166, line: 25, baseType: !3167)
!3166 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3166, line: 23, size: 64, elements: !3168)
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3167, file: !3166, line: 24, baseType: !2931, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3150, file: !3151, line: 109, baseType: !919, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3150, file: !3151, line: 112, baseType: !109, size: 32, offset: 768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3150, file: !3151, line: 114, baseType: !109, size: 32, offset: 800)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3150, file: !3151, line: 115, baseType: !2702, size: 64, offset: 832)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3150, file: !3151, line: 118, baseType: !109, size: 32, offset: 896)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3150, file: !3151, line: 119, baseType: !7, size: 32, offset: 928)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3150, file: !3151, line: 121, baseType: !3177, size: 64, offset: 960)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3151, line: 80, size: 448, elements: !3179)
!3179 = !{!3180, !3181, !3187}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3178, file: !3151, line: 81, baseType: !382, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3178, file: !3151, line: 82, baseType: !3182, size: 128, offset: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3151, line: 75, size: 128, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3182, file: !3151, line: 76, baseType: !2702, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3182, file: !3151, line: 77, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3178, file: !3151, line: 83, baseType: !777, size: 256, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3150, file: !3151, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3150, file: !3151, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3150, file: !3151, line: 138, baseType: !7, size: 32, offset: 1056)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3150, file: !3151, line: 139, baseType: !278, size: 128, offset: 1088)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3150, file: !3151, line: 142, baseType: !2813, size: 512, offset: 1216)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3150, file: !3151, line: 143, baseType: !2821, size: 64, offset: 1728)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3150, file: !3151, line: 150, baseType: !3195, size: 256, offset: 1792)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3196, size: 256, elements: !2114)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3151, line: 38, size: 128, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3196, file: !3151, line: 39, baseType: !223, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3196, file: !3151, line: 40, baseType: !223, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3150, file: !3151, line: 156, baseType: !3201, size: 192, offset: 2048)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3151, line: 66, size: 192, elements: !3202)
!3202 = !{!3203}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3201, file: !3151, line: 67, baseType: !3204, size: 192)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3151, line: 47, size: 192, elements: !3205)
!3205 = !{!3206, !3207, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3204, file: !3151, line: 48, baseType: !639, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3204, file: !3151, line: 49, baseType: !639, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3204, file: !3151, line: 50, baseType: !639, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3150, file: !3151, line: 160, baseType: !3096, size: 640, offset: 2240)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3150, file: !3151, line: 163, baseType: !3211, size: 256, offset: 2880)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 256, elements: !928)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3150, file: !3151, line: 169, baseType: !906, size: 64, offset: 3136)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3150, file: !3151, line: 172, baseType: !109, size: 32, offset: 3200)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3150, file: !3151, line: 174, baseType: !3215, size: 64, offset: 3264)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3151, line: 174, flags: DIFlagFwdDecl)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3150, file: !3151, line: 185, baseType: !3218, size: 64, offset: 3328)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !311, line: 860, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 853, size: 64, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3219, file: !311, line: 858, baseType: !310, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3219, file: !311, line: 859, baseType: !362, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3150, file: !3151, line: 186, baseType: !223, size: 64, offset: 3392)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3150, file: !3151, line: 186, baseType: !223, size: 64, offset: 3456)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3150, file: !3151, line: 186, baseType: !223, size: 64, offset: 3520)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3150, file: !3151, line: 186, baseType: !223, size: 64, offset: 3584)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3150, file: !3151, line: 187, baseType: !223, size: 64, offset: 3648)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3150, file: !3151, line: 188, baseType: !223, size: 64, offset: 3712)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3150, file: !3151, line: 189, baseType: !3084, size: 192, offset: 3776)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3150, file: !3151, line: 190, baseType: !212, size: 64, offset: 3968)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3150, file: !3151, line: 190, baseType: !212, size: 64, offset: 4032)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3150, file: !3151, line: 190, baseType: !212, size: 64, offset: 4096)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3150, file: !3151, line: 190, baseType: !212, size: 64, offset: 4160)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3150, file: !3151, line: 191, baseType: !212, size: 64, offset: 4224)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3150, file: !3151, line: 191, baseType: !212, size: 64, offset: 4288)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3150, file: !3151, line: 191, baseType: !212, size: 64, offset: 4352)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3150, file: !3151, line: 191, baseType: !212, size: 64, offset: 4416)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3150, file: !3151, line: 192, baseType: !212, size: 64, offset: 4480)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3150, file: !3151, line: 192, baseType: !212, size: 64, offset: 4544)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3150, file: !3151, line: 192, baseType: !212, size: 64, offset: 4608)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3150, file: !3151, line: 192, baseType: !212, size: 64, offset: 4672)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3150, file: !3151, line: 193, baseType: !212, size: 64, offset: 4736)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3150, file: !3151, line: 193, baseType: !212, size: 64, offset: 4800)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3150, file: !3151, line: 194, baseType: !3245, size: 448, offset: 4864)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3246, line: 12, size: 448, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3245, file: !3246, line: 15, baseType: !223, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3245, file: !3246, line: 17, baseType: !223, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3245, file: !3246, line: 19, baseType: !223, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3245, file: !3246, line: 21, baseType: !223, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3245, file: !3246, line: 29, baseType: !223, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3245, file: !3246, line: 35, baseType: !223, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3245, file: !3246, line: 44, baseType: !223, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3150, file: !3151, line: 202, baseType: !226, size: 64, offset: 5312)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3150, file: !3151, line: 213, baseType: !3257, size: 2048, offset: 5376)
!3257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3258, size: 2048, elements: !3119)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3259, line: 43, size: 128, elements: !3260)
!3259 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3258, file: !3259, line: 44, baseType: !595, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3258, file: !3259, line: 45, baseType: !595, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3150, file: !3151, line: 216, baseType: !3264, size: 448, offset: 7424)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3151, line: 30, size: 448, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3264, file: !3151, line: 31, baseType: !109, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3264, file: !3151, line: 32, baseType: !222, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3264, file: !3151, line: 33, baseType: !212, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3264, file: !3151, line: 34, baseType: !223, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3264, file: !3151, line: 34, baseType: !223, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3264, file: !3151, line: 35, baseType: !212, size: 64, offset: 320)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3264, file: !3151, line: 35, baseType: !212, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3150, file: !3151, line: 219, baseType: !3274, size: 64, offset: 7872)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3151, line: 219, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3150, file: !3151, line: 222, baseType: !7, size: 32, offset: 7936)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3150, file: !3151, line: 223, baseType: !3278, size: 64, offset: 8000)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3151, line: 223, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3150, file: !3151, line: 230, baseType: !763, size: 8, offset: 8064)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3150, file: !3151, line: 231, baseType: !1017, size: 16, offset: 8080)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3150, file: !3151, line: 232, baseType: !1017, size: 16, offset: 8096)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3150, file: !3151, line: 234, baseType: !825, size: 64, offset: 8128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3150, file: !3151, line: 237, baseType: !872, size: 256, offset: 8192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3150, file: !3151, line: 243, baseType: !633, size: 320, offset: 8448)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2703, file: !1282, line: 1111, baseType: !3287, size: 64, offset: 15424)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3151, line: 20, size: 16640, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3288, file: !3151, line: 21, baseType: !362, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3288, file: !3151, line: 22, baseType: !910, size: 32, offset: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3288, file: !3151, line: 23, baseType: !932, size: 192, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3288, file: !3151, line: 24, baseType: !3294, size: 16384, offset: 256)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3295, size: 16384, elements: !554)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1134, line: 51, size: 256, elements: !3296)
!3296 = !{!3297}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3295, file: !1134, line: 52, baseType: !3298, size: 256)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1134, line: 37, size: 256, elements: !3299)
!3299 = !{!3300, !3307, !3308, !3312}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3298, file: !1134, line: 39, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3302, line: 83, baseType: !3303)
!3302 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3302, line: 82, baseType: !3305)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !109}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3298, file: !1134, line: 40, baseType: !212, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3298, file: !1134, line: 46, baseType: !3309, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3302, line: 86, baseType: !3310)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3302, line: 85, baseType: !2329)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3298, file: !1134, line: 48, baseType: !3165, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2703, file: !1282, line: 1112, baseType: !3165, size: 64, offset: 15488)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2703, file: !1282, line: 1113, baseType: !3165, size: 64, offset: 15552)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2703, file: !1282, line: 1115, baseType: !3165, size: 64, offset: 15616)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2703, file: !1282, line: 1116, baseType: !3161, size: 192, offset: 15680)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2703, file: !1282, line: 1117, baseType: !212, size: 64, offset: 15872)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2703, file: !1282, line: 1118, baseType: !593, size: 64, offset: 15936)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2703, file: !1282, line: 1119, baseType: !7, size: 32, offset: 16000)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2703, file: !1282, line: 1121, baseType: !770, size: 64, offset: 16064)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2703, file: !1282, line: 1125, baseType: !3322, size: 64, offset: 16128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1282, line: 43, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2703, file: !1282, line: 1127, baseType: !269, size: 32, offset: 16192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2703, file: !1282, line: 1128, baseType: !7, size: 32, offset: 16224)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2703, file: !1282, line: 1130, baseType: !3327, size: 128, offset: 16256)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3328, line: 37, size: 128, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3329 = !{!3330, !3331, !3332}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3327, file: !3328, line: 38, baseType: !109, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3327, file: !3328, line: 39, baseType: !382, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3327, file: !3328, line: 40, baseType: !3333, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3328, line: 24, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2703, file: !1282, line: 1131, baseType: !3336, size: 256, offset: 16384)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3337, line: 12, size: 256, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3338 = !{!3339, !3340, !3341, !3342}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3336, file: !3337, line: 13, baseType: !446, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3336, file: !3337, line: 14, baseType: !212, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3336, file: !3337, line: 15, baseType: !212, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3336, file: !3337, line: 16, baseType: !763, size: 8, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2703, file: !1282, line: 1134, baseType: !223, size: 64, offset: 16640)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2703, file: !1282, line: 1135, baseType: !223, size: 64, offset: 16704)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2703, file: !1282, line: 1138, baseType: !362, size: 32, offset: 16768)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2703, file: !1282, line: 1141, baseType: !652, size: 32, offset: 16800)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2703, file: !1282, line: 1143, baseType: !3348, size: 64, offset: 16832)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1282, line: 735, size: 64, elements: !3349)
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3348, file: !1282, line: 736, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2703, file: !1282, line: 1147, baseType: !657, size: 128, offset: 16896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2703, file: !1282, line: 1149, baseType: !2702, size: 64, offset: 17024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2703, file: !1282, line: 1151, baseType: !3355, size: 64, offset: 17088)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1282, line: 1151, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2703, file: !1282, line: 1188, baseType: !209, size: 64, offset: 17152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2703, file: !1282, line: 1191, baseType: !3359, size: 64, offset: 17216)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1282, line: 44, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2703, file: !1282, line: 1194, baseType: !3362, size: 64, offset: 17280)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1282, line: 45, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2703, file: !1282, line: 1197, baseType: !3365, size: 64, offset: 17344)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1282, line: 61, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2703, file: !1282, line: 1199, baseType: !3368, size: 64, offset: 17408)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3370, line: 99, size: 128, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3371 = !{!3372, !3373, !3374}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3369, file: !3370, line: 100, baseType: !637, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3369, file: !3370, line: 101, baseType: !382, size: 32, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3369, file: !3370, line: 103, baseType: !217, size: 16, offset: 96)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2703, file: !1282, line: 1202, baseType: !3376, size: 64, offset: 17472)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1282, line: 48, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2703, file: !1282, line: 1205, baseType: !212, size: 64, offset: 17536)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2703, file: !1282, line: 1206, baseType: !3380, size: 64, offset: 17600)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1134, line: 14, baseType: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1134, line: 12, size: 384, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !1134, line: 13, baseType: !3385, size: 384)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3382, file: !1134, line: 13, size: 384, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3385, file: !1134, line: 13, baseType: !109, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3385, file: !1134, line: 13, baseType: !109, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3385, file: !1134, line: 13, baseType: !109, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3385, file: !1134, line: 13, baseType: !3391, size: 256, offset: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3392, line: 37, size: 256, elements: !3393)
!3392 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3393 = !{!3394, !3399, !3412, !3418, !3427, !3453, !3458}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3391, file: !3392, line: 42, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 39, size: 64, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3395, file: !3392, line: 40, baseType: !3061, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3395, file: !3392, line: 41, baseType: !275, size: 32, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3391, file: !3392, line: 50, baseType: !3400, size: 192)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 45, size: 192, elements: !3401)
!3401 = !{!3402, !3404, !3405, !3411}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3400, file: !3392, line: 46, baseType: !3403, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !276, line: 95, baseType: !109)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3400, file: !3392, line: 47, baseType: !109, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3400, file: !3392, line: 48, baseType: !3406, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3392, line: 11, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3392, line: 8, size: 64, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3407, file: !3392, line: 9, baseType: !109, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3407, file: !3392, line: 10, baseType: !209, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3400, file: !3392, line: 49, baseType: !109, size: 32, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3391, file: !3392, line: 57, baseType: !3413, size: 128)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 53, size: 128, elements: !3414)
!3414 = !{!3415, !3416, !3417}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3413, file: !3392, line: 54, baseType: !3061, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3413, file: !3392, line: 55, baseType: !275, size: 32, offset: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3413, file: !3392, line: 56, baseType: !3406, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3391, file: !3392, line: 66, baseType: !3419, size: 256)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 60, size: 256, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3426}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3419, file: !3392, line: 61, baseType: !3061, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3419, file: !3392, line: 62, baseType: !275, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3419, file: !3392, line: 63, baseType: !109, size: 32, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3419, file: !3392, line: 64, baseType: !3425, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !276, line: 94, baseType: !583)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3419, file: !3392, line: 65, baseType: !3425, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3391, file: !3392, line: 105, baseType: !3428, size: 256)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 69, size: 256, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3428, file: !3392, line: 70, baseType: !209, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3392, line: 79, baseType: !3432, size: 192, offset: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3428, file: !3392, line: 79, size: 192, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3442, !3447}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3432, file: !3392, line: 81, baseType: !109, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3432, file: !3392, line: 86, baseType: !1017, size: 16)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3432, file: !3392, line: 92, baseType: !3437, size: 192)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3392, line: 88, size: 192, elements: !3438)
!3438 = !{!3439, !3440, !3441}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3437, file: !3392, line: 89, baseType: !241, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3437, file: !3392, line: 90, baseType: !209, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3437, file: !3392, line: 91, baseType: !209, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3432, file: !3392, line: 97, baseType: !3443, size: 96)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3392, line: 94, size: 96, elements: !3444)
!3444 = !{!3445, !3446}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3443, file: !3392, line: 95, baseType: !241, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3443, file: !3392, line: 96, baseType: !220, size: 32, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3432, file: !3392, line: 103, baseType: !3448, size: 128)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !3392, line: 99, size: 128, elements: !3449)
!3449 = !{!3450, !3451, !3452}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3448, file: !3392, line: 100, baseType: !212, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3448, file: !3392, line: 101, baseType: !220, size: 32, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3448, file: !3392, line: 102, baseType: !220, size: 32, offset: 96)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3391, file: !3392, line: 111, baseType: !3454, size: 128)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 108, size: 128, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3454, file: !3392, line: 109, baseType: !222, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3454, file: !3392, line: 110, baseType: !109, size: 32, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3391, file: !3392, line: 118, baseType: !3459, size: 128)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !3392, line: 114, size: 128, elements: !3460)
!3460 = !{!3461, !3462, !3463}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3459, file: !3392, line: 115, baseType: !209, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3459, file: !3392, line: 116, baseType: !109, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3459, file: !3392, line: 117, baseType: !7, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2703, file: !1282, line: 1208, baseType: !3245, size: 448, offset: 17664)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2703, file: !1282, line: 1215, baseType: !223, size: 64, offset: 18112)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2703, file: !1282, line: 1217, baseType: !223, size: 64, offset: 18176)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2703, file: !1282, line: 1219, baseType: !223, size: 64, offset: 18240)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2703, file: !1282, line: 1223, baseType: !3469, size: 64, offset: 18304)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3470, line: 99, baseType: !3471)
!3470 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3470, line: 99, size: 64, elements: !3472)
!3472 = !{!3473}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3471, file: !3470, line: 99, baseType: !2931, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2703, file: !1282, line: 1225, baseType: !310, size: 32, offset: 18368)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2703, file: !1282, line: 1226, baseType: !109, size: 32, offset: 18400)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2703, file: !1282, line: 1227, baseType: !109, size: 32, offset: 18432)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2703, file: !1282, line: 1231, baseType: !3478, size: 64, offset: 18496)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1282, line: 1231, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2703, file: !1282, line: 1233, baseType: !278, size: 128, offset: 18560)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2703, file: !1282, line: 1240, baseType: !3482, size: 64, offset: 18688)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1282, line: 62, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2703, file: !1282, line: 1242, baseType: !3485, size: 64, offset: 18752)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1282, line: 1242, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2703, file: !1282, line: 1244, baseType: !278, size: 128, offset: 18816)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2703, file: !1282, line: 1245, baseType: !3489, size: 64, offset: 18944)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1282, line: 51, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2703, file: !1282, line: 1246, baseType: !872, size: 256, offset: 19008)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2703, file: !1282, line: 1247, baseType: !7, size: 32, offset: 19264)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2703, file: !1282, line: 1250, baseType: !3494, size: 64, offset: 19328)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1282, line: 57, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2703, file: !1282, line: 1251, baseType: !872, size: 256, offset: 19392)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2703, file: !1282, line: 1252, baseType: !278, size: 128, offset: 19648)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2703, file: !1282, line: 1259, baseType: !1590, size: 64, offset: 19776)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2703, file: !1282, line: 1260, baseType: !1017, size: 16, offset: 19840)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2703, file: !1282, line: 1261, baseType: !1017, size: 16, offset: 19856)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2703, file: !1282, line: 1314, baseType: !3502, size: 64, offset: 19904)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3504, line: 62, size: 256, align: 256, elements: !3505)
!3504 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3503, file: !3504, line: 75, baseType: !220, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3503, file: !3504, line: 90, baseType: !220, size: 32, offset: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3503, file: !3504, line: 112, baseType: !225, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3503, file: !3504, line: 132, baseType: !220, size: 32, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3503, file: !3504, line: 140, baseType: !220, size: 32, offset: 160)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3503, file: !3504, line: 149, baseType: !220, size: 32, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3503, file: !3504, line: 154, baseType: !3513, offset: 224)
!3513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !947)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2703, file: !1282, line: 1315, baseType: !338, size: 32, offset: 19968)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2703, file: !1282, line: 1316, baseType: !338, size: 32, offset: 20000)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2703, file: !1282, line: 1321, baseType: !212, size: 64, offset: 20032)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2703, file: !1282, line: 1325, baseType: !109, size: 32, offset: 20096)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2703, file: !1282, line: 1326, baseType: !109, size: 32, offset: 20128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2703, file: !1282, line: 1327, baseType: !109, size: 32, offset: 20160)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2703, file: !1282, line: 1328, baseType: !109, size: 32, offset: 20192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2703, file: !1282, line: 1329, baseType: !767, size: 128, align: 64, offset: 20224)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2703, file: !1282, line: 1332, baseType: !3523, size: 128, offset: 20352)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3524, line: 51, size: 128, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3525 = !{!3526, !3531, !3532}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3523, file: !3524, line: 60, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3528, line: 7, size: 64, elements: !3529)
!3528 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3529 = !{!3530}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3527, file: !3528, line: 12, baseType: !2928, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3523, file: !3524, line: 63, baseType: !763, size: 8, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3523, file: !3524, line: 70, baseType: !763, size: 8, offset: 72)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2703, file: !1282, line: 1335, baseType: !1280, size: 64, offset: 20480)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2703, file: !1282, line: 1337, baseType: !3535, size: 128, offset: 20544)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3524, line: 39, size: 128, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3535, file: !3524, line: 40, baseType: !682, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3535, file: !3524, line: 42, baseType: !220, size: 32, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3535, file: !3524, line: 43, baseType: !220, size: 32, offset: 96)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2703, file: !1282, line: 1340, baseType: !3541, size: 64, offset: 20672)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1282, line: 69, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2703, file: !1282, line: 1351, baseType: !109, size: 32, offset: 20736)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2703, file: !1282, line: 1352, baseType: !109, size: 32, offset: 20768)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2703, file: !1282, line: 1354, baseType: !212, size: 64, offset: 20800)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2703, file: !1282, line: 1364, baseType: !223, size: 64, offset: 20864)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2703, file: !1282, line: 1365, baseType: !223, size: 64, offset: 20928)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2703, file: !1282, line: 1412, baseType: !212, size: 64, offset: 20992)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2703, file: !1282, line: 1453, baseType: !3550, size: 64, offset: 21056)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1282, line: 1453, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2703, file: !1282, line: 1457, baseType: !3553, size: 64, offset: 21120)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3555)
!3555 = !{!3556, !3557, !3576, !3579, !3580, !3613, !3623}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3554, file: !68, line: 62, baseType: !67, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !68, line: 64, baseType: !3558, size: 192, offset: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !68, line: 64, size: 192, elements: !3559)
!3559 = !{!3560, !3571}
!3560 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !68, line: 65, baseType: !3561, size: 192)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !68, line: 65, size: 192, elements: !3562)
!3562 = !{!3563, !3570}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3561, file: !68, line: 66, baseType: !3564, size: 128)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3565, line: 50, size: 128, elements: !3566)
!3565 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3566 = !{!3567, !3568, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3564, file: !3565, line: 52, baseType: !212, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3564, file: !3565, line: 54, baseType: !7, size: 32, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3564, file: !3565, line: 55, baseType: !7, size: 32, offset: 96)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3561, file: !68, line: 67, baseType: !212, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !68, line: 70, baseType: !3572, size: 192)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3558, file: !68, line: 70, size: 192, elements: !3573)
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3572, file: !68, line: 71, baseType: !767, size: 128, align: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3572, file: !68, line: 72, baseType: !212, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3554, file: !68, line: 76, baseType: !3577, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3554, file: !68, line: 77, baseType: !212, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3554, file: !68, line: 79, baseType: !3581, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3565, line: 25, size: 256, elements: !3583)
!3583 = !{!3584, !3590, !3594}
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !3565, line: 26, baseType: !3585, size: 128)
!3585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3582, file: !3565, line: 26, size: 128, elements: !3586)
!3586 = !{!3587, !3589}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3585, file: !3565, line: 27, baseType: !3588, size: 128)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 128, elements: !3119)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3585, file: !3565, line: 28, baseType: !3588, size: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3582, file: !3565, line: 31, baseType: !3591, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3593)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3565, line: 23, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !3565, line: 33, baseType: !3595, size: 64, offset: 192)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3582, file: !3565, line: 33, size: 64, elements: !3596)
!3596 = !{!3597, !3603, !3608}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3595, file: !3565, line: 38, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3565, line: 34, size: 64, elements: !3599)
!3599 = !{!3600, !3601, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3598, file: !3565, line: 35, baseType: !989, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3598, file: !3565, line: 36, baseType: !390, size: 8, offset: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3598, file: !3565, line: 37, baseType: !390, size: 8, offset: 40)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3595, file: !3565, line: 42, baseType: !3604, size: 16)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3565, line: 39, size: 16, elements: !3605)
!3605 = !{!3606, !3607}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3604, file: !3565, line: 40, baseType: !390, size: 8)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3604, file: !3565, line: 41, baseType: !390, size: 8, offset: 8)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3595, file: !3565, line: 46, baseType: !3609, size: 16)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3565, line: 43, size: 16, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3609, file: !3565, line: 44, baseType: !390, size: 8)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3609, file: !3565, line: 45, baseType: !390, size: 8, offset: 8)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3554, file: !68, line: 81, baseType: !3614, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3615, file: !68, line: 86, baseType: !3577, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3615, file: !68, line: 87, baseType: !212, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3615, file: !68, line: 88, baseType: !212, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3615, file: !68, line: 89, baseType: !212, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3615, file: !68, line: 90, baseType: !763, size: 8, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3615, file: !68, line: 92, baseType: !3614, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3554, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2703, file: !1282, line: 1463, baseType: !3625, offset: 21184)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1282, line: 739, elements: !846)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2703, file: !1282, line: 1470, baseType: !767, size: 128, align: 64, offset: 21184)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2703, file: !1282, line: 1471, baseType: !910, size: 32, offset: 21312)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2703, file: !1282, line: 1472, baseType: !109, size: 32, offset: 21344)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2703, file: !1282, line: 1474, baseType: !2702, size: 64, offset: 21376)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2703, file: !1282, line: 1475, baseType: !2224, size: 320, offset: 21440)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2703, file: !1282, line: 1478, baseType: !3632, size: 64, offset: 21760)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1211, line: 49, size: 512, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3644}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3633, file: !1211, line: 50, baseType: !3632, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3633, file: !1211, line: 51, baseType: !209, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3633, file: !1211, line: 52, baseType: !212, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3633, file: !1211, line: 53, baseType: !212, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3633, file: !1211, line: 54, baseType: !1764, size: 64, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3633, file: !1211, line: 56, baseType: !7, size: 32, offset: 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3633, file: !1211, line: 58, baseType: !7, size: 32, offset: 352)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3633, file: !1211, line: 59, baseType: !3643, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !211, line: 159, baseType: !223)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3633, file: !1211, line: 60, baseType: !1460, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2703, file: !1282, line: 1482, baseType: !910, size: 32, offset: 21824)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2703, file: !1282, line: 1489, baseType: !209, size: 64, offset: 21888)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2703, file: !1282, line: 1504, baseType: !209, size: 64, offset: 21952)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2703, file: !1282, line: 1505, baseType: !225, size: 64, offset: 22016)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2703, file: !1282, line: 1506, baseType: !223, size: 64, offset: 22080)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2703, file: !1282, line: 1507, baseType: !225, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2703, file: !1282, line: 1508, baseType: !225, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2703, file: !1282, line: 1509, baseType: !225, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2703, file: !1282, line: 1510, baseType: !767, size: 128, align: 64, offset: 22208)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2703, file: !1282, line: 1511, baseType: !109, size: 32, offset: 22336)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2703, file: !1282, line: 1515, baseType: !3656, size: 64, offset: 22400)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !861, line: 56, size: 64, elements: !3657)
!3657 = !{!3658}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3656, file: !861, line: 57, baseType: !864, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2703, file: !1282, line: 1518, baseType: !3656, size: 64, offset: 22464)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2703, file: !1282, line: 1528, baseType: !767, size: 128, align: 64, offset: 22528)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2703, file: !1282, line: 1552, baseType: !3662, size: 35328, offset: 23040)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3663, line: 430, size: 35328, elements: !3664)
!3663 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3664 = !{!3665, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3694, !3695, !3696, !3697, !3698, !3699, !3702, !3703, !3704, !3705}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3662, file: !3663, line: 432, baseType: !3666, size: 192)
!3666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3667, size: 192, elements: !550)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3668, line: 16, size: 64, elements: !3669)
!3668 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3667, file: !3668, line: 17, baseType: !397, size: 16)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3667, file: !3668, line: 18, baseType: !397, size: 16, offset: 16)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3667, file: !3668, line: 19, baseType: !397, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3667, file: !3668, line: 19, baseType: !397, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3667, file: !3668, line: 19, baseType: !397, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3667, file: !3668, line: 19, baseType: !397, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3667, file: !3668, line: 19, baseType: !397, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3667, file: !3668, line: 20, baseType: !397, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3667, file: !3668, line: 20, baseType: !397, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3667, file: !3668, line: 20, baseType: !397, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3667, file: !3668, line: 20, baseType: !397, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3667, file: !3668, line: 20, baseType: !397, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3667, file: !3668, line: 20, baseType: !397, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3662, file: !3663, line: 436, baseType: !212, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3662, file: !3663, line: 440, baseType: !217, size: 16, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3662, file: !3663, line: 441, baseType: !217, size: 16, offset: 272)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3662, file: !3663, line: 442, baseType: !217, size: 16, offset: 288)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3662, file: !3663, line: 443, baseType: !217, size: 16, offset: 304)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3662, file: !3663, line: 447, baseType: !212, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3662, file: !3663, line: 448, baseType: !212, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3662, file: !3663, line: 459, baseType: !3691, size: 256, offset: 448)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3692, size: 256, elements: !928)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3663, line: 428, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3662, file: !3663, line: 461, baseType: !212, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3662, file: !3663, line: 463, baseType: !212, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3662, file: !3663, line: 465, baseType: !212, size: 64, offset: 832)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3662, file: !3663, line: 466, baseType: !212, size: 64, offset: 896)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3662, file: !3663, line: 467, baseType: !212, size: 64, offset: 960)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3662, file: !3663, line: 473, baseType: !3700, size: 64, offset: 1024)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3663, line: 10, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3662, file: !3663, line: 480, baseType: !212, size: 64, offset: 1088)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3662, file: !3663, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3662, file: !3663, line: 491, baseType: !338, size: 32, offset: 1184)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3662, file: !3663, line: 501, baseType: !3706, size: 33792, offset: 1536)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3707, line: 448, size: 33792, elements: !3708)
!3707 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3708 = !{!3709, !3710, !3711, !3873, !3874, !3880, !3881}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3706, file: !3707, line: 461, baseType: !7, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3706, file: !3707, line: 468, baseType: !212, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3706, file: !3707, line: 476, baseType: !3712, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3707, line: 356, size: 33280, align: 512, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3713, file: !3707, line: 358, baseType: !7, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3713, file: !3707, line: 361, baseType: !7, size: 32, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3713, file: !3707, line: 364, baseType: !223, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3713, file: !3707, line: 367, baseType: !223, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3713, file: !3707, line: 370, baseType: !223, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3713, file: !3707, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3713, file: !3707, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3713, file: !3707, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3713, file: !3707, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3713, file: !3707, line: 397, baseType: !3725, size: 32768, offset: 512)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3707, line: 348, size: 32768, elements: !3726)
!3726 = !{!3727, !3742, !3779, !3856, !3869}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3725, file: !3707, line: 349, baseType: !3728, size: 896)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3707, line: 12, size: 896, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3741}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3728, file: !3707, line: 13, baseType: !338, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3728, file: !3707, line: 14, baseType: !338, size: 32, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3728, file: !3707, line: 15, baseType: !338, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3728, file: !3707, line: 16, baseType: !338, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3728, file: !3707, line: 17, baseType: !338, size: 32, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3728, file: !3707, line: 18, baseType: !338, size: 32, offset: 160)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3728, file: !3707, line: 19, baseType: !338, size: 32, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3728, file: !3707, line: 22, baseType: !3738, size: 640, offset: 224)
!3738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 640, elements: !3739)
!3739 = !{!3740}
!3740 = !DISubrange(count: 20)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3728, file: !3707, line: 25, baseType: !338, size: 32, offset: 864)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3725, file: !3707, line: 350, baseType: !3743, size: 4096, align: 128)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3707, line: 34, size: 4096, align: 128, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3764, !3765, !3766, !3768, !3770, !3774}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3743, file: !3707, line: 35, baseType: !397, size: 16)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3743, file: !3707, line: 36, baseType: !397, size: 16, offset: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3743, file: !3707, line: 37, baseType: !397, size: 16, offset: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3743, file: !3707, line: 38, baseType: !397, size: 16, offset: 48)
!3749 = !DIDerivedType(tag: DW_TAG_member, scope: !3743, file: !3707, line: 39, baseType: !3750, size: 128, offset: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3743, file: !3707, line: 39, size: 128, elements: !3751)
!3751 = !{!3752, !3757}
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !3707, line: 40, baseType: !3753, size: 128)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3750, file: !3707, line: 40, size: 128, elements: !3754)
!3754 = !{!3755, !3756}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3753, file: !3707, line: 41, baseType: !223, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3753, file: !3707, line: 42, baseType: !223, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !3707, line: 44, baseType: !3758, size: 128)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3750, file: !3707, line: 44, size: 128, elements: !3759)
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3758, file: !3707, line: 45, baseType: !338, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3758, file: !3707, line: 46, baseType: !338, size: 32, offset: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3758, file: !3707, line: 47, baseType: !338, size: 32, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3758, file: !3707, line: 48, baseType: !338, size: 32, offset: 96)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3743, file: !3707, line: 51, baseType: !338, size: 32, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3743, file: !3707, line: 52, baseType: !338, size: 32, offset: 224)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3743, file: !3707, line: 55, baseType: !3767, size: 1024, offset: 256)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1024, elements: !348)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3743, file: !3707, line: 58, baseType: !3769, size: 2048, offset: 1280)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2048, elements: !554)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3743, file: !3707, line: 60, baseType: !3771, size: 384, offset: 3328)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !3772)
!3772 = !{!3773}
!3773 = !DISubrange(count: 12)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3743, file: !3707, line: 62, baseType: !3775, size: 384, offset: 3712)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3743, file: !3707, line: 62, size: 384, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3775, file: !3707, line: 63, baseType: !3771, size: 384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3775, file: !3707, line: 64, baseType: !3771, size: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3725, file: !3707, line: 351, baseType: !3780, size: 1088)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3707, line: 79, size: 1088, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3855}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3780, file: !3707, line: 80, baseType: !338, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3780, file: !3707, line: 81, baseType: !338, size: 32, offset: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3780, file: !3707, line: 82, baseType: !338, size: 32, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3780, file: !3707, line: 83, baseType: !338, size: 32, offset: 96)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3780, file: !3707, line: 84, baseType: !338, size: 32, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3780, file: !3707, line: 85, baseType: !338, size: 32, offset: 160)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3780, file: !3707, line: 86, baseType: !338, size: 32, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3780, file: !3707, line: 88, baseType: !3738, size: 640, offset: 224)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3780, file: !3707, line: 89, baseType: !390, size: 8, offset: 864)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3780, file: !3707, line: 90, baseType: !390, size: 8, offset: 872)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3780, file: !3707, line: 91, baseType: !390, size: 8, offset: 880)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3780, file: !3707, line: 92, baseType: !390, size: 8, offset: 888)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3780, file: !3707, line: 93, baseType: !390, size: 8, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3780, file: !3707, line: 94, baseType: !390, size: 8, offset: 904)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3780, file: !3707, line: 95, baseType: !3797, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3799, line: 11, size: 128, elements: !3800)
!3799 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3800 = !{!3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3798, file: !3799, line: 12, baseType: !222, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3798, file: !3799, line: 13, baseType: !3803, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3805, line: 103, size: 1344, elements: !3806)
!3805 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3835, !3836, !3837}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3804, file: !3805, line: 109, baseType: !212, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3804, file: !3805, line: 110, baseType: !212, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3804, file: !3805, line: 111, baseType: !212, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3804, file: !3805, line: 112, baseType: !212, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3804, file: !3805, line: 113, baseType: !212, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3804, file: !3805, line: 114, baseType: !212, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3804, file: !3805, line: 117, baseType: !212, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3804, file: !3805, line: 118, baseType: !212, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3804, file: !3805, line: 119, baseType: !212, size: 64, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3804, file: !3805, line: 120, baseType: !212, size: 64, offset: 576)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3804, file: !3805, line: 121, baseType: !212, size: 64, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3804, file: !3805, line: 122, baseType: !212, size: 64, offset: 704)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3804, file: !3805, line: 123, baseType: !212, size: 64, offset: 768)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3804, file: !3805, line: 124, baseType: !212, size: 64, offset: 832)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3804, file: !3805, line: 125, baseType: !212, size: 64, offset: 896)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3804, file: !3805, line: 139, baseType: !212, size: 64, offset: 960)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3804, file: !3805, line: 142, baseType: !212, size: 64, offset: 1024)
!3824 = !DIDerivedType(tag: DW_TAG_member, scope: !3804, file: !3805, line: 144, baseType: !3825, size: 64, offset: 1088)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3804, file: !3805, line: 144, size: 64, elements: !3826)
!3826 = !{!3827, !3828, !3829}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3825, file: !3805, line: 146, baseType: !397, size: 16)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3825, file: !3805, line: 148, baseType: !223, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3825, file: !3805, line: 150, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3805, line: 59, size: 64, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3830, file: !3805, line: 61, baseType: !223, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3830, file: !3805, line: 63, baseType: !223, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3830, file: !3805, line: 65, baseType: !223, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3804, file: !3805, line: 153, baseType: !212, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3804, file: !3805, line: 154, baseType: !212, size: 64, offset: 1216)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3804, file: !3805, line: 156, baseType: !3838, size: 64, offset: 1280)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3804, file: !3805, line: 156, size: 64, elements: !3839)
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3838, file: !3805, line: 158, baseType: !397, size: 16)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3838, file: !3805, line: 160, baseType: !223, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3838, file: !3805, line: 162, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3805, line: 69, size: 64, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3843, file: !3805, line: 71, baseType: !223, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3843, file: !3805, line: 73, baseType: !223, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3843, file: !3805, line: 75, baseType: !223, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3843, file: !3805, line: 77, baseType: !223, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3843, file: !3805, line: 80, baseType: !223, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3843, file: !3805, line: 83, baseType: !223, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3843, file: !3805, line: 86, baseType: !223, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3843, file: !3805, line: 88, baseType: !223, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3843, file: !3805, line: 93, baseType: !223, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3843, file: !3805, line: 100, baseType: !223, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3780, file: !3707, line: 96, baseType: !338, size: 32, offset: 1024)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3725, file: !3707, line: 352, baseType: !3857, size: 4608, align: 512)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3707, line: 333, size: 4608, align: 512, elements: !3858)
!3858 = !{!3859, !3860, !3867}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3857, file: !3707, line: 334, baseType: !3743, size: 4096, align: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3857, file: !3707, line: 335, baseType: !3861, size: 512, offset: 4096)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3707, line: 312, size: 512, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3861, file: !3707, line: 313, baseType: !223, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3861, file: !3707, line: 314, baseType: !223, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3861, file: !3707, line: 315, baseType: !3866, size: 384, offset: 128)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 384, elements: !1035)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3857, file: !3707, line: 336, baseType: !3868, offset: 4608)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, elements: !947)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3725, file: !3707, line: 353, baseType: !3870, size: 32768)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 32768, elements: !3871)
!3871 = !{!3872}
!3872 = !DISubrange(count: 4096)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3706, file: !3707, line: 484, baseType: !3712, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3706, file: !3707, line: 491, baseType: !3875, size: 128, offset: 256)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3707, line: 404, size: 128, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3875, file: !3707, line: 424, baseType: !223, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3875, file: !3707, line: 432, baseType: !7, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3875, file: !3707, line: 440, baseType: !7, size: 32, offset: 96)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3706, file: !3707, line: 498, baseType: !3875, size: 128, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3706, file: !3707, line: 508, baseType: !3713, size: 33280, align: 512, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2685, file: !2686, line: 16, baseType: !932, size: 192, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2685, file: !2686, line: 17, baseType: !382, size: 32, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !458, file: !14, line: 1240, baseType: !209, size: 64, offset: 6912)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !458, file: !14, line: 1243, baseType: !338, size: 32, offset: 6976)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !458, file: !14, line: 1245, baseType: !1005, size: 64, offset: 7040)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !458, file: !14, line: 1246, baseType: !1005, size: 64, offset: 7104)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !458, file: !14, line: 1248, baseType: !220, size: 32, offset: 7168)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !458, file: !14, line: 1249, baseType: !3890, size: 64, offset: 7232)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !458, file: !14, line: 1252, baseType: !3893, size: 256, offset: 7296)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !348)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !458, file: !14, line: 1253, baseType: !3895, size: 128, offset: 7552)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3896, line: 21, baseType: !3897)
!3896 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3896, line: 19, size: 128, elements: !3898)
!3898 = !{!3899}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3897, file: !3896, line: 20, baseType: !3900, size: 128)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !3119)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !458, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !458, file: !14, line: 1261, baseType: !872, size: 256, offset: 7744)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !458, file: !14, line: 1267, baseType: !421, size: 64, offset: 8000)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !458, file: !14, line: 1269, baseType: !401, size: 64, offset: 8064)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !458, file: !14, line: 1271, baseType: !3906, size: 448, offset: 8128)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2465, line: 63, size: 448, elements: !3907)
!3907 = !{!3908, !3913, !3914, !3915, !3916, !3917, !3918}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3906, file: !2465, line: 64, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!212, !3912, !2463}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3906, file: !2465, line: 66, baseType: !3909, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3906, file: !2465, line: 69, baseType: !222, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3906, file: !2465, line: 70, baseType: !109, size: 32, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3906, file: !2465, line: 71, baseType: !7, size: 32, offset: 224)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3906, file: !2465, line: 74, baseType: !278, size: 128, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3906, file: !2465, line: 85, baseType: !3919, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !458, file: !14, line: 1274, baseType: !637, size: 64, offset: 8576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !458, file: !14, line: 1280, baseType: !637, size: 64, offset: 8640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !458, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !458, file: !14, line: 1286, baseType: !1369, size: 32, offset: 8736)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !458, file: !14, line: 1289, baseType: !2286, size: 64, offset: 8768)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !458, file: !14, line: 1290, baseType: !919, size: 64, offset: 8832)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !458, file: !14, line: 1297, baseType: !1129, size: 64, offset: 8896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !458, file: !14, line: 1304, baseType: !3928, size: 64, offset: 8960)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3929, line: 49, size: 64, elements: !3930)
!3929 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3930 = !{!3931}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3928, file: !3929, line: 50, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3929, line: 41, size: 512, align: 512, elements: !3934)
!3934 = !{!3935, !3936, !3941}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3933, file: !3929, line: 43, baseType: !362, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3933, file: !3929, line: 45, baseType: !3937, size: 192, offset: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3929, line: 29, size: 192, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3937, file: !3929, line: 30, baseType: !278, size: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3937, file: !3929, line: 32, baseType: !222, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3933, file: !3929, line: 46, baseType: !222, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !458, file: !14, line: 1305, baseType: !3928, size: 64, offset: 9024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !458, file: !14, line: 1306, baseType: !767, size: 128, align: 64, offset: 9088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !458, file: !14, line: 1307, baseType: !1499, size: 256, offset: 9216)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !458, file: !14, line: 1309, baseType: !872, size: 256, offset: 9472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !458, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !458, file: !14, line: 1317, baseType: !362, size: 32, align: 512, offset: 10240)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !458, file: !14, line: 1318, baseType: !278, size: 128, offset: 10304)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !458, file: !14, line: 1320, baseType: !362, size: 32, offset: 10432)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !458, file: !14, line: 1321, baseType: !278, size: 128, offset: 10496)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !452, file: !453, line: 73, baseType: !109, size: 32, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !452, file: !453, line: 74, baseType: !3953, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !971, line: 42, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !403, file: !306, line: 141, baseType: !3957, size: 64, offset: 704)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!109, !2525, !763}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !403, file: !306, line: 142, baseType: !3961, size: 64, offset: 768)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!304, !304, !3964}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !305, file: !306, line: 96, baseType: !457, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !305, file: !306, line: 97, baseType: !212, size: 64, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !305, file: !306, line: 98, baseType: !209, size: 64, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 100, baseType: !3970, size: 128, offset: 1024)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 100, size: 128, elements: !3971)
!3971 = !{!3972, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3970, file: !306, line: 101, baseType: !278, size: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3970, file: !306, line: 102, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !305, file: !306, line: 104, baseType: !278, size: 128, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !305, file: !306, line: 105, baseType: !278, size: 128, offset: 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !305, file: !306, line: 113, baseType: !3978, size: 128, offset: 1408)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 109, size: 128, elements: !3979)
!3979 = !{!3980, !3981, !3982}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3978, file: !306, line: 110, baseType: !923, size: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3978, file: !306, line: 111, baseType: !320, size: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3978, file: !306, line: 112, baseType: !767, size: 128, align: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !298, file: !14, line: 1968, baseType: !3984, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!421, !304, !262, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3989, line: 10, size: 128, elements: !3990)
!3989 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3990 = !{!3991, !3992}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3988, file: !3989, line: 11, baseType: !1867, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3988, file: !3989, line: 12, baseType: !209, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !298, file: !14, line: 1969, baseType: !3994, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!109, !3953, !262, !109}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !298, file: !14, line: 1970, baseType: !3998, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!292, !262, !109, !763}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !298, file: !14, line: 1972, baseType: !4002, size: 64, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109, !304, !446, !109}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !298, file: !14, line: 1974, baseType: !4006, size: 64, offset: 320)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !3953, !262, !304, !266, !763}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !298, file: !14, line: 1976, baseType: !4010, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!109, !304, !262, !304}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !298, file: !14, line: 1977, baseType: !4014, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!109, !262, !304}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !298, file: !14, line: 1978, baseType: !4018, size: 64, offset: 512)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!109, !3953, !262, !304, !421}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !298, file: !14, line: 1980, baseType: !4022, size: 64, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!109, !3953, !262, !304, !266}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !298, file: !14, line: 1982, baseType: !4014, size: 64, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !298, file: !14, line: 1983, baseType: !4027, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!109, !3953, !262, !304, !266, !462}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !298, file: !14, line: 1985, baseType: !4031, size: 64, offset: 768)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!109, !3953, !262, !304, !262, !304, !7}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !298, file: !14, line: 1987, baseType: !4035, size: 64, offset: 832)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!109, !3953, !304, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4040)
!4040 = !{!4041, !4042, !4043, !4053, !4062, !4063, !4068, !4069, !4070}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4039, file: !14, line: 227, baseType: !7, size: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4039, file: !14, line: 228, baseType: !266, size: 16, offset: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !14, line: 241, baseType: !4044, size: 32, offset: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !14, line: 241, size: 32, elements: !4045)
!4045 = !{!4046, !4047}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4044, file: !14, line: 242, baseType: !269, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4044, file: !14, line: 243, baseType: !4048, size: 32)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4049, line: 16, baseType: !4050)
!4049 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4049, line: 14, size: 32, elements: !4051)
!4051 = !{!4052}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4050, file: !4049, line: 15, baseType: !274, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !14, line: 245, baseType: !4054, size: 32, offset: 96)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !14, line: 245, size: 32, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4054, file: !14, line: 246, baseType: !284, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4054, file: !14, line: 247, baseType: !4058, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4049, line: 20, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4049, line: 18, size: 32, elements: !4060)
!4060 = !{!4061}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4059, file: !4049, line: 19, baseType: !288, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4039, file: !14, line: 249, baseType: !467, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4039, file: !14, line: 250, baseType: !4064, size: 128, offset: 192)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1006, line: 13, size: 128, elements: !4065)
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4064, file: !1006, line: 14, baseType: !1005, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4064, file: !1006, line: 15, baseType: !222, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4039, file: !14, line: 251, baseType: !4064, size: 128, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4039, file: !14, line: 252, baseType: !4064, size: 128, offset: 448)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4039, file: !14, line: 259, baseType: !853, size: 64, offset: 576)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !298, file: !14, line: 1988, baseType: !4072, size: 64, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!109, !3953, !2525, !4075, !338, !7}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4077, line: 22, size: 1280, elements: !4078)
!4077 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4076, file: !4077, line: 23, baseType: !338, size: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4076, file: !4077, line: 24, baseType: !266, size: 16, offset: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4076, file: !4077, line: 25, baseType: !7, size: 32, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4076, file: !4077, line: 26, baseType: !1013, size: 32, offset: 96)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4076, file: !4077, line: 27, baseType: !223, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4076, file: !4077, line: 28, baseType: !223, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4076, file: !4077, line: 41, baseType: !223, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4076, file: !4077, line: 42, baseType: !462, size: 32, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4076, file: !4077, line: 43, baseType: !462, size: 32, offset: 352)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4076, file: !4077, line: 44, baseType: !269, size: 32, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4076, file: !4077, line: 45, baseType: !284, size: 32, offset: 416)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4076, file: !4077, line: 46, baseType: !467, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4076, file: !4077, line: 47, baseType: !4064, size: 128, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4076, file: !4077, line: 48, baseType: !4064, size: 128, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4076, file: !4077, line: 49, baseType: !4064, size: 128, offset: 768)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4076, file: !4077, line: 50, baseType: !4064, size: 128, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4076, file: !4077, line: 51, baseType: !223, size: 64, offset: 1024)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4076, file: !4077, line: 52, baseType: !223, size: 64, offset: 1088)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4076, file: !4077, line: 53, baseType: !338, size: 32, offset: 1152)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4076, file: !4077, line: 54, baseType: !338, size: 32, offset: 1184)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4076, file: !4077, line: 55, baseType: !223, size: 64, offset: 1216)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !298, file: !14, line: 1990, baseType: !4101, size: 64, offset: 960)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!581, !304, !446, !593}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !298, file: !14, line: 1991, baseType: !4105, size: 64, offset: 1024)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!109, !262, !4108, !223, !223}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !298, file: !14, line: 1993, baseType: !4111, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!109, !262, !109}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !298, file: !14, line: 1994, baseType: !4115, size: 64, offset: 1152)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!109, !262, !304, !853, !7, !266}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !298, file: !14, line: 1997, baseType: !4119, size: 64, offset: 1216)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!109, !3953, !262, !853, !266}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !298, file: !14, line: 1999, baseType: !4123, size: 64, offset: 1280)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!292, !3953, !304, !109}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !298, file: !14, line: 2001, baseType: !4127, size: 64, offset: 1344)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!109, !3953, !304, !292, !109}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !298, file: !14, line: 2003, baseType: !4131, size: 64, offset: 1408)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!109, !3953, !304, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !298, file: !14, line: 2005, baseType: !4137, size: 64, offset: 1472)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!109, !304, !4134}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !298, file: !14, line: 2006, baseType: !4141, size: 64, offset: 1536)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!4144, !262}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4145, file: !14, line: 3193, baseType: !626, size: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4145, file: !14, line: 3194, baseType: !338, size: 32, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !263, file: !14, line: 655, baseType: !457, size: 64, offset: 448)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !263, file: !14, line: 656, baseType: !621, size: 64, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !263, file: !14, line: 659, baseType: !209, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !263, file: !14, line: 663, baseType: !212, size: 64, offset: 640)
!4153 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !14, line: 671, baseType: !4154, size: 32, offset: 704)
!4154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !14, line: 671, size: 32, elements: !4155)
!4155 = !{!4156, !4158}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4154, file: !14, line: 672, baseType: !4157, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4154, file: !14, line: 673, baseType: !7, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !263, file: !14, line: 675, baseType: !462, size: 32, offset: 736)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !263, file: !14, line: 676, baseType: !467, size: 64, offset: 768)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !263, file: !14, line: 677, baseType: !4064, size: 128, offset: 832)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !263, file: !14, line: 678, baseType: !4064, size: 128, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !263, file: !14, line: 679, baseType: !4064, size: 128, offset: 1088)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !263, file: !14, line: 680, baseType: !362, size: 32, offset: 1216)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !263, file: !14, line: 681, baseType: !217, size: 16, offset: 1248)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !263, file: !14, line: 682, baseType: !390, size: 8, offset: 1264)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !263, file: !14, line: 683, baseType: !390, size: 8, offset: 1272)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !263, file: !14, line: 684, baseType: !2598, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !263, file: !14, line: 691, baseType: !212, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !263, file: !14, line: 692, baseType: !633, size: 320, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !263, file: !14, line: 694, baseType: !212, size: 64, offset: 1728)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !263, file: !14, line: 695, baseType: !212, size: 64, offset: 1792)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !263, file: !14, line: 697, baseType: !923, size: 128, offset: 1856)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !263, file: !14, line: 698, baseType: !278, size: 128, offset: 1984)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !263, file: !14, line: 707, baseType: !278, size: 128, offset: 2112)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !263, file: !14, line: 708, baseType: !278, size: 128, offset: 2240)
!4177 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !14, line: 709, baseType: !4178, size: 128, offset: 2368)
!4178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !14, line: 709, size: 128, elements: !4179)
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4178, file: !14, line: 710, baseType: !919, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4178, file: !14, line: 711, baseType: !767, size: 128, align: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !263, file: !14, line: 713, baseType: !639, size: 64, offset: 2496)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !263, file: !14, line: 714, baseType: !639, size: 64, offset: 2560)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !263, file: !14, line: 715, baseType: !382, size: 32, offset: 2624)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !263, file: !14, line: 716, baseType: !382, size: 32, offset: 2656)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !263, file: !14, line: 717, baseType: !382, size: 32, offset: 2688)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !263, file: !14, line: 719, baseType: !382, size: 32, offset: 2720)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !14, line: 721, baseType: !4189, size: 64, offset: 2752)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !14, line: 721, size: 64, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4189, file: !14, line: 722, baseType: !1165, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4189, file: !14, line: 723, baseType: !2354, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !263, file: !14, line: 725, baseType: !4194, size: 64, offset: 2816)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !263, file: !14, line: 726, baseType: !622, size: 1536, align: 64, offset: 2880)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !263, file: !14, line: 727, baseType: !278, size: 128, offset: 4416)
!4198 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !14, line: 728, baseType: !4199, size: 64, offset: 4544)
!4199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !14, line: 728, size: 64, elements: !4200)
!4200 = !{!4201, !4202, !4205, !4206}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4199, file: !14, line: 729, baseType: !1280, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4199, file: !14, line: 730, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4199, file: !14, line: 731, baseType: !446, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4199, file: !14, line: 732, baseType: !7, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !263, file: !14, line: 735, baseType: !220, size: 32, offset: 4608)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !263, file: !14, line: 738, baseType: !220, size: 32, offset: 4640)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !263, file: !14, line: 739, baseType: !3890, size: 64, offset: 4672)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !263, file: !14, line: 750, baseType: !209, size: 64, offset: 4736)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !254, file: !255, line: 32, baseType: !1175, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !254, file: !255, line: 33, baseType: !1184, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !254, file: !255, line: 34, baseType: !1180, size: 64, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !254, file: !255, line: 36, baseType: !1171, size: 64, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !254, file: !255, line: 37, baseType: !259, size: 64, offset: 384)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !254, file: !255, line: 38, baseType: !1233, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !254, file: !255, line: 39, baseType: !1240, size: 64, offset: 512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !254, file: !255, line: 41, baseType: !1240, size: 64, offset: 576)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !254, file: !255, line: 43, baseType: !1245, size: 64, offset: 640)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !254, file: !255, line: 44, baseType: !850, size: 64, offset: 704)
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(scope: null, file: !152, line: 480, type: !4223, isLocal: true, isDefinition: true)
!4223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 168, elements: !4224)
!4224 = !{!4225}
!4225 = !DISubrange(count: 21)
!4226 = !DIGlobalVariableExpression(var: !4227, expr: !DIExpression())
!4227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !4228, isLocal: true, isDefinition: true)
!4228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 152, elements: !4229)
!4229 = !{!4230}
!4230 = !DISubrange(count: 19)
!4231 = !DIGlobalVariableExpression(var: !4232, expr: !DIExpression())
!4232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched176", scope: !4233, file: !1282, line: 2104, type: !209, isLocal: true, isDefinition: true)
!4233 = distinct !DISubprogram(name: "_cond_resched", scope: !1282, file: !1282, line: 2102, type: !2096, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4234 = !DIGlobalVariableExpression(var: !4235, expr: !DIExpression())
!4235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !241, isLocal: true, isDefinition: true)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 464, type: !241, isLocal: true, isDefinition: true)
!4238 = !DIGlobalVariableExpression(var: !4239, expr: !DIExpression())
!4239 = distinct !DIGlobalVariable(name: "proc_bus_pci_devices_op", scope: !2, file: !3, line: 406, type: !1319, isLocal: true, isDefinition: true)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !4223, isLocal: true, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 388, type: !241, isLocal: true, isDefinition: true)
!4244 = !{!"rsp"}
!4245 = !{i32 7, !"Dwarf Version", i32 5}
!4246 = !{i32 2, !"Debug Info Version", i32 3}
!4247 = !{i32 1, !"wchar_size", i32 2}
!4248 = !{i32 8, !"cf-protection-branch", i32 1}
!4249 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4250 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4251 = !{i32 1, !"Code Model", i32 2}
!4252 = !{i32 1, !"override-stack-alignment", i32 8}
!4253 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4254 = distinct !DISubprogram(name: "pci_proc_attach_device", scope: !3, file: !3, line: 415, type: !4255, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5047)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!109, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !142, line: 322, size: 16640, elements: !4259)
!4259 = !{!4260, !4261, !4796, !4797, !4798, !4799, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4907, !4908, !4909, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4986, !4987, !4988, !4990, !4991, !4993, !4994, !4995, !4996, !5002, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4258, file: !142, line: 323, baseType: !278, size: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4258, file: !142, line: 324, baseType: !4262, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !142, line: 647, size: 8256, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4271, !4286, !4287, !4288, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4322, !4323, !4325, !4791, !4792, !4793, !4794, !4795}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4263, file: !142, line: 648, baseType: !278, size: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4263, file: !142, line: 649, baseType: !4262, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4263, file: !142, line: 650, baseType: !278, size: 128, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4263, file: !142, line: 651, baseType: !278, size: 128, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4263, file: !142, line: 652, baseType: !4257, size: 64, offset: 448)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4263, file: !142, line: 653, baseType: !278, size: 128, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4263, file: !142, line: 655, baseType: !4272, size: 256, offset: 640)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4273, size: 256, elements: !928)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4275, line: 21, size: 512, elements: !4276)
!4275 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4276 = !{!4277, !4279, !4280, !4281, !4282, !4283, !4284, !4285}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4274, file: !4275, line: 22, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !211, line: 164, baseType: !3643)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4274, file: !4275, line: 23, baseType: !4278, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !4275, line: 24, baseType: !421, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4274, file: !4275, line: 25, baseType: !212, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4274, file: !4275, line: 26, baseType: !212, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4274, file: !4275, line: 27, baseType: !4273, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4274, file: !4275, line: 27, baseType: !4273, size: 64, offset: 384)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4274, file: !4275, line: 27, baseType: !4273, size: 64, offset: 448)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4263, file: !142, line: 656, baseType: !278, size: 128, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4263, file: !142, line: 657, baseType: !4274, size: 512, offset: 1024)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4263, file: !142, line: 659, baseType: !4289, size: 64, offset: 1536)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !142, line: 773, size: 320, elements: !4291)
!4291 = !{!4292, !4296, !4300, !4304, !4308}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4290, file: !142, line: 774, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!109, !4262}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4290, file: !142, line: 775, baseType: !4297, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !4262}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4290, file: !142, line: 776, baseType: !4301, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!209, !4262, !7, !109}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4290, file: !142, line: 777, baseType: !4305, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!109, !4262, !7, !109, !109, !3018}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4290, file: !142, line: 778, baseType: !4309, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!109, !4262, !7, !109, !109, !338}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4263, file: !142, line: 660, baseType: !209, size: 64, offset: 1600)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4263, file: !142, line: 661, baseType: !248, size: 64, offset: 1664)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4263, file: !142, line: 663, baseType: !344, size: 8, offset: 1728)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4263, file: !142, line: 664, baseType: !344, size: 8, offset: 1736)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4263, file: !142, line: 665, baseType: !344, size: 8, offset: 1744)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4263, file: !142, line: 666, baseType: !344, size: 8, offset: 1752)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4263, file: !142, line: 671, baseType: !4319, size: 384, offset: 1760)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 384, elements: !4320)
!4320 = !{!4321}
!4321 = !DISubrange(count: 48)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4263, file: !142, line: 673, baseType: !217, size: 16, offset: 2144)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4263, file: !142, line: 674, baseType: !4324, size: 16, offset: 2160)
!4324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !142, line: 255, baseType: !217)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4263, file: !142, line: 675, baseType: !4326, size: 64, offset: 2176)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4334, !4335, !4388, !4473, !4474, !4475, !4476, !4477, !4484, !4576, !4589, !4599, !4603, !4605, !4606, !4607, !4611, !4618, !4619, !4622, !4625, !4629, !4733, !4734, !4735, !4736, !4737, !4738, !4768, !4769, !4770, !4773, !4776, !4785, !4786, !4787, !4788, !4789, !4790}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4327, file: !94, line: 706, baseType: !509, size: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4327, file: !94, line: 707, baseType: !4326, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4327, file: !94, line: 709, baseType: !4332, size: 64, offset: 576)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4327, file: !94, line: 711, baseType: !421, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4327, file: !94, line: 712, baseType: !4336, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4348, !4353, !4357}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4338, file: !94, line: 90, baseType: !421, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4338, file: !94, line: 91, baseType: !597, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4338, file: !94, line: 92, baseType: !4343, size: 64, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!109, !4346, !545}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4338, file: !94, line: 93, baseType: !4349, size: 64, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!446, !4346, !4352, !1878, !1879}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4338, file: !94, line: 95, baseType: !4354, size: 64, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4326}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4338, file: !94, line: 97, baseType: !4358, size: 64, offset: 320)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4361)
!4361 = !{!4362, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4360, file: !101, line: 287, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!109, !4326}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4360, file: !101, line: 288, baseType: !4354, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4360, file: !101, line: 289, baseType: !4363, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4360, file: !101, line: 290, baseType: !4363, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4360, file: !101, line: 291, baseType: !4363, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4360, file: !101, line: 292, baseType: !4363, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4360, file: !101, line: 293, baseType: !4363, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4360, file: !101, line: 294, baseType: !4363, size: 64, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4360, file: !101, line: 295, baseType: !4363, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4360, file: !101, line: 296, baseType: !4363, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4360, file: !101, line: 297, baseType: !4363, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4360, file: !101, line: 298, baseType: !4363, size: 64, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4360, file: !101, line: 299, baseType: !4363, size: 64, offset: 768)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4360, file: !101, line: 300, baseType: !4363, size: 64, offset: 832)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4360, file: !101, line: 301, baseType: !4363, size: 64, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4360, file: !101, line: 302, baseType: !4363, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4360, file: !101, line: 303, baseType: !4363, size: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4360, file: !101, line: 304, baseType: !4363, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4360, file: !101, line: 305, baseType: !4363, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4360, file: !101, line: 306, baseType: !4363, size: 64, offset: 1216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4360, file: !101, line: 307, baseType: !4363, size: 64, offset: 1280)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4360, file: !101, line: 308, baseType: !4363, size: 64, offset: 1344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4360, file: !101, line: 309, baseType: !4363, size: 64, offset: 1408)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4327, file: !94, line: 714, baseType: !4389, size: 64, offset: 768)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4391)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4392, line: 80, size: 1344, elements: !4393)
!4392 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4472}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4391, file: !4392, line: 81, baseType: !421, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4391, file: !4392, line: 82, baseType: !421, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4391, file: !4392, line: 83, baseType: !597, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4391, file: !4392, line: 84, baseType: !597, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4391, file: !4392, line: 85, baseType: !597, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4391, file: !4392, line: 87, baseType: !4400, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!109, !4326, !4403}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4411, !4412, !4425, !4435, !4436, !4437, !4438, !4439, !4447, !4448, !4449, !4450, !4451, !4452}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4404, file: !88, line: 97, baseType: !421, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4404, file: !88, line: 98, baseType: !4389, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4404, file: !88, line: 100, baseType: !496, size: 64, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4404, file: !88, line: 101, baseType: !421, size: 64, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4404, file: !88, line: 103, baseType: !763, size: 8, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4404, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4404, file: !88, line: 106, baseType: !4413, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4416, line: 282, size: 1600, elements: !4417)
!4416 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4417 = !{!4418, !4419, !4420, !4424}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4415, file: !4416, line: 283, baseType: !3893, size: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4415, file: !4416, line: 284, baseType: !3893, size: 256, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4415, file: !4416, line: 285, baseType: !4421, size: 1024, offset: 512)
!4421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 1024, elements: !4422)
!4422 = !{!4423}
!4423 = !DISubrange(count: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4415, file: !4416, line: 286, baseType: !1460, size: 64, offset: 1536)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4404, file: !88, line: 107, baseType: !4426, size: 64, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4416, line: 217, size: 256, elements: !4429)
!4429 = !{!4430, !4431, !4433, !4434}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4428, file: !4416, line: 218, baseType: !3900, size: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4428, file: !4416, line: 219, baseType: !4432, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4416, line: 15, baseType: !212)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4428, file: !4416, line: 220, baseType: !220, size: 32, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4428, file: !4416, line: 221, baseType: !220, size: 32, offset: 224)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4404, file: !88, line: 109, baseType: !4363, size: 64, offset: 448)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4404, file: !88, line: 110, baseType: !4354, size: 64, offset: 512)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4404, file: !88, line: 111, baseType: !4363, size: 64, offset: 576)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4404, file: !88, line: 112, baseType: !4354, size: 64, offset: 640)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4404, file: !88, line: 113, baseType: !4440, size: 64, offset: 704)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!109, !4326, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4444)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4445)
!4445 = !{!4446}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4444, file: !101, line: 59, baseType: !109, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4404, file: !88, line: 114, baseType: !4363, size: 64, offset: 768)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4404, file: !88, line: 115, baseType: !597, size: 64, offset: 832)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4404, file: !88, line: 116, baseType: !597, size: 64, offset: 896)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4404, file: !88, line: 118, baseType: !4358, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4404, file: !88, line: 119, baseType: !4354, size: 64, offset: 1024)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4404, file: !88, line: 121, baseType: !4453, size: 64, offset: 1088)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4391, file: !4392, line: 88, baseType: !4343, size: 64, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4391, file: !4392, line: 89, baseType: !4363, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4391, file: !4392, line: 90, baseType: !4354, size: 64, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4391, file: !4392, line: 91, baseType: !4354, size: 64, offset: 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4391, file: !4392, line: 92, baseType: !4354, size: 64, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4391, file: !4392, line: 94, baseType: !4363, size: 64, offset: 704)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4391, file: !4392, line: 95, baseType: !4363, size: 64, offset: 768)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4391, file: !4392, line: 97, baseType: !4440, size: 64, offset: 832)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4391, file: !4392, line: 98, baseType: !4363, size: 64, offset: 896)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4391, file: !4392, line: 100, baseType: !4363, size: 64, offset: 960)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4391, file: !4392, line: 102, baseType: !4363, size: 64, offset: 1024)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4391, file: !4392, line: 103, baseType: !4354, size: 64, offset: 1088)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4391, file: !4392, line: 105, baseType: !4358, size: 64, offset: 1152)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4391, file: !4392, line: 107, baseType: !4469, size: 64, offset: 1216)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4471)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4392, line: 107, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4391, file: !4392, line: 109, baseType: !763, size: 8, offset: 1280)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4327, file: !94, line: 715, baseType: !4403, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4327, file: !94, line: 717, baseType: !209, size: 64, offset: 896)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4327, file: !94, line: 719, baseType: !209, size: 64, offset: 960)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4327, file: !94, line: 721, baseType: !872, size: 256, offset: 1024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4327, file: !94, line: 725, baseType: !4478, size: 448, offset: 1280)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4478, file: !94, line: 518, baseType: !278, size: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4478, file: !94, line: 519, baseType: !278, size: 128, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4478, file: !94, line: 520, baseType: !278, size: 128, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4478, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4327, file: !94, line: 726, baseType: !4485, size: 2496, offset: 1728)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4486)
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4569, !4573}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4485, file: !101, line: 664, baseType: !4443, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4485, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4485, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4485, file: !101, line: 667, baseType: !763, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4485, file: !101, line: 668, baseType: !763, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4485, file: !101, line: 669, baseType: !763, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4485, file: !101, line: 670, baseType: !763, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4485, file: !101, line: 671, baseType: !763, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4485, file: !101, line: 672, baseType: !763, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4485, file: !101, line: 673, baseType: !763, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4485, file: !101, line: 674, baseType: !763, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4485, file: !101, line: 675, baseType: !338, size: 32, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4485, file: !101, line: 676, baseType: !362, size: 32, offset: 96)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4485, file: !101, line: 678, baseType: !278, size: 128, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4485, file: !101, line: 679, baseType: !777, size: 256, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4485, file: !101, line: 680, baseType: !4503, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4505, line: 43, size: 1536, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4506 = !{!4507, !4508, !4509, !4510, !4511, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4504, file: !4505, line: 44, baseType: !421, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4504, file: !4505, line: 45, baseType: !109, size: 32, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4504, file: !4505, line: 46, baseType: !278, size: 128, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4504, file: !4505, line: 47, baseType: !362, size: 32, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4504, file: !4505, line: 48, baseType: !4512, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4504, file: !4505, line: 49, baseType: !2224, size: 320, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4504, file: !4505, line: 50, baseType: !212, size: 64, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4504, file: !4505, line: 51, baseType: !2821, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4504, file: !4505, line: 52, baseType: !2821, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4504, file: !4505, line: 53, baseType: !2821, size: 64, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4504, file: !4505, line: 54, baseType: !2821, size: 64, offset: 960)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4504, file: !4505, line: 55, baseType: !2821, size: 64, offset: 1024)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4504, file: !4505, line: 56, baseType: !212, size: 64, offset: 1088)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4504, file: !4505, line: 57, baseType: !212, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4504, file: !4505, line: 58, baseType: !212, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4504, file: !4505, line: 59, baseType: !212, size: 64, offset: 1280)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4504, file: !4505, line: 60, baseType: !212, size: 64, offset: 1344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4504, file: !4505, line: 61, baseType: !4326, size: 64, offset: 1408)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4504, file: !4505, line: 62, baseType: !763, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4504, file: !4505, line: 63, baseType: !763, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4485, file: !101, line: 681, baseType: !763, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4485, file: !101, line: 682, baseType: !763, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4485, file: !101, line: 683, baseType: !763, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4485, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4485, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4485, file: !101, line: 690, baseType: !2813, size: 512, offset: 640)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4485, file: !101, line: 691, baseType: !223, size: 64, offset: 1152)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4485, file: !101, line: 692, baseType: !1499, size: 256, offset: 1216)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4485, file: !101, line: 693, baseType: !932, size: 192, offset: 1472)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4485, file: !101, line: 694, baseType: !4512, size: 64, offset: 1664)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4485, file: !101, line: 695, baseType: !382, size: 32, offset: 1728)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4485, file: !101, line: 696, baseType: !382, size: 32, offset: 1760)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4485, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4485, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4485, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4485, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4485, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4485, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4485, file: !101, line: 703, baseType: !763, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4485, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4485, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4485, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4485, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4485, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4485, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4485, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4485, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4485, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4485, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4485, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4485, file: !101, line: 715, baseType: !223, size: 64, offset: 2048)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4485, file: !101, line: 716, baseType: !223, size: 64, offset: 2112)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4485, file: !101, line: 717, baseType: !223, size: 64, offset: 2176)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4485, file: !101, line: 718, baseType: !223, size: 64, offset: 2240)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4485, file: !101, line: 720, baseType: !4564, size: 64, offset: 2304)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4565, file: !101, line: 633, baseType: !362, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4565, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4485, file: !101, line: 721, baseType: !4570, size: 64, offset: 2368)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !4326, !989}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4485, file: !101, line: 722, baseType: !4574, size: 64, offset: 2432)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4327, file: !94, line: 727, baseType: !4577, size: 64, offset: 4224)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4579)
!4579 = !{!4580, !4581, !4582, !4586, !4587, !4588}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4578, file: !101, line: 743, baseType: !4360, size: 1472)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4578, file: !101, line: 744, baseType: !4363, size: 64, offset: 1472)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4578, file: !101, line: 745, baseType: !4583, size: 64, offset: 1536)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4326, !763}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4578, file: !101, line: 746, baseType: !4363, size: 64, offset: 1600)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4578, file: !101, line: 747, baseType: !4354, size: 64, offset: 1664)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4578, file: !101, line: 748, baseType: !4354, size: 64, offset: 1728)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4327, file: !94, line: 736, baseType: !4590, size: 128, offset: 4288)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4591)
!4591 = !{!4592, !4596}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4590, file: !94, line: 531, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4595, line: 13, flags: DIFlagFwdDecl)
!4595 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4590, file: !94, line: 532, baseType: !4597, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4327, file: !94, line: 738, baseType: !4600, size: 64, offset: 4416)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4602)
!4602 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4327, file: !94, line: 740, baseType: !4604, size: 64, offset: 4480)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4327, file: !94, line: 741, baseType: !223, size: 64, offset: 4544)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4327, file: !94, line: 746, baseType: !223, size: 64, offset: 4608)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4327, file: !94, line: 747, baseType: !4608, size: 64, offset: 4672)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4610)
!4610 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4327, file: !94, line: 749, baseType: !4612, size: 64, offset: 4736)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4614)
!4614 = !{!4615, !4616, !4617}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4613, file: !94, line: 433, baseType: !7, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4613, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4613, file: !94, line: 435, baseType: !212, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4327, file: !94, line: 751, baseType: !278, size: 128, offset: 4800)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4327, file: !94, line: 762, baseType: !4620, size: 64, offset: 4928)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4327, file: !94, line: 770, baseType: !4623, offset: 4992)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4624, line: 5, elements: !846)
!4624 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4327, file: !94, line: 772, baseType: !4626, size: 64, offset: 4992)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4628, line: 18, flags: DIFlagFwdDecl)
!4628 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4327, file: !94, line: 773, baseType: !4630, size: 64, offset: 5056)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4632, line: 41, size: 512, elements: !4633)
!4632 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4633 = !{!4634, !4635, !4729, !4730, !4731, !4732}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4631, file: !4632, line: 42, baseType: !4630, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4631, file: !4632, line: 43, baseType: !4636, size: 64, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4632, line: 125, size: 1408, elements: !4639)
!4639 = !{!4640, !4644, !4648, !4654, !4658, !4659, !4664, !4668, !4672, !4676, !4680, !4681, !4685, !4689, !4693, !4704, !4705, !4706, !4707, !4717, !4721, !4725}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4638, file: !4632, line: 126, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!4630, !4630}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4638, file: !4632, line: 127, baseType: !4645, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{null, !4630}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4638, file: !4632, line: 128, baseType: !4649, size: 64, offset: 128)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!763, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4631)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4638, file: !4632, line: 129, baseType: !4655, size: 64, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!1460, !4652, !4346}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4638, file: !4632, line: 131, baseType: !4649, size: 64, offset: 256)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4638, file: !4632, line: 133, baseType: !4660, size: 64, offset: 320)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!4663, !4652}
!4663 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4632, line: 132, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4638, file: !4632, line: 134, baseType: !4665, size: 64, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!763, !4652, !421}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4638, file: !4632, line: 136, baseType: !4669, size: 64, offset: 448)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!109, !4652, !421, !7, !209, !593}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4638, file: !4632, line: 141, baseType: !4673, size: 64, offset: 512)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!109, !4652, !421, !2301, !593}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4638, file: !4632, line: 144, baseType: !4677, size: 64, offset: 576)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!421, !4652}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4638, file: !4632, line: 145, baseType: !4677, size: 64, offset: 640)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4638, file: !4632, line: 146, baseType: !4682, size: 64, offset: 704)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!4630, !4652}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4638, file: !4632, line: 148, baseType: !4686, size: 64, offset: 768)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!4630, !4652, !4630}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4638, file: !4632, line: 151, baseType: !4690, size: 64, offset: 832)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!4630, !4652, !421}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4638, file: !4632, line: 153, baseType: !4694, size: 64, offset: 896)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!109, !4652, !421, !421, !7, !7, !4697}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4632, line: 94, size: 640, elements: !4699)
!4699 = !{!4700, !4701, !4702}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4698, file: !4632, line: 95, baseType: !4630, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4698, file: !4632, line: 96, baseType: !7, size: 32, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4698, file: !4632, line: 97, baseType: !4703, size: 512, offset: 128)
!4703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !242)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4638, file: !4632, line: 158, baseType: !4686, size: 64, offset: 960)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4638, file: !4632, line: 161, baseType: !4682, size: 64, offset: 1024)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4638, file: !4632, line: 163, baseType: !4641, size: 64, offset: 1088)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4638, file: !4632, line: 164, baseType: !4708, size: 64, offset: 1152)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!109, !4652, !4711}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4632, line: 73, size: 128, elements: !4713)
!4713 = !{!4714, !4715, !4716}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4712, file: !4632, line: 74, baseType: !7, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4712, file: !4632, line: 75, baseType: !7, size: 32, offset: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4712, file: !4632, line: 76, baseType: !4652, size: 64, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4638, file: !4632, line: 166, baseType: !4718, size: 64, offset: 1216)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!209, !4630, !109}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4638, file: !4632, line: 167, baseType: !4722, size: 64, offset: 1280)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!109, !4652, !7}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4638, file: !4632, line: 168, baseType: !4726, size: 64, offset: 1344)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!109, !4630}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4631, file: !4632, line: 44, baseType: !4326, size: 64, offset: 128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4631, file: !4632, line: 45, baseType: !278, size: 128, offset: 192)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4631, file: !4632, line: 46, baseType: !278, size: 128, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4631, file: !4632, line: 47, baseType: !390, size: 8, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4327, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4327, file: !94, line: 778, baseType: !462, size: 32, offset: 5152)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4327, file: !94, line: 779, baseType: !338, size: 32, offset: 5184)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4327, file: !94, line: 781, baseType: !362, size: 32, offset: 5216)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4327, file: !94, line: 782, baseType: !278, size: 128, offset: 5248)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4327, file: !94, line: 784, baseType: !4739, size: 64, offset: 5376)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4741)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4742, line: 52, size: 768, elements: !4743)
!4742 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4743 = !{!4744, !4745, !4746, !4747, !4748, !4752, !4756, !4757, !4758, !4759, !4763, !4767}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4741, file: !4742, line: 53, baseType: !421, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4741, file: !4742, line: 55, baseType: !597, size: 64, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4741, file: !4742, line: 56, baseType: !597, size: 64, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4741, file: !4742, line: 58, baseType: !4343, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4741, file: !4742, line: 59, baseType: !4749, size: 64, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!446, !4346, !4352}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4741, file: !4742, line: 61, baseType: !4753, size: 64, offset: 320)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !4739}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4741, file: !4742, line: 62, baseType: !4354, size: 64, offset: 384)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4741, file: !4742, line: 64, baseType: !4363, size: 64, offset: 448)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4741, file: !4742, line: 66, baseType: !1843, size: 64, offset: 512)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4741, file: !4742, line: 67, baseType: !4760, size: 64, offset: 576)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!1460, !4346}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4741, file: !4742, line: 69, baseType: !4764, size: 64, offset: 640)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4346, !1878, !1879}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4741, file: !4742, line: 71, baseType: !4358, size: 64, offset: 704)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4327, file: !94, line: 785, baseType: !597, size: 64, offset: 5440)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4327, file: !94, line: 787, baseType: !4354, size: 64, offset: 5504)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4327, file: !94, line: 788, baseType: !4771, size: 64, offset: 5568)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4327, file: !94, line: 789, baseType: !4774, size: 64, offset: 5632)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4327, file: !94, line: 791, baseType: !4777, size: 64, offset: 5696)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4778, file: !94, line: 598, baseType: !116, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4778, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4778, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4778, file: !94, line: 601, baseType: !763, size: 8, offset: 96)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4778, file: !94, line: 602, baseType: !763, size: 8, offset: 104)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4327, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4327, file: !94, line: 795, baseType: !763, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4327, file: !94, line: 796, baseType: !763, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4327, file: !94, line: 797, baseType: !763, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4327, file: !94, line: 798, baseType: !763, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4327, file: !94, line: 799, baseType: !763, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4263, file: !142, line: 676, baseType: !4327, size: 5824, offset: 2240)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4263, file: !142, line: 677, baseType: !611, size: 64, offset: 8064)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4263, file: !142, line: 678, baseType: !611, size: 64, offset: 8128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4263, file: !142, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4263, file: !142, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4258, file: !142, line: 325, baseType: !4262, size: 64, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4258, file: !142, line: 327, baseType: !209, size: 64, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4258, file: !142, line: 328, baseType: !248, size: 64, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4258, file: !142, line: 329, baseType: !4800, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !142, line: 76, size: 832, elements: !4802)
!4802 = !{!4803, !4804, !4805, !4808, !4809}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4801, file: !142, line: 77, baseType: !4262, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4801, file: !142, line: 78, baseType: !278, size: 128, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4801, file: !142, line: 79, baseType: !4806, size: 64, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !142, line: 79, flags: DIFlagFwdDecl)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4801, file: !142, line: 80, baseType: !344, size: 8, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4801, file: !142, line: 81, baseType: !509, size: 512, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4258, file: !142, line: 331, baseType: !7, size: 32, offset: 448)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4258, file: !142, line: 332, baseType: !217, size: 16, offset: 480)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4258, file: !142, line: 333, baseType: !217, size: 16, offset: 496)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4258, file: !142, line: 334, baseType: !217, size: 16, offset: 512)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4258, file: !142, line: 335, baseType: !217, size: 16, offset: 528)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4258, file: !142, line: 336, baseType: !7, size: 32, offset: 544)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4258, file: !142, line: 337, baseType: !390, size: 8, offset: 576)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4258, file: !142, line: 338, baseType: !390, size: 8, offset: 584)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4258, file: !142, line: 344, baseType: !4819, size: 64, offset: 640)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !195, line: 415, size: 64, elements: !4821)
!4821 = !{!4822, !4823, !4824}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4820, file: !195, line: 416, baseType: !390, size: 8)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4820, file: !195, line: 417, baseType: !390, size: 8, offset: 8)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4820, file: !195, line: 418, baseType: !338, size: 32, offset: 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4258, file: !142, line: 345, baseType: !4257, size: 64, offset: 704)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4258, file: !142, line: 347, baseType: !338, size: 32, offset: 768)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4258, file: !142, line: 348, baseType: !390, size: 8, offset: 800)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4258, file: !142, line: 349, baseType: !390, size: 8, offset: 808)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4258, file: !142, line: 350, baseType: !390, size: 8, offset: 816)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4258, file: !142, line: 351, baseType: !390, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4258, file: !142, line: 352, baseType: !390, size: 8, offset: 832)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4258, file: !142, line: 353, baseType: !390, size: 8, offset: 840)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4258, file: !142, line: 354, baseType: !397, size: 16, offset: 848)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4258, file: !142, line: 355, baseType: !2315, size: 64, offset: 896)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4258, file: !142, line: 357, baseType: !4836, size: 64, offset: 960)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !142, line: 918, size: 2368, elements: !4838)
!4838 = !{!4839, !4840, !4841, !4854, !4858, !4862, !4866, !4868, !4869, !4873, !4874, !4878, !4898, !4899, !4900, !4901, !4906}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4837, file: !142, line: 919, baseType: !278, size: 128)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4837, file: !142, line: 920, baseType: !421, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4837, file: !142, line: 921, baseType: !4842, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4844)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4416, line: 44, size: 320, elements: !4845)
!4845 = !{!4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4844, file: !4416, line: 45, baseType: !220, size: 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4844, file: !4416, line: 45, baseType: !220, size: 32, offset: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4844, file: !4416, line: 46, baseType: !220, size: 32, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4844, file: !4416, line: 46, baseType: !220, size: 32, offset: 96)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4844, file: !4416, line: 47, baseType: !220, size: 32, offset: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4844, file: !4416, line: 47, baseType: !220, size: 32, offset: 160)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4844, file: !4416, line: 48, baseType: !4432, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4844, file: !4416, line: 49, baseType: !220, size: 32, offset: 256)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4837, file: !142, line: 922, baseType: !4855, size: 64, offset: 256)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!109, !4257, !4842}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4837, file: !142, line: 923, baseType: !4859, size: 64, offset: 320)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !4257}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4837, file: !142, line: 924, baseType: !4863, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!109, !4257, !4443}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4837, file: !142, line: 925, baseType: !4867, size: 64, offset: 448)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4837, file: !142, line: 926, baseType: !4859, size: 64, offset: 512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4837, file: !142, line: 927, baseType: !4870, size: 64, offset: 576)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!109, !4257, !109}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4837, file: !142, line: 928, baseType: !4870, size: 64, offset: 640)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4837, file: !142, line: 929, baseType: !4875, size: 64, offset: 704)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!338, !4257}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4837, file: !142, line: 930, baseType: !4879, size: 64, offset: 768)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4881)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !142, line: 837, size: 448, elements: !4882)
!4882 = !{!4883, !4889, !4893, !4894, !4895, !4896, !4897}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4881, file: !142, line: 839, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!4887, !4257, !4888}
!4887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !142, line: 814, baseType: !7)
!4888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !142, line: 196, baseType: !7)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4881, file: !142, line: 843, baseType: !4890, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!4887, !4257}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4881, file: !142, line: 846, baseType: !4890, size: 64, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4881, file: !142, line: 849, baseType: !4859, size: 64, offset: 192)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4881, file: !142, line: 850, baseType: !4859, size: 64, offset: 256)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4881, file: !142, line: 853, baseType: !4859, size: 64, offset: 320)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4881, file: !142, line: 856, baseType: !4859, size: 64, offset: 384)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4837, file: !142, line: 931, baseType: !597, size: 64, offset: 832)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4837, file: !142, line: 932, baseType: !597, size: 64, offset: 896)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4837, file: !142, line: 933, baseType: !4404, size: 1152, offset: 960)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4837, file: !142, line: 934, baseType: !4902, size: 192, offset: 2112)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !142, line: 801, size: 192, elements: !4903)
!4903 = !{!4904, !4905}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4902, file: !142, line: 802, baseType: !362, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4902, file: !142, line: 803, baseType: !278, size: 128, offset: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4837, file: !142, line: 935, baseType: !763, size: 8, offset: 2304)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4258, file: !142, line: 358, baseType: !223, size: 64, offset: 1024)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4258, file: !142, line: 364, baseType: !4613, size: 128, offset: 1088)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4258, file: !142, line: 366, baseType: !4910, size: 32, offset: 1216)
!4910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !142, line: 171, baseType: !109)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4258, file: !142, line: 369, baseType: !390, size: 8, offset: 1248)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4258, file: !142, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4258, file: !142, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4258, file: !142, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4258, file: !142, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4258, file: !142, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4258, file: !142, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4258, file: !142, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4258, file: !142, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4258, file: !142, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4258, file: !142, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4258, file: !142, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4258, file: !142, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4258, file: !142, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4258, file: !142, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4258, file: !142, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4258, file: !142, line: 390, baseType: !7, size: 32, offset: 1280)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4258, file: !142, line: 391, baseType: !7, size: 32, offset: 1312)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4258, file: !142, line: 394, baseType: !4930, size: 64, offset: 1344)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !142, line: 316, flags: DIFlagFwdDecl)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4258, file: !142, line: 395, baseType: !397, size: 16, offset: 1408)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4258, file: !142, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4258, file: !142, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4258, file: !142, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4258, file: !142, line: 402, baseType: !4888, size: 32, offset: 1440)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4258, file: !142, line: 403, baseType: !4327, size: 5824, offset: 1472)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4258, file: !142, line: 405, baseType: !109, size: 32, offset: 7296)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4258, file: !142, line: 411, baseType: !7, size: 32, offset: 7328)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4258, file: !142, line: 412, baseType: !4941, size: 5632, offset: 7360)
!4941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4274, size: 5632, elements: !4942)
!4942 = !{!4943}
!4943 = !DISubrange(count: 11)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4258, file: !142, line: 413, baseType: !4274, size: 512, offset: 12992)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4258, file: !142, line: 415, baseType: !763, size: 8, offset: 13504)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4258, file: !142, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4258, file: !142, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4258, file: !142, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4258, file: !142, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4258, file: !142, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4258, file: !142, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4258, file: !142, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4258, file: !142, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4258, file: !142, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4258, file: !142, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4258, file: !142, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4258, file: !142, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4258, file: !142, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4258, file: !142, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4258, file: !142, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4258, file: !142, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4258, file: !142, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4258, file: !142, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4258, file: !142, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4258, file: !142, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4258, file: !142, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4258, file: !142, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4258, file: !142, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4258, file: !142, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4258, file: !142, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4258, file: !142, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4258, file: !142, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4258, file: !142, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4258, file: !142, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4258, file: !142, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4258, file: !142, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4258, file: !142, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4258, file: !142, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4258, file: !142, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4258, file: !142, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4258, file: !142, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4258, file: !142, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4258, file: !142, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4258, file: !142, line: 468, baseType: !4985, size: 16, offset: 13552)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !142, line: 222, baseType: !217)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4258, file: !142, line: 469, baseType: !382, size: 32, offset: 13568)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4258, file: !142, line: 471, baseType: !362, size: 32, offset: 13600)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4258, file: !142, line: 472, baseType: !4989, size: 512, offset: 13632)
!4989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 512, elements: !3119)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4258, file: !142, line: 473, baseType: !919, size: 64, offset: 14144)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4258, file: !142, line: 474, baseType: !4992, size: 704, offset: 14208)
!4992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 704, elements: !4942)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4258, file: !142, line: 475, baseType: !4992, size: 704, offset: 14912)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4258, file: !142, line: 487, baseType: !209, size: 64, offset: 15616)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4258, file: !142, line: 488, baseType: !652, size: 32, offset: 15680)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4258, file: !142, line: 490, baseType: !4997, size: 320, offset: 15744)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !142, line: 309, size: 320, elements: !4998)
!4998 = !{!4999, !5000, !5001}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4997, file: !142, line: 310, baseType: !872, size: 256)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4997, file: !142, line: 311, baseType: !7, size: 32, offset: 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4997, file: !142, line: 312, baseType: !390, size: 8, offset: 288)
!5002 = !DIDerivedType(tag: DW_TAG_member, scope: !4258, file: !142, line: 497, baseType: !5003, size: 64, offset: 16064)
!5003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4258, file: !142, line: 497, size: 64, elements: !5004)
!5004 = !{!5005, !5032}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5003, file: !142, line: 498, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !195, line: 294, size: 1024, elements: !5008)
!5008 = !{!5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5031}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5007, file: !195, line: 295, baseType: !109, size: 32)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !5007, file: !195, line: 296, baseType: !109, size: 32, offset: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5007, file: !195, line: 297, baseType: !338, size: 32, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !5007, file: !195, line: 298, baseType: !397, size: 16, offset: 96)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !5007, file: !195, line: 299, baseType: !397, size: 16, offset: 112)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !5007, file: !195, line: 300, baseType: !397, size: 16, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !5007, file: !195, line: 301, baseType: !397, size: 16, offset: 144)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5007, file: !195, line: 302, baseType: !397, size: 16, offset: 160)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !5007, file: !195, line: 303, baseType: !397, size: 16, offset: 176)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !5007, file: !195, line: 304, baseType: !397, size: 16, offset: 192)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !5007, file: !195, line: 305, baseType: !338, size: 32, offset: 224)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5007, file: !195, line: 306, baseType: !390, size: 8, offset: 256)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !5007, file: !195, line: 307, baseType: !390, size: 8, offset: 264)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !5007, file: !195, line: 308, baseType: !397, size: 16, offset: 272)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5007, file: !195, line: 309, baseType: !4257, size: 64, offset: 320)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5007, file: !195, line: 310, baseType: !4257, size: 64, offset: 384)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5007, file: !195, line: 311, baseType: !338, size: 32, offset: 448)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !5007, file: !195, line: 312, baseType: !390, size: 8, offset: 480)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !5007, file: !195, line: 313, baseType: !397, size: 16, offset: 496)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !5007, file: !195, line: 314, baseType: !397, size: 16, offset: 512)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !5007, file: !195, line: 315, baseType: !5030, size: 384, offset: 576)
!5030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4278, size: 384, elements: !1035)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !5007, file: !195, line: 316, baseType: !763, size: 8, offset: 960)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5003, file: !142, line: 499, baseType: !4257, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4258, file: !142, line: 501, baseType: !397, size: 16, offset: 16128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4258, file: !142, line: 502, baseType: !390, size: 8, offset: 16144)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4258, file: !142, line: 505, baseType: !397, size: 16, offset: 16160)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4258, file: !142, line: 506, baseType: !338, size: 32, offset: 16192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4258, file: !142, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4258, file: !142, line: 510, baseType: !397, size: 16, offset: 16240)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4258, file: !142, line: 511, baseType: !397, size: 16, offset: 16256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4258, file: !142, line: 519, baseType: !397, size: 16, offset: 16272)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4258, file: !142, line: 520, baseType: !3643, size: 64, offset: 16320)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4258, file: !142, line: 521, baseType: !593, size: 64, offset: 16384)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4258, file: !142, line: 526, baseType: !421, size: 64, offset: 16448)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4258, file: !142, line: 528, baseType: !212, size: 64, offset: 16512)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4258, file: !142, line: 531, baseType: !5046, size: 56, offset: 16576)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 56, elements: !2116)
!5047 = !{!5048, !5049, !5050, !5051}
!5048 = !DILocalVariable(name: "dev", arg: 1, scope: !4254, file: !3, line: 415, type: !4257)
!5049 = !DILocalVariable(name: "bus", scope: !4254, file: !3, line: 417, type: !4262)
!5050 = !DILocalVariable(name: "e", scope: !4254, file: !3, line: 418, type: !248)
!5051 = !DILocalVariable(name: "name", scope: !4254, file: !3, line: 419, type: !3118)
!5052 = !DILocation(line: 415, column: 44, scope: !4254)
!5053 = !DILocation(line: 417, column: 2, scope: !4254)
!5054 = !DILocation(line: 417, column: 18, scope: !4254)
!5055 = !DILocation(line: 417, column: 24, scope: !4254)
!5056 = !DILocation(line: 417, column: 29, scope: !4254)
!5057 = !DILocation(line: 418, column: 2, scope: !4254)
!5058 = !DILocation(line: 418, column: 25, scope: !4254)
!5059 = !DILocation(line: 419, column: 2, scope: !4254)
!5060 = !DILocation(line: 419, column: 7, scope: !4254)
!5061 = !DILocation(line: 421, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 421, column: 6)
!5063 = !DILocation(line: 421, column: 6, scope: !4254)
!5064 = !DILocation(line: 422, column: 3, scope: !5062)
!5065 = !DILocation(line: 424, column: 7, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 424, column: 6)
!5067 = !DILocation(line: 424, column: 12, scope: !5066)
!5068 = !DILocation(line: 424, column: 6, scope: !4254)
!5069 = !DILocation(line: 425, column: 23, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 425, column: 7)
!5071 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 424, column: 21)
!5072 = !DILocation(line: 425, column: 7, scope: !5070)
!5073 = !DILocation(line: 425, column: 7, scope: !5071)
!5074 = !DILocation(line: 426, column: 12, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 425, column: 29)
!5076 = !DILocation(line: 426, column: 45, scope: !5075)
!5077 = !DILocation(line: 426, column: 31, scope: !5075)
!5078 = !DILocation(line: 427, column: 6, scope: !5075)
!5079 = !DILocation(line: 427, column: 11, scope: !5075)
!5080 = !DILocation(line: 426, column: 4, scope: !5075)
!5081 = !DILocation(line: 428, column: 3, scope: !5075)
!5082 = !DILocation(line: 429, column: 12, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 428, column: 10)
!5084 = !DILocation(line: 429, column: 26, scope: !5083)
!5085 = !DILocation(line: 429, column: 31, scope: !5083)
!5086 = !DILocation(line: 429, column: 4, scope: !5083)
!5087 = !DILocation(line: 431, column: 29, scope: !5071)
!5088 = !DILocation(line: 431, column: 35, scope: !5071)
!5089 = !DILocation(line: 431, column: 18, scope: !5071)
!5090 = !DILocation(line: 431, column: 3, scope: !5071)
!5091 = !DILocation(line: 431, column: 8, scope: !5071)
!5092 = !DILocation(line: 431, column: 16, scope: !5071)
!5093 = !DILocation(line: 432, column: 8, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 432, column: 7)
!5095 = !DILocation(line: 432, column: 13, scope: !5094)
!5096 = !DILocation(line: 432, column: 7, scope: !5071)
!5097 = !DILocation(line: 433, column: 4, scope: !5094)
!5098 = !DILocation(line: 434, column: 2, scope: !5071)
!5099 = !DILocation(line: 436, column: 10, scope: !4254)
!5100 = !DILocation(line: 436, column: 27, scope: !4254)
!5101 = !DILocation(line: 436, column: 49, scope: !4254)
!5102 = !DILocation(line: 436, column: 2, scope: !4254)
!5103 = !DILocation(line: 437, column: 23, scope: !4254)
!5104 = !DILocation(line: 437, column: 58, scope: !4254)
!5105 = !DILocation(line: 437, column: 63, scope: !4254)
!5106 = !DILocation(line: 438, column: 28, scope: !4254)
!5107 = !DILocation(line: 437, column: 6, scope: !4254)
!5108 = !DILocation(line: 437, column: 4, scope: !4254)
!5109 = !DILocation(line: 439, column: 7, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 439, column: 6)
!5111 = !DILocation(line: 439, column: 6, scope: !4254)
!5112 = !DILocation(line: 440, column: 3, scope: !5110)
!5113 = !DILocation(line: 441, column: 16, scope: !4254)
!5114 = !DILocation(line: 441, column: 19, scope: !4254)
!5115 = !DILocation(line: 441, column: 24, scope: !4254)
!5116 = !DILocation(line: 441, column: 2, scope: !4254)
!5117 = !DILocation(line: 442, column: 17, scope: !4254)
!5118 = !DILocation(line: 442, column: 2, scope: !4254)
!5119 = !DILocation(line: 442, column: 7, scope: !4254)
!5120 = !DILocation(line: 442, column: 15, scope: !4254)
!5121 = !DILocation(line: 444, column: 2, scope: !4254)
!5122 = !DILocation(line: 445, column: 1, scope: !4254)
!5123 = distinct !DISubprogram(name: "pci_proc_domain", scope: !5124, file: !5124, line: 49, type: !4294, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5125)
!5124 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!5125 = !{!5126}
!5126 = !DILocalVariable(name: "bus", arg: 1, scope: !5123, file: !5124, line: 49, type: !4262)
!5127 = !DILocation(line: 49, column: 51, scope: !5123)
!5128 = !DILocation(line: 51, column: 23, scope: !5123)
!5129 = !DILocation(line: 51, column: 9, scope: !5123)
!5130 = !DILocation(line: 51, column: 2, scope: !5123)
!5131 = !DISubprogram(name: "sprintf", scope: !5132, file: !5132, line: 10, type: !5133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5132 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!109, !446, !421, null}
!5135 = distinct !DISubprogram(name: "pci_domain_nr", scope: !5124, file: !5124, line: 44, type: !4294, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5136 = !{!5137}
!5137 = !DILocalVariable(name: "bus", arg: 1, scope: !5135, file: !5124, line: 44, type: !4262)
!5138 = !DILocation(line: 44, column: 49, scope: !5135)
!5139 = !DILocation(line: 46, column: 24, scope: !5135)
!5140 = !DILocation(line: 46, column: 9, scope: !5135)
!5141 = !DILocation(line: 46, column: 30, scope: !5135)
!5142 = !DILocation(line: 46, column: 2, scope: !5135)
!5143 = !DISubprogram(name: "proc_mkdir", scope: !255, file: !255, line: 85, type: !5144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!248, !421, !248}
!5146 = !DISubprogram(name: "proc_create_data", scope: !255, file: !255, line: 105, type: !5147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!248, !421, !266, !248, !5149, !209}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!5150 = !DISubprogram(name: "proc_set_size", scope: !255, file: !255, line: 111, type: !5151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{null, !248, !467}
!5153 = distinct !DISubprogram(name: "pci_proc_detach_device", scope: !3, file: !3, line: 447, type: !4255, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5154)
!5154 = !{!5155}
!5155 = !DILocalVariable(name: "dev", arg: 1, scope: !5153, file: !3, line: 447, type: !4257)
!5156 = !DILocation(line: 447, column: 44, scope: !5153)
!5157 = !DILocation(line: 449, column: 14, scope: !5153)
!5158 = !DILocation(line: 449, column: 19, scope: !5153)
!5159 = !DILocation(line: 449, column: 2, scope: !5153)
!5160 = !DILocation(line: 450, column: 2, scope: !5153)
!5161 = !DILocation(line: 450, column: 7, scope: !5153)
!5162 = !DILocation(line: 450, column: 15, scope: !5153)
!5163 = !DILocation(line: 451, column: 2, scope: !5153)
!5164 = !DISubprogram(name: "proc_remove", scope: !255, file: !255, line: 124, type: !5165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !248}
!5167 = distinct !DISubprogram(name: "pci_proc_detach_bus", scope: !3, file: !3, line: 454, type: !4294, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5168)
!5168 = !{!5169}
!5169 = !DILocalVariable(name: "bus", arg: 1, scope: !5167, file: !3, line: 454, type: !4262)
!5170 = !DILocation(line: 454, column: 41, scope: !5167)
!5171 = !DILocation(line: 456, column: 14, scope: !5167)
!5172 = !DILocation(line: 456, column: 19, scope: !5167)
!5173 = !DILocation(line: 456, column: 2, scope: !5167)
!5174 = !DILocation(line: 457, column: 2, scope: !5167)
!5175 = distinct !DISubprogram(name: "__initstub__kmod_proc__294_472_pci_proc_init6", scope: !3, file: !3, line: 472, type: !2096, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5176 = !DILocation(line: 472, column: 1, scope: !5175)
!5177 = distinct !DISubprogram(name: "pci_proc_init", scope: !3, file: !3, line: 460, type: !2096, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5178 = !{!5179}
!5179 = !DILocalVariable(name: "dev", scope: !5177, file: !3, line: 462, type: !4257)
!5180 = !DILocation(line: 462, column: 2, scope: !5177)
!5181 = !DILocation(line: 462, column: 18, scope: !5177)
!5182 = !DILocation(line: 463, column: 21, scope: !5177)
!5183 = !DILocation(line: 463, column: 19, scope: !5177)
!5184 = !DILocation(line: 464, column: 2, scope: !5177)
!5185 = !DILocation(line: 466, column: 19, scope: !5177)
!5186 = !DILocation(line: 467, column: 2, scope: !5177)
!5187 = !DILocation(line: 468, column: 26, scope: !5177)
!5188 = !DILocation(line: 468, column: 3, scope: !5177)
!5189 = distinct !{!5189, !5186, !5190, !5191, !5192}
!5190 = !DILocation(line: 468, column: 29, scope: !5177)
!5191 = !{!"llvm.loop.mustprogress"}
!5192 = !{!"llvm.loop.unroll.disable"}
!5193 = !DILocation(line: 471, column: 1, scope: !5177)
!5194 = !DILocation(line: 470, column: 2, scope: !5177)
!5195 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !5124, file: !5124, line: 36, type: !5196, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!5198, !5208}
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5124, line: 15, size: 256, elements: !5200)
!5200 = !{!5201, !5202, !5203, !5206, !5207}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5199, file: !5124, line: 16, baseType: !109, size: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5199, file: !5124, line: 17, baseType: !109, size: 32, offset: 32)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5199, file: !5124, line: 19, baseType: !5204, size: 64, offset: 64)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !4392, line: 212, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5199, file: !5124, line: 22, baseType: !209, size: 64, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5199, file: !5124, line: 25, baseType: !209, size: 64, offset: 192)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!5210 = !{!5211}
!5211 = !DILocalVariable(name: "bus", arg: 1, scope: !5195, file: !5124, line: 36, type: !5208)
!5212 = !DILocation(line: 36, column: 72, scope: !5195)
!5213 = !DILocation(line: 38, column: 9, scope: !5195)
!5214 = !DILocation(line: 38, column: 14, scope: !5195)
!5215 = !DILocation(line: 38, column: 2, scope: !5195)
!5216 = distinct !DISubprogram(name: "proc_bus_pci_open", scope: !3, file: !3, line: 294, type: !260, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5217 = !{!5218, !5219, !5220}
!5218 = !DILocalVariable(name: "inode", arg: 1, scope: !5216, file: !3, line: 294, type: !262)
!5219 = !DILocalVariable(name: "file", arg: 2, scope: !5216, file: !3, line: 294, type: !853)
!5220 = !DILocalVariable(name: "fpriv", scope: !5216, file: !3, line: 296, type: !5221)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_filp_private", file: !3, line: 188, size: 64, elements: !5223)
!5223 = !{!5224, !5225}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_state", scope: !5222, file: !3, line: 189, baseType: !141, size: 32)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "write_combine", scope: !5222, file: !3, line: 190, baseType: !109, size: 32, offset: 32)
!5226 = !DILocation(line: 294, column: 44, scope: !5216)
!5227 = !DILocation(line: 294, column: 64, scope: !5216)
!5228 = !DILocation(line: 296, column: 2, scope: !5216)
!5229 = !DILocation(line: 296, column: 27, scope: !5216)
!5230 = !DILocation(line: 296, column: 35, scope: !5216)
!5231 = !DILocation(line: 298, column: 7, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 298, column: 6)
!5233 = !DILocation(line: 298, column: 6, scope: !5216)
!5234 = !DILocation(line: 299, column: 3, scope: !5232)
!5235 = !DILocation(line: 301, column: 2, scope: !5216)
!5236 = !DILocation(line: 301, column: 9, scope: !5216)
!5237 = !DILocation(line: 301, column: 20, scope: !5216)
!5238 = !DILocation(line: 302, column: 2, scope: !5216)
!5239 = !DILocation(line: 302, column: 9, scope: !5216)
!5240 = !DILocation(line: 302, column: 23, scope: !5216)
!5241 = !DILocation(line: 304, column: 23, scope: !5216)
!5242 = !DILocation(line: 304, column: 2, scope: !5216)
!5243 = !DILocation(line: 304, column: 8, scope: !5216)
!5244 = !DILocation(line: 304, column: 21, scope: !5216)
!5245 = !DILocation(line: 305, column: 20, scope: !5216)
!5246 = !DILocation(line: 305, column: 2, scope: !5216)
!5247 = !DILocation(line: 305, column: 8, scope: !5216)
!5248 = !DILocation(line: 305, column: 18, scope: !5216)
!5249 = !DILocation(line: 307, column: 2, scope: !5216)
!5250 = !DILocation(line: 308, column: 1, scope: !5216)
!5251 = distinct !DISubprogram(name: "proc_bus_pci_read", scope: !3, file: !3, line: 28, type: !1176, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5252)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5264, !5266, !5267, !5268, !5269, !5270, !5273, !5275, !5276, !5277, !5278, !5279, !5281, !5283, !5284, !5285, !5286, !5287, !5290, !5292, !5293, !5294, !5295, !5296, !5299, !5301, !5302, !5303, !5304}
!5253 = !DILocalVariable(name: "file", arg: 1, scope: !5251, file: !3, line: 28, type: !853)
!5254 = !DILocalVariable(name: "buf", arg: 2, scope: !5251, file: !3, line: 28, type: !446)
!5255 = !DILocalVariable(name: "nbytes", arg: 3, scope: !5251, file: !3, line: 29, type: !593)
!5256 = !DILocalVariable(name: "ppos", arg: 4, scope: !5251, file: !3, line: 29, type: !1178)
!5257 = !DILocalVariable(name: "dev", scope: !5251, file: !3, line: 31, type: !4257)
!5258 = !DILocalVariable(name: "pos", scope: !5251, file: !3, line: 32, type: !7)
!5259 = !DILocalVariable(name: "cnt", scope: !5251, file: !3, line: 33, type: !7)
!5260 = !DILocalVariable(name: "size", scope: !5251, file: !3, line: 33, type: !7)
!5261 = !DILocalVariable(name: "val", scope: !5262, file: !3, line: 62, type: !344)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 61, column: 24)
!5263 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 61, column: 6)
!5264 = !DILocalVariable(name: "__ret_pu", scope: !5265, file: !3, line: 64, type: !109)
!5265 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 64, column: 3)
!5266 = !DILocalVariable(name: "__ptr_pu", scope: !5265, file: !3, line: 64, type: !209)
!5267 = !DILocalVariable(name: "__val_pu", scope: !5265, file: !3, line: 64, type: !227)
!5268 = !DILocalVariable(name: "__x", scope: !5265, file: !3, line: 64, type: !227)
!5269 = !DILocalVariable(name: "__ptr", scope: !5265, file: !3, line: 64, type: !446)
!5270 = !DILocalVariable(name: "val", scope: !5271, file: !3, line: 71, type: !217)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 70, column: 28)
!5272 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 70, column: 6)
!5273 = !DILocalVariable(name: "__ret_pu", scope: !5274, file: !3, line: 73, type: !109)
!5274 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 73, column: 3)
!5275 = !DILocalVariable(name: "__ptr_pu", scope: !5274, file: !3, line: 73, type: !209)
!5276 = !DILocalVariable(name: "__val_pu", scope: !5274, file: !3, line: 73, type: !213)
!5277 = !DILocalVariable(name: "__x", scope: !5274, file: !3, line: 73, type: !213)
!5278 = !DILocalVariable(name: "__ptr", scope: !5274, file: !3, line: 73, type: !218)
!5279 = !DILocalVariable(name: "val", scope: !5280, file: !3, line: 80, type: !7)
!5280 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 79, column: 19)
!5281 = !DILocalVariable(name: "__ret_pu", scope: !5282, file: !3, line: 82, type: !109)
!5282 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 82, column: 3)
!5283 = !DILocalVariable(name: "__ptr_pu", scope: !5282, file: !3, line: 82, type: !209)
!5284 = !DILocalVariable(name: "__val_pu", scope: !5282, file: !3, line: 82, type: !219)
!5285 = !DILocalVariable(name: "__x", scope: !5282, file: !3, line: 82, type: !219)
!5286 = !DILocalVariable(name: "__ptr", scope: !5282, file: !3, line: 82, type: !221)
!5287 = !DILocalVariable(name: "val", scope: !5288, file: !3, line: 90, type: !217)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 89, column: 16)
!5289 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 89, column: 6)
!5290 = !DILocalVariable(name: "__ret_pu", scope: !5291, file: !3, line: 92, type: !109)
!5291 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 92, column: 3)
!5292 = !DILocalVariable(name: "__ptr_pu", scope: !5291, file: !3, line: 92, type: !209)
!5293 = !DILocalVariable(name: "__val_pu", scope: !5291, file: !3, line: 92, type: !213)
!5294 = !DILocalVariable(name: "__x", scope: !5291, file: !3, line: 92, type: !213)
!5295 = !DILocalVariable(name: "__ptr", scope: !5291, file: !3, line: 92, type: !218)
!5296 = !DILocalVariable(name: "val", scope: !5297, file: !3, line: 99, type: !344)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 98, column: 11)
!5298 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 98, column: 6)
!5299 = !DILocalVariable(name: "__ret_pu", scope: !5300, file: !3, line: 101, type: !109)
!5300 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 101, column: 3)
!5301 = !DILocalVariable(name: "__ptr_pu", scope: !5300, file: !3, line: 101, type: !209)
!5302 = !DILocalVariable(name: "__val_pu", scope: !5300, file: !3, line: 101, type: !227)
!5303 = !DILocalVariable(name: "__x", scope: !5300, file: !3, line: 101, type: !227)
!5304 = !DILocalVariable(name: "__ptr", scope: !5300, file: !3, line: 101, type: !446)
!5305 = !DILocation(line: 28, column: 47, scope: !5251)
!5306 = !DILocation(line: 28, column: 66, scope: !5251)
!5307 = !DILocation(line: 29, column: 13, scope: !5251)
!5308 = !DILocation(line: 29, column: 29, scope: !5251)
!5309 = !DILocation(line: 31, column: 2, scope: !5251)
!5310 = !DILocation(line: 31, column: 18, scope: !5251)
!5311 = !DILocation(line: 31, column: 44, scope: !5251)
!5312 = !DILocation(line: 31, column: 33, scope: !5251)
!5313 = !DILocation(line: 31, column: 24, scope: !5251)
!5314 = !DILocation(line: 32, column: 2, scope: !5251)
!5315 = !DILocation(line: 32, column: 15, scope: !5251)
!5316 = !DILocation(line: 32, column: 22, scope: !5251)
!5317 = !DILocation(line: 32, column: 21, scope: !5251)
!5318 = !DILocation(line: 33, column: 2, scope: !5251)
!5319 = !DILocation(line: 33, column: 15, scope: !5251)
!5320 = !DILocation(line: 33, column: 20, scope: !5251)
!5321 = !DILocation(line: 41, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 41, column: 6)
!5323 = !DILocation(line: 41, column: 6, scope: !5251)
!5324 = !DILocation(line: 42, column: 10, scope: !5322)
!5325 = !DILocation(line: 42, column: 15, scope: !5322)
!5326 = !DILocation(line: 42, column: 8, scope: !5322)
!5327 = !DILocation(line: 42, column: 3, scope: !5322)
!5328 = !DILocation(line: 43, column: 11, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 43, column: 11)
!5330 = !DILocation(line: 43, column: 16, scope: !5329)
!5331 = !DILocation(line: 43, column: 25, scope: !5329)
!5332 = !DILocation(line: 43, column: 11, scope: !5322)
!5333 = !DILocation(line: 44, column: 8, scope: !5329)
!5334 = !DILocation(line: 44, column: 3, scope: !5329)
!5335 = !DILocation(line: 46, column: 8, scope: !5329)
!5336 = !DILocation(line: 48, column: 6, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 48, column: 6)
!5338 = !DILocation(line: 48, column: 13, scope: !5337)
!5339 = !DILocation(line: 48, column: 10, scope: !5337)
!5340 = !DILocation(line: 48, column: 6, scope: !5251)
!5341 = !DILocation(line: 49, column: 3, scope: !5337)
!5342 = !DILocation(line: 50, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 50, column: 6)
!5344 = !DILocation(line: 50, column: 16, scope: !5343)
!5345 = !DILocation(line: 50, column: 13, scope: !5343)
!5346 = !DILocation(line: 50, column: 6, scope: !5251)
!5347 = !DILocation(line: 51, column: 12, scope: !5343)
!5348 = !DILocation(line: 51, column: 10, scope: !5343)
!5349 = !DILocation(line: 51, column: 3, scope: !5343)
!5350 = !DILocation(line: 52, column: 6, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 52, column: 6)
!5352 = !DILocation(line: 52, column: 12, scope: !5351)
!5353 = !DILocation(line: 52, column: 10, scope: !5351)
!5354 = !DILocation(line: 52, column: 21, scope: !5351)
!5355 = !DILocation(line: 52, column: 19, scope: !5351)
!5356 = !DILocation(line: 52, column: 6, scope: !5251)
!5357 = !DILocation(line: 53, column: 12, scope: !5351)
!5358 = !DILocation(line: 53, column: 19, scope: !5351)
!5359 = !DILocation(line: 53, column: 17, scope: !5351)
!5360 = !DILocation(line: 53, column: 10, scope: !5351)
!5361 = !DILocation(line: 53, column: 3, scope: !5351)
!5362 = !DILocation(line: 54, column: 8, scope: !5251)
!5363 = !DILocation(line: 54, column: 6, scope: !5251)
!5364 = !DILocation(line: 56, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 56, column: 6)
!5366 = !DILocation(line: 56, column: 6, scope: !5251)
!5367 = !DILocation(line: 57, column: 3, scope: !5365)
!5368 = !DILocation(line: 59, column: 28, scope: !5251)
!5369 = !DILocation(line: 59, column: 2, scope: !5251)
!5370 = !DILocation(line: 61, column: 7, scope: !5263)
!5371 = !DILocation(line: 61, column: 11, scope: !5263)
!5372 = !DILocation(line: 61, column: 16, scope: !5263)
!5373 = !DILocation(line: 61, column: 19, scope: !5263)
!5374 = !DILocation(line: 61, column: 6, scope: !5251)
!5375 = !DILocation(line: 62, column: 3, scope: !5262)
!5376 = !DILocation(line: 62, column: 17, scope: !5262)
!5377 = !DILocation(line: 63, column: 29, scope: !5262)
!5378 = !DILocation(line: 63, column: 34, scope: !5262)
!5379 = !DILocation(line: 63, column: 3, scope: !5262)
!5380 = !DILocation(line: 64, column: 3, scope: !5265)
!5381 = !{i64 2155175690}
!5382 = !DILocation(line: 64, column: 3, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 64, column: 3)
!5384 = !DILocation(line: 64, column: 3, scope: !5262)
!5385 = !DILocation(line: 65, column: 6, scope: !5262)
!5386 = !DILocation(line: 66, column: 6, scope: !5262)
!5387 = !DILocation(line: 67, column: 6, scope: !5262)
!5388 = !DILocation(line: 68, column: 2, scope: !5263)
!5389 = !DILocation(line: 68, column: 2, scope: !5262)
!5390 = !DILocation(line: 70, column: 7, scope: !5272)
!5391 = !DILocation(line: 70, column: 11, scope: !5272)
!5392 = !DILocation(line: 70, column: 16, scope: !5272)
!5393 = !DILocation(line: 70, column: 19, scope: !5272)
!5394 = !DILocation(line: 70, column: 23, scope: !5272)
!5395 = !DILocation(line: 70, column: 6, scope: !5251)
!5396 = !DILocation(line: 71, column: 3, scope: !5271)
!5397 = !DILocation(line: 71, column: 18, scope: !5271)
!5398 = !DILocation(line: 72, column: 29, scope: !5271)
!5399 = !DILocation(line: 72, column: 34, scope: !5271)
!5400 = !DILocation(line: 72, column: 3, scope: !5271)
!5401 = !DILocation(line: 73, column: 3, scope: !5274)
!5402 = !{i64 2155176823}
!5403 = !DILocation(line: 73, column: 3, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 73, column: 3)
!5405 = !DILocation(line: 73, column: 3, scope: !5271)
!5406 = !DILocation(line: 74, column: 7, scope: !5271)
!5407 = !DILocation(line: 75, column: 7, scope: !5271)
!5408 = !DILocation(line: 76, column: 7, scope: !5271)
!5409 = !DILocation(line: 77, column: 2, scope: !5272)
!5410 = !DILocation(line: 77, column: 2, scope: !5271)
!5411 = !DILocation(line: 79, column: 2, scope: !5251)
!5412 = !DILocation(line: 79, column: 9, scope: !5251)
!5413 = !DILocation(line: 79, column: 13, scope: !5251)
!5414 = !DILocation(line: 80, column: 3, scope: !5280)
!5415 = !DILocation(line: 80, column: 16, scope: !5280)
!5416 = !DILocation(line: 81, column: 30, scope: !5280)
!5417 = !DILocation(line: 81, column: 35, scope: !5280)
!5418 = !DILocation(line: 81, column: 3, scope: !5280)
!5419 = !DILocation(line: 82, column: 3, scope: !5282)
!5420 = !{i64 2155178093}
!5421 = !DILocation(line: 82, column: 3, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 82, column: 3)
!5423 = !DILocation(line: 82, column: 3, scope: !5280)
!5424 = !DILocation(line: 83, column: 7, scope: !5280)
!5425 = !DILocation(line: 84, column: 7, scope: !5280)
!5426 = !DILocation(line: 85, column: 7, scope: !5280)
!5427 = !DILocation(line: 86, column: 3, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 86, column: 3)
!5429 = !DILocation(line: 87, column: 2, scope: !5251)
!5430 = distinct !{!5430, !5411, !5429, !5191, !5192}
!5431 = !DILocation(line: 89, column: 6, scope: !5289)
!5432 = !DILocation(line: 89, column: 10, scope: !5289)
!5433 = !DILocation(line: 89, column: 6, scope: !5251)
!5434 = !DILocation(line: 90, column: 3, scope: !5288)
!5435 = !DILocation(line: 90, column: 18, scope: !5288)
!5436 = !DILocation(line: 91, column: 29, scope: !5288)
!5437 = !DILocation(line: 91, column: 34, scope: !5288)
!5438 = !DILocation(line: 91, column: 3, scope: !5288)
!5439 = !DILocation(line: 92, column: 3, scope: !5291)
!5440 = !{i64 2155179462}
!5441 = !DILocation(line: 92, column: 3, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 92, column: 3)
!5443 = !DILocation(line: 92, column: 3, scope: !5288)
!5444 = !DILocation(line: 93, column: 7, scope: !5288)
!5445 = !DILocation(line: 94, column: 7, scope: !5288)
!5446 = !DILocation(line: 95, column: 7, scope: !5288)
!5447 = !DILocation(line: 96, column: 2, scope: !5289)
!5448 = !DILocation(line: 96, column: 2, scope: !5288)
!5449 = !DILocation(line: 98, column: 6, scope: !5298)
!5450 = !DILocation(line: 98, column: 6, scope: !5251)
!5451 = !DILocation(line: 99, column: 3, scope: !5297)
!5452 = !DILocation(line: 99, column: 17, scope: !5297)
!5453 = !DILocation(line: 100, column: 29, scope: !5297)
!5454 = !DILocation(line: 100, column: 34, scope: !5297)
!5455 = !DILocation(line: 100, column: 3, scope: !5297)
!5456 = !DILocation(line: 101, column: 3, scope: !5300)
!5457 = !{i64 2155180619}
!5458 = !DILocation(line: 101, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 101, column: 3)
!5460 = !DILocation(line: 101, column: 3, scope: !5297)
!5461 = !DILocation(line: 102, column: 6, scope: !5297)
!5462 = !DILocation(line: 103, column: 2, scope: !5298)
!5463 = !DILocation(line: 103, column: 2, scope: !5297)
!5464 = !DILocation(line: 105, column: 28, scope: !5251)
!5465 = !DILocation(line: 105, column: 2, scope: !5251)
!5466 = !DILocation(line: 107, column: 10, scope: !5251)
!5467 = !DILocation(line: 107, column: 3, scope: !5251)
!5468 = !DILocation(line: 107, column: 8, scope: !5251)
!5469 = !DILocation(line: 108, column: 9, scope: !5251)
!5470 = !DILocation(line: 108, column: 2, scope: !5251)
!5471 = !DILocation(line: 109, column: 1, scope: !5251)
!5472 = distinct !DISubprogram(name: "proc_bus_pci_write", scope: !3, file: !3, line: 111, type: !1181, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5473)
!5473 = !{!5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5487, !5489, !5490, !5492, !5495, !5497, !5498, !5500, !5502, !5504, !5505, !5507, !5510, !5512, !5513, !5515, !5518, !5520, !5521}
!5474 = !DILocalVariable(name: "file", arg: 1, scope: !5472, file: !3, line: 111, type: !853)
!5475 = !DILocalVariable(name: "buf", arg: 2, scope: !5472, file: !3, line: 111, type: !421)
!5476 = !DILocalVariable(name: "nbytes", arg: 3, scope: !5472, file: !3, line: 112, type: !593)
!5477 = !DILocalVariable(name: "ppos", arg: 4, scope: !5472, file: !3, line: 112, type: !1178)
!5478 = !DILocalVariable(name: "ino", scope: !5472, file: !3, line: 114, type: !262)
!5479 = !DILocalVariable(name: "dev", scope: !5472, file: !3, line: 115, type: !4257)
!5480 = !DILocalVariable(name: "pos", scope: !5472, file: !3, line: 116, type: !109)
!5481 = !DILocalVariable(name: "size", scope: !5472, file: !3, line: 117, type: !109)
!5482 = !DILocalVariable(name: "cnt", scope: !5472, file: !3, line: 118, type: !109)
!5483 = !DILocalVariable(name: "ret", scope: !5472, file: !3, line: 118, type: !109)
!5484 = !DILocalVariable(name: "val", scope: !5485, file: !3, line: 138, type: !344)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 137, column: 24)
!5486 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 137, column: 6)
!5487 = !DILocalVariable(name: "__ret_gu", scope: !5488, file: !3, line: 139, type: !109)
!5488 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 139, column: 3)
!5489 = !DILocalVariable(name: "__val_gu", scope: !5488, file: !3, line: 139, type: !344)
!5490 = !DILocalVariable(name: "__tmp", scope: !5491, file: !3, line: 139, type: !223)
!5491 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 139, column: 3)
!5492 = !DILocalVariable(name: "val", scope: !5493, file: !3, line: 147, type: !213)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 146, column: 28)
!5494 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 146, column: 6)
!5495 = !DILocalVariable(name: "__ret_gu", scope: !5496, file: !3, line: 148, type: !109)
!5496 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 148, column: 3)
!5497 = !DILocalVariable(name: "__val_gu", scope: !5496, file: !3, line: 148, type: !217)
!5498 = !DILocalVariable(name: "__tmp", scope: !5499, file: !3, line: 148, type: !223)
!5499 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 148, column: 3)
!5500 = !DILocalVariable(name: "val", scope: !5501, file: !3, line: 156, type: !219)
!5501 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 155, column: 19)
!5502 = !DILocalVariable(name: "__ret_gu", scope: !5503, file: !3, line: 157, type: !109)
!5503 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 157, column: 3)
!5504 = !DILocalVariable(name: "__val_gu", scope: !5503, file: !3, line: 157, type: !7)
!5505 = !DILocalVariable(name: "__tmp", scope: !5506, file: !3, line: 157, type: !223)
!5506 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 157, column: 3)
!5507 = !DILocalVariable(name: "val", scope: !5508, file: !3, line: 165, type: !213)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 164, column: 16)
!5509 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 164, column: 6)
!5510 = !DILocalVariable(name: "__ret_gu", scope: !5511, file: !3, line: 166, type: !109)
!5511 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 166, column: 3)
!5512 = !DILocalVariable(name: "__val_gu", scope: !5511, file: !3, line: 166, type: !217)
!5513 = !DILocalVariable(name: "__tmp", scope: !5514, file: !3, line: 166, type: !223)
!5514 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 166, column: 3)
!5515 = !DILocalVariable(name: "val", scope: !5516, file: !3, line: 174, type: !344)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 173, column: 11)
!5517 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 173, column: 6)
!5518 = !DILocalVariable(name: "__ret_gu", scope: !5519, file: !3, line: 175, type: !109)
!5519 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 175, column: 3)
!5520 = !DILocalVariable(name: "__val_gu", scope: !5519, file: !3, line: 175, type: !344)
!5521 = !DILocalVariable(name: "__tmp", scope: !5522, file: !3, line: 175, type: !223)
!5522 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 175, column: 3)
!5523 = !DILocation(line: 111, column: 48, scope: !5472)
!5524 = !DILocation(line: 111, column: 73, scope: !5472)
!5525 = !DILocation(line: 112, column: 14, scope: !5472)
!5526 = !DILocation(line: 112, column: 30, scope: !5472)
!5527 = !DILocation(line: 114, column: 2, scope: !5472)
!5528 = !DILocation(line: 114, column: 16, scope: !5472)
!5529 = !DILocation(line: 114, column: 33, scope: !5472)
!5530 = !DILocation(line: 114, column: 22, scope: !5472)
!5531 = !DILocation(line: 115, column: 2, scope: !5472)
!5532 = !DILocation(line: 115, column: 18, scope: !5472)
!5533 = !DILocation(line: 115, column: 33, scope: !5472)
!5534 = !DILocation(line: 115, column: 24, scope: !5472)
!5535 = !DILocation(line: 116, column: 2, scope: !5472)
!5536 = !DILocation(line: 116, column: 6, scope: !5472)
!5537 = !DILocation(line: 116, column: 13, scope: !5472)
!5538 = !DILocation(line: 116, column: 12, scope: !5472)
!5539 = !DILocation(line: 117, column: 2, scope: !5472)
!5540 = !DILocation(line: 117, column: 6, scope: !5472)
!5541 = !DILocation(line: 117, column: 13, scope: !5472)
!5542 = !DILocation(line: 117, column: 18, scope: !5472)
!5543 = !DILocation(line: 118, column: 2, scope: !5472)
!5544 = !DILocation(line: 118, column: 6, scope: !5472)
!5545 = !DILocation(line: 118, column: 11, scope: !5472)
!5546 = !DILocation(line: 120, column: 8, scope: !5472)
!5547 = !DILocation(line: 120, column: 6, scope: !5472)
!5548 = !DILocation(line: 121, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 121, column: 6)
!5550 = !DILocation(line: 121, column: 6, scope: !5472)
!5551 = !DILocation(line: 122, column: 10, scope: !5549)
!5552 = !DILocation(line: 122, column: 3, scope: !5549)
!5553 = !DILocation(line: 124, column: 6, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 124, column: 6)
!5555 = !DILocation(line: 124, column: 13, scope: !5554)
!5556 = !DILocation(line: 124, column: 10, scope: !5554)
!5557 = !DILocation(line: 124, column: 6, scope: !5472)
!5558 = !DILocation(line: 125, column: 3, scope: !5554)
!5559 = !DILocation(line: 126, column: 6, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 126, column: 6)
!5561 = !DILocation(line: 126, column: 16, scope: !5560)
!5562 = !DILocation(line: 126, column: 13, scope: !5560)
!5563 = !DILocation(line: 126, column: 6, scope: !5472)
!5564 = !DILocation(line: 127, column: 12, scope: !5560)
!5565 = !DILocation(line: 127, column: 10, scope: !5560)
!5566 = !DILocation(line: 127, column: 3, scope: !5560)
!5567 = !DILocation(line: 128, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 128, column: 6)
!5569 = !DILocation(line: 128, column: 12, scope: !5568)
!5570 = !DILocation(line: 128, column: 10, scope: !5568)
!5571 = !DILocation(line: 128, column: 21, scope: !5568)
!5572 = !DILocation(line: 128, column: 19, scope: !5568)
!5573 = !DILocation(line: 128, column: 6, scope: !5472)
!5574 = !DILocation(line: 129, column: 12, scope: !5568)
!5575 = !DILocation(line: 129, column: 19, scope: !5568)
!5576 = !DILocation(line: 129, column: 17, scope: !5568)
!5577 = !DILocation(line: 129, column: 10, scope: !5568)
!5578 = !DILocation(line: 129, column: 3, scope: !5568)
!5579 = !DILocation(line: 130, column: 8, scope: !5472)
!5580 = !DILocation(line: 130, column: 6, scope: !5472)
!5581 = !DILocation(line: 132, column: 7, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 132, column: 6)
!5583 = !DILocation(line: 132, column: 6, scope: !5472)
!5584 = !DILocation(line: 133, column: 3, scope: !5582)
!5585 = !DILocation(line: 135, column: 28, scope: !5472)
!5586 = !DILocation(line: 135, column: 2, scope: !5472)
!5587 = !DILocation(line: 137, column: 7, scope: !5486)
!5588 = !DILocation(line: 137, column: 11, scope: !5486)
!5589 = !DILocation(line: 137, column: 16, scope: !5486)
!5590 = !DILocation(line: 137, column: 19, scope: !5486)
!5591 = !DILocation(line: 137, column: 6, scope: !5472)
!5592 = !DILocation(line: 138, column: 3, scope: !5485)
!5593 = !DILocation(line: 138, column: 17, scope: !5485)
!5594 = !DILocation(line: 139, column: 3, scope: !5488)
!5595 = !{i64 2155181573}
!5596 = !DILocation(line: 139, column: 3, scope: !5491)
!5597 = !DILocation(line: 139, column: 3, scope: !5485)
!5598 = !DILocation(line: 140, column: 30, scope: !5485)
!5599 = !DILocation(line: 140, column: 35, scope: !5485)
!5600 = !DILocation(line: 140, column: 40, scope: !5485)
!5601 = !DILocation(line: 140, column: 3, scope: !5485)
!5602 = !DILocation(line: 141, column: 6, scope: !5485)
!5603 = !DILocation(line: 142, column: 6, scope: !5485)
!5604 = !DILocation(line: 143, column: 6, scope: !5485)
!5605 = !DILocation(line: 144, column: 2, scope: !5486)
!5606 = !DILocation(line: 144, column: 2, scope: !5485)
!5607 = !DILocation(line: 146, column: 7, scope: !5494)
!5608 = !DILocation(line: 146, column: 11, scope: !5494)
!5609 = !DILocation(line: 146, column: 16, scope: !5494)
!5610 = !DILocation(line: 146, column: 19, scope: !5494)
!5611 = !DILocation(line: 146, column: 23, scope: !5494)
!5612 = !DILocation(line: 146, column: 6, scope: !5472)
!5613 = !DILocation(line: 147, column: 3, scope: !5493)
!5614 = !DILocation(line: 147, column: 10, scope: !5493)
!5615 = !DILocation(line: 148, column: 3, scope: !5496)
!5616 = !{i64 2155183436}
!5617 = !DILocation(line: 148, column: 3, scope: !5499)
!5618 = !DILocation(line: 148, column: 3, scope: !5493)
!5619 = !DILocation(line: 149, column: 30, scope: !5493)
!5620 = !DILocation(line: 149, column: 35, scope: !5493)
!5621 = !DILocation(line: 149, column: 40, scope: !5493)
!5622 = !DILocation(line: 149, column: 3, scope: !5493)
!5623 = !DILocation(line: 150, column: 7, scope: !5493)
!5624 = !DILocation(line: 151, column: 7, scope: !5493)
!5625 = !DILocation(line: 152, column: 7, scope: !5493)
!5626 = !DILocation(line: 153, column: 2, scope: !5494)
!5627 = !DILocation(line: 153, column: 2, scope: !5493)
!5628 = !DILocation(line: 155, column: 2, scope: !5472)
!5629 = !DILocation(line: 155, column: 9, scope: !5472)
!5630 = !DILocation(line: 155, column: 13, scope: !5472)
!5631 = !DILocation(line: 156, column: 3, scope: !5501)
!5632 = !DILocation(line: 156, column: 10, scope: !5501)
!5633 = !DILocation(line: 157, column: 3, scope: !5503)
!5634 = !{i64 2155185688}
!5635 = !DILocation(line: 157, column: 3, scope: !5506)
!5636 = !DILocation(line: 157, column: 3, scope: !5501)
!5637 = !DILocation(line: 158, column: 31, scope: !5501)
!5638 = !DILocation(line: 158, column: 36, scope: !5501)
!5639 = !DILocation(line: 158, column: 41, scope: !5501)
!5640 = !DILocation(line: 158, column: 3, scope: !5501)
!5641 = !DILocation(line: 159, column: 7, scope: !5501)
!5642 = !DILocation(line: 160, column: 7, scope: !5501)
!5643 = !DILocation(line: 161, column: 7, scope: !5501)
!5644 = !DILocation(line: 162, column: 2, scope: !5472)
!5645 = distinct !{!5645, !5628, !5644, !5191, !5192}
!5646 = !DILocation(line: 164, column: 6, scope: !5509)
!5647 = !DILocation(line: 164, column: 10, scope: !5509)
!5648 = !DILocation(line: 164, column: 6, scope: !5472)
!5649 = !DILocation(line: 165, column: 3, scope: !5508)
!5650 = !DILocation(line: 165, column: 10, scope: !5508)
!5651 = !DILocation(line: 166, column: 3, scope: !5511)
!5652 = !{i64 2155187940}
!5653 = !DILocation(line: 166, column: 3, scope: !5514)
!5654 = !DILocation(line: 166, column: 3, scope: !5508)
!5655 = !DILocation(line: 167, column: 30, scope: !5508)
!5656 = !DILocation(line: 167, column: 35, scope: !5508)
!5657 = !DILocation(line: 167, column: 40, scope: !5508)
!5658 = !DILocation(line: 167, column: 3, scope: !5508)
!5659 = !DILocation(line: 168, column: 7, scope: !5508)
!5660 = !DILocation(line: 169, column: 7, scope: !5508)
!5661 = !DILocation(line: 170, column: 7, scope: !5508)
!5662 = !DILocation(line: 171, column: 2, scope: !5509)
!5663 = !DILocation(line: 171, column: 2, scope: !5508)
!5664 = !DILocation(line: 173, column: 6, scope: !5517)
!5665 = !DILocation(line: 173, column: 6, scope: !5472)
!5666 = !DILocation(line: 174, column: 3, scope: !5516)
!5667 = !DILocation(line: 174, column: 17, scope: !5516)
!5668 = !DILocation(line: 175, column: 3, scope: !5519)
!5669 = !{i64 2155190155}
!5670 = !DILocation(line: 175, column: 3, scope: !5522)
!5671 = !DILocation(line: 175, column: 3, scope: !5516)
!5672 = !DILocation(line: 176, column: 30, scope: !5516)
!5673 = !DILocation(line: 176, column: 35, scope: !5516)
!5674 = !DILocation(line: 176, column: 40, scope: !5516)
!5675 = !DILocation(line: 176, column: 3, scope: !5516)
!5676 = !DILocation(line: 177, column: 6, scope: !5516)
!5677 = !DILocation(line: 178, column: 2, scope: !5517)
!5678 = !DILocation(line: 178, column: 2, scope: !5516)
!5679 = !DILocation(line: 180, column: 28, scope: !5472)
!5680 = !DILocation(line: 180, column: 2, scope: !5472)
!5681 = !DILocation(line: 182, column: 10, scope: !5472)
!5682 = !DILocation(line: 182, column: 3, scope: !5472)
!5683 = !DILocation(line: 182, column: 8, scope: !5472)
!5684 = !DILocation(line: 183, column: 15, scope: !5472)
!5685 = !DILocation(line: 183, column: 20, scope: !5472)
!5686 = !DILocation(line: 183, column: 25, scope: !5472)
!5687 = !DILocation(line: 183, column: 2, scope: !5472)
!5688 = !DILocation(line: 184, column: 9, scope: !5472)
!5689 = !DILocation(line: 184, column: 2, scope: !5472)
!5690 = !DILocation(line: 185, column: 1, scope: !5472)
!5691 = distinct !DISubprogram(name: "proc_bus_pci_lseek", scope: !3, file: !3, line: 22, type: !1172, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5692)
!5692 = !{!5693, !5694, !5695, !5696}
!5693 = !DILocalVariable(name: "file", arg: 1, scope: !5691, file: !3, line: 22, type: !853)
!5694 = !DILocalVariable(name: "off", arg: 2, scope: !5691, file: !3, line: 22, type: !467)
!5695 = !DILocalVariable(name: "whence", arg: 3, scope: !5691, file: !3, line: 22, type: !109)
!5696 = !DILocalVariable(name: "dev", scope: !5691, file: !3, line: 24, type: !4257)
!5697 = !DILocation(line: 22, column: 47, scope: !5691)
!5698 = !DILocation(line: 22, column: 60, scope: !5691)
!5699 = !DILocation(line: 22, column: 69, scope: !5691)
!5700 = !DILocation(line: 24, column: 2, scope: !5691)
!5701 = !DILocation(line: 24, column: 18, scope: !5691)
!5702 = !DILocation(line: 24, column: 44, scope: !5691)
!5703 = !DILocation(line: 24, column: 33, scope: !5691)
!5704 = !DILocation(line: 24, column: 24, scope: !5691)
!5705 = !DILocation(line: 25, column: 27, scope: !5691)
!5706 = !DILocation(line: 25, column: 33, scope: !5691)
!5707 = !DILocation(line: 25, column: 38, scope: !5691)
!5708 = !DILocation(line: 25, column: 46, scope: !5691)
!5709 = !DILocation(line: 25, column: 51, scope: !5691)
!5710 = !DILocation(line: 25, column: 9, scope: !5691)
!5711 = !DILocation(line: 26, column: 1, scope: !5691)
!5712 = !DILocation(line: 25, column: 2, scope: !5691)
!5713 = distinct !DISubprogram(name: "proc_bus_pci_release", scope: !3, file: !3, line: 310, type: !260, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5714)
!5714 = !{!5715, !5716}
!5715 = !DILocalVariable(name: "inode", arg: 1, scope: !5713, file: !3, line: 310, type: !262)
!5716 = !DILocalVariable(name: "file", arg: 2, scope: !5713, file: !3, line: 310, type: !853)
!5717 = !DILocation(line: 310, column: 47, scope: !5713)
!5718 = !DILocation(line: 310, column: 67, scope: !5713)
!5719 = !DILocation(line: 312, column: 8, scope: !5713)
!5720 = !DILocation(line: 312, column: 14, scope: !5713)
!5721 = !DILocation(line: 312, column: 2, scope: !5713)
!5722 = !DILocation(line: 313, column: 2, scope: !5713)
!5723 = !DILocation(line: 313, column: 8, scope: !5713)
!5724 = !DILocation(line: 313, column: 21, scope: !5713)
!5725 = !DILocation(line: 315, column: 2, scope: !5713)
!5726 = distinct !DISubprogram(name: "proc_bus_pci_ioctl", scope: !3, file: !3, line: 194, type: !1241, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5727)
!5727 = !{!5728, !5729, !5730, !5731, !5732, !5733}
!5728 = !DILocalVariable(name: "file", arg: 1, scope: !5726, file: !3, line: 194, type: !853)
!5729 = !DILocalVariable(name: "cmd", arg: 2, scope: !5726, file: !3, line: 194, type: !7)
!5730 = !DILocalVariable(name: "arg", arg: 3, scope: !5726, file: !3, line: 195, type: !212)
!5731 = !DILocalVariable(name: "dev", scope: !5726, file: !3, line: 197, type: !4257)
!5732 = !DILocalVariable(name: "fpriv", scope: !5726, file: !3, line: 199, type: !5221)
!5733 = !DILocalVariable(name: "ret", scope: !5726, file: !3, line: 201, type: !109)
!5734 = !DILocation(line: 194, column: 45, scope: !5726)
!5735 = !DILocation(line: 194, column: 64, scope: !5726)
!5736 = !DILocation(line: 195, column: 25, scope: !5726)
!5737 = !DILocation(line: 197, column: 2, scope: !5726)
!5738 = !DILocation(line: 197, column: 18, scope: !5726)
!5739 = !DILocation(line: 197, column: 44, scope: !5726)
!5740 = !DILocation(line: 197, column: 33, scope: !5726)
!5741 = !DILocation(line: 197, column: 24, scope: !5726)
!5742 = !DILocation(line: 199, column: 2, scope: !5726)
!5743 = !DILocation(line: 199, column: 27, scope: !5726)
!5744 = !DILocation(line: 199, column: 35, scope: !5726)
!5745 = !DILocation(line: 199, column: 41, scope: !5726)
!5746 = !DILocation(line: 201, column: 2, scope: !5726)
!5747 = !DILocation(line: 201, column: 6, scope: !5726)
!5748 = !DILocation(line: 203, column: 8, scope: !5726)
!5749 = !DILocation(line: 203, column: 6, scope: !5726)
!5750 = !DILocation(line: 204, column: 6, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 204, column: 6)
!5752 = !DILocation(line: 204, column: 6, scope: !5726)
!5753 = !DILocation(line: 205, column: 10, scope: !5751)
!5754 = !DILocation(line: 205, column: 3, scope: !5751)
!5755 = !DILocation(line: 207, column: 10, scope: !5726)
!5756 = !DILocation(line: 207, column: 2, scope: !5726)
!5757 = !DILocation(line: 209, column: 23, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 207, column: 15)
!5759 = !DILocation(line: 209, column: 28, scope: !5758)
!5760 = !DILocation(line: 209, column: 9, scope: !5758)
!5761 = !DILocation(line: 209, column: 7, scope: !5758)
!5762 = !DILocation(line: 210, column: 3, scope: !5758)
!5763 = !DILocation(line: 215, column: 4, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 214, column: 7)
!5765 = !DILocation(line: 220, column: 3, scope: !5758)
!5766 = !DILocation(line: 220, column: 10, scope: !5758)
!5767 = !DILocation(line: 220, column: 21, scope: !5758)
!5768 = !DILocation(line: 221, column: 3, scope: !5758)
!5769 = !DILocation(line: 224, column: 7, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 224, column: 7)
!5771 = !DILocation(line: 224, column: 7, scope: !5758)
!5772 = !DILocation(line: 225, column: 8, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 225, column: 8)
!5774 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 224, column: 31)
!5775 = !DILocation(line: 225, column: 8, scope: !5774)
!5776 = !DILocation(line: 226, column: 5, scope: !5773)
!5777 = !DILocation(line: 226, column: 12, scope: !5773)
!5778 = !DILocation(line: 226, column: 26, scope: !5773)
!5779 = !DILocation(line: 228, column: 5, scope: !5773)
!5780 = !DILocation(line: 228, column: 12, scope: !5773)
!5781 = !DILocation(line: 228, column: 26, scope: !5773)
!5782 = !DILocation(line: 229, column: 4, scope: !5774)
!5783 = !DILocation(line: 235, column: 7, scope: !5758)
!5784 = !DILocation(line: 236, column: 3, scope: !5758)
!5785 = !DILocation(line: 239, column: 9, scope: !5726)
!5786 = !DILocation(line: 239, column: 2, scope: !5726)
!5787 = !DILocation(line: 240, column: 1, scope: !5726)
!5788 = distinct !DISubprogram(name: "proc_bus_pci_mmap", scope: !3, file: !3, line: 243, type: !1246, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5789)
!5789 = !{!5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799}
!5790 = !DILocalVariable(name: "file", arg: 1, scope: !5788, file: !3, line: 243, type: !853)
!5791 = !DILocalVariable(name: "vma", arg: 2, scope: !5788, file: !3, line: 243, type: !812)
!5792 = !DILocalVariable(name: "dev", scope: !5788, file: !3, line: 245, type: !4257)
!5793 = !DILocalVariable(name: "fpriv", scope: !5788, file: !3, line: 246, type: !5221)
!5794 = !DILocalVariable(name: "start", scope: !5788, file: !3, line: 247, type: !4278)
!5795 = !DILocalVariable(name: "end", scope: !5788, file: !3, line: 247, type: !4278)
!5796 = !DILocalVariable(name: "i", scope: !5788, file: !3, line: 248, type: !109)
!5797 = !DILocalVariable(name: "ret", scope: !5788, file: !3, line: 248, type: !109)
!5798 = !DILocalVariable(name: "write_combine", scope: !5788, file: !3, line: 248, type: !109)
!5799 = !DILocalVariable(name: "res_bit", scope: !5788, file: !3, line: 248, type: !109)
!5800 = !DILocation(line: 243, column: 43, scope: !5788)
!5801 = !DILocation(line: 243, column: 72, scope: !5788)
!5802 = !DILocation(line: 245, column: 2, scope: !5788)
!5803 = !DILocation(line: 245, column: 18, scope: !5788)
!5804 = !DILocation(line: 245, column: 44, scope: !5788)
!5805 = !DILocation(line: 245, column: 33, scope: !5788)
!5806 = !DILocation(line: 245, column: 24, scope: !5788)
!5807 = !DILocation(line: 246, column: 2, scope: !5788)
!5808 = !DILocation(line: 246, column: 27, scope: !5788)
!5809 = !DILocation(line: 246, column: 35, scope: !5788)
!5810 = !DILocation(line: 246, column: 41, scope: !5788)
!5811 = !DILocation(line: 247, column: 2, scope: !5788)
!5812 = !DILocation(line: 247, column: 18, scope: !5788)
!5813 = !DILocation(line: 247, column: 25, scope: !5788)
!5814 = !DILocation(line: 248, column: 2, scope: !5788)
!5815 = !DILocation(line: 248, column: 6, scope: !5788)
!5816 = !DILocation(line: 248, column: 9, scope: !5788)
!5817 = !DILocation(line: 248, column: 14, scope: !5788)
!5818 = !DILocation(line: 248, column: 33, scope: !5788)
!5819 = !DILocation(line: 250, column: 7, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 250, column: 6)
!5821 = !DILocation(line: 250, column: 30, scope: !5820)
!5822 = !DILocation(line: 251, column: 6, scope: !5820)
!5823 = !DILocation(line: 250, column: 6, scope: !5788)
!5824 = !DILocation(line: 252, column: 3, scope: !5820)
!5825 = !DILocation(line: 254, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 254, column: 6)
!5827 = !DILocation(line: 254, column: 13, scope: !5826)
!5828 = !DILocation(line: 254, column: 24, scope: !5826)
!5829 = !DILocation(line: 254, column: 6, scope: !5788)
!5830 = !DILocation(line: 256, column: 4, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 255, column: 7)
!5832 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 254, column: 40)
!5833 = !DILocation(line: 261, column: 9, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 261, column: 2)
!5835 = !DILocation(line: 261, column: 7, scope: !5834)
!5836 = !DILocation(line: 261, column: 14, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 261, column: 2)
!5838 = !DILocation(line: 261, column: 16, scope: !5837)
!5839 = !DILocation(line: 261, column: 2, scope: !5834)
!5840 = !DILocation(line: 262, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 262, column: 7)
!5842 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 261, column: 41)
!5843 = !DILocation(line: 262, column: 12, scope: !5841)
!5844 = !DILocation(line: 262, column: 21, scope: !5841)
!5845 = !DILocation(line: 262, column: 24, scope: !5841)
!5846 = !DILocation(line: 262, column: 32, scope: !5841)
!5847 = !DILocation(line: 262, column: 30, scope: !5841)
!5848 = !DILocation(line: 262, column: 40, scope: !5841)
!5849 = !DILocation(line: 263, column: 21, scope: !5841)
!5850 = !DILocation(line: 263, column: 26, scope: !5841)
!5851 = !DILocation(line: 263, column: 29, scope: !5841)
!5852 = !DILocation(line: 263, column: 7, scope: !5841)
!5853 = !DILocation(line: 262, column: 7, scope: !5842)
!5854 = !DILocation(line: 264, column: 4, scope: !5841)
!5855 = !DILocation(line: 265, column: 2, scope: !5842)
!5856 = !DILocation(line: 261, column: 37, scope: !5837)
!5857 = !DILocation(line: 261, column: 2, scope: !5837)
!5858 = distinct !{!5858, !5839, !5859, !5191, !5192}
!5859 = !DILocation(line: 265, column: 2, scope: !5834)
!5860 = !DILocation(line: 267, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 267, column: 6)
!5862 = !DILocation(line: 267, column: 8, scope: !5861)
!5863 = !DILocation(line: 267, column: 6, scope: !5788)
!5864 = !DILocation(line: 268, column: 3, scope: !5861)
!5865 = !DILocation(line: 270, column: 6, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 270, column: 6)
!5867 = !DILocation(line: 270, column: 13, scope: !5866)
!5868 = !DILocation(line: 270, column: 24, scope: !5866)
!5869 = !DILocation(line: 270, column: 40, scope: !5866)
!5870 = !DILocation(line: 271, column: 6, scope: !5866)
!5871 = !DILocation(line: 271, column: 13, scope: !5866)
!5872 = !DILocation(line: 270, column: 6, scope: !5788)
!5873 = !DILocation(line: 272, column: 7, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 272, column: 7)
!5875 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 271, column: 28)
!5876 = !DILocation(line: 272, column: 12, scope: !5874)
!5877 = !DILocation(line: 272, column: 21, scope: !5874)
!5878 = !DILocation(line: 272, column: 24, scope: !5874)
!5879 = !DILocation(line: 272, column: 30, scope: !5874)
!5880 = !DILocation(line: 272, column: 7, scope: !5875)
!5881 = !DILocation(line: 273, column: 18, scope: !5874)
!5882 = !DILocation(line: 273, column: 4, scope: !5874)
!5883 = !DILocation(line: 275, column: 4, scope: !5874)
!5884 = !DILocation(line: 276, column: 2, scope: !5875)
!5885 = !DILocation(line: 278, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 278, column: 6)
!5887 = !DILocation(line: 278, column: 11, scope: !5886)
!5888 = !DILocation(line: 278, column: 20, scope: !5886)
!5889 = !DILocation(line: 278, column: 23, scope: !5886)
!5890 = !DILocation(line: 278, column: 29, scope: !5886)
!5891 = !DILocation(line: 278, column: 46, scope: !5886)
!5892 = !DILocation(line: 279, column: 25, scope: !5886)
!5893 = !DILocation(line: 279, column: 30, scope: !5886)
!5894 = !DILocation(line: 279, column: 39, scope: !5886)
!5895 = !DILocation(line: 279, column: 42, scope: !5886)
!5896 = !DILocation(line: 279, column: 6, scope: !5886)
!5897 = !DILocation(line: 278, column: 6, scope: !5788)
!5898 = !DILocation(line: 280, column: 3, scope: !5886)
!5899 = !DILocation(line: 282, column: 23, scope: !5788)
!5900 = !DILocation(line: 282, column: 28, scope: !5788)
!5901 = !DILocation(line: 282, column: 32, scope: !5788)
!5902 = !DILocation(line: 282, column: 37, scope: !5788)
!5903 = !DILocation(line: 282, column: 46, scope: !5788)
!5904 = !DILocation(line: 282, column: 2, scope: !5788)
!5905 = !DILocation(line: 285, column: 19, scope: !5788)
!5906 = !DILocation(line: 285, column: 25, scope: !5788)
!5907 = !DILocation(line: 285, column: 2, scope: !5788)
!5908 = !DILocation(line: 285, column: 7, scope: !5788)
!5909 = !DILocation(line: 285, column: 16, scope: !5788)
!5910 = !DILocation(line: 286, column: 32, scope: !5788)
!5911 = !DILocation(line: 286, column: 37, scope: !5788)
!5912 = !DILocation(line: 286, column: 40, scope: !5788)
!5913 = !DILocation(line: 287, column: 7, scope: !5788)
!5914 = !DILocation(line: 287, column: 14, scope: !5788)
!5915 = !DILocation(line: 287, column: 26, scope: !5788)
!5916 = !DILocation(line: 286, column: 8, scope: !5788)
!5917 = !DILocation(line: 286, column: 6, scope: !5788)
!5918 = !DILocation(line: 288, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 288, column: 6)
!5920 = !DILocation(line: 288, column: 10, scope: !5919)
!5921 = !DILocation(line: 288, column: 6, scope: !5788)
!5922 = !DILocation(line: 289, column: 10, scope: !5919)
!5923 = !DILocation(line: 289, column: 3, scope: !5919)
!5924 = !DILocation(line: 291, column: 2, scope: !5788)
!5925 = !DILocation(line: 292, column: 1, scope: !5788)
!5926 = distinct !DISubprogram(name: "kmalloc", scope: !152, file: !152, line: 591, type: !5927, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5929)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!209, !593, !210}
!5929 = !{!5930, !5931, !5932}
!5930 = !DILocalVariable(name: "size", arg: 1, scope: !5926, file: !152, line: 591, type: !593)
!5931 = !DILocalVariable(name: "flags", arg: 2, scope: !5926, file: !152, line: 591, type: !210)
!5932 = !DILocalVariable(name: "index", scope: !5933, file: !152, line: 594, type: !7)
!5933 = distinct !DILexicalBlock(scope: !5934, file: !152, line: 593, column: 42)
!5934 = distinct !DILexicalBlock(scope: !5926, file: !152, line: 593, column: 6)
!5935 = !DILocation(line: 591, column: 61, scope: !5926)
!5936 = !DILocation(line: 591, column: 73, scope: !5926)
!5937 = !DILocation(line: 593, column: 27, scope: !5934)
!5938 = !DILocation(line: 593, column: 6, scope: !5934)
!5939 = !DILocation(line: 593, column: 33, scope: !5934)
!5940 = !DILocation(line: 593, column: 36, scope: !5934)
!5941 = !DILocation(line: 593, column: 6, scope: !5926)
!5942 = !DILocation(line: 594, column: 3, scope: !5933)
!5943 = !DILocation(line: 594, column: 16, scope: !5933)
!5944 = !DILocation(line: 596, column: 7, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5933, file: !152, line: 596, column: 7)
!5946 = !DILocation(line: 596, column: 12, scope: !5945)
!5947 = !DILocation(line: 596, column: 7, scope: !5933)
!5948 = !DILocation(line: 597, column: 25, scope: !5945)
!5949 = !DILocation(line: 597, column: 31, scope: !5945)
!5950 = !DILocation(line: 597, column: 11, scope: !5945)
!5951 = !DILocation(line: 597, column: 4, scope: !5945)
!5952 = !DILocation(line: 599, column: 11, scope: !5933)
!5953 = !DILocation(line: 599, column: 9, scope: !5933)
!5954 = !DILocation(line: 601, column: 33, scope: !5933)
!5955 = !DILocation(line: 601, column: 40, scope: !5933)
!5956 = !DILocation(line: 601, column: 20, scope: !5933)
!5957 = !DILocation(line: 601, column: 5, scope: !5933)
!5958 = !DILocation(line: 601, column: 51, scope: !5933)
!5959 = !DILocation(line: 602, column: 5, scope: !5933)
!5960 = !DILocation(line: 602, column: 12, scope: !5933)
!5961 = !DILocation(line: 600, column: 10, scope: !5933)
!5962 = !DILocation(line: 600, column: 3, scope: !5933)
!5963 = !DILocation(line: 603, column: 2, scope: !5934)
!5964 = !DILocation(line: 604, column: 19, scope: !5926)
!5965 = !DILocation(line: 604, column: 25, scope: !5926)
!5966 = !DILocation(line: 604, column: 9, scope: !5926)
!5967 = !DILocation(line: 604, column: 2, scope: !5926)
!5968 = !DILocation(line: 605, column: 1, scope: !5926)
!5969 = !DISubprogram(name: "iomem_get_mapping", scope: !4275, file: !4275, line: 351, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5970 = !DISubprogram(name: "kmalloc_large", scope: !152, file: !152, line: 531, type: !5927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5971 = distinct !DISubprogram(name: "__kmalloc_index", scope: !152, file: !152, line: 444, type: !5972, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5974)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!7, !593, !763}
!5974 = !{!5975, !5976}
!5975 = !DILocalVariable(name: "size", arg: 1, scope: !5971, file: !152, line: 444, type: !593)
!5976 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5971, file: !152, line: 445, type: !763)
!5977 = !DILocation(line: 444, column: 60, scope: !5971)
!5978 = !DILocation(line: 445, column: 16, scope: !5971)
!5979 = !DILocation(line: 447, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 447, column: 6)
!5981 = !DILocation(line: 447, column: 6, scope: !5971)
!5982 = !DILocation(line: 448, column: 3, scope: !5980)
!5983 = !DILocation(line: 450, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 450, column: 6)
!5985 = !DILocation(line: 450, column: 11, scope: !5984)
!5986 = !DILocation(line: 450, column: 6, scope: !5971)
!5987 = !DILocation(line: 451, column: 3, scope: !5984)
!5988 = !DILocation(line: 453, column: 32, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 453, column: 6)
!5990 = !DILocation(line: 453, column: 37, scope: !5989)
!5991 = !DILocation(line: 453, column: 42, scope: !5989)
!5992 = !DILocation(line: 453, column: 45, scope: !5989)
!5993 = !DILocation(line: 453, column: 50, scope: !5989)
!5994 = !DILocation(line: 453, column: 6, scope: !5971)
!5995 = !DILocation(line: 454, column: 3, scope: !5989)
!5996 = !DILocation(line: 455, column: 32, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 455, column: 6)
!5998 = !DILocation(line: 455, column: 37, scope: !5997)
!5999 = !DILocation(line: 455, column: 43, scope: !5997)
!6000 = !DILocation(line: 455, column: 46, scope: !5997)
!6001 = !DILocation(line: 455, column: 51, scope: !5997)
!6002 = !DILocation(line: 455, column: 6, scope: !5971)
!6003 = !DILocation(line: 456, column: 3, scope: !5997)
!6004 = !DILocation(line: 457, column: 6, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 457, column: 6)
!6006 = !DILocation(line: 457, column: 11, scope: !6005)
!6007 = !DILocation(line: 457, column: 6, scope: !5971)
!6008 = !DILocation(line: 457, column: 26, scope: !6005)
!6009 = !DILocation(line: 458, column: 6, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 458, column: 6)
!6011 = !DILocation(line: 458, column: 11, scope: !6010)
!6012 = !DILocation(line: 458, column: 6, scope: !5971)
!6013 = !DILocation(line: 458, column: 26, scope: !6010)
!6014 = !DILocation(line: 459, column: 6, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 459, column: 6)
!6016 = !DILocation(line: 459, column: 11, scope: !6015)
!6017 = !DILocation(line: 459, column: 6, scope: !5971)
!6018 = !DILocation(line: 459, column: 26, scope: !6015)
!6019 = !DILocation(line: 460, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 460, column: 6)
!6021 = !DILocation(line: 460, column: 11, scope: !6020)
!6022 = !DILocation(line: 460, column: 6, scope: !5971)
!6023 = !DILocation(line: 460, column: 26, scope: !6020)
!6024 = !DILocation(line: 461, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 461, column: 6)
!6026 = !DILocation(line: 461, column: 11, scope: !6025)
!6027 = !DILocation(line: 461, column: 6, scope: !5971)
!6028 = !DILocation(line: 461, column: 26, scope: !6025)
!6029 = !DILocation(line: 462, column: 6, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 462, column: 6)
!6031 = !DILocation(line: 462, column: 11, scope: !6030)
!6032 = !DILocation(line: 462, column: 6, scope: !5971)
!6033 = !DILocation(line: 462, column: 26, scope: !6030)
!6034 = !DILocation(line: 463, column: 6, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 463, column: 6)
!6036 = !DILocation(line: 463, column: 11, scope: !6035)
!6037 = !DILocation(line: 463, column: 6, scope: !5971)
!6038 = !DILocation(line: 463, column: 26, scope: !6035)
!6039 = !DILocation(line: 464, column: 6, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 464, column: 6)
!6041 = !DILocation(line: 464, column: 11, scope: !6040)
!6042 = !DILocation(line: 464, column: 6, scope: !5971)
!6043 = !DILocation(line: 464, column: 26, scope: !6040)
!6044 = !DILocation(line: 465, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 465, column: 6)
!6046 = !DILocation(line: 465, column: 11, scope: !6045)
!6047 = !DILocation(line: 465, column: 6, scope: !5971)
!6048 = !DILocation(line: 465, column: 26, scope: !6045)
!6049 = !DILocation(line: 466, column: 6, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 466, column: 6)
!6051 = !DILocation(line: 466, column: 11, scope: !6050)
!6052 = !DILocation(line: 466, column: 6, scope: !5971)
!6053 = !DILocation(line: 466, column: 26, scope: !6050)
!6054 = !DILocation(line: 467, column: 6, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 467, column: 6)
!6056 = !DILocation(line: 467, column: 11, scope: !6055)
!6057 = !DILocation(line: 467, column: 6, scope: !5971)
!6058 = !DILocation(line: 467, column: 26, scope: !6055)
!6059 = !DILocation(line: 468, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 468, column: 6)
!6061 = !DILocation(line: 468, column: 11, scope: !6060)
!6062 = !DILocation(line: 468, column: 6, scope: !5971)
!6063 = !DILocation(line: 468, column: 26, scope: !6060)
!6064 = !DILocation(line: 469, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 469, column: 6)
!6066 = !DILocation(line: 469, column: 11, scope: !6065)
!6067 = !DILocation(line: 469, column: 6, scope: !5971)
!6068 = !DILocation(line: 469, column: 26, scope: !6065)
!6069 = !DILocation(line: 470, column: 6, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 470, column: 6)
!6071 = !DILocation(line: 470, column: 11, scope: !6070)
!6072 = !DILocation(line: 470, column: 6, scope: !5971)
!6073 = !DILocation(line: 470, column: 26, scope: !6070)
!6074 = !DILocation(line: 471, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 471, column: 6)
!6076 = !DILocation(line: 471, column: 11, scope: !6075)
!6077 = !DILocation(line: 471, column: 6, scope: !5971)
!6078 = !DILocation(line: 471, column: 26, scope: !6075)
!6079 = !DILocation(line: 472, column: 6, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 472, column: 6)
!6081 = !DILocation(line: 472, column: 11, scope: !6080)
!6082 = !DILocation(line: 472, column: 6, scope: !5971)
!6083 = !DILocation(line: 472, column: 26, scope: !6080)
!6084 = !DILocation(line: 473, column: 6, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 473, column: 6)
!6086 = !DILocation(line: 473, column: 11, scope: !6085)
!6087 = !DILocation(line: 473, column: 6, scope: !5971)
!6088 = !DILocation(line: 473, column: 26, scope: !6085)
!6089 = !DILocation(line: 474, column: 6, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 474, column: 6)
!6091 = !DILocation(line: 474, column: 11, scope: !6090)
!6092 = !DILocation(line: 474, column: 6, scope: !5971)
!6093 = !DILocation(line: 474, column: 27, scope: !6090)
!6094 = !DILocation(line: 475, column: 6, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 475, column: 6)
!6096 = !DILocation(line: 475, column: 11, scope: !6095)
!6097 = !DILocation(line: 475, column: 6, scope: !5971)
!6098 = !DILocation(line: 475, column: 32, scope: !6095)
!6099 = !DILocation(line: 477, column: 50, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !5971, file: !152, line: 477, column: 6)
!6101 = !{i8 0, i8 2}
!6102 = !DILocation(line: 477, column: 6, scope: !5971)
!6103 = !DILocation(line: 478, column: 3, scope: !6100)
!6104 = !DILocation(line: 478, column: 3, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !152, line: 478, column: 3)
!6106 = distinct !DILexicalBlock(scope: !6100, file: !152, line: 478, column: 3)
!6107 = !{i32 -2141978204}
!6108 = !DILocation(line: 478, column: 3, scope: !6106)
!6109 = !DILocation(line: 480, column: 3, scope: !6100)
!6110 = !DILocation(line: 480, column: 3, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6100, file: !152, line: 480, column: 3)
!6112 = !DILocation(line: 480, column: 3, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6111, file: !152, line: 480, column: 3)
!6114 = !DILocation(line: 480, column: 3, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6111, file: !152, line: 480, column: 3)
!6116 = !{i64 2152989295, i64 2152989324, i64 2152989370, i64 2152989428, i64 2152989482, i64 2152989536, i64 2152989591, i64 2152989622}
!6117 = !DILocation(line: 483, column: 2, scope: !5971)
!6118 = !DILocation(line: 484, column: 1, scope: !5971)
!6119 = !DISubprogram(name: "kmalloc_trace", scope: !152, file: !152, line: 525, type: !6120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{!209, !6122, !210, !593}
!6122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6123, size: 64)
!6123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6124, line: 11, flags: DIFlagFwdDecl)
!6124 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6125 = distinct !DISubprogram(name: "kmalloc_type", scope: !152, file: !152, line: 401, type: !6126, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6128)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!151, !210, !212}
!6128 = !{!6129, !6130}
!6129 = !DILocalVariable(name: "flags", arg: 1, scope: !6125, file: !152, line: 401, type: !210)
!6130 = !DILocalVariable(name: "caller", arg: 2, scope: !6125, file: !152, line: 401, type: !212)
!6131 = !DILocation(line: 401, column: 67, scope: !6125)
!6132 = !DILocation(line: 401, column: 88, scope: !6125)
!6133 = !DILocation(line: 407, column: 6, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6125, file: !152, line: 407, column: 6)
!6135 = !DILocation(line: 407, column: 6, scope: !6125)
!6136 = !DILocation(line: 413, column: 3, scope: !6134)
!6137 = !DILocation(line: 423, column: 38, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6125, file: !152, line: 423, column: 6)
!6139 = !DILocation(line: 423, column: 44, scope: !6138)
!6140 = !DILocation(line: 423, column: 6, scope: !6125)
!6141 = !DILocation(line: 424, column: 3, scope: !6138)
!6142 = !DILocation(line: 426, column: 3, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6125, file: !152, line: 425, column: 6)
!6144 = !DILocation(line: 429, column: 1, scope: !6125)
!6145 = !DISubprogram(name: "__kmalloc", scope: !152, file: !152, line: 488, type: !5927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6146 = !DISubprogram(name: "__compiletime_assert_204", scope: !152, file: !152, line: 478, type: !2329, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6147 = distinct !DISubprogram(name: "pde_data", scope: !255, file: !255, line: 118, type: !6148, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6150)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!209, !3964}
!6150 = !{!6151}
!6151 = !DILocalVariable(name: "inode", arg: 1, scope: !6147, file: !255, line: 118, type: !3964)
!6152 = !DILocation(line: 118, column: 50, scope: !6147)
!6153 = !DILocation(line: 120, column: 9, scope: !6147)
!6154 = !DILocation(line: 120, column: 16, scope: !6147)
!6155 = !DILocation(line: 120, column: 2, scope: !6147)
!6156 = distinct !DISubprogram(name: "file_inode", scope: !14, file: !14, line: 1073, type: !6157, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!262, !1340}
!6159 = !{!6160}
!6160 = !DILocalVariable(name: "f", arg: 1, scope: !6156, file: !14, line: 1073, type: !1340)
!6161 = !DILocation(line: 1073, column: 59, scope: !6156)
!6162 = !DILocation(line: 1075, column: 9, scope: !6156)
!6163 = !DILocation(line: 1075, column: 12, scope: !6156)
!6164 = !DILocation(line: 1075, column: 2, scope: !6156)
!6165 = !DISubprogram(name: "capable", scope: !971, file: !971, line: 148, type: !6166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!763, !109}
!6168 = distinct !DISubprogram(name: "__access_ok", scope: !6169, file: !6169, line: 85, type: !6170, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6172)
!6169 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!763, !1460, !212}
!6172 = !{!6173, !6174, !6175}
!6173 = !DILocalVariable(name: "ptr", arg: 1, scope: !6168, file: !6169, line: 85, type: !1460)
!6174 = !DILocalVariable(name: "size", arg: 2, scope: !6168, file: !6169, line: 85, type: !212)
!6175 = !DILocalVariable(name: "sum", scope: !6176, file: !6169, line: 90, type: !212)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !6169, line: 89, column: 9)
!6177 = distinct !DILexicalBlock(scope: !6168, file: !6169, line: 87, column: 6)
!6178 = !DILocation(line: 85, column: 51, scope: !6168)
!6179 = !DILocation(line: 85, column: 70, scope: !6168)
!6180 = !DILocation(line: 87, column: 27, scope: !6177)
!6181 = !DILocation(line: 87, column: 32, scope: !6177)
!6182 = !DILocation(line: 87, column: 6, scope: !6177)
!6183 = !DILocation(line: 87, column: 46, scope: !6177)
!6184 = !DILocation(line: 87, column: 49, scope: !6177)
!6185 = !DILocation(line: 87, column: 54, scope: !6177)
!6186 = !DILocation(line: 87, column: 6, scope: !6168)
!6187 = !DILocation(line: 88, column: 10, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6177, file: !6169, line: 87, column: 68)
!6189 = !DILocation(line: 88, column: 3, scope: !6188)
!6190 = !DILocation(line: 90, column: 3, scope: !6176)
!6191 = !DILocation(line: 90, column: 17, scope: !6176)
!6192 = !DILocation(line: 90, column: 23, scope: !6176)
!6193 = !DILocation(line: 90, column: 45, scope: !6176)
!6194 = !DILocation(line: 90, column: 30, scope: !6176)
!6195 = !DILocation(line: 90, column: 28, scope: !6176)
!6196 = !DILocation(line: 91, column: 10, scope: !6176)
!6197 = !DILocation(line: 91, column: 34, scope: !6176)
!6198 = !DILocation(line: 91, column: 37, scope: !6176)
!6199 = !DILocation(line: 91, column: 59, scope: !6176)
!6200 = !DILocation(line: 91, column: 44, scope: !6176)
!6201 = !DILocation(line: 91, column: 41, scope: !6176)
!6202 = !DILocation(line: 0, scope: !6176)
!6203 = !DILocation(line: 91, column: 3, scope: !6176)
!6204 = !DILocation(line: 92, column: 2, scope: !6177)
!6205 = !DILocation(line: 93, column: 1, scope: !6168)
!6206 = !DISubprogram(name: "pci_config_pm_runtime_get", scope: !195, file: !195, line: 93, type: !4860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6207 = !DISubprogram(name: "pci_user_read_config_byte", scope: !142, file: !142, line: 1283, type: !6208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!109, !4257, !109, !6210}
!6210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!6211 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6212, file: !6212, line: 76, type: !6213, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6215)
!6212 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6213 = !DISubroutineType(types: !6214)
!6214 = !{null, !209, !1460, !593, !593}
!6215 = !{!6216, !6217, !6218, !6219}
!6216 = !DILocalVariable(name: "to", arg: 1, scope: !6211, file: !6212, line: 76, type: !209)
!6217 = !DILocalVariable(name: "from", arg: 2, scope: !6211, file: !6212, line: 76, type: !1460)
!6218 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6211, file: !6212, line: 77, type: !593)
!6219 = !DILocalVariable(name: "left", arg: 4, scope: !6211, file: !6212, line: 77, type: !593)
!6220 = !DILocation(line: 76, column: 52, scope: !6211)
!6221 = !DILocation(line: 76, column: 68, scope: !6211)
!6222 = !DILocation(line: 77, column: 18, scope: !6211)
!6223 = !DILocation(line: 77, column: 34, scope: !6211)
!6224 = !DILocation(line: 79, column: 1, scope: !6211)
!6225 = !DISubprogram(name: "pci_user_read_config_word", scope: !142, file: !142, line: 1284, type: !6226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6226 = !DISubroutineType(types: !6227)
!6227 = !{!109, !4257, !109, !6228}
!6228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!6229 = !DISubprogram(name: "pci_user_read_config_dword", scope: !142, file: !142, line: 1285, type: !6230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{!109, !4257, !109, !3018}
!6232 = distinct !DISubprogram(name: "__might_resched", scope: !6233, file: !6233, line: 184, type: !6234, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6233 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6234 = !DISubroutineType(types: !6235)
!6235 = !{null, !421, !109, !7}
!6236 = !{!6237, !6238, !6239}
!6237 = !DILocalVariable(name: "file", arg: 1, scope: !6232, file: !6233, line: 184, type: !421)
!6238 = !DILocalVariable(name: "line", arg: 2, scope: !6232, file: !6233, line: 184, type: !109)
!6239 = !DILocalVariable(name: "offsets", arg: 3, scope: !6232, file: !6233, line: 185, type: !7)
!6240 = !DILocation(line: 184, column: 50, scope: !6232)
!6241 = !DILocation(line: 184, column: 60, scope: !6232)
!6242 = !DILocation(line: 185, column: 23, scope: !6232)
!6243 = !DILocation(line: 185, column: 34, scope: !6232)
!6244 = !DILocation(line: 2104, column: 9, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !4233, file: !1282, line: 2104, column: 9)
!6246 = !DILocation(line: 2104, column: 9, scope: !4233)
!6247 = !DILocation(line: 2104, column: 2, scope: !4233)
!6248 = !DISubprogram(name: "pci_config_pm_runtime_put", scope: !195, file: !195, line: 94, type: !4860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6249 = !DISubprogram(name: "security_locked_down", scope: !162, file: !162, line: 488, type: !6250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6250 = !DISubroutineType(types: !6251)
!6251 = !{!109, !161}
!6252 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6212, file: !6212, line: 70, type: !6253, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6255)
!6253 = !DISubroutineType(types: !6254)
!6254 = !{null, !1460, !593}
!6255 = !{!6256, !6257}
!6256 = !DILocalVariable(name: "address", arg: 1, scope: !6252, file: !6212, line: 70, type: !1460)
!6257 = !DILocalVariable(name: "size", arg: 2, scope: !6252, file: !6212, line: 70, type: !593)
!6258 = !DILocation(line: 70, column: 54, scope: !6252)
!6259 = !DILocation(line: 70, column: 70, scope: !6252)
!6260 = !DILocation(line: 72, column: 1, scope: !6252)
!6261 = !DISubprogram(name: "pci_user_write_config_byte", scope: !142, file: !142, line: 1286, type: !6262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6262 = !DISubroutineType(types: !6263)
!6263 = !{!109, !4257, !109, !390}
!6264 = !DISubprogram(name: "pci_user_write_config_word", scope: !142, file: !142, line: 1287, type: !6265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!109, !4257, !109, !397}
!6267 = !DISubprogram(name: "pci_user_write_config_dword", scope: !142, file: !142, line: 1288, type: !6268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{!109, !4257, !109, !338}
!6270 = distinct !DISubprogram(name: "i_size_write", scope: !14, file: !14, line: 921, type: !6271, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6273)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{null, !262, !467}
!6273 = !{!6274, !6275}
!6274 = !DILocalVariable(name: "inode", arg: 1, scope: !6270, file: !14, line: 921, type: !262)
!6275 = !DILocalVariable(name: "i_size", arg: 2, scope: !6270, file: !14, line: 921, type: !467)
!6276 = !DILocation(line: 921, column: 47, scope: !6270)
!6277 = !DILocation(line: 921, column: 61, scope: !6270)
!6278 = !DILocation(line: 934, column: 18, scope: !6270)
!6279 = !DILocation(line: 934, column: 2, scope: !6270)
!6280 = !DILocation(line: 934, column: 9, scope: !6270)
!6281 = !DILocation(line: 934, column: 16, scope: !6270)
!6282 = !DILocation(line: 936, column: 1, scope: !6270)
!6283 = !DISubprogram(name: "fixed_size_llseek", scope: !14, file: !14, line: 3015, type: !6284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!467, !853, !467, !109, !467}
!6286 = !DISubprogram(name: "kfree", scope: !152, file: !152, line: 227, type: !6287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6287 = !DISubroutineType(types: !6288)
!6288 = !{null, !1460}
!6289 = !DISubprogram(name: "pat_enabled", scope: !6290, file: !6290, line: 8, type: !1850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6290 = !DIFile(filename: "./arch/x86/include/asm/memtype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83be40d1830a400be9fbb1fd435851b8")
!6291 = !DISubprogram(name: "pci_mmap_fits", scope: !195, file: !195, line: 45, type: !6292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!109, !4257, !109, !812, !194}
!6294 = !DISubprogram(name: "iomem_is_exclusive", scope: !4275, file: !4275, line: 320, type: !6295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6295 = !DISubroutineType(types: !6296)
!6296 = !{!763, !223}
!6297 = !DISubprogram(name: "pci_resource_to_user", scope: !142, file: !142, line: 2124, type: !6298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6298 = !DISubroutineType(types: !6299)
!6299 = !{null, !6300, !109, !6302, !6304, !6304}
!6300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6301, size: 64)
!6301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!6302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6303, size: 64)
!6303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4274)
!6304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!6305 = !DISubprogram(name: "pci_mmap_resource_range", scope: !142, file: !142, line: 2059, type: !6306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6306 = !DISubroutineType(types: !6307)
!6307 = !{!109, !4257, !109, !812, !141, !109}
!6308 = !DISubprogram(name: "proc_create_seq_private", scope: !255, file: !255, line: 92, type: !6309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!248, !421, !266, !248, !1318, !7, !209}
!6311 = !DISubprogram(name: "pci_get_device", scope: !142, file: !142, line: 1176, type: !6312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!4257, !7, !7, !4257}
!6314 = distinct !DISubprogram(name: "pci_seq_start", scope: !3, file: !3, line: 338, type: !1324, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6315)
!6315 = !{!6316, !6317, !6318, !6319}
!6316 = !DILocalVariable(name: "m", arg: 1, scope: !6314, file: !3, line: 338, type: !1305)
!6317 = !DILocalVariable(name: "pos", arg: 2, scope: !6314, file: !3, line: 338, type: !1178)
!6318 = !DILocalVariable(name: "dev", scope: !6314, file: !3, line: 340, type: !4257)
!6319 = !DILocalVariable(name: "n", scope: !6314, file: !3, line: 341, type: !467)
!6320 = !DILocation(line: 338, column: 45, scope: !6314)
!6321 = !DILocation(line: 338, column: 56, scope: !6314)
!6322 = !DILocation(line: 340, column: 2, scope: !6314)
!6323 = !DILocation(line: 340, column: 18, scope: !6314)
!6324 = !DILocation(line: 341, column: 2, scope: !6314)
!6325 = !DILocation(line: 341, column: 9, scope: !6314)
!6326 = !DILocation(line: 341, column: 14, scope: !6314)
!6327 = !DILocation(line: 341, column: 13, scope: !6314)
!6328 = !DILocation(line: 343, column: 2, scope: !6314)
!6329 = !DILocation(line: 344, column: 9, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 344, column: 7)
!6331 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 343, column: 24)
!6332 = !DILocation(line: 344, column: 7, scope: !6331)
!6333 = !DILocation(line: 345, column: 4, scope: !6330)
!6334 = distinct !{!6334, !6328, !6335, !5191, !5192}
!6335 = !DILocation(line: 346, column: 2, scope: !6314)
!6336 = !DILocation(line: 347, column: 9, scope: !6314)
!6337 = !DILocation(line: 348, column: 1, scope: !6314)
!6338 = !DILocation(line: 347, column: 2, scope: !6314)
!6339 = distinct !DISubprogram(name: "pci_seq_stop", scope: !3, file: !3, line: 359, type: !1328, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6340)
!6340 = !{!6341, !6342, !6343}
!6341 = !DILocalVariable(name: "m", arg: 1, scope: !6339, file: !3, line: 359, type: !1305)
!6342 = !DILocalVariable(name: "v", arg: 2, scope: !6339, file: !3, line: 359, type: !209)
!6343 = !DILocalVariable(name: "dev", scope: !6344, file: !3, line: 362, type: !4257)
!6344 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 361, column: 9)
!6345 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 361, column: 6)
!6346 = !DILocation(line: 359, column: 43, scope: !6339)
!6347 = !DILocation(line: 359, column: 52, scope: !6339)
!6348 = !DILocation(line: 361, column: 6, scope: !6345)
!6349 = !DILocation(line: 361, column: 6, scope: !6339)
!6350 = !DILocation(line: 362, column: 3, scope: !6344)
!6351 = !DILocation(line: 362, column: 19, scope: !6344)
!6352 = !DILocation(line: 362, column: 25, scope: !6344)
!6353 = !DILocation(line: 363, column: 15, scope: !6344)
!6354 = !DILocation(line: 363, column: 3, scope: !6344)
!6355 = !DILocation(line: 364, column: 2, scope: !6345)
!6356 = !DILocation(line: 364, column: 2, scope: !6344)
!6357 = !DILocation(line: 365, column: 1, scope: !6339)
!6358 = distinct !DISubprogram(name: "pci_seq_next", scope: !3, file: !3, line: 350, type: !1332, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6359)
!6359 = !{!6360, !6361, !6362, !6363}
!6360 = !DILocalVariable(name: "m", arg: 1, scope: !6358, file: !3, line: 350, type: !1305)
!6361 = !DILocalVariable(name: "v", arg: 2, scope: !6358, file: !3, line: 350, type: !209)
!6362 = !DILocalVariable(name: "pos", arg: 3, scope: !6358, file: !3, line: 350, type: !1178)
!6363 = !DILocalVariable(name: "dev", scope: !6358, file: !3, line: 352, type: !4257)
!6364 = !DILocation(line: 350, column: 44, scope: !6358)
!6365 = !DILocation(line: 350, column: 53, scope: !6358)
!6366 = !DILocation(line: 350, column: 64, scope: !6358)
!6367 = !DILocation(line: 352, column: 2, scope: !6358)
!6368 = !DILocation(line: 352, column: 18, scope: !6358)
!6369 = !DILocation(line: 352, column: 24, scope: !6358)
!6370 = !DILocation(line: 354, column: 4, scope: !6358)
!6371 = !DILocation(line: 354, column: 8, scope: !6358)
!6372 = !DILocation(line: 355, column: 47, scope: !6358)
!6373 = !DILocation(line: 355, column: 8, scope: !6358)
!6374 = !DILocation(line: 355, column: 6, scope: !6358)
!6375 = !DILocation(line: 356, column: 9, scope: !6358)
!6376 = !DILocation(line: 357, column: 1, scope: !6358)
!6377 = !DILocation(line: 356, column: 2, scope: !6358)
!6378 = distinct !DISubprogram(name: "show_device", scope: !3, file: !3, line: 367, type: !1336, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6379 = !{!6380, !6381, !6382, !6383, !6386, !6387, !6391, !6392, !6396}
!6380 = !DILocalVariable(name: "m", arg: 1, scope: !6378, file: !3, line: 367, type: !1305)
!6381 = !DILocalVariable(name: "v", arg: 2, scope: !6378, file: !3, line: 367, type: !209)
!6382 = !DILocalVariable(name: "dev", scope: !6378, file: !3, line: 369, type: !6300)
!6383 = !DILocalVariable(name: "drv", scope: !6378, file: !3, line: 370, type: !6384)
!6384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6385, size: 64)
!6385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4837)
!6386 = !DILocalVariable(name: "i", scope: !6378, file: !3, line: 371, type: !109)
!6387 = !DILocalVariable(name: "start", scope: !6388, file: !3, line: 386, type: !4278)
!6388 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 385, column: 42)
!6389 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 385, column: 2)
!6390 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 385, column: 2)
!6391 = !DILocalVariable(name: "end", scope: !6388, file: !3, line: 386, type: !4278)
!6392 = !DILocalVariable(name: "start", scope: !6393, file: !3, line: 393, type: !4278)
!6393 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 392, column: 42)
!6394 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 392, column: 2)
!6395 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 392, column: 2)
!6396 = !DILocalVariable(name: "end", scope: !6393, file: !3, line: 393, type: !4278)
!6397 = !DILocation(line: 367, column: 41, scope: !6378)
!6398 = !DILocation(line: 367, column: 50, scope: !6378)
!6399 = !DILocation(line: 369, column: 2, scope: !6378)
!6400 = !DILocation(line: 369, column: 24, scope: !6378)
!6401 = !DILocation(line: 369, column: 30, scope: !6378)
!6402 = !DILocation(line: 370, column: 2, scope: !6378)
!6403 = !DILocation(line: 370, column: 27, scope: !6378)
!6404 = !DILocation(line: 371, column: 2, scope: !6378)
!6405 = !DILocation(line: 371, column: 6, scope: !6378)
!6406 = !DILocation(line: 373, column: 6, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 373, column: 6)
!6408 = !DILocation(line: 373, column: 10, scope: !6407)
!6409 = !DILocation(line: 373, column: 6, scope: !6378)
!6410 = !DILocation(line: 374, column: 3, scope: !6407)
!6411 = !DILocation(line: 376, column: 23, scope: !6378)
!6412 = !DILocation(line: 376, column: 8, scope: !6378)
!6413 = !DILocation(line: 376, column: 6, scope: !6378)
!6414 = !DILocation(line: 377, column: 13, scope: !6378)
!6415 = !DILocation(line: 378, column: 4, scope: !6378)
!6416 = !DILocation(line: 378, column: 9, scope: !6378)
!6417 = !DILocation(line: 378, column: 14, scope: !6378)
!6418 = !DILocation(line: 379, column: 4, scope: !6378)
!6419 = !DILocation(line: 379, column: 9, scope: !6378)
!6420 = !DILocation(line: 380, column: 4, scope: !6378)
!6421 = !DILocation(line: 380, column: 9, scope: !6378)
!6422 = !DILocation(line: 381, column: 4, scope: !6378)
!6423 = !DILocation(line: 381, column: 9, scope: !6378)
!6424 = !DILocation(line: 382, column: 4, scope: !6378)
!6425 = !DILocation(line: 382, column: 9, scope: !6378)
!6426 = !DILocation(line: 377, column: 2, scope: !6378)
!6427 = !DILocation(line: 385, column: 9, scope: !6390)
!6428 = !DILocation(line: 385, column: 7, scope: !6390)
!6429 = !DILocation(line: 385, column: 14, scope: !6389)
!6430 = !DILocation(line: 385, column: 16, scope: !6389)
!6431 = !DILocation(line: 385, column: 2, scope: !6390)
!6432 = !DILocation(line: 386, column: 3, scope: !6388)
!6433 = !DILocation(line: 386, column: 19, scope: !6388)
!6434 = !DILocation(line: 386, column: 26, scope: !6388)
!6435 = !DILocation(line: 387, column: 24, scope: !6388)
!6436 = !DILocation(line: 387, column: 29, scope: !6388)
!6437 = !DILocation(line: 387, column: 33, scope: !6388)
!6438 = !DILocation(line: 387, column: 38, scope: !6388)
!6439 = !DILocation(line: 387, column: 47, scope: !6388)
!6440 = !DILocation(line: 387, column: 3, scope: !6388)
!6441 = !DILocation(line: 388, column: 14, scope: !6388)
!6442 = !DILocation(line: 389, column: 25, scope: !6388)
!6443 = !DILocation(line: 390, column: 5, scope: !6388)
!6444 = !DILocation(line: 390, column: 10, scope: !6388)
!6445 = !DILocation(line: 390, column: 19, scope: !6388)
!6446 = !DILocation(line: 390, column: 22, scope: !6388)
!6447 = !DILocation(line: 390, column: 28, scope: !6388)
!6448 = !DILocation(line: 389, column: 31, scope: !6388)
!6449 = !DILocation(line: 388, column: 3, scope: !6388)
!6450 = !DILocation(line: 391, column: 2, scope: !6389)
!6451 = !DILocation(line: 391, column: 2, scope: !6388)
!6452 = !DILocation(line: 385, column: 38, scope: !6389)
!6453 = !DILocation(line: 385, column: 2, scope: !6389)
!6454 = distinct !{!6454, !6431, !6455, !5191, !5192}
!6455 = !DILocation(line: 391, column: 2, scope: !6390)
!6456 = !DILocation(line: 392, column: 9, scope: !6395)
!6457 = !DILocation(line: 392, column: 7, scope: !6395)
!6458 = !DILocation(line: 392, column: 14, scope: !6394)
!6459 = !DILocation(line: 392, column: 16, scope: !6394)
!6460 = !DILocation(line: 392, column: 2, scope: !6395)
!6461 = !DILocation(line: 393, column: 3, scope: !6393)
!6462 = !DILocation(line: 393, column: 19, scope: !6393)
!6463 = !DILocation(line: 393, column: 26, scope: !6393)
!6464 = !DILocation(line: 394, column: 24, scope: !6393)
!6465 = !DILocation(line: 394, column: 29, scope: !6393)
!6466 = !DILocation(line: 394, column: 33, scope: !6393)
!6467 = !DILocation(line: 394, column: 38, scope: !6393)
!6468 = !DILocation(line: 394, column: 47, scope: !6393)
!6469 = !DILocation(line: 394, column: 3, scope: !6393)
!6470 = !DILocation(line: 395, column: 14, scope: !6393)
!6471 = !DILocation(line: 396, column: 4, scope: !6393)
!6472 = !DILocation(line: 396, column: 9, scope: !6393)
!6473 = !DILocation(line: 396, column: 18, scope: !6393)
!6474 = !DILocation(line: 396, column: 21, scope: !6393)
!6475 = !DILocation(line: 396, column: 29, scope: !6393)
!6476 = !DILocation(line: 396, column: 34, scope: !6393)
!6477 = !DILocation(line: 396, column: 43, scope: !6393)
!6478 = !DILocation(line: 396, column: 46, scope: !6393)
!6479 = !DILocation(line: 396, column: 27, scope: !6393)
!6480 = !DILocation(line: 397, column: 25, scope: !6393)
!6481 = !DILocation(line: 397, column: 31, scope: !6393)
!6482 = !DILocation(line: 397, column: 29, scope: !6393)
!6483 = !DILocation(line: 397, column: 38, scope: !6393)
!6484 = !DILocation(line: 395, column: 3, scope: !6393)
!6485 = !DILocation(line: 398, column: 2, scope: !6394)
!6486 = !DILocation(line: 398, column: 2, scope: !6393)
!6487 = !DILocation(line: 392, column: 38, scope: !6394)
!6488 = !DILocation(line: 392, column: 2, scope: !6394)
!6489 = distinct !{!6489, !6460, !6490, !5191, !5192}
!6490 = !DILocation(line: 398, column: 2, scope: !6395)
!6491 = !DILocation(line: 399, column: 11, scope: !6378)
!6492 = !DILocation(line: 399, column: 2, scope: !6378)
!6493 = !DILocation(line: 400, column: 6, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 400, column: 6)
!6495 = !DILocation(line: 400, column: 6, scope: !6378)
!6496 = !DILocation(line: 401, column: 12, scope: !6494)
!6497 = !DILocation(line: 401, column: 15, scope: !6494)
!6498 = !DILocation(line: 401, column: 20, scope: !6494)
!6499 = !DILocation(line: 401, column: 3, scope: !6494)
!6500 = !DILocation(line: 402, column: 11, scope: !6378)
!6501 = !DILocation(line: 402, column: 2, scope: !6378)
!6502 = !DILocation(line: 403, column: 2, scope: !6378)
!6503 = !DILocation(line: 404, column: 1, scope: !6378)
!6504 = !DISubprogram(name: "pci_dev_put", scope: !142, file: !142, line: 1148, type: !4860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6505 = !DISubprogram(name: "pci_dev_driver", scope: !142, file: !142, line: 1588, type: !6506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6506 = !DISubroutineType(types: !6507)
!6507 = !{!4836, !6300}
!6508 = !DISubprogram(name: "seq_printf", scope: !1307, file: !1307, line: 119, type: !6509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6509 = !DISubroutineType(types: !6510)
!6510 = !{null, !1305, !421, null}
!6511 = !DISubprogram(name: "seq_putc", scope: !1307, file: !1307, line: 120, type: !6512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6512 = !DISubroutineType(types: !6513)
!6513 = !{null, !1305, !227}
!6514 = !DISubprogram(name: "seq_puts", scope: !1307, file: !1307, line: 121, type: !6515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6515 = !DISubroutineType(types: !6516)
!6516 = !{null, !1305, !421}
