; ModuleID = 'drivers/virtio/virtio_pci_modern_dev.c'
source_filename = "drivers/virtio/virtio_pci_modern_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_probe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_probe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_features: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_features ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_driver_features: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_driver_features ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_set_features: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_set_features ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_generation: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_generation ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_status: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_status ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_set_status: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_set_status ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_queue_reset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_queue_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_set_queue_reset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_set_queue_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_queue_vector: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_queue_vector ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_config_vector: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_config_vector ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_queue_address: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_queue_address ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_set_queue_enable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_set_queue_enable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_queue_enable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_queue_enable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_set_queue_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_set_queue_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_queue_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_queue_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_get_num_queues: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_get_num_queues ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vp_modern_map_vq_notify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad vp_modern_map_vq_notify ; .previous"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i32, i32, i32, %struct.virtio_device_id, ptr, i64 }
%struct.virtio_device_id = type { i32, i32 }
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
%struct.virtio_pci_common_cfg = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.virtio_pci_modern_common_cfg = type { %struct.virtio_pci_common_cfg, i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"virtio_pci: leaving for legacy driver\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [43 x i8] c"virtio_pci: missing capabilities %i/%i/%i\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [86 x i8] c"Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [18 x i8] c"virtio-pci-modern\00", align 1, !dbg !17
@__UNIQUE_ID___addressable_vp_modern_probe319 = internal global ptr @vp_modern_probe, section ".discard.addressable", align 8, !dbg !22
@__UNIQUE_ID___addressable_vp_modern_remove320 = internal global ptr @vp_modern_remove, section ".discard.addressable", align 8, !dbg !209
@__UNIQUE_ID___addressable_vp_modern_get_features321 = internal global ptr @vp_modern_get_features, section ".discard.addressable", align 8, !dbg !211
@__UNIQUE_ID___addressable_vp_modern_get_driver_features322 = internal global ptr @vp_modern_get_driver_features, section ".discard.addressable", align 8, !dbg !213
@__UNIQUE_ID___addressable_vp_modern_set_features323 = internal global ptr @vp_modern_set_features, section ".discard.addressable", align 8, !dbg !215
@__UNIQUE_ID___addressable_vp_modern_generation324 = internal global ptr @vp_modern_generation, section ".discard.addressable", align 8, !dbg !217
@__UNIQUE_ID___addressable_vp_modern_get_status325 = internal global ptr @vp_modern_get_status, section ".discard.addressable", align 8, !dbg !219
@__UNIQUE_ID___addressable_vp_modern_set_status326 = internal global ptr @vp_modern_set_status, section ".discard.addressable", align 8, !dbg !221
@__UNIQUE_ID___addressable_vp_modern_get_queue_reset327 = internal global ptr @vp_modern_get_queue_reset, section ".discard.addressable", align 8, !dbg !223
@__UNIQUE_ID___addressable_vp_modern_set_queue_reset328 = internal global ptr @vp_modern_set_queue_reset, section ".discard.addressable", align 8, !dbg !225
@__UNIQUE_ID___addressable_vp_modern_queue_vector329 = internal global ptr @vp_modern_queue_vector, section ".discard.addressable", align 8, !dbg !227
@__UNIQUE_ID___addressable_vp_modern_config_vector330 = internal global ptr @vp_modern_config_vector, section ".discard.addressable", align 8, !dbg !229
@__UNIQUE_ID___addressable_vp_modern_queue_address331 = internal global ptr @vp_modern_queue_address, section ".discard.addressable", align 8, !dbg !231
@__UNIQUE_ID___addressable_vp_modern_set_queue_enable332 = internal global ptr @vp_modern_set_queue_enable, section ".discard.addressable", align 8, !dbg !233
@__UNIQUE_ID___addressable_vp_modern_get_queue_enable333 = internal global ptr @vp_modern_get_queue_enable, section ".discard.addressable", align 8, !dbg !235
@__UNIQUE_ID___addressable_vp_modern_set_queue_size334 = internal global ptr @vp_modern_set_queue_size, section ".discard.addressable", align 8, !dbg !237
@__UNIQUE_ID___addressable_vp_modern_get_queue_size335 = internal global ptr @vp_modern_get_queue_size, section ".discard.addressable", align 8, !dbg !239
@__UNIQUE_ID___addressable_vp_modern_get_num_queues336 = internal global ptr @vp_modern_get_num_queues, section ".discard.addressable", align 8, !dbg !241
@.str.4 = private unnamed_addr constant [53 x i8] c"bad notification offset %u (x %u) for queue %u > %zd\00", align 1, !dbg !243
@__UNIQUE_ID___addressable_vp_modern_map_vq_notify337 = internal global ptr @vp_modern_map_vq_notify, section ".discard.addressable", align 8, !dbg !248
@__UNIQUE_ID_version338 = internal constant [34 x i8] c"virtio_pci_modern_dev.version=0.1\00", section ".modinfo", align 1, !dbg !250
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !256
@.str.6 = private unnamed_addr constant [22 x i8] c"virtio_pci_modern_dev\00", align 1, !dbg !261
@.str.7 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1, !dbg !266
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 8, !dbg !271
@__UNIQUE_ID_description339 = internal constant [59 x i8] c"virtio_pci_modern_dev.description=Modern Virtio PCI Device\00", section ".modinfo", align 1, !dbg !4203
@__UNIQUE_ID_author340 = internal constant [62 x i8] c"virtio_pci_modern_dev.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1, !dbg !4208
@__UNIQUE_ID_file341 = internal constant [64 x i8] c"virtio_pci_modern_dev.file=drivers/virtio/virtio_pci_modern_dev\00", section ".modinfo", align 1, !dbg !4213
@__UNIQUE_ID_license342 = internal constant [34 x i8] c"virtio_pci_modern_dev.license=GPL\00", section ".modinfo", align 1, !dbg !4216
@.str.8 = private unnamed_addr constant [44 x i8] c"virtio_pci: bar unexpectedly changed to %u\0A\00", align 1, !dbg !4218
@.str.9 = private unnamed_addr constant [50 x i8] c"virtio_pci: bad capability len %u (>%u expected)\0A\00", align 1, !dbg !4223
@.str.10 = private unnamed_addr constant [52 x i8] c"virtio_pci: bad capability len %u (>=%zu expected)\0A\00", align 1, !dbg !4228
@.str.11 = private unnamed_addr constant [35 x i8] c"virtio_pci: map wrap-around %u+%u\0A\00", align 1, !dbg !4231
@.str.12 = private unnamed_addr constant [41 x i8] c"virtio_pci: offset %u not aligned to %u\0A\00", align 1, !dbg !4236
@.str.13 = private unnamed_addr constant [65 x i8] c"virtio_pci: map virtio %zu@%u out of range on bar %i length %lu\0A\00", align 1, !dbg !4241
@.str.14 = private unnamed_addr constant [50 x i8] c"virtio_pci: unable to map virtio %u@%u on bar %i\0A\00", align 1, !dbg !4246
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID___addressable_vp_modern_probe319, ptr @__UNIQUE_ID___addressable_vp_modern_remove320, ptr @__UNIQUE_ID___addressable_vp_modern_get_features321, ptr @__UNIQUE_ID___addressable_vp_modern_get_driver_features322, ptr @__UNIQUE_ID___addressable_vp_modern_set_features323, ptr @__UNIQUE_ID___addressable_vp_modern_generation324, ptr @__UNIQUE_ID___addressable_vp_modern_get_status325, ptr @__UNIQUE_ID___addressable_vp_modern_set_status326, ptr @__UNIQUE_ID___addressable_vp_modern_get_queue_reset327, ptr @__UNIQUE_ID___addressable_vp_modern_set_queue_reset328, ptr @__UNIQUE_ID___addressable_vp_modern_queue_vector329, ptr @__UNIQUE_ID___addressable_vp_modern_config_vector330, ptr @__UNIQUE_ID___addressable_vp_modern_queue_address331, ptr @__UNIQUE_ID___addressable_vp_modern_set_queue_enable332, ptr @__UNIQUE_ID___addressable_vp_modern_get_queue_enable333, ptr @__UNIQUE_ID___addressable_vp_modern_set_queue_size334, ptr @__UNIQUE_ID___addressable_vp_modern_get_queue_size335, ptr @__UNIQUE_ID___addressable_vp_modern_get_num_queues336, ptr @__UNIQUE_ID___addressable_vp_modern_map_vq_notify337, ptr @__UNIQUE_ID_version338, ptr @__modver_attr, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vp_modern_probe(ptr noundef %mdev) #0 align 16 !dbg !4257 {
entry:
  %retval = alloca i32, align 4
  %mdev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %common = alloca i32, align 4
  %isr = alloca i32, align 4
  %notify = alloca i32, align 4
  %device = alloca i32, align 4
  %notify_length = alloca i32, align 4
  %notify_offset = alloca i32, align 4
  %devid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5052, metadata !DIExpression()), !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #6, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !5053, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5069
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 0, !dbg !5070
  %1 = load ptr, ptr %pci_dev1, align 8, !dbg !5070
  store ptr %1, ptr %pci_dev, align 8, !dbg !5068
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5054, metadata !DIExpression()), !dbg !5072
  call void @llvm.lifetime.start.p0(i64 4, ptr %common) #6, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %common, metadata !5055, metadata !DIExpression()), !dbg !5073
  call void @llvm.lifetime.start.p0(i64 4, ptr %isr) #6, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %isr, metadata !5056, metadata !DIExpression()), !dbg !5074
  call void @llvm.lifetime.start.p0(i64 4, ptr %notify) #6, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %notify, metadata !5057, metadata !DIExpression()), !dbg !5075
  call void @llvm.lifetime.start.p0(i64 4, ptr %device) #6, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5058, metadata !DIExpression()), !dbg !5076
  call void @llvm.lifetime.start.p0(i64 4, ptr %notify_length) #6, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %notify_length, metadata !5059, metadata !DIExpression()), !dbg !5078
  call void @llvm.lifetime.start.p0(i64 4, ptr %notify_offset) #6, !dbg !5079
  call void @llvm.dbg.declare(metadata ptr %notify_offset, metadata !5060, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 4, ptr %devid) #6, !dbg !5081
  call void @llvm.dbg.declare(metadata ptr %devid, metadata !5061, metadata !DIExpression()), !dbg !5082
  call void @check_offsets() #7, !dbg !5083
  %2 = load ptr, ptr %mdev.addr, align 8, !dbg !5084
  %device_id_check = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %2, i32 0, i32 12, !dbg !5086
  %3 = load ptr, ptr %device_id_check, align 8, !dbg !5086
  %tobool = icmp ne ptr %3, null, !dbg !5084
  br i1 %tobool, label %if.then, label %if.else, !dbg !5087

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mdev.addr, align 8, !dbg !5088
  %device_id_check2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %4, i32 0, i32 12, !dbg !5090
  %5 = load ptr, ptr %device_id_check2, align 8, !dbg !5090
  %6 = load ptr, ptr %pci_dev, align 8, !dbg !5091
  %call = call i32 %5(ptr noundef %6) #7, !dbg !5088
  store i32 %call, ptr %devid, align 4, !dbg !5092
  %7 = load i32, ptr %devid, align 4, !dbg !5093
  %cmp = icmp slt i32 %7, 0, !dbg !5095
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5096

if.then3:                                         ; preds = %if.then
  %8 = load i32, ptr %devid, align 4, !dbg !5097
  store i32 %8, ptr %retval, align 4, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

if.end:                                           ; preds = %if.then
  %9 = load i32, ptr %devid, align 4, !dbg !5099
  %10 = load ptr, ptr %mdev.addr, align 8, !dbg !5100
  %id = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %10, i32 0, i32 11, !dbg !5101
  %device4 = getelementptr inbounds %struct.virtio_device_id, ptr %id, i32 0, i32 0, !dbg !5102
  store i32 %9, ptr %device4, align 4, !dbg !5103
  br label %if.end28, !dbg !5104

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pci_dev, align 8, !dbg !5105
  %device5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8, !dbg !5108
  %12 = load i16, ptr %device5, align 2, !dbg !5108
  %conv = zext i16 %12 to i32, !dbg !5105
  %cmp6 = icmp slt i32 %conv, 4096, !dbg !5109
  br i1 %cmp6, label %if.then12, label %lor.lhs.false, !dbg !5110

lor.lhs.false:                                    ; preds = %if.else
  %13 = load ptr, ptr %pci_dev, align 8, !dbg !5111
  %device8 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8, !dbg !5112
  %14 = load i16, ptr %device8, align 2, !dbg !5112
  %conv9 = zext i16 %14 to i32, !dbg !5111
  %cmp10 = icmp sgt i32 %conv9, 4223, !dbg !5113
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5114

if.then12:                                        ; preds = %lor.lhs.false, %if.else
  store i32 -19, ptr %retval, align 4, !dbg !5115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5115

if.end13:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pci_dev, align 8, !dbg !5116
  %device14 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8, !dbg !5118
  %16 = load i16, ptr %device14, align 2, !dbg !5118
  %conv15 = zext i16 %16 to i32, !dbg !5116
  %cmp16 = icmp slt i32 %conv15, 4160, !dbg !5119
  br i1 %cmp16, label %if.then18, label %if.else22, !dbg !5120

if.then18:                                        ; preds = %if.end13
  %17 = load ptr, ptr %pci_dev, align 8, !dbg !5121
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 10, !dbg !5123
  %18 = load i16, ptr %subsystem_device, align 2, !dbg !5123
  %conv19 = zext i16 %18 to i32, !dbg !5121
  %19 = load ptr, ptr %mdev.addr, align 8, !dbg !5124
  %id20 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %19, i32 0, i32 11, !dbg !5125
  %device21 = getelementptr inbounds %struct.virtio_device_id, ptr %id20, i32 0, i32 0, !dbg !5126
  store i32 %conv19, ptr %device21, align 4, !dbg !5127
  br label %if.end27, !dbg !5128

if.else22:                                        ; preds = %if.end13
  %20 = load ptr, ptr %pci_dev, align 8, !dbg !5129
  %device23 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8, !dbg !5131
  %21 = load i16, ptr %device23, align 2, !dbg !5131
  %conv24 = zext i16 %21 to i32, !dbg !5129
  %sub = sub i32 %conv24, 4160, !dbg !5132
  %22 = load ptr, ptr %mdev.addr, align 8, !dbg !5133
  %id25 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %22, i32 0, i32 11, !dbg !5134
  %device26 = getelementptr inbounds %struct.virtio_device_id, ptr %id25, i32 0, i32 0, !dbg !5135
  store i32 %sub, ptr %device26, align 4, !dbg !5136
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then18
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end
  %23 = load ptr, ptr %pci_dev, align 8, !dbg !5137
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 9, !dbg !5138
  %24 = load i16, ptr %subsystem_vendor, align 8, !dbg !5138
  %conv29 = zext i16 %24 to i32, !dbg !5137
  %25 = load ptr, ptr %mdev.addr, align 8, !dbg !5139
  %id30 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %25, i32 0, i32 11, !dbg !5140
  %vendor = getelementptr inbounds %struct.virtio_device_id, ptr %id30, i32 0, i32 1, !dbg !5141
  store i32 %conv29, ptr %vendor, align 4, !dbg !5142
  %26 = load ptr, ptr %pci_dev, align 8, !dbg !5143
  %27 = load ptr, ptr %mdev.addr, align 8, !dbg !5144
  %modern_bars = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %27, i32 0, i32 10, !dbg !5145
  %call31 = call i32 @virtio_pci_find_capability(ptr noundef %26, i8 noundef zeroext 1, i32 noundef 768, ptr noundef %modern_bars) #7, !dbg !5146
  store i32 %call31, ptr %common, align 4, !dbg !5147
  %28 = load i32, ptr %common, align 4, !dbg !5148
  %tobool32 = icmp ne i32 %28, 0, !dbg !5148
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !5150

if.then33:                                        ; preds = %if.end28
  br label %do.body, !dbg !5151

do.body:                                          ; preds = %if.then33
  br label %do.cond, !dbg !5154

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5154

do.end:                                           ; preds = %do.cond
  %29 = load ptr, ptr %pci_dev, align 8, !dbg !5151
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 37, !dbg !5151
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str) #8, !dbg !5151
  store i32 -19, ptr %retval, align 4, !dbg !5156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5156

if.end34:                                         ; preds = %if.end28
  %30 = load ptr, ptr %pci_dev, align 8, !dbg !5157
  %31 = load ptr, ptr %mdev.addr, align 8, !dbg !5158
  %modern_bars35 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %31, i32 0, i32 10, !dbg !5159
  %call36 = call i32 @virtio_pci_find_capability(ptr noundef %30, i8 noundef zeroext 3, i32 noundef 768, ptr noundef %modern_bars35) #7, !dbg !5160
  store i32 %call36, ptr %isr, align 4, !dbg !5161
  %32 = load ptr, ptr %pci_dev, align 8, !dbg !5162
  %33 = load ptr, ptr %mdev.addr, align 8, !dbg !5163
  %modern_bars37 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %33, i32 0, i32 10, !dbg !5164
  %call38 = call i32 @virtio_pci_find_capability(ptr noundef %32, i8 noundef zeroext 2, i32 noundef 768, ptr noundef %modern_bars37) #7, !dbg !5165
  store i32 %call38, ptr %notify, align 4, !dbg !5166
  %34 = load i32, ptr %isr, align 4, !dbg !5167
  %tobool39 = icmp ne i32 %34, 0, !dbg !5167
  br i1 %tobool39, label %lor.lhs.false40, label %if.then42, !dbg !5169

lor.lhs.false40:                                  ; preds = %if.end34
  %35 = load i32, ptr %notify, align 4, !dbg !5170
  %tobool41 = icmp ne i32 %35, 0, !dbg !5170
  br i1 %tobool41, label %if.end47, label %if.then42, !dbg !5171

if.then42:                                        ; preds = %lor.lhs.false40, %if.end34
  br label %do.body43, !dbg !5172

do.body43:                                        ; preds = %if.then42
  br label %do.cond44, !dbg !5175

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !5175

do.end45:                                         ; preds = %do.cond44
  %36 = load ptr, ptr %pci_dev, align 8, !dbg !5172
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 37, !dbg !5172
  %37 = load i32, ptr %common, align 4, !dbg !5172
  %38 = load i32, ptr %isr, align 4, !dbg !5172
  %39 = load i32, ptr %notify, align 4, !dbg !5172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef @.str.1, i32 noundef %37, i32 noundef %38, i32 noundef %39) #8, !dbg !5172
  store i32 -22, ptr %retval, align 4, !dbg !5177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5177

if.end47:                                         ; preds = %lor.lhs.false40
  %40 = load ptr, ptr %pci_dev, align 8, !dbg !5178
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 37, !dbg !5179
  %41 = load ptr, ptr %mdev.addr, align 8, !dbg !5180
  %dma_mask = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %41, i32 0, i32 13, !dbg !5181
  %42 = load i64, ptr %dma_mask, align 8, !dbg !5181
  %tobool49 = icmp ne i64 %42, 0, !dbg !5180
  br i1 %tobool49, label %cond.true, label %cond.false, !dbg !5180

cond.true:                                        ; preds = %if.end47
  br label %cond.end, !dbg !5180

cond.false:                                       ; preds = %if.end47
  br label %cond.end, !dbg !5180

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %42, %cond.true ], [ -1, %cond.false ], !dbg !5180
  %call50 = call i32 @dma_set_mask_and_coherent(ptr noundef %dev48, i64 noundef %cond) #7, !dbg !5182
  store i32 %call50, ptr %err, align 4, !dbg !5183
  %43 = load i32, ptr %err, align 4, !dbg !5184
  %tobool51 = icmp ne i32 %43, 0, !dbg !5184
  br i1 %tobool51, label %if.then52, label %if.end55, !dbg !5186

if.then52:                                        ; preds = %cond.end
  %44 = load ptr, ptr %pci_dev, align 8, !dbg !5187
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 37, !dbg !5188
  %call54 = call i32 @dma_set_mask_and_coherent(ptr noundef %dev53, i64 noundef 4294967295) #7, !dbg !5189
  store i32 %call54, ptr %err, align 4, !dbg !5190
  br label %if.end55, !dbg !5191

if.end55:                                         ; preds = %if.then52, %cond.end
  %45 = load i32, ptr %err, align 4, !dbg !5192
  %tobool56 = icmp ne i32 %45, 0, !dbg !5192
  br i1 %tobool56, label %if.then57, label %if.end62, !dbg !5194

if.then57:                                        ; preds = %if.end55
  br label %do.body58, !dbg !5195

do.body58:                                        ; preds = %if.then57
  br label %do.cond59, !dbg !5197

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !5197

do.end60:                                         ; preds = %do.cond59
  %46 = load ptr, ptr %pci_dev, align 8, !dbg !5195
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 37, !dbg !5195
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef @.str.2) #8, !dbg !5195
  br label %if.end62, !dbg !5199

if.end62:                                         ; preds = %do.end60, %if.end55
  %47 = load ptr, ptr %pci_dev, align 8, !dbg !5200
  %48 = load ptr, ptr %mdev.addr, align 8, !dbg !5201
  %modern_bars63 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %48, i32 0, i32 10, !dbg !5202
  %call64 = call i32 @virtio_pci_find_capability(ptr noundef %47, i8 noundef zeroext 4, i32 noundef 768, ptr noundef %modern_bars63) #7, !dbg !5203
  store i32 %call64, ptr %device, align 4, !dbg !5204
  %49 = load ptr, ptr %pci_dev, align 8, !dbg !5205
  %50 = load ptr, ptr %mdev.addr, align 8, !dbg !5206
  %modern_bars65 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %50, i32 0, i32 10, !dbg !5207
  %51 = load i32, ptr %modern_bars65, align 8, !dbg !5207
  %call66 = call i32 @pci_request_selected_regions(ptr noundef %49, i32 noundef %51, ptr noundef @.str.3) #7, !dbg !5208
  store i32 %call66, ptr %err, align 4, !dbg !5209
  %52 = load i32, ptr %err, align 4, !dbg !5210
  %tobool67 = icmp ne i32 %52, 0, !dbg !5210
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5212

if.then68:                                        ; preds = %if.end62
  %53 = load i32, ptr %err, align 4, !dbg !5213
  store i32 %53, ptr %retval, align 4, !dbg !5214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5214

if.end69:                                         ; preds = %if.end62
  store i32 -22, ptr %err, align 4, !dbg !5215
  %54 = load ptr, ptr %mdev.addr, align 8, !dbg !5216
  %55 = load i32, ptr %common, align 4, !dbg !5217
  %call70 = call ptr @vp_modern_map_capability(ptr noundef %54, i32 noundef %55, i64 noundef 56, i32 noundef 4, i32 noundef 0, i32 noundef 60, ptr noundef null, ptr noundef null) #7, !dbg !5218
  %56 = load ptr, ptr %mdev.addr, align 8, !dbg !5219
  %common71 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %56, i32 0, i32 1, !dbg !5220
  store ptr %call70, ptr %common71, align 8, !dbg !5221
  %57 = load ptr, ptr %mdev.addr, align 8, !dbg !5222
  %common72 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %57, i32 0, i32 1, !dbg !5224
  %58 = load ptr, ptr %common72, align 8, !dbg !5224
  %tobool73 = icmp ne ptr %58, null, !dbg !5222
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !5225

if.then74:                                        ; preds = %if.end69
  br label %err_map_common, !dbg !5226

if.end75:                                         ; preds = %if.end69
  %59 = load ptr, ptr %mdev.addr, align 8, !dbg !5227
  %60 = load i32, ptr %isr, align 4, !dbg !5228
  %call76 = call ptr @vp_modern_map_capability(ptr noundef %59, i32 noundef %60, i64 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null) #7, !dbg !5229
  %61 = load ptr, ptr %mdev.addr, align 8, !dbg !5230
  %isr77 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %61, i32 0, i32 5, !dbg !5231
  store ptr %call76, ptr %isr77, align 8, !dbg !5232
  %62 = load ptr, ptr %mdev.addr, align 8, !dbg !5233
  %isr78 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %62, i32 0, i32 5, !dbg !5235
  %63 = load ptr, ptr %isr78, align 8, !dbg !5235
  %tobool79 = icmp ne ptr %63, null, !dbg !5233
  br i1 %tobool79, label %if.end81, label %if.then80, !dbg !5236

if.then80:                                        ; preds = %if.end75
  br label %err_map_isr, !dbg !5237

if.end81:                                         ; preds = %if.end75
  %64 = load ptr, ptr %pci_dev, align 8, !dbg !5238
  %65 = load i32, ptr %notify, align 4, !dbg !5239
  %conv82 = sext i32 %65 to i64, !dbg !5239
  %add = add i64 %conv82, 16, !dbg !5240
  %conv83 = trunc i64 %add to i32, !dbg !5239
  %66 = load ptr, ptr %mdev.addr, align 8, !dbg !5241
  %notify_offset_multiplier = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %66, i32 0, i32 9, !dbg !5242
  %call84 = call i32 @pci_read_config_dword(ptr noundef %64, i32 noundef %conv83, ptr noundef %notify_offset_multiplier) #7, !dbg !5243
  %67 = load ptr, ptr %pci_dev, align 8, !dbg !5244
  %68 = load i32, ptr %notify, align 4, !dbg !5245
  %conv85 = sext i32 %68 to i64, !dbg !5245
  %add86 = add i64 %conv85, 12, !dbg !5246
  %conv87 = trunc i64 %add86 to i32, !dbg !5245
  %call88 = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %conv87, ptr noundef %notify_length) #7, !dbg !5247
  %69 = load ptr, ptr %pci_dev, align 8, !dbg !5248
  %70 = load i32, ptr %notify, align 4, !dbg !5249
  %conv89 = sext i32 %70 to i64, !dbg !5249
  %add90 = add i64 %conv89, 8, !dbg !5250
  %conv91 = trunc i64 %add90 to i32, !dbg !5249
  %call92 = call i32 @pci_read_config_dword(ptr noundef %69, i32 noundef %conv91, ptr noundef %notify_offset) #7, !dbg !5251
  %71 = load i32, ptr %notify_length, align 4, !dbg !5252
  %conv93 = zext i32 %71 to i64, !dbg !5254
  %72 = load i32, ptr %notify_offset, align 4, !dbg !5255
  %conv94 = zext i32 %72 to i64, !dbg !5255
  %rem = urem i64 %conv94, 4096, !dbg !5256
  %add95 = add i64 %conv93, %rem, !dbg !5257
  %cmp96 = icmp ule i64 %add95, 4096, !dbg !5258
  br i1 %cmp96, label %if.then98, label %if.else104, !dbg !5259

if.then98:                                        ; preds = %if.end81
  %73 = load ptr, ptr %mdev.addr, align 8, !dbg !5260
  %74 = load i32, ptr %notify, align 4, !dbg !5262
  %75 = load i32, ptr %notify_length, align 4, !dbg !5263
  %76 = load ptr, ptr %mdev.addr, align 8, !dbg !5264
  %notify_len = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %76, i32 0, i32 6, !dbg !5265
  %77 = load ptr, ptr %mdev.addr, align 8, !dbg !5266
  %notify_pa = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %77, i32 0, i32 4, !dbg !5267
  %call99 = call ptr @vp_modern_map_capability(ptr noundef %73, i32 noundef %74, i64 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef %75, ptr noundef %notify_len, ptr noundef %notify_pa) #7, !dbg !5268
  %78 = load ptr, ptr %mdev.addr, align 8, !dbg !5269
  %notify_base = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %78, i32 0, i32 3, !dbg !5270
  store ptr %call99, ptr %notify_base, align 8, !dbg !5271
  %79 = load ptr, ptr %mdev.addr, align 8, !dbg !5272
  %notify_base100 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %79, i32 0, i32 3, !dbg !5274
  %80 = load ptr, ptr %notify_base100, align 8, !dbg !5274
  %tobool101 = icmp ne ptr %80, null, !dbg !5272
  br i1 %tobool101, label %if.end103, label %if.then102, !dbg !5275

if.then102:                                       ; preds = %if.then98
  br label %err_map_notify, !dbg !5276

if.end103:                                        ; preds = %if.then98
  br label %if.end105, !dbg !5277

if.else104:                                       ; preds = %if.end81
  %81 = load i32, ptr %notify, align 4, !dbg !5278
  %82 = load ptr, ptr %mdev.addr, align 8, !dbg !5280
  %notify_map_cap = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %82, i32 0, i32 8, !dbg !5281
  store i32 %81, ptr %notify_map_cap, align 8, !dbg !5282
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.end103
  %83 = load i32, ptr %device, align 4, !dbg !5283
  %tobool106 = icmp ne i32 %83, 0, !dbg !5283
  br i1 %tobool106, label %if.then107, label %if.end114, !dbg !5285

if.then107:                                       ; preds = %if.end105
  %84 = load ptr, ptr %mdev.addr, align 8, !dbg !5286
  %85 = load i32, ptr %device, align 4, !dbg !5288
  %86 = load ptr, ptr %mdev.addr, align 8, !dbg !5289
  %device_len = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %86, i32 0, i32 7, !dbg !5290
  %call108 = call ptr @vp_modern_map_capability(ptr noundef %84, i32 noundef %85, i64 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 4096, ptr noundef %device_len, ptr noundef null) #7, !dbg !5291
  %87 = load ptr, ptr %mdev.addr, align 8, !dbg !5292
  %device109 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %87, i32 0, i32 2, !dbg !5293
  store ptr %call108, ptr %device109, align 8, !dbg !5294
  %88 = load ptr, ptr %mdev.addr, align 8, !dbg !5295
  %device110 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %88, i32 0, i32 2, !dbg !5297
  %89 = load ptr, ptr %device110, align 8, !dbg !5297
  %tobool111 = icmp ne ptr %89, null, !dbg !5295
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !5298

if.then112:                                       ; preds = %if.then107
  br label %err_map_device, !dbg !5299

if.end113:                                        ; preds = %if.then107
  br label %if.end114, !dbg !5300

if.end114:                                        ; preds = %if.end113, %if.end105
  store i32 0, ptr %retval, align 4, !dbg !5301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5301

err_map_device:                                   ; preds = %if.then112
  call void @llvm.dbg.label(metadata !5062), !dbg !5302
  %90 = load ptr, ptr %mdev.addr, align 8, !dbg !5303
  %notify_base115 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %90, i32 0, i32 3, !dbg !5305
  %91 = load ptr, ptr %notify_base115, align 8, !dbg !5305
  %tobool116 = icmp ne ptr %91, null, !dbg !5303
  br i1 %tobool116, label %if.then117, label %if.end119, !dbg !5306

if.then117:                                       ; preds = %err_map_device
  %92 = load ptr, ptr %pci_dev, align 8, !dbg !5307
  %93 = load ptr, ptr %mdev.addr, align 8, !dbg !5308
  %notify_base118 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %93, i32 0, i32 3, !dbg !5309
  %94 = load ptr, ptr %notify_base118, align 8, !dbg !5309
  call void @pci_iounmap(ptr noundef %92, ptr noundef %94) #7, !dbg !5310
  br label %if.end119, !dbg !5310

if.end119:                                        ; preds = %if.then117, %err_map_device
  br label %err_map_notify, !dbg !5305

err_map_notify:                                   ; preds = %if.end119, %if.then102
  call void @llvm.dbg.label(metadata !5063), !dbg !5311
  %95 = load ptr, ptr %pci_dev, align 8, !dbg !5312
  %96 = load ptr, ptr %mdev.addr, align 8, !dbg !5313
  %isr120 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %96, i32 0, i32 5, !dbg !5314
  %97 = load ptr, ptr %isr120, align 8, !dbg !5314
  call void @pci_iounmap(ptr noundef %95, ptr noundef %97) #7, !dbg !5315
  br label %err_map_isr, !dbg !5315

err_map_isr:                                      ; preds = %err_map_notify, %if.then80
  call void @llvm.dbg.label(metadata !5064), !dbg !5316
  %98 = load ptr, ptr %pci_dev, align 8, !dbg !5317
  %99 = load ptr, ptr %mdev.addr, align 8, !dbg !5318
  %common121 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %99, i32 0, i32 1, !dbg !5319
  %100 = load ptr, ptr %common121, align 8, !dbg !5319
  call void @pci_iounmap(ptr noundef %98, ptr noundef %100) #7, !dbg !5320
  br label %err_map_common, !dbg !5320

err_map_common:                                   ; preds = %err_map_isr, %if.then74
  call void @llvm.dbg.label(metadata !5065), !dbg !5321
  %101 = load ptr, ptr %pci_dev, align 8, !dbg !5322
  %102 = load ptr, ptr %mdev.addr, align 8, !dbg !5323
  %modern_bars122 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %102, i32 0, i32 10, !dbg !5324
  %103 = load i32, ptr %modern_bars122, align 8, !dbg !5324
  call void @pci_release_selected_regions(ptr noundef %101, i32 noundef %103) #7, !dbg !5325
  %104 = load i32, ptr %err, align 4, !dbg !5326
  store i32 %104, ptr %retval, align 4, !dbg !5327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5327

cleanup:                                          ; preds = %err_map_common, %if.end114, %if.then68, %do.end45, %do.end, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %devid) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %notify_offset) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %notify_length) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %device) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %notify) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %isr) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %common) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #6, !dbg !5328
  %105 = load i32, ptr %retval, align 4, !dbg !5328
  ret i32 %105, !dbg !5328
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_offsets() #3 align 16 !dbg !5329 {
entry:
  br label %do.body, !dbg !5330

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5331

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5333

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5334

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !5336

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !5337

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !5339

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !5340

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5342

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5343

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !5345

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5346

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !5348

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !5349

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !5351

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5352

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !5354

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5355

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !5357

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5358

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !5360

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5361

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !5363

do.body21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !5364

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !5366

do.body23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5367

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !5369

do.body25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !5370

do.end26:                                         ; preds = %do.body25
  br label %do.body27, !dbg !5372

do.body27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !5373

do.end28:                                         ; preds = %do.body27
  br label %do.body29, !dbg !5375

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !5376

do.end30:                                         ; preds = %do.body29
  br label %do.body31, !dbg !5378

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !5379

do.end32:                                         ; preds = %do.body31
  br label %do.body33, !dbg !5381

do.body33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !5382

do.end34:                                         ; preds = %do.body33
  br label %do.body35, !dbg !5384

do.body35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5385

do.end36:                                         ; preds = %do.body35
  br label %do.body37, !dbg !5387

do.body37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !5388

do.end38:                                         ; preds = %do.body37
  br label %do.body39, !dbg !5390

do.body39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !5391

do.end40:                                         ; preds = %do.body39
  br label %do.body41, !dbg !5393

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !5394

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !5396

do.body43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !5397

do.end44:                                         ; preds = %do.body43
  br label %do.body45, !dbg !5399

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5400

do.end46:                                         ; preds = %do.body45
  br label %do.body47, !dbg !5402

do.body47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !5403

do.end48:                                         ; preds = %do.body47
  br label %do.body49, !dbg !5405

do.body49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !5406

do.end50:                                         ; preds = %do.body49
  br label %do.body51, !dbg !5408

do.body51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !5409

do.end52:                                         ; preds = %do.body51
  ret void, !dbg !5411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_pci_find_capability(ptr noundef %dev, i8 noundef zeroext %cfg_type, i32 noundef %ioresource_types, ptr noundef %bars) #3 align 16 !dbg !5412 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %cfg_type.addr = alloca i8, align 1
  %ioresource_types.addr = alloca i32, align 4
  %bars.addr = alloca ptr, align 8
  %pos = alloca i32, align 4
  %type = alloca i8, align 1
  %bar = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5416, metadata !DIExpression()), !dbg !5426
  store i8 %cfg_type, ptr %cfg_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cfg_type.addr, metadata !5417, metadata !DIExpression()), !dbg !5427
  store i32 %ioresource_types, ptr %ioresource_types.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ioresource_types.addr, metadata !5418, metadata !DIExpression()), !dbg !5428
  store ptr %bars, ptr %bars.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bars.addr, metadata !5419, metadata !DIExpression()), !dbg !5429
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6, !dbg !5430
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5420, metadata !DIExpression()), !dbg !5431
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5432
  %call = call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 9) #7, !dbg !5433
  %conv = zext i8 %call to i32, !dbg !5433
  store i32 %conv, ptr %pos, align 4, !dbg !5434
  br label %for.cond, !dbg !5435

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %pos, align 4, !dbg !5436
  %cmp = icmp sgt i32 %1, 0, !dbg !5437
  br i1 %cmp, label %for.body, label %for.end, !dbg !5438

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #6, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5421, metadata !DIExpression()), !dbg !5440
  call void @llvm.lifetime.start.p0(i64 1, ptr %bar) #6, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %bar, metadata !5425, metadata !DIExpression()), !dbg !5441
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5442
  %3 = load i32, ptr %pos, align 4, !dbg !5443
  %conv2 = sext i32 %3 to i64, !dbg !5443
  %add = add i64 %conv2, 3, !dbg !5444
  %conv3 = trunc i64 %add to i32, !dbg !5443
  %call4 = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef %conv3, ptr noundef %type) #7, !dbg !5445
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5446
  %5 = load i32, ptr %pos, align 4, !dbg !5447
  %conv5 = sext i32 %5 to i64, !dbg !5447
  %add6 = add i64 %conv5, 4, !dbg !5448
  %conv7 = trunc i64 %add6 to i32, !dbg !5447
  %call8 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef %conv7, ptr noundef %bar) #7, !dbg !5449
  %6 = load i8, ptr %bar, align 1, !dbg !5450
  %conv9 = zext i8 %6 to i32, !dbg !5450
  %cmp10 = icmp sge i32 %conv9, 6, !dbg !5452
  br i1 %cmp10, label %if.then, label %if.end, !dbg !5453

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5454

if.end:                                           ; preds = %for.body
  %7 = load i8, ptr %type, align 1, !dbg !5455
  %conv12 = zext i8 %7 to i32, !dbg !5455
  %8 = load i8, ptr %cfg_type.addr, align 1, !dbg !5457
  %conv13 = zext i8 %8 to i32, !dbg !5457
  %cmp14 = icmp eq i32 %conv12, %conv13, !dbg !5458
  br i1 %cmp14, label %if.then16, label %if.end30, !dbg !5459

if.then16:                                        ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5460
  %resource = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 40, !dbg !5460
  %10 = load i8, ptr %bar, align 1, !dbg !5460
  %idxprom = zext i8 %10 to i64, !dbg !5460
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5460
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1, !dbg !5460
  %11 = load i64, ptr %end, align 8, !dbg !5460
  %tobool = icmp ne i64 %11, 0, !dbg !5460
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5463

cond.true:                                        ; preds = %if.then16
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5460
  %resource17 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 40, !dbg !5460
  %13 = load i8, ptr %bar, align 1, !dbg !5460
  %idxprom18 = zext i8 %13 to i64, !dbg !5460
  %arrayidx19 = getelementptr [11 x %struct.resource], ptr %resource17, i64 0, i64 %idxprom18, !dbg !5460
  %call20 = call i64 @resource_size(ptr noundef %arrayidx19) #7, !dbg !5460
  %tobool21 = icmp ne i64 %call20, 0, !dbg !5460
  br i1 %tobool21, label %land.lhs.true, label %if.end29, !dbg !5460

cond.false:                                       ; preds = %if.then16
  br i1 false, label %land.lhs.true, label %if.end29, !dbg !5463

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5464
  %resource22 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 40, !dbg !5464
  %15 = load i8, ptr %bar, align 1, !dbg !5464
  %idxprom23 = zext i8 %15 to i64, !dbg !5464
  %arrayidx24 = getelementptr [11 x %struct.resource], ptr %resource22, i64 0, i64 %idxprom23, !dbg !5464
  %flags = getelementptr inbounds %struct.resource, ptr %arrayidx24, i32 0, i32 3, !dbg !5464
  %16 = load i64, ptr %flags, align 8, !dbg !5464
  %17 = load i32, ptr %ioresource_types.addr, align 4, !dbg !5465
  %conv25 = zext i32 %17 to i64, !dbg !5465
  %and = and i64 %16, %conv25, !dbg !5466
  %tobool26 = icmp ne i64 %and, 0, !dbg !5466
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !5467

if.then27:                                        ; preds = %land.lhs.true
  %18 = load i8, ptr %bar, align 1, !dbg !5468
  %conv28 = zext i8 %18 to i32, !dbg !5468
  %shl = shl i32 1, %conv28, !dbg !5470
  %19 = load ptr, ptr %bars.addr, align 8, !dbg !5471
  %20 = load i32, ptr %19, align 4, !dbg !5472
  %or = or i32 %20, %shl, !dbg !5472
  store i32 %or, ptr %19, align 4, !dbg !5472
  %21 = load i32, ptr %pos, align 4, !dbg !5473
  store i32 %21, ptr %retval, align 4, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end29:                                         ; preds = %land.lhs.true, %cond.false, %cond.true
  br label %if.end30, !dbg !5475

if.end30:                                         ; preds = %if.end29, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5476
  br label %cleanup, !dbg !5476

cleanup:                                          ; preds = %if.end30, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bar) #6, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #6, !dbg !5476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5477

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5478
  %23 = load i32, ptr %pos, align 4, !dbg !5479
  %conv32 = trunc i32 %23 to i8, !dbg !5479
  %call33 = call zeroext i8 @pci_find_next_capability(ptr noundef %22, i8 noundef zeroext %conv32, i32 noundef 9) #7, !dbg !5480
  %conv34 = zext i8 %call33 to i32, !dbg !5480
  store i32 %conv34, ptr %pos, align 4, !dbg !5481
  br label %for.cond, !dbg !5482, !llvm.loop !5483

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !5487

cleanup35:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6, !dbg !5488
  %24 = load i32, ptr %retval, align 4, !dbg !5488
  ret i32 %24, !dbg !5488
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5489 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5493 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) #3 align 16 !dbg !5494 {
entry:
  %dev.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5499, metadata !DIExpression()), !dbg !5502
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5500, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #6, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5501, metadata !DIExpression()), !dbg !5505
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5506
  %1 = load i64, ptr %mask.addr, align 8, !dbg !5507
  %call = call i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #7, !dbg !5508
  store i32 %call, ptr %rc, align 4, !dbg !5505
  %2 = load i32, ptr %rc, align 4, !dbg !5509
  %cmp = icmp eq i32 %2, 0, !dbg !5511
  br i1 %cmp, label %if.then, label %if.end, !dbg !5512

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5513
  %4 = load i64, ptr %mask.addr, align 8, !dbg !5514
  %call1 = call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %4) #7, !dbg !5515
  br label %if.end, !dbg !5515

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #6, !dbg !5517
  ret i32 %5, !dbg !5518
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5519 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5520 dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vp_modern_map_capability(ptr noundef %mdev, i32 noundef %off, i64 noundef %minlen, i32 noundef %align, i32 noundef %start, i32 noundef %size, ptr noundef %len, ptr noundef %pa) #0 align 16 !dbg !5523 {
entry:
  %retval = alloca ptr, align 8
  %mdev.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  %minlen.addr = alloca i64, align 8
  %align.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %len.addr = alloca ptr, align 8
  %pa.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %bar = alloca i8, align 1
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5529, metadata !DIExpression()), !dbg !5542
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5530, metadata !DIExpression()), !dbg !5543
  store i64 %minlen, ptr %minlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %minlen.addr, metadata !5531, metadata !DIExpression()), !dbg !5544
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5532, metadata !DIExpression()), !dbg !5545
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5533, metadata !DIExpression()), !dbg !5546
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5534, metadata !DIExpression()), !dbg !5547
  store ptr %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5535, metadata !DIExpression()), !dbg !5548
  store ptr %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !5536, metadata !DIExpression()), !dbg !5549
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #6, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5537, metadata !DIExpression()), !dbg !5551
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5552
  %pci_dev = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 0, !dbg !5553
  %1 = load ptr, ptr %pci_dev, align 8, !dbg !5553
  store ptr %1, ptr %dev, align 8, !dbg !5551
  call void @llvm.lifetime.start.p0(i64 1, ptr %bar) #6, !dbg !5554
  call void @llvm.dbg.declare(metadata ptr %bar, metadata !5538, metadata !DIExpression()), !dbg !5555
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #6, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5539, metadata !DIExpression()), !dbg !5557
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #6, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %length, metadata !5540, metadata !DIExpression()), !dbg !5558
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !5559
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5541, metadata !DIExpression()), !dbg !5560
  %2 = load ptr, ptr %dev, align 8, !dbg !5561
  %3 = load i32, ptr %off.addr, align 4, !dbg !5562
  %conv = sext i32 %3 to i64, !dbg !5562
  %add = add i64 %conv, 4, !dbg !5563
  %conv1 = trunc i64 %add to i32, !dbg !5562
  %call = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef %conv1, ptr noundef %bar) #7, !dbg !5564
  %4 = load ptr, ptr %dev, align 8, !dbg !5565
  %5 = load i32, ptr %off.addr, align 4, !dbg !5566
  %conv2 = sext i32 %5 to i64, !dbg !5566
  %add3 = add i64 %conv2, 8, !dbg !5567
  %conv4 = trunc i64 %add3 to i32, !dbg !5566
  %call5 = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %conv4, ptr noundef %offset) #7, !dbg !5568
  %6 = load ptr, ptr %dev, align 8, !dbg !5569
  %7 = load i32, ptr %off.addr, align 4, !dbg !5570
  %conv6 = sext i32 %7 to i64, !dbg !5570
  %add7 = add i64 %conv6, 12, !dbg !5571
  %conv8 = trunc i64 %add7 to i32, !dbg !5570
  %call9 = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %conv8, ptr noundef %length) #7, !dbg !5572
  %8 = load i8, ptr %bar, align 1, !dbg !5573
  %conv10 = zext i8 %8 to i32, !dbg !5573
  %cmp = icmp sge i32 %conv10, 6, !dbg !5575
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5576

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %mdev.addr, align 8, !dbg !5577
  %modern_bars = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %9, i32 0, i32 10, !dbg !5578
  %10 = load i32, ptr %modern_bars, align 8, !dbg !5578
  %11 = load i8, ptr %bar, align 1, !dbg !5579
  %conv12 = zext i8 %11 to i32, !dbg !5579
  %shl = shl i32 1, %conv12, !dbg !5580
  %and = and i32 %10, %shl, !dbg !5581
  %tobool = icmp ne i32 %and, 0, !dbg !5581
  br i1 %tobool, label %if.end, label %if.then, !dbg !5582

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !5583

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5586

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5586

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %dev, align 8, !dbg !5583
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !5583
  %13 = load i8, ptr %bar, align 1, !dbg !5583
  %conv14 = zext i8 %13 to i32, !dbg !5583
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef @.str.8, i32 noundef %conv14) #8, !dbg !5583
  store ptr null, ptr %retval, align 8, !dbg !5588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5588

if.end:                                           ; preds = %lor.lhs.false
  %14 = load i32, ptr %length, align 4, !dbg !5589
  %15 = load i32, ptr %start.addr, align 4, !dbg !5591
  %cmp15 = icmp ule i32 %14, %15, !dbg !5592
  br i1 %cmp15, label %if.then17, label %if.end22, !dbg !5593

if.then17:                                        ; preds = %if.end
  br label %do.body18, !dbg !5594

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !5597

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5597

do.end20:                                         ; preds = %do.cond19
  %16 = load ptr, ptr %dev, align 8, !dbg !5594
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !5594
  %17 = load i32, ptr %length, align 4, !dbg !5594
  %18 = load i32, ptr %start.addr, align 4, !dbg !5594
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef @.str.9, i32 noundef %17, i32 noundef %18) #8, !dbg !5594
  store ptr null, ptr %retval, align 8, !dbg !5599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5599

if.end22:                                         ; preds = %if.end
  %19 = load i32, ptr %length, align 4, !dbg !5600
  %20 = load i32, ptr %start.addr, align 4, !dbg !5602
  %sub = sub i32 %19, %20, !dbg !5603
  %conv23 = zext i32 %sub to i64, !dbg !5600
  %21 = load i64, ptr %minlen.addr, align 8, !dbg !5604
  %cmp24 = icmp ult i64 %conv23, %21, !dbg !5605
  br i1 %cmp24, label %if.then26, label %if.end31, !dbg !5606

if.then26:                                        ; preds = %if.end22
  br label %do.body27, !dbg !5607

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !5610

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5610

do.end29:                                         ; preds = %do.cond28
  %22 = load ptr, ptr %dev, align 8, !dbg !5607
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 37, !dbg !5607
  %23 = load i32, ptr %length, align 4, !dbg !5607
  %24 = load i64, ptr %minlen.addr, align 8, !dbg !5607
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef @.str.10, i32 noundef %23, i64 noundef %24) #8, !dbg !5607
  store ptr null, ptr %retval, align 8, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

if.end31:                                         ; preds = %if.end22
  %25 = load i32, ptr %start.addr, align 4, !dbg !5613
  %26 = load i32, ptr %length, align 4, !dbg !5614
  %sub32 = sub i32 %26, %25, !dbg !5614
  store i32 %sub32, ptr %length, align 4, !dbg !5614
  %27 = load i32, ptr %start.addr, align 4, !dbg !5615
  %28 = load i32, ptr %offset, align 4, !dbg !5617
  %add33 = add i32 %27, %28, !dbg !5618
  %29 = load i32, ptr %offset, align 4, !dbg !5619
  %cmp34 = icmp ult i32 %add33, %29, !dbg !5620
  br i1 %cmp34, label %if.then36, label %if.end41, !dbg !5621

if.then36:                                        ; preds = %if.end31
  br label %do.body37, !dbg !5622

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !5625

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5625

do.end39:                                         ; preds = %do.cond38
  %30 = load ptr, ptr %dev, align 8, !dbg !5622
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 37, !dbg !5622
  %31 = load i32, ptr %start.addr, align 4, !dbg !5622
  %32 = load i32, ptr %offset, align 4, !dbg !5622
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef @.str.11, i32 noundef %31, i32 noundef %32) #8, !dbg !5622
  store ptr null, ptr %retval, align 8, !dbg !5627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5627

if.end41:                                         ; preds = %if.end31
  %33 = load i32, ptr %start.addr, align 4, !dbg !5628
  %34 = load i32, ptr %offset, align 4, !dbg !5629
  %add42 = add i32 %34, %33, !dbg !5629
  store i32 %add42, ptr %offset, align 4, !dbg !5629
  %35 = load i32, ptr %offset, align 4, !dbg !5630
  %36 = load i32, ptr %align.addr, align 4, !dbg !5632
  %sub43 = sub i32 %36, 1, !dbg !5633
  %and44 = and i32 %35, %sub43, !dbg !5634
  %tobool45 = icmp ne i32 %and44, 0, !dbg !5634
  br i1 %tobool45, label %if.then46, label %if.end51, !dbg !5635

if.then46:                                        ; preds = %if.end41
  br label %do.body47, !dbg !5636

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !5639

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5639

do.end49:                                         ; preds = %do.cond48
  %37 = load ptr, ptr %dev, align 8, !dbg !5636
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 37, !dbg !5636
  %38 = load i32, ptr %offset, align 4, !dbg !5636
  %39 = load i32, ptr %align.addr, align 4, !dbg !5636
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef @.str.12, i32 noundef %38, i32 noundef %39) #8, !dbg !5636
  store ptr null, ptr %retval, align 8, !dbg !5641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5641

if.end51:                                         ; preds = %if.end41
  %40 = load i32, ptr %length, align 4, !dbg !5642
  %41 = load i32, ptr %size.addr, align 4, !dbg !5644
  %cmp52 = icmp ugt i32 %40, %41, !dbg !5645
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !5646

if.then54:                                        ; preds = %if.end51
  %42 = load i32, ptr %size.addr, align 4, !dbg !5647
  store i32 %42, ptr %length, align 4, !dbg !5648
  br label %if.end55, !dbg !5649

if.end55:                                         ; preds = %if.then54, %if.end51
  %43 = load ptr, ptr %len.addr, align 8, !dbg !5650
  %tobool56 = icmp ne ptr %43, null, !dbg !5650
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !5652

if.then57:                                        ; preds = %if.end55
  %44 = load i32, ptr %length, align 4, !dbg !5653
  %conv58 = zext i32 %44 to i64, !dbg !5653
  %45 = load ptr, ptr %len.addr, align 8, !dbg !5654
  store i64 %conv58, ptr %45, align 8, !dbg !5655
  br label %if.end59, !dbg !5656

if.end59:                                         ; preds = %if.then57, %if.end55
  %46 = load i64, ptr %minlen.addr, align 8, !dbg !5657
  %47 = load i32, ptr %offset, align 4, !dbg !5659
  %conv60 = zext i32 %47 to i64, !dbg !5659
  %add61 = add i64 %46, %conv60, !dbg !5660
  %48 = load i64, ptr %minlen.addr, align 8, !dbg !5661
  %cmp62 = icmp ult i64 %add61, %48, !dbg !5662
  br i1 %cmp62, label %if.then74, label %lor.lhs.false64, !dbg !5663

lor.lhs.false64:                                  ; preds = %if.end59
  %49 = load i64, ptr %minlen.addr, align 8, !dbg !5664
  %50 = load i32, ptr %offset, align 4, !dbg !5665
  %conv65 = zext i32 %50 to i64, !dbg !5665
  %add66 = add i64 %49, %conv65, !dbg !5666
  %51 = load ptr, ptr %dev, align 8, !dbg !5667
  %resource = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 40, !dbg !5667
  %52 = load i8, ptr %bar, align 1, !dbg !5667
  %idxprom = zext i8 %52 to i64, !dbg !5667
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5667
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1, !dbg !5667
  %53 = load i64, ptr %end, align 8, !dbg !5667
  %tobool67 = icmp ne i64 %53, 0, !dbg !5667
  br i1 %tobool67, label %cond.true, label %cond.false, !dbg !5667

cond.true:                                        ; preds = %lor.lhs.false64
  %54 = load ptr, ptr %dev, align 8, !dbg !5667
  %resource68 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 40, !dbg !5667
  %55 = load i8, ptr %bar, align 1, !dbg !5667
  %idxprom69 = zext i8 %55 to i64, !dbg !5667
  %arrayidx70 = getelementptr [11 x %struct.resource], ptr %resource68, i64 0, i64 %idxprom69, !dbg !5667
  %call71 = call i64 @resource_size(ptr noundef %arrayidx70) #7, !dbg !5667
  br label %cond.end, !dbg !5667

cond.false:                                       ; preds = %lor.lhs.false64
  br label %cond.end, !dbg !5667

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call71, %cond.true ], [ 0, %cond.false ], !dbg !5667
  %cmp72 = icmp ugt i64 %add66, %cond, !dbg !5668
  br i1 %cmp72, label %if.then74, label %if.end93, !dbg !5669

if.then74:                                        ; preds = %cond.end, %if.end59
  br label %do.body75, !dbg !5670

do.body75:                                        ; preds = %if.then74
  br label %do.cond76, !dbg !5673

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !5673

do.end77:                                         ; preds = %do.cond76
  %56 = load ptr, ptr %dev, align 8, !dbg !5670
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 37, !dbg !5670
  %57 = load i64, ptr %minlen.addr, align 8, !dbg !5670
  %58 = load i32, ptr %offset, align 4, !dbg !5670
  %59 = load i8, ptr %bar, align 1, !dbg !5670
  %conv79 = zext i8 %59 to i32, !dbg !5670
  %60 = load ptr, ptr %dev, align 8, !dbg !5670
  %resource80 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 40, !dbg !5670
  %61 = load i8, ptr %bar, align 1, !dbg !5670
  %idxprom81 = zext i8 %61 to i64, !dbg !5670
  %arrayidx82 = getelementptr [11 x %struct.resource], ptr %resource80, i64 0, i64 %idxprom81, !dbg !5670
  %end83 = getelementptr inbounds %struct.resource, ptr %arrayidx82, i32 0, i32 1, !dbg !5670
  %62 = load i64, ptr %end83, align 8, !dbg !5670
  %tobool84 = icmp ne i64 %62, 0, !dbg !5670
  br i1 %tobool84, label %cond.true85, label %cond.false90, !dbg !5670

cond.true85:                                      ; preds = %do.end77
  %63 = load ptr, ptr %dev, align 8, !dbg !5670
  %resource86 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 40, !dbg !5670
  %64 = load i8, ptr %bar, align 1, !dbg !5670
  %idxprom87 = zext i8 %64 to i64, !dbg !5670
  %arrayidx88 = getelementptr [11 x %struct.resource], ptr %resource86, i64 0, i64 %idxprom87, !dbg !5670
  %call89 = call i64 @resource_size(ptr noundef %arrayidx88) #7, !dbg !5670
  br label %cond.end91, !dbg !5670

cond.false90:                                     ; preds = %do.end77
  br label %cond.end91, !dbg !5670

cond.end91:                                       ; preds = %cond.false90, %cond.true85
  %cond92 = phi i64 [ %call89, %cond.true85 ], [ 0, %cond.false90 ], !dbg !5670
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef @.str.13, i64 noundef %57, i32 noundef %58, i32 noundef %conv79, i64 noundef %cond92) #8, !dbg !5670
  store ptr null, ptr %retval, align 8, !dbg !5675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5675

if.end93:                                         ; preds = %cond.end
  %65 = load ptr, ptr %dev, align 8, !dbg !5676
  %66 = load i8, ptr %bar, align 1, !dbg !5677
  %conv94 = zext i8 %66 to i32, !dbg !5677
  %67 = load i32, ptr %offset, align 4, !dbg !5678
  %conv95 = zext i32 %67 to i64, !dbg !5678
  %68 = load i32, ptr %length, align 4, !dbg !5679
  %conv96 = zext i32 %68 to i64, !dbg !5679
  %call97 = call ptr @pci_iomap_range(ptr noundef %65, i32 noundef %conv94, i64 noundef %conv95, i64 noundef %conv96) #7, !dbg !5680
  store ptr %call97, ptr %p, align 8, !dbg !5681
  %69 = load ptr, ptr %p, align 8, !dbg !5682
  %tobool98 = icmp ne ptr %69, null, !dbg !5682
  br i1 %tobool98, label %if.else, label %if.then99, !dbg !5684

if.then99:                                        ; preds = %if.end93
  br label %do.body100, !dbg !5685

do.body100:                                       ; preds = %if.then99
  br label %do.cond101, !dbg !5687

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !5687

do.end102:                                        ; preds = %do.cond101
  %70 = load ptr, ptr %dev, align 8, !dbg !5685
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 37, !dbg !5685
  %71 = load i32, ptr %length, align 4, !dbg !5685
  %72 = load i32, ptr %offset, align 4, !dbg !5685
  %73 = load i8, ptr %bar, align 1, !dbg !5685
  %conv104 = zext i8 %73 to i32, !dbg !5685
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev103, ptr noundef @.str.14, i32 noundef %71, i32 noundef %72, i32 noundef %conv104) #8, !dbg !5685
  br label %if.end114, !dbg !5689

if.else:                                          ; preds = %if.end93
  %74 = load ptr, ptr %pa.addr, align 8, !dbg !5690
  %tobool105 = icmp ne ptr %74, null, !dbg !5690
  br i1 %tobool105, label %if.then106, label %if.end113, !dbg !5692

if.then106:                                       ; preds = %if.else
  %75 = load ptr, ptr %dev, align 8, !dbg !5693
  %resource107 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 40, !dbg !5693
  %76 = load i8, ptr %bar, align 1, !dbg !5693
  %idxprom108 = zext i8 %76 to i64, !dbg !5693
  %arrayidx109 = getelementptr [11 x %struct.resource], ptr %resource107, i64 0, i64 %idxprom108, !dbg !5693
  %start110 = getelementptr inbounds %struct.resource, ptr %arrayidx109, i32 0, i32 0, !dbg !5693
  %77 = load i64, ptr %start110, align 8, !dbg !5693
  %78 = load i32, ptr %offset, align 4, !dbg !5694
  %conv111 = zext i32 %78 to i64, !dbg !5694
  %add112 = add i64 %77, %conv111, !dbg !5695
  %79 = load ptr, ptr %pa.addr, align 8, !dbg !5696
  store i64 %add112, ptr %79, align 8, !dbg !5697
  br label %if.end113, !dbg !5698

if.end113:                                        ; preds = %if.then106, %if.else
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %do.end102
  %80 = load ptr, ptr %p, align 8, !dbg !5699
  store ptr %80, ptr %retval, align 8, !dbg !5700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5700

cleanup:                                          ; preds = %if.end114, %cond.end91, %do.end49, %do.end39, %do.end29, %do.end20, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #6, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #6, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 1, ptr %bar) #6, !dbg !5701
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #6, !dbg !5701
  %81 = load ptr, ptr %retval, align 8, !dbg !5701
  ret ptr %81, !dbg !5701
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5702 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5707 dso_local void @pci_iounmap(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5711 dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_remove(ptr noundef %mdev) #0 align 16 !dbg !5714 {
entry:
  %mdev.addr = alloca ptr, align 8
  %pci_dev = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5718, metadata !DIExpression()), !dbg !5720
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_dev) #6, !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %pci_dev, metadata !5719, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5723
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 0, !dbg !5724
  %1 = load ptr, ptr %pci_dev1, align 8, !dbg !5724
  store ptr %1, ptr %pci_dev, align 8, !dbg !5722
  %2 = load ptr, ptr %mdev.addr, align 8, !dbg !5725
  %device = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %2, i32 0, i32 2, !dbg !5727
  %3 = load ptr, ptr %device, align 8, !dbg !5727
  %tobool = icmp ne ptr %3, null, !dbg !5725
  br i1 %tobool, label %if.then, label %if.end, !dbg !5728

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pci_dev, align 8, !dbg !5729
  %5 = load ptr, ptr %mdev.addr, align 8, !dbg !5730
  %device2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %5, i32 0, i32 2, !dbg !5731
  %6 = load ptr, ptr %device2, align 8, !dbg !5731
  call void @pci_iounmap(ptr noundef %4, ptr noundef %6) #7, !dbg !5732
  br label %if.end, !dbg !5732

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %mdev.addr, align 8, !dbg !5733
  %notify_base = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %7, i32 0, i32 3, !dbg !5735
  %8 = load ptr, ptr %notify_base, align 8, !dbg !5735
  %tobool3 = icmp ne ptr %8, null, !dbg !5733
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5736

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pci_dev, align 8, !dbg !5737
  %10 = load ptr, ptr %mdev.addr, align 8, !dbg !5738
  %notify_base5 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %10, i32 0, i32 3, !dbg !5739
  %11 = load ptr, ptr %notify_base5, align 8, !dbg !5739
  call void @pci_iounmap(ptr noundef %9, ptr noundef %11) #7, !dbg !5740
  br label %if.end6, !dbg !5740

if.end6:                                          ; preds = %if.then4, %if.end
  %12 = load ptr, ptr %pci_dev, align 8, !dbg !5741
  %13 = load ptr, ptr %mdev.addr, align 8, !dbg !5742
  %isr = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %13, i32 0, i32 5, !dbg !5743
  %14 = load ptr, ptr %isr, align 8, !dbg !5743
  call void @pci_iounmap(ptr noundef %12, ptr noundef %14) #7, !dbg !5744
  %15 = load ptr, ptr %pci_dev, align 8, !dbg !5745
  %16 = load ptr, ptr %mdev.addr, align 8, !dbg !5746
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %16, i32 0, i32 1, !dbg !5747
  %17 = load ptr, ptr %common, align 8, !dbg !5747
  call void @pci_iounmap(ptr noundef %15, ptr noundef %17) #7, !dbg !5748
  %18 = load ptr, ptr %pci_dev, align 8, !dbg !5749
  %19 = load ptr, ptr %mdev.addr, align 8, !dbg !5750
  %modern_bars = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %19, i32 0, i32 10, !dbg !5751
  %20 = load i32, ptr %modern_bars, align 8, !dbg !5751
  call void @pci_release_selected_regions(ptr noundef %18, i32 noundef %20) #7, !dbg !5752
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_dev) #6, !dbg !5753
  ret void, !dbg !5753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @vp_modern_get_features(ptr noundef %mdev) #0 align 16 !dbg !5754 {
entry:
  %mdev.addr = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %features = alloca i64, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5758, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5759, metadata !DIExpression()), !dbg !5763
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5764
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5765
  %1 = load ptr, ptr %common, align 8, !dbg !5765
  store ptr %1, ptr %cfg, align 8, !dbg !5763
  call void @llvm.lifetime.start.p0(i64 8, ptr %features) #6, !dbg !5766
  call void @llvm.dbg.declare(metadata ptr %features, metadata !5760, metadata !DIExpression()), !dbg !5767
  %2 = load ptr, ptr %cfg, align 8, !dbg !5768
  %device_feature_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 0, !dbg !5769
  call void @vp_iowrite32(i32 noundef 0, ptr noundef %device_feature_select) #7, !dbg !5770
  %3 = load ptr, ptr %cfg, align 8, !dbg !5771
  %device_feature = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 1, !dbg !5772
  %call = call i32 @vp_ioread32(ptr noundef %device_feature) #7, !dbg !5773
  %conv = zext i32 %call to i64, !dbg !5773
  store i64 %conv, ptr %features, align 8, !dbg !5774
  %4 = load ptr, ptr %cfg, align 8, !dbg !5775
  %device_feature_select1 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 0, !dbg !5776
  call void @vp_iowrite32(i32 noundef 1, ptr noundef %device_feature_select1) #7, !dbg !5777
  %5 = load ptr, ptr %cfg, align 8, !dbg !5778
  %device_feature2 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 1, !dbg !5779
  %call3 = call i32 @vp_ioread32(ptr noundef %device_feature2) #7, !dbg !5780
  %conv4 = zext i32 %call3 to i64, !dbg !5781
  %shl = shl i64 %conv4, 32, !dbg !5782
  %6 = load i64, ptr %features, align 8, !dbg !5783
  %or = or i64 %6, %shl, !dbg !5783
  store i64 %or, ptr %features, align 8, !dbg !5783
  %7 = load i64, ptr %features, align 8, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 8, ptr %features) #6, !dbg !5785
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5785
  ret i64 %7, !dbg !5786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_iowrite32(i32 noundef %value, ptr noundef %addr) #3 align 16 !dbg !5787 {
entry:
  %value.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5792, metadata !DIExpression()), !dbg !5794
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5793, metadata !DIExpression()), !dbg !5795
  %0 = load i32, ptr %value.addr, align 4, !dbg !5796
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5797
  call void @iowrite32(i32 noundef %0, ptr noundef %1) #7, !dbg !5798
  ret void, !dbg !5799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vp_ioread32(ptr noundef %addr) #3 align 16 !dbg !5800 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5808
  %call = call i32 @ioread32(ptr noundef %0) #7, !dbg !5809
  ret i32 %call, !dbg !5810
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @vp_modern_get_driver_features(ptr noundef %mdev) #0 align 16 !dbg !5811 {
entry:
  %mdev.addr = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  %features = alloca i64, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5813, metadata !DIExpression()), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5814, metadata !DIExpression()), !dbg !5818
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5819
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5820
  %1 = load ptr, ptr %common, align 8, !dbg !5820
  store ptr %1, ptr %cfg, align 8, !dbg !5818
  call void @llvm.lifetime.start.p0(i64 8, ptr %features) #6, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %features, metadata !5815, metadata !DIExpression()), !dbg !5822
  %2 = load ptr, ptr %cfg, align 8, !dbg !5823
  %guest_feature_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 2, !dbg !5824
  call void @vp_iowrite32(i32 noundef 0, ptr noundef %guest_feature_select) #7, !dbg !5825
  %3 = load ptr, ptr %cfg, align 8, !dbg !5826
  %guest_feature = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 3, !dbg !5827
  %call = call i32 @vp_ioread32(ptr noundef %guest_feature) #7, !dbg !5828
  %conv = zext i32 %call to i64, !dbg !5828
  store i64 %conv, ptr %features, align 8, !dbg !5829
  %4 = load ptr, ptr %cfg, align 8, !dbg !5830
  %guest_feature_select1 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 2, !dbg !5831
  call void @vp_iowrite32(i32 noundef 1, ptr noundef %guest_feature_select1) #7, !dbg !5832
  %5 = load ptr, ptr %cfg, align 8, !dbg !5833
  %guest_feature2 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 3, !dbg !5834
  %call3 = call i32 @vp_ioread32(ptr noundef %guest_feature2) #7, !dbg !5835
  %conv4 = zext i32 %call3 to i64, !dbg !5836
  %shl = shl i64 %conv4, 32, !dbg !5837
  %6 = load i64, ptr %features, align 8, !dbg !5838
  %or = or i64 %6, %shl, !dbg !5838
  store i64 %or, ptr %features, align 8, !dbg !5838
  %7 = load i64, ptr %features, align 8, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 8, ptr %features) #6, !dbg !5840
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5840
  ret i64 %7, !dbg !5841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_set_features(ptr noundef %mdev, i64 noundef %features) #0 align 16 !dbg !5842 {
entry:
  %mdev.addr = alloca ptr, align 8
  %features.addr = alloca i64, align 8
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5846, metadata !DIExpression()), !dbg !5849
  store i64 %features, ptr %features.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %features.addr, metadata !5847, metadata !DIExpression()), !dbg !5850
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5851
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5848, metadata !DIExpression()), !dbg !5852
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5853
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5854
  %1 = load ptr, ptr %common, align 8, !dbg !5854
  store ptr %1, ptr %cfg, align 8, !dbg !5852
  %2 = load ptr, ptr %cfg, align 8, !dbg !5855
  %guest_feature_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 2, !dbg !5856
  call void @vp_iowrite32(i32 noundef 0, ptr noundef %guest_feature_select) #7, !dbg !5857
  %3 = load i64, ptr %features.addr, align 8, !dbg !5858
  %conv = trunc i64 %3 to i32, !dbg !5859
  %4 = load ptr, ptr %cfg, align 8, !dbg !5860
  %guest_feature = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 3, !dbg !5861
  call void @vp_iowrite32(i32 noundef %conv, ptr noundef %guest_feature) #7, !dbg !5862
  %5 = load ptr, ptr %cfg, align 8, !dbg !5863
  %guest_feature_select1 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 2, !dbg !5864
  call void @vp_iowrite32(i32 noundef 1, ptr noundef %guest_feature_select1) #7, !dbg !5865
  %6 = load i64, ptr %features.addr, align 8, !dbg !5866
  %shr = lshr i64 %6, 32, !dbg !5867
  %conv2 = trunc i64 %shr to i32, !dbg !5866
  %7 = load ptr, ptr %cfg, align 8, !dbg !5868
  %guest_feature3 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 3, !dbg !5869
  call void @vp_iowrite32(i32 noundef %conv2, ptr noundef %guest_feature3) #7, !dbg !5870
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5871
  ret void, !dbg !5871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vp_modern_generation(ptr noundef %mdev) #0 align 16 !dbg !5872 {
entry:
  %mdev.addr = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5876, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5877, metadata !DIExpression()), !dbg !5880
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5881
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5882
  %1 = load ptr, ptr %common, align 8, !dbg !5882
  store ptr %1, ptr %cfg, align 8, !dbg !5880
  %2 = load ptr, ptr %cfg, align 8, !dbg !5883
  %config_generation = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 7, !dbg !5884
  %call = call zeroext i8 @vp_ioread8(ptr noundef %config_generation) #7, !dbg !5885
  %conv = zext i8 %call to i32, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5886
  ret i32 %conv, !dbg !5887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @vp_ioread8(ptr noundef %addr) #3 align 16 !dbg !5888 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5896
  %call = call i32 @ioread8(ptr noundef %0) #7, !dbg !5897
  %conv = trunc i32 %call to i8, !dbg !5897
  ret i8 %conv, !dbg !5898
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @vp_modern_get_status(ptr noundef %mdev) #0 align 16 !dbg !5899 {
entry:
  %mdev.addr = alloca ptr, align 8
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5903, metadata !DIExpression()), !dbg !5905
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5904, metadata !DIExpression()), !dbg !5907
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5908
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5909
  %1 = load ptr, ptr %common, align 8, !dbg !5909
  store ptr %1, ptr %cfg, align 8, !dbg !5907
  %2 = load ptr, ptr %cfg, align 8, !dbg !5910
  %device_status = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 6, !dbg !5911
  %call = call zeroext i8 @vp_ioread8(ptr noundef %device_status) #7, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5913
  ret i8 %call, !dbg !5914
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_set_status(ptr noundef %mdev, i8 noundef zeroext %status) #0 align 16 !dbg !5915 {
entry:
  %mdev.addr = alloca ptr, align 8
  %status.addr = alloca i8, align 1
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5919, metadata !DIExpression()), !dbg !5922
  store i8 %status, ptr %status.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5920, metadata !DIExpression()), !dbg !5923
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5921, metadata !DIExpression()), !dbg !5925
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5926
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5927
  %1 = load ptr, ptr %common, align 8, !dbg !5927
  store ptr %1, ptr %cfg, align 8, !dbg !5925
  %2 = load i8, ptr %status.addr, align 1, !dbg !5928
  %3 = load ptr, ptr %cfg, align 8, !dbg !5929
  %device_status = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 6, !dbg !5930
  call void @vp_iowrite8(i8 noundef zeroext %2, ptr noundef %device_status) #7, !dbg !5931
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5932
  ret void, !dbg !5932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_iowrite8(i8 noundef zeroext %value, ptr noundef %addr) #3 align 16 !dbg !5933 {
entry:
  %value.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5937, metadata !DIExpression()), !dbg !5939
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5938, metadata !DIExpression()), !dbg !5940
  %0 = load i8, ptr %value.addr, align 1, !dbg !5941
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5942
  call void @iowrite8(i8 noundef zeroext %0, ptr noundef %1) #7, !dbg !5943
  ret void, !dbg !5944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vp_modern_get_queue_reset(ptr noundef %mdev, i16 noundef zeroext %index) #0 align 16 !dbg !5945 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5949, metadata !DIExpression()), !dbg !5952
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5950, metadata !DIExpression()), !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !5954
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5951, metadata !DIExpression()), !dbg !5955
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !5956
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !5957
  %1 = load ptr, ptr %common, align 8, !dbg !5957
  store ptr %1, ptr %cfg, align 8, !dbg !5958
  %2 = load i16, ptr %index.addr, align 2, !dbg !5959
  %3 = load ptr, ptr %cfg, align 8, !dbg !5960
  %cfg1 = getelementptr inbounds %struct.virtio_pci_modern_common_cfg, ptr %3, i32 0, i32 0, !dbg !5961
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %cfg1, i32 0, i32 8, !dbg !5962
  call void @vp_iowrite16(i16 noundef zeroext %2, ptr noundef %queue_select) #7, !dbg !5963
  %4 = load ptr, ptr %cfg, align 8, !dbg !5964
  %queue_reset = getelementptr inbounds %struct.virtio_pci_modern_common_cfg, ptr %4, i32 0, i32 2, !dbg !5965
  %call = call zeroext i16 @vp_ioread16(ptr noundef %queue_reset) #7, !dbg !5966
  %conv = zext i16 %call to i32, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !5967
  ret i32 %conv, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_iowrite16(i16 noundef zeroext %value, ptr noundef %addr) #3 align 16 !dbg !5969 {
entry:
  %value.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5974, metadata !DIExpression()), !dbg !5976
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5975, metadata !DIExpression()), !dbg !5977
  %0 = load i16, ptr %value.addr, align 2, !dbg !5978
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5979
  call void @iowrite16(i16 noundef zeroext %0, ptr noundef %1) #7, !dbg !5980
  ret void, !dbg !5981
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @vp_ioread16(ptr noundef %addr) #3 align 16 !dbg !5982 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5990
  %call = call i32 @ioread16(ptr noundef %0) #7, !dbg !5991
  %conv = trunc i32 %call to i16, !dbg !5991
  ret i16 %conv, !dbg !5992
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_set_queue_reset(ptr noundef %mdev, i16 noundef zeroext %index) #0 align 16 !dbg !5993 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !5997, metadata !DIExpression()), !dbg !6000
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5998, metadata !DIExpression()), !dbg !6001
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !6002
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5999, metadata !DIExpression()), !dbg !6003
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !6004
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !6005
  %1 = load ptr, ptr %common, align 8, !dbg !6005
  store ptr %1, ptr %cfg, align 8, !dbg !6006
  %2 = load i16, ptr %index.addr, align 2, !dbg !6007
  %3 = load ptr, ptr %cfg, align 8, !dbg !6008
  %cfg1 = getelementptr inbounds %struct.virtio_pci_modern_common_cfg, ptr %3, i32 0, i32 0, !dbg !6009
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %cfg1, i32 0, i32 8, !dbg !6010
  call void @vp_iowrite16(i16 noundef zeroext %2, ptr noundef %queue_select) #7, !dbg !6011
  %4 = load ptr, ptr %cfg, align 8, !dbg !6012
  %queue_reset = getelementptr inbounds %struct.virtio_pci_modern_common_cfg, ptr %4, i32 0, i32 2, !dbg !6013
  call void @vp_iowrite16(i16 noundef zeroext 1, ptr noundef %queue_reset) #7, !dbg !6014
  br label %while.cond, !dbg !6015

while.cond:                                       ; preds = %while.body, %entry
  %5 = load ptr, ptr %cfg, align 8, !dbg !6016
  %queue_reset2 = getelementptr inbounds %struct.virtio_pci_modern_common_cfg, ptr %5, i32 0, i32 2, !dbg !6017
  %call = call zeroext i16 @vp_ioread16(ptr noundef %queue_reset2) #7, !dbg !6018
  %tobool = icmp ne i16 %call, 0, !dbg !6015
  br i1 %tobool, label %while.body, label %while.end, !dbg !6015

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 1) #7, !dbg !6019
  br label %while.cond, !dbg !6015, !llvm.loop !6020

while.end:                                        ; preds = %while.cond
  br label %while.cond3, !dbg !6022

while.cond3:                                      ; preds = %while.body7, %while.end
  %6 = load ptr, ptr %cfg, align 8, !dbg !6023
  %cfg4 = getelementptr inbounds %struct.virtio_pci_modern_common_cfg, ptr %6, i32 0, i32 0, !dbg !6024
  %queue_enable = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %cfg4, i32 0, i32 11, !dbg !6025
  %call5 = call zeroext i16 @vp_ioread16(ptr noundef %queue_enable) #7, !dbg !6026
  %tobool6 = icmp ne i16 %call5, 0, !dbg !6022
  br i1 %tobool6, label %while.body7, label %while.end8, !dbg !6022

while.body7:                                      ; preds = %while.cond3
  call void @msleep(i32 noundef 1) #7, !dbg !6027
  br label %while.cond3, !dbg !6022, !llvm.loop !6028

while.end8:                                       ; preds = %while.cond3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !6030
  ret void, !dbg !6030
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6031 dso_local void @msleep(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @vp_modern_queue_vector(ptr noundef %mdev, i16 noundef zeroext %index, i16 noundef zeroext %vector) #0 align 16 !dbg !6035 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %vector.addr = alloca i16, align 2
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6039, metadata !DIExpression()), !dbg !6043
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6040, metadata !DIExpression()), !dbg !6044
  store i16 %vector, ptr %vector.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !6041, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6042, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !6048
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !6049
  %1 = load ptr, ptr %common, align 8, !dbg !6049
  store ptr %1, ptr %cfg, align 8, !dbg !6047
  %2 = load i16, ptr %index.addr, align 2, !dbg !6050
  %3 = load ptr, ptr %cfg, align 8, !dbg !6051
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 8, !dbg !6052
  call void @vp_iowrite16(i16 noundef zeroext %2, ptr noundef %queue_select) #7, !dbg !6053
  %4 = load i16, ptr %vector.addr, align 2, !dbg !6054
  %5 = load ptr, ptr %cfg, align 8, !dbg !6055
  %queue_msix_vector = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 10, !dbg !6056
  call void @vp_iowrite16(i16 noundef zeroext %4, ptr noundef %queue_msix_vector) #7, !dbg !6057
  %6 = load ptr, ptr %cfg, align 8, !dbg !6058
  %queue_msix_vector1 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %6, i32 0, i32 10, !dbg !6059
  %call = call zeroext i16 @vp_ioread16(ptr noundef %queue_msix_vector1) #7, !dbg !6060
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !6061
  ret i16 %call, !dbg !6062
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @vp_modern_config_vector(ptr noundef %mdev, i16 noundef zeroext %vector) #0 align 16 !dbg !6063 {
entry:
  %mdev.addr = alloca ptr, align 8
  %vector.addr = alloca i16, align 2
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6067, metadata !DIExpression()), !dbg !6070
  store i16 %vector, ptr %vector.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !6068, metadata !DIExpression()), !dbg !6071
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !6072
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6069, metadata !DIExpression()), !dbg !6073
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !6074
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !6075
  %1 = load ptr, ptr %common, align 8, !dbg !6075
  store ptr %1, ptr %cfg, align 8, !dbg !6073
  %2 = load i16, ptr %vector.addr, align 2, !dbg !6076
  %3 = load ptr, ptr %cfg, align 8, !dbg !6077
  %msix_config = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 4, !dbg !6078
  call void @vp_iowrite16(i16 noundef zeroext %2, ptr noundef %msix_config) #7, !dbg !6079
  %4 = load ptr, ptr %cfg, align 8, !dbg !6080
  %msix_config1 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 4, !dbg !6081
  %call = call zeroext i16 @vp_ioread16(ptr noundef %msix_config1) #7, !dbg !6082
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !6083
  ret i16 %call, !dbg !6084
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_queue_address(ptr noundef %mdev, i16 noundef zeroext %index, i64 noundef %desc_addr, i64 noundef %driver_addr, i64 noundef %device_addr) #0 align 16 !dbg !6085 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %desc_addr.addr = alloca i64, align 8
  %driver_addr.addr = alloca i64, align 8
  %device_addr.addr = alloca i64, align 8
  %cfg = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6089, metadata !DIExpression()), !dbg !6095
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6090, metadata !DIExpression()), !dbg !6096
  store i64 %desc_addr, ptr %desc_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_addr.addr, metadata !6091, metadata !DIExpression()), !dbg !6097
  store i64 %driver_addr, ptr %driver_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver_addr.addr, metadata !6092, metadata !DIExpression()), !dbg !6098
  store i64 %device_addr, ptr %device_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device_addr.addr, metadata !6093, metadata !DIExpression()), !dbg !6099
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #6, !dbg !6100
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !6094, metadata !DIExpression()), !dbg !6101
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !6102
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !6103
  %1 = load ptr, ptr %common, align 8, !dbg !6103
  store ptr %1, ptr %cfg, align 8, !dbg !6101
  %2 = load i16, ptr %index.addr, align 2, !dbg !6104
  %3 = load ptr, ptr %cfg, align 8, !dbg !6105
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 8, !dbg !6106
  call void @vp_iowrite16(i16 noundef zeroext %2, ptr noundef %queue_select) #7, !dbg !6107
  %4 = load i64, ptr %desc_addr.addr, align 8, !dbg !6108
  %5 = load ptr, ptr %cfg, align 8, !dbg !6109
  %queue_desc_lo = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 13, !dbg !6110
  %6 = load ptr, ptr %cfg, align 8, !dbg !6111
  %queue_desc_hi = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %6, i32 0, i32 14, !dbg !6112
  call void @vp_iowrite64_twopart(i64 noundef %4, ptr noundef %queue_desc_lo, ptr noundef %queue_desc_hi) #7, !dbg !6113
  %7 = load i64, ptr %driver_addr.addr, align 8, !dbg !6114
  %8 = load ptr, ptr %cfg, align 8, !dbg !6115
  %queue_avail_lo = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %8, i32 0, i32 15, !dbg !6116
  %9 = load ptr, ptr %cfg, align 8, !dbg !6117
  %queue_avail_hi = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %9, i32 0, i32 16, !dbg !6118
  call void @vp_iowrite64_twopart(i64 noundef %7, ptr noundef %queue_avail_lo, ptr noundef %queue_avail_hi) #7, !dbg !6119
  %10 = load i64, ptr %device_addr.addr, align 8, !dbg !6120
  %11 = load ptr, ptr %cfg, align 8, !dbg !6121
  %queue_used_lo = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %11, i32 0, i32 17, !dbg !6122
  %12 = load ptr, ptr %cfg, align 8, !dbg !6123
  %queue_used_hi = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %12, i32 0, i32 18, !dbg !6124
  call void @vp_iowrite64_twopart(i64 noundef %10, ptr noundef %queue_used_lo, ptr noundef %queue_used_hi) #7, !dbg !6125
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #6, !dbg !6126
  ret void, !dbg !6126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vp_iowrite64_twopart(i64 noundef %val, ptr noundef %lo, ptr noundef %hi) #3 align 16 !dbg !6127 {
entry:
  %val.addr = alloca i64, align 8
  %lo.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6131, metadata !DIExpression()), !dbg !6134
  store ptr %lo, ptr %lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lo.addr, metadata !6132, metadata !DIExpression()), !dbg !6135
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !6133, metadata !DIExpression()), !dbg !6136
  %0 = load i64, ptr %val.addr, align 8, !dbg !6137
  %conv = trunc i64 %0 to i32, !dbg !6138
  %1 = load ptr, ptr %lo.addr, align 8, !dbg !6139
  call void @vp_iowrite32(i32 noundef %conv, ptr noundef %1) #7, !dbg !6140
  %2 = load i64, ptr %val.addr, align 8, !dbg !6141
  %shr = lshr i64 %2, 32, !dbg !6142
  %conv1 = trunc i64 %shr to i32, !dbg !6141
  %3 = load ptr, ptr %hi.addr, align 8, !dbg !6143
  call void @vp_iowrite32(i32 noundef %conv1, ptr noundef %3) #7, !dbg !6144
  ret void, !dbg !6145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_set_queue_enable(ptr noundef %mdev, i16 noundef zeroext %index, i1 noundef zeroext %enable) #0 align 16 !dbg !6146 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %enable.addr = alloca i8, align 1
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6150, metadata !DIExpression()), !dbg !6153
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6151, metadata !DIExpression()), !dbg !6154
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !6152, metadata !DIExpression()), !dbg !6155
  %0 = load i16, ptr %index.addr, align 2, !dbg !6156
  %1 = load ptr, ptr %mdev.addr, align 8, !dbg !6157
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %1, i32 0, i32 1, !dbg !6158
  %2 = load ptr, ptr %common, align 8, !dbg !6158
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 8, !dbg !6159
  call void @vp_iowrite16(i16 noundef zeroext %0, ptr noundef %queue_select) #7, !dbg !6160
  %3 = load i8, ptr %enable.addr, align 1, !dbg !6161, !range !6162, !noundef !949
  %tobool = trunc i8 %3 to i1, !dbg !6161
  %conv = zext i1 %tobool to i16, !dbg !6161
  %4 = load ptr, ptr %mdev.addr, align 8, !dbg !6163
  %common1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %4, i32 0, i32 1, !dbg !6164
  %5 = load ptr, ptr %common1, align 8, !dbg !6164
  %queue_enable = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 11, !dbg !6165
  call void @vp_iowrite16(i16 noundef zeroext %conv, ptr noundef %queue_enable) #7, !dbg !6166
  ret void, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @vp_modern_get_queue_enable(ptr noundef %mdev, i16 noundef zeroext %index) #0 align 16 !dbg !6168 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  %0 = load i16, ptr %index.addr, align 2, !dbg !6176
  %1 = load ptr, ptr %mdev.addr, align 8, !dbg !6177
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %1, i32 0, i32 1, !dbg !6178
  %2 = load ptr, ptr %common, align 8, !dbg !6178
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 8, !dbg !6179
  call void @vp_iowrite16(i16 noundef zeroext %0, ptr noundef %queue_select) #7, !dbg !6180
  %3 = load ptr, ptr %mdev.addr, align 8, !dbg !6181
  %common1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %3, i32 0, i32 1, !dbg !6182
  %4 = load ptr, ptr %common1, align 8, !dbg !6182
  %queue_enable = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 11, !dbg !6183
  %call = call zeroext i16 @vp_ioread16(ptr noundef %queue_enable) #7, !dbg !6184
  %tobool = icmp ne i16 %call, 0, !dbg !6184
  ret i1 %tobool, !dbg !6185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vp_modern_set_queue_size(ptr noundef %mdev, i16 noundef zeroext %index, i16 noundef zeroext %size) #0 align 16 !dbg !6186 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %size.addr = alloca i16, align 2
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6190, metadata !DIExpression()), !dbg !6193
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6191, metadata !DIExpression()), !dbg !6194
  store i16 %size, ptr %size.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6192, metadata !DIExpression()), !dbg !6195
  %0 = load i16, ptr %index.addr, align 2, !dbg !6196
  %1 = load ptr, ptr %mdev.addr, align 8, !dbg !6197
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %1, i32 0, i32 1, !dbg !6198
  %2 = load ptr, ptr %common, align 8, !dbg !6198
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 8, !dbg !6199
  call void @vp_iowrite16(i16 noundef zeroext %0, ptr noundef %queue_select) #7, !dbg !6200
  %3 = load i16, ptr %size.addr, align 2, !dbg !6201
  %4 = load ptr, ptr %mdev.addr, align 8, !dbg !6202
  %common1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %4, i32 0, i32 1, !dbg !6203
  %5 = load ptr, ptr %common1, align 8, !dbg !6203
  %queue_size = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 9, !dbg !6204
  call void @vp_iowrite16(i16 noundef zeroext %3, ptr noundef %queue_size) #7, !dbg !6205
  ret void, !dbg !6206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @vp_modern_get_queue_size(ptr noundef %mdev, i16 noundef zeroext %index) #0 align 16 !dbg !6207 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6209, metadata !DIExpression()), !dbg !6211
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6210, metadata !DIExpression()), !dbg !6212
  %0 = load i16, ptr %index.addr, align 2, !dbg !6213
  %1 = load ptr, ptr %mdev.addr, align 8, !dbg !6214
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %1, i32 0, i32 1, !dbg !6215
  %2 = load ptr, ptr %common, align 8, !dbg !6215
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 8, !dbg !6216
  call void @vp_iowrite16(i16 noundef zeroext %0, ptr noundef %queue_select) #7, !dbg !6217
  %3 = load ptr, ptr %mdev.addr, align 8, !dbg !6218
  %common1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %3, i32 0, i32 1, !dbg !6219
  %4 = load ptr, ptr %common1, align 8, !dbg !6219
  %queue_size = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 9, !dbg !6220
  %call = call zeroext i16 @vp_ioread16(ptr noundef %queue_size) #7, !dbg !6221
  ret i16 %call, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @vp_modern_get_num_queues(ptr noundef %mdev) #0 align 16 !dbg !6223 {
entry:
  %mdev.addr = alloca ptr, align 8
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !6229
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1, !dbg !6230
  %1 = load ptr, ptr %common, align 8, !dbg !6230
  %num_queues = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 5, !dbg !6231
  %call = call zeroext i16 @vp_ioread16(ptr noundef %num_queues) #7, !dbg !6232
  ret i16 %call, !dbg !6233
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @vp_modern_map_vq_notify(ptr noundef %mdev, i16 noundef zeroext %index, ptr noundef %pa) #0 align 16 !dbg !6234 {
entry:
  %retval = alloca ptr, align 8
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %pa.addr = alloca ptr, align 8
  %off = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6238, metadata !DIExpression()), !dbg !6242
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6239, metadata !DIExpression()), !dbg !6243
  store ptr %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !6240, metadata !DIExpression()), !dbg !6244
  call void @llvm.lifetime.start.p0(i64 2, ptr %off) #6, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %off, metadata !6241, metadata !DIExpression()), !dbg !6246
  %0 = load ptr, ptr %mdev.addr, align 8, !dbg !6247
  %1 = load i16, ptr %index.addr, align 2, !dbg !6248
  %call = call zeroext i16 @vp_modern_get_queue_notify_off(ptr noundef %0, i16 noundef zeroext %1) #7, !dbg !6249
  store i16 %call, ptr %off, align 2, !dbg !6246
  %2 = load ptr, ptr %mdev.addr, align 8, !dbg !6250
  %notify_base = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %2, i32 0, i32 3, !dbg !6252
  %3 = load ptr, ptr %notify_base, align 8, !dbg !6252
  %tobool = icmp ne ptr %3, null, !dbg !6250
  br i1 %tobool, label %if.then, label %if.else, !dbg !6253

if.then:                                          ; preds = %entry
  %4 = load i16, ptr %off, align 2, !dbg !6254
  %conv = zext i16 %4 to i64, !dbg !6257
  %5 = load ptr, ptr %mdev.addr, align 8, !dbg !6258
  %notify_offset_multiplier = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %5, i32 0, i32 9, !dbg !6259
  %6 = load i32, ptr %notify_offset_multiplier, align 4, !dbg !6259
  %conv1 = zext i32 %6 to i64, !dbg !6258
  %mul = mul i64 %conv, %conv1, !dbg !6260
  %add = add i64 %mul, 2, !dbg !6261
  %7 = load ptr, ptr %mdev.addr, align 8, !dbg !6262
  %notify_len = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %7, i32 0, i32 6, !dbg !6263
  %8 = load i64, ptr %notify_len, align 8, !dbg !6263
  %cmp = icmp ugt i64 %add, %8, !dbg !6264
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6265

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !6266

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6269

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6269

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %mdev.addr, align 8, !dbg !6266
  %pci_dev = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %9, i32 0, i32 0, !dbg !6266
  %10 = load ptr, ptr %pci_dev, align 8, !dbg !6266
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 37, !dbg !6266
  %11 = load i16, ptr %off, align 2, !dbg !6266
  %conv4 = zext i16 %11 to i32, !dbg !6266
  %12 = load ptr, ptr %mdev.addr, align 8, !dbg !6266
  %notify_offset_multiplier5 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %12, i32 0, i32 9, !dbg !6266
  %13 = load i32, ptr %notify_offset_multiplier5, align 4, !dbg !6266
  %14 = load i16, ptr %index.addr, align 2, !dbg !6266
  %conv6 = zext i16 %14 to i32, !dbg !6266
  %15 = load ptr, ptr %mdev.addr, align 8, !dbg !6266
  %notify_len7 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %15, i32 0, i32 6, !dbg !6266
  %16 = load i64, ptr %notify_len7, align 8, !dbg !6266
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.4, i32 noundef %conv4, i32 noundef %13, i32 noundef %conv6, i64 noundef %16) #8, !dbg !6266
  store ptr null, ptr %retval, align 8, !dbg !6271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6271

if.end:                                           ; preds = %if.then
  %17 = load ptr, ptr %pa.addr, align 8, !dbg !6272
  %tobool8 = icmp ne ptr %17, null, !dbg !6272
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !6274

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %mdev.addr, align 8, !dbg !6275
  %notify_pa = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %18, i32 0, i32 4, !dbg !6276
  %19 = load i64, ptr %notify_pa, align 8, !dbg !6276
  %20 = load i16, ptr %off, align 2, !dbg !6277
  %conv10 = zext i16 %20 to i32, !dbg !6277
  %21 = load ptr, ptr %mdev.addr, align 8, !dbg !6278
  %notify_offset_multiplier11 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %21, i32 0, i32 9, !dbg !6279
  %22 = load i32, ptr %notify_offset_multiplier11, align 4, !dbg !6279
  %mul12 = mul i32 %conv10, %22, !dbg !6280
  %conv13 = zext i32 %mul12 to i64, !dbg !6277
  %add14 = add i64 %19, %conv13, !dbg !6281
  %23 = load ptr, ptr %pa.addr, align 8, !dbg !6282
  store i64 %add14, ptr %23, align 8, !dbg !6283
  br label %if.end15, !dbg !6284

if.end15:                                         ; preds = %if.then9, %if.end
  %24 = load ptr, ptr %mdev.addr, align 8, !dbg !6285
  %notify_base16 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %24, i32 0, i32 3, !dbg !6286
  %25 = load ptr, ptr %notify_base16, align 8, !dbg !6286
  %26 = load i16, ptr %off, align 2, !dbg !6287
  %conv17 = zext i16 %26 to i32, !dbg !6287
  %27 = load ptr, ptr %mdev.addr, align 8, !dbg !6288
  %notify_offset_multiplier18 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %27, i32 0, i32 9, !dbg !6289
  %28 = load i32, ptr %notify_offset_multiplier18, align 4, !dbg !6289
  %mul19 = mul i32 %conv17, %28, !dbg !6290
  %idx.ext = zext i32 %mul19 to i64, !dbg !6291
  %add.ptr = getelementptr i8, ptr %25, i64 %idx.ext, !dbg !6291
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

if.else:                                          ; preds = %entry
  %29 = load ptr, ptr %mdev.addr, align 8, !dbg !6293
  %30 = load ptr, ptr %mdev.addr, align 8, !dbg !6295
  %notify_map_cap = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %30, i32 0, i32 8, !dbg !6296
  %31 = load i32, ptr %notify_map_cap, align 8, !dbg !6296
  %32 = load i16, ptr %off, align 2, !dbg !6297
  %conv20 = zext i16 %32 to i32, !dbg !6297
  %33 = load ptr, ptr %mdev.addr, align 8, !dbg !6298
  %notify_offset_multiplier21 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %33, i32 0, i32 9, !dbg !6299
  %34 = load i32, ptr %notify_offset_multiplier21, align 4, !dbg !6299
  %mul22 = mul i32 %conv20, %34, !dbg !6300
  %35 = load ptr, ptr %pa.addr, align 8, !dbg !6301
  %call23 = call ptr @vp_modern_map_capability(ptr noundef %29, i32 noundef %31, i64 noundef 2, i32 noundef 2, i32 noundef %mul22, i32 noundef 2, ptr noundef null, ptr noundef %35) #7, !dbg !6302
  store ptr %call23, ptr %retval, align 8, !dbg !6303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6303

cleanup:                                          ; preds = %if.else, %if.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr %off) #6, !dbg !6304
  %36 = load ptr, ptr %retval, align 8, !dbg !6304
  ret ptr %36, !dbg !6304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @vp_modern_get_queue_notify_off(ptr noundef %mdev, i16 noundef zeroext %index) #0 align 16 !dbg !6305 {
entry:
  %mdev.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  store ptr %mdev, ptr %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdev.addr, metadata !6307, metadata !DIExpression()), !dbg !6309
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  %0 = load i16, ptr %index.addr, align 2, !dbg !6311
  %1 = load ptr, ptr %mdev.addr, align 8, !dbg !6312
  %common = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %1, i32 0, i32 1, !dbg !6313
  %2 = load ptr, ptr %common, align 8, !dbg !6313
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %2, i32 0, i32 8, !dbg !6314
  call void @vp_iowrite16(i16 noundef zeroext %0, ptr noundef %queue_select) #7, !dbg !6315
  %3 = load ptr, ptr %mdev.addr, align 8, !dbg !6316
  %common1 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %3, i32 0, i32 1, !dbg !6317
  %4 = load ptr, ptr %common1, align 8, !dbg !6317
  %queue_notify_off = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 12, !dbg !6318
  %call = call zeroext i16 @vp_ioread16(ptr noundef %queue_notify_off) #7, !dbg !6319
  ret i16 %call, !dbg !6320
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6321 dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6324 dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #3 align 16 !dbg !6327 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6333, metadata !DIExpression()), !dbg !6334
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6335
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !6336
  %1 = load i64, ptr %end, align 8, !dbg !6336
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6337
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !6338
  %3 = load i64, ptr %start, align 8, !dbg !6338
  %sub = sub i64 %1, %3, !dbg !6339
  %add = add i64 %sub, 1, !dbg !6340
  ret i64 %add, !dbg !6341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6342 dso_local zeroext i8 @pci_find_next_capability(ptr noundef, i8 noundef zeroext, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6345 dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6346 dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6347 dso_local ptr @pci_iomap_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6350 dso_local void @iowrite32(i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6354 dso_local i32 @ioread32(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6357 dso_local i32 @ioread8(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6358 dso_local void @iowrite8(i8 noundef zeroext, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6361 dso_local void @iowrite16(i16 noundef zeroext, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6364 dso_local i32 @ioread16(ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255}
!llvm.ident = !{!4256}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/virtio/virtio_pci_modern_dev.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71f593a94bd5835597e73a70cc0b462a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 43)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 86)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 18)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_probe319", scope: !24, file: !2, line: 361, type: !168, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/virtio/.virtio_pci_modern_dev.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/virtio/virtio_pci_modern_dev\22 -D KBUILD_BASENAME=\22virtio_pci_modern_dev\22 -D KBUILD_MODNAME=\22virtio_pci_modern_dev\22 -D __KBUILD_MODNAME=kmod_virtio_pci_modern_dev -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/virtio/virtio_pci_modern_dev.ll drivers/virtio/virtio_pci_modern_dev.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !162, globals: !208, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !34, !39, !45, !50, !58, !74, !82, !88, !95, !102, !108, !114, !121, !129, !137, !146, !151, !156}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !27, line: 312, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!31 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!32 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!33 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !28, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !28, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !28, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !28, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !59, line: 1325, baseType: !28, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!61 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!62 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!63 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!64 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!65 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!66 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!67 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!68 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!69 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!70 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!71 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!72 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!73 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !75, line: 68, baseType: !28, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!79 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!80 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!81 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !83, line: 16, baseType: !28, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "TT_NONE", value: 0)
!86 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!87 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !89, line: 51, baseType: !28, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!92 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!93 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!94 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !96, line: 15, baseType: !28, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!99 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!100 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!101 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !103, line: 26, baseType: !28, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!106 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!107 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !109, line: 45, baseType: !28, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!112 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!113 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !115, line: 487, baseType: !28, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!118 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!119 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!120 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !122, line: 620, baseType: !28, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!125 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!126 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!127 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!128 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !122, line: 597, baseType: !130, size: 32, elements: !131)
!130 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!133 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!134 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!135 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!136 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !115, line: 547, baseType: !28, size: 32, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145}
!139 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!141 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!142 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!143 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!144 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!145 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !115, line: 564, baseType: !28, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!149 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!150 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !115, line: 577, baseType: !28, size: 32, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!154 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!155 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !115, line: 503, baseType: !28, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!159 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!160 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!161 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!162 = !{!163, !168, !169, !171, !207}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !164, line: 23, baseType: !165)
!164 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !166, line: 31, baseType: !167)
!166 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!167 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !164, line: 21, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !166, line: 27, baseType: !28)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_modern_common_cfg", file: !173, line: 8, size: 480, elements: !174)
!173 = !DIFile(filename: "./include/linux/virtio_pci_modern.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f45c800c22e78402b1cacce9860fa2cb")
!174 = !{!175, !205, !206}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !172, file: !173, line: 9, baseType: !176, size: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_common_cfg", file: !177, line: 144, size: 448, elements: !178)
!177 = !DIFile(filename: "./include/uapi/linux/virtio_pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73fe8ac18ab2f9bcc01047ca8cd0fd27")
!178 = !{!179, !182, !183, !184, !185, !189, !190, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "device_feature_select", scope: !176, file: !177, line: 146, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !181, line: 38, baseType: !170)
!181 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "device_feature", scope: !176, file: !177, line: 147, baseType: !180, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "guest_feature_select", scope: !176, file: !177, line: 148, baseType: !180, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "guest_feature", scope: !176, file: !177, line: 149, baseType: !180, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "msix_config", scope: !176, file: !177, line: 150, baseType: !186, size: 16, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !181, line: 36, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !166, line: 24, baseType: !188)
!188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "num_queues", scope: !176, file: !177, line: 151, baseType: !186, size: 16, offset: 144)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !176, file: !177, line: 152, baseType: !191, size: 8, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !166, line: 21, baseType: !192)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "config_generation", scope: !176, file: !177, line: 153, baseType: !191, size: 8, offset: 168)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "queue_select", scope: !176, file: !177, line: 156, baseType: !186, size: 16, offset: 176)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "queue_size", scope: !176, file: !177, line: 157, baseType: !186, size: 16, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "queue_msix_vector", scope: !176, file: !177, line: 158, baseType: !186, size: 16, offset: 208)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "queue_enable", scope: !176, file: !177, line: 159, baseType: !186, size: 16, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "queue_notify_off", scope: !176, file: !177, line: 160, baseType: !186, size: 16, offset: 240)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "queue_desc_lo", scope: !176, file: !177, line: 161, baseType: !180, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "queue_desc_hi", scope: !176, file: !177, line: 162, baseType: !180, size: 32, offset: 288)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "queue_avail_lo", scope: !176, file: !177, line: 163, baseType: !180, size: 32, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "queue_avail_hi", scope: !176, file: !177, line: 164, baseType: !180, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "queue_used_lo", scope: !176, file: !177, line: 165, baseType: !180, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "queue_used_hi", scope: !176, file: !177, line: 166, baseType: !180, size: 32, offset: 416)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "queue_notify_data", scope: !172, file: !173, line: 11, baseType: !186, size: 16, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "queue_reset", scope: !172, file: !173, line: 12, baseType: !186, size: 16, offset: 464)
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !{!0, !7, !12, !17, !22, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !248, !250, !256, !261, !266, !271, !4203, !4208, !4213, !4216, !4218, !4223, !4228, !4231, !4236, !4241, !4246}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_remove320", scope: !24, file: !2, line: 379, type: !168, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_features321", scope: !24, file: !2, line: 400, type: !168, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_driver_features322", scope: !24, file: !2, line: 421, type: !168, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_set_features323", scope: !24, file: !2, line: 438, type: !168, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_generation324", scope: !24, file: !2, line: 452, type: !168, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_status325", scope: !24, file: !2, line: 466, type: !168, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_set_status326", scope: !24, file: !2, line: 485, type: !168, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_queue_reset327", scope: !24, file: !2, line: 501, type: !168, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_set_queue_reset328", scope: !24, file: !2, line: 523, type: !168, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_queue_vector329", scope: !24, file: !2, line: 543, type: !168, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_config_vector330", scope: !24, file: !2, line: 563, type: !168, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_queue_address331", scope: !24, file: !2, line: 588, type: !168, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_set_queue_enable332", scope: !24, file: !2, line: 602, type: !168, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_queue_enable333", scope: !24, file: !2, line: 618, type: !168, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_set_queue_size334", scope: !24, file: !2, line: 633, type: !168, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_queue_size335", scope: !24, file: !2, line: 650, type: !168, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_get_num_queues336", scope: !24, file: !2, line: 662, type: !168, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 53)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vp_modern_map_vq_notify337", scope: !24, file: !2, line: 715, type: !168, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_version338", scope: !24, file: !2, line: 717, type: !252, isLocal: true, isDefinition: true, align: 8)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 272, elements: !254)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!254 = !{!255}
!255 = !DISubrange(count: 34)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 8)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 22)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 4)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "__modver_attr", scope: !24, file: !2, line: 717, type: !273, isLocal: true, isDefinition: true, align: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !27, line: 64, size: 576, elements: !274)
!274 = !{!275, !4201, !4202}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !273, file: !27, line: 65, baseType: !276, size: 448)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !27, line: 53, size: 448, elements: !277)
!277 = !{!278, !287, !4185, !4189, !4193, !4197}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !276, file: !27, line: 54, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !280, line: 30, size: 128, elements: !281)
!280 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!281 = !{!282, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !280, line: 31, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !279, file: !280, line: 32, baseType: !285, size: 16, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !286, line: 24, baseType: !188)
!286 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !276, file: !27, line: 55, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !296, !297, !383}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !286, line: 66, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !293, line: 73, baseType: !294)
!293 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !293, line: 15, baseType: !295)
!295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !27, line: 45, size: 768, elements: !299)
!299 = !{!300, !4179, !4180, !4181, !4184}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !298, file: !27, line: 46, baseType: !301, size: 512)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !302, line: 64, size: 512, elements: !303)
!302 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!303 = !{!304, !305, !311, !313, !396, !4066, !4169, !4174, !4175, !4176, !4177, !4178}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !302, line: 65, baseType: !283, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !301, file: !302, line: 66, baseType: !306, size: 128, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !286, line: 190, size: 128, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !286, line: 191, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !306, file: !286, line: 191, baseType: !309, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !301, file: !302, line: 67, baseType: !312, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !301, file: !302, line: 68, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !302, line: 168, size: 768, elements: !316)
!316 = !{!317, !318, !355, !356}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !315, file: !302, line: 169, baseType: !306, size: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !315, file: !302, line: 170, baseType: !319, size: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !320, line: 29, baseType: !321)
!320 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !320, line: 17, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !320, line: 18, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 18, size: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !324, file: !320, line: 19, baseType: !327, size: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !328, line: 14, size: 32, elements: !329)
!328 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !327, file: !328, line: 15, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !332, line: 44, baseType: !333)
!332 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !332, line: 14, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !332, line: 15, baseType: !336, size: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !332, line: 15, size: 32, elements: !337)
!337 = !{!338, !343, !349}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !336, file: !332, line: 16, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !286, line: 174, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 172, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !340, file: !286, line: 173, baseType: !130, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !332, line: 24, baseType: !344, size: 16)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !332, line: 24, size: 16, elements: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !344, file: !332, line: 25, baseType: !347, size: 8)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !164, line: 17, baseType: !191)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !344, file: !332, line: 26, baseType: !347, size: 8, offset: 8)
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !332, line: 28, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !332, line: 28, size: 32, elements: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !350, file: !332, line: 29, baseType: !353, size: 16)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !164, line: 19, baseType: !187)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !350, file: !332, line: 30, baseType: !353, size: 16, offset: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !315, file: !302, line: 171, baseType: !301, size: 512, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !315, file: !302, line: 172, baseType: !357, size: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !302, line: 133, size: 192, elements: !360)
!360 = !{!361, !368, !373}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !359, file: !302, line: 134, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!130, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !359, file: !302, line: 135, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!283, !366}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !359, file: !302, line: 136, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!130, !366, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !302, line: 125, size: 20736, elements: !380)
!380 = !{!381, !386, !390, !391, !395}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !379, file: !302, line: 126, baseType: !382, size: 192)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 192, elements: !384)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!384 = !{!385}
!385 = !DISubrange(count: 3)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !379, file: !302, line: 127, baseType: !387, size: 4096, offset: 192)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 4096, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !379, file: !302, line: 128, baseType: !130, size: 32, offset: 4288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !379, file: !302, line: 129, baseType: !392, size: 16384, offset: 4320)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 2048)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !379, file: !302, line: 130, baseType: !130, size: 32, offset: 20704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !301, file: !302, line: 69, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !302, line: 116, size: 384, elements: !400)
!400 = !{!401, !405, !422, !4028, !4056, !4060}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !399, file: !302, line: 117, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !312}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !399, file: !302, line: 118, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !280, line: 254, size: 128, elements: !409)
!409 = !{!410, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !408, file: !280, line: 255, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!291, !312, !414, !383}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !408, file: !280, line: 256, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!291, !312, !414, !283, !419}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !286, line: 61, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !293, line: 72, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !293, line: 16, baseType: !207)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !399, file: !302, line: 119, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !280, line: 84, size: 320, elements: !427)
!427 = !{!428, !429, !433, !4024, !4026}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !426, file: !280, line: 85, baseType: !283, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !426, file: !280, line: 86, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!285, !312, !414, !130}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !426, file: !280, line: 88, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!285, !312, !437, !130}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !280, line: 175, size: 512, elements: !439)
!439 = !{!440, !441, !442, !443, !4015, !4019, !4020}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !438, file: !280, line: 176, baseType: !279, size: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !438, file: !280, line: 177, baseType: !419, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !438, file: !280, line: 178, baseType: !168, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !438, file: !280, line: 179, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !449)
!449 = !{!450, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !4009, !4010, !4011, !4012, !4013, !4014}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !448, file: !35, line: 473, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !453)
!453 = !{!454, !455, !456, !464, !465, !472, !473, !476, !477, !3788, !3789, !3790, !3791, !3792, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3832, !3835, !3836, !3837, !3846, !3847, !3848, !3849}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !452, file: !35, line: 642, baseType: !285, size: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !452, file: !35, line: 643, baseType: !188, size: 16, offset: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !452, file: !35, line: 644, baseType: !457, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !458, line: 23, baseType: !459)
!458 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 21, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !458, line: 22, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !286, line: 37, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !293, line: 49, baseType: !28)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !452, file: !35, line: 645, baseType: !306, size: 128, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !452, file: !35, line: 646, baseType: !466, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !458, line: 28, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 26, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !458, line: 27, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !286, line: 38, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !293, line: 50, baseType: !28)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !452, file: !35, line: 647, baseType: !28, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !452, file: !35, line: 650, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !452, file: !35, line: 651, baseType: !474, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !452, file: !35, line: 654, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !481)
!481 = !{!482, !3616, !3626, !3630, !3634, !3638, !3642, !3646, !3650, !3654, !3658, !3659, !3663, !3667, !3704, !3733, !3737, !3743, !3747, !3751, !3755, !3759, !3763, !3769, !3773}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !480, file: !35, line: 1967, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !451, !486, !28}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !488, line: 82, size: 1536, elements: !489)
!488 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!489 = !{!490, !491, !501, !509, !510, !525, !526, !530, !543, !3599, !3600, !3601, !3602, !3608, !3609, !3610}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !487, file: !488, line: 84, baseType: !28, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !487, file: !488, line: 85, baseType: !492, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !493, line: 275, baseType: !494)
!493 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !493, line: 275, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !494, file: !493, line: 275, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !493, line: 69, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !493, line: 64, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !498, file: !493, line: 65, baseType: !28, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !487, file: !488, line: 86, baseType: !502, size: 128, offset: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !503, line: 38, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!504 = !{!505, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !503, line: 39, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !502, file: !503, line: 39, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !487, file: !488, line: 87, baseType: !486, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !487, file: !488, line: 88, baseType: !511, size: 128, offset: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !488, line: 49, size: 128, elements: !512)
!512 = !{!513, !522}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !488, line: 50, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !488, line: 50, size: 64, elements: !515)
!515 = !{!516, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !488, line: 51, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !488, line: 51, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !517, file: !488, line: 52, baseType: !169, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !517, file: !488, line: 52, baseType: !169, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !514, file: !488, line: 54, baseType: !163, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !488, line: 56, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !487, file: !488, line: 89, baseType: !451, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !487, file: !488, line: 91, baseType: !527, size: 256, offset: 448)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !487, file: !488, line: 94, baseType: !531, size: 64, offset: 704)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !532, line: 25, size: 64, elements: !533)
!532 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 26, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 26, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !535, file: !532, line: 28, baseType: !165, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !532, line: 30, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !532, line: 30, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !539, file: !532, line: 31, baseType: !319, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !539, file: !532, line: 32, baseType: !130, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !487, file: !488, line: 95, baseType: !544, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !488, line: 128, size: 1024, align: 512, elements: !547)
!547 = !{!548, !552, !553, !560, !566, !570, !574, !578, !579, !583, !587, !3589, !3593}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !546, file: !488, line: 129, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!130, !486, !28}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !546, file: !488, line: 130, baseType: !549, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !546, file: !488, line: 131, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!130, !557, !559}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !546, file: !488, line: 132, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!130, !557, !28, !283, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !546, file: !488, line: 134, baseType: !567, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!130, !557}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !546, file: !488, line: 135, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!130, !486}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !546, file: !488, line: 136, baseType: !575, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !486}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !546, file: !488, line: 137, baseType: !575, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !546, file: !488, line: 138, baseType: !580, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !486, !451}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !546, file: !488, line: 139, baseType: !584, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!383, !486, !383, !130}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !546, file: !488, line: 140, baseType: !588, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!591, !3588}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !593, line: 70, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!594 = !{!595, !596, !3584, !3585}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !592, file: !593, line: 71, baseType: !486, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !592, file: !593, line: 72, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !599)
!599 = !{!600, !601, !604, !605, !606, !610, !1053, !1193, !1233, !1323, !1327, !1328, !1329, !1330, !1331, !1340, !1341, !1342, !1343, !1348, !1352, !1353, !1356, !1359, !1362, !1365, !1366, !1367, !1408, !3517, !3518, !3519, !3520, !3521, !3522, !3525, !3527, !3534, !3535, !3536, !3537, !3538, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !598, file: !35, line: 1191, baseType: !306, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !598, file: !35, line: 1192, baseType: !602, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !286, line: 21, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !286, line: 18, baseType: !169)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !598, file: !35, line: 1193, baseType: !192, size: 8, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !598, file: !35, line: 1194, baseType: !207, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !598, file: !35, line: 1195, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !286, line: 52, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !293, line: 88, baseType: !609)
!609 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !598, file: !35, line: 1196, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !613)
!613 = !{!614, !615, !616, !623, !627, !631, !635, !1038, !1039, !1043, !1045, !1046, !1047, !1049, !1050, !1051, !1052}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !35, line: 2367, baseType: !283, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !612, file: !35, line: 2368, baseType: !130, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !612, file: !35, line: 2376, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!130, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !622, line: 32, flags: DIFlagFwdDecl)
!622 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!623 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !612, file: !35, line: 2377, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !612, file: !35, line: 2378, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!486, !611, !130, !283, !168}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !612, file: !35, line: 2380, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !597}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !612, file: !35, line: 2381, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !27, line: 402, size: 9216, align: 512, elements: !638)
!638 = !{!639, !640, !641, !645, !646, !647, !648, !649, !650, !654, !659, !660, !681, !737, !738, !739, !740, !741, !744, !745, !746, !754, !758, !785, !806, !807, !808, !809, !818, !841, !842, !845, !848, !849, !850, !851, !852, !853, !854, !859, !860, !996, !1004, !1005, !1006, !1008, !1012, !1013, !1017, !1018, !1019, !1020, !1022, !1023, !1024, !1031, !1032, !1033, !1037}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !637, file: !27, line: 403, baseType: !26, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !637, file: !27, line: 406, baseType: !306, size: 128, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !27, line: 409, baseType: !642, size: 448, offset: 192)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 56)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !637, file: !27, line: 417, baseType: !298, size: 768, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !637, file: !27, line: 418, baseType: !296, size: 64, offset: 1408)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !637, file: !27, line: 419, baseType: !283, size: 64, offset: 1472)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !637, file: !27, line: 420, baseType: !283, size: 64, offset: 1536)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !637, file: !27, line: 421, baseType: !312, size: 64, offset: 1600)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !637, file: !27, line: 424, baseType: !651, size: 64, offset: 1664)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !27, line: 424, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !637, file: !27, line: 425, baseType: !655, size: 64, offset: 1728)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !164, line: 20, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !166, line: 26, baseType: !130)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !637, file: !27, line: 426, baseType: !28, size: 32, offset: 1792)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !637, file: !27, line: 435, baseType: !661, size: 256, offset: 1856)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !662, line: 66, size: 256, elements: !663)
!662 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!663 = !{!664, !673, !675, !680}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !662, line: 67, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !666, line: 13, baseType: !667)
!666 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !286, line: 181, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 179, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !668, file: !286, line: 180, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !164, line: 22, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !166, line: 30, baseType: !609)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !661, file: !662, line: 68, baseType: !674, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !328, line: 23, baseType: !327)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !661, file: !662, line: 70, baseType: !676, size: 32, offset: 96)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !677, line: 15, size: 32, elements: !678)
!677 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !676, file: !677, line: 20, baseType: !339, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !661, file: !662, line: 72, baseType: !306, size: 128, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !637, file: !27, line: 437, baseType: !682, size: 64, offset: 2112)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !684, line: 69, size: 320, elements: !685)
!684 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!685 = !{!686, !687, !688, !708, !710, !714, !715}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !684, line: 70, baseType: !283, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !683, file: !684, line: 71, baseType: !636, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !683, file: !684, line: 72, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !684, line: 47, size: 256, elements: !692)
!692 = !{!693, !694, !700, !704}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !684, line: 49, baseType: !28, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !691, file: !684, line: 51, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!130, !283, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !691, file: !684, line: 53, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!130, !383, !698}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !691, file: !684, line: 55, baseType: !705, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !168}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !683, file: !684, line: 73, baseType: !709, size: 16, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !683, file: !684, line: 74, baseType: !711, size: 8, offset: 208)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !164, line: 16, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !166, line: 20, baseType: !713)
!713 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !684, line: 75, baseType: !347, size: 8, offset: 216)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 76, baseType: !716, size: 64, offset: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 76, size: 64, elements: !717)
!717 = !{!718, !719, !726}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !716, file: !684, line: 77, baseType: !168, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !716, file: !684, line: 78, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !684, line: 86, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !722, file: !684, line: 87, baseType: !28, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !722, file: !684, line: 88, baseType: !383, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !716, file: !684, line: 79, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !684, line: 92, size: 256, elements: !730)
!730 = !{!731, !732, !733, !735, !736}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !729, file: !684, line: 94, baseType: !28, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !729, file: !684, line: 95, baseType: !28, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !729, file: !684, line: 96, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !729, file: !684, line: 97, baseType: !689, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !729, file: !684, line: 98, baseType: !168, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !637, file: !27, line: 438, baseType: !28, size: 32, offset: 2176)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !637, file: !27, line: 441, baseType: !28, size: 32, offset: 2208)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !637, file: !27, line: 442, baseType: !651, size: 64, offset: 2240)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !637, file: !27, line: 443, baseType: !655, size: 64, offset: 2304)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !637, file: !27, line: 444, baseType: !742, size: 8, offset: 2368)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !286, line: 35, baseType: !743)
!743 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !637, file: !27, line: 451, baseType: !742, size: 8, offset: 2376)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !637, file: !27, line: 454, baseType: !28, size: 32, offset: 2400)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !637, file: !27, line: 455, baseType: !747, size: 64, offset: 2432)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !749, line: 23, size: 96, elements: !750)
!749 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!750 = !{!751, !752, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !748, file: !749, line: 24, baseType: !130, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !748, file: !749, line: 24, baseType: !130, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !748, file: !749, line: 24, baseType: !130, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !637, file: !27, line: 458, baseType: !755, size: 64, offset: 2496)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!130}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !637, file: !27, line: 460, baseType: !759, size: 4032, align: 512, offset: 2560)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 4032, elements: !783)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !27, line: 362, size: 576, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !760, file: !27, line: 363, baseType: !168, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !760, file: !27, line: 364, baseType: !28, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !760, file: !27, line: 367, baseType: !765, size: 448, offset: 128)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !27, line: 319, size: 448, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !765, file: !27, line: 320, baseType: !636, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !27, line: 321, baseType: !769, size: 384, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !770, line: 40, size: 384, elements: !771)
!770 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !769, file: !770, line: 41, baseType: !773, size: 384, align: 64)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 384, align: 64, elements: !781)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !775, line: 5, size: 192, align: 64, elements: !776)
!775 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!776 = !{!777, !778, !780}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !774, file: !775, line: 6, baseType: !207, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !774, file: !775, line: 7, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !774, file: !775, line: 8, baseType: !779, size: 64, offset: 128)
!781 = !{!782}
!782 = !DISubrange(count: 2)
!783 = !{!784}
!784 = !DISubrange(count: 7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !637, file: !27, line: 463, baseType: !786, size: 192, offset: 6592)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !787, line: 8, size: 192, elements: !788)
!787 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!788 = !{!789, !790, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !786, file: !787, line: 10, baseType: !28, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !786, file: !787, line: 11, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !786, file: !787, line: 12, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !795, line: 59, size: 48, elements: !796)
!795 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!796 = !{!797, !801, !802, !803, !804, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !794, file: !795, line: 60, baseType: !798, size: 16)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !164, line: 18, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !166, line: 23, baseType: !800)
!800 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !794, file: !795, line: 61, baseType: !798, size: 16, offset: 16)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !794, file: !795, line: 63, baseType: !28, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !794, file: !795, line: 64, baseType: !28, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !795, line: 65, baseType: !28, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !794, file: !795, line: 66, baseType: !28, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !637, file: !27, line: 465, baseType: !207, size: 64, offset: 6784)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !637, file: !27, line: 469, baseType: !28, size: 32, offset: 6848)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !637, file: !27, line: 470, baseType: !306, size: 128, offset: 6912)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !637, file: !27, line: 471, baseType: !810, size: 64, offset: 7040)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !812, line: 33, size: 96, elements: !813)
!812 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!813 = !{!814, !815, !816, !817}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !811, file: !812, line: 37, baseType: !130, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !811, file: !812, line: 43, baseType: !130, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !811, file: !812, line: 45, baseType: !188, size: 16, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !812, line: 47, baseType: !188, size: 16, offset: 80)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !637, file: !27, line: 476, baseType: !819, size: 64, offset: 7104)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !27, line: 378, size: 256, elements: !821)
!821 = !{!822, !838, !839, !840}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !820, file: !27, line: 379, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !825, line: 204, baseType: !826)
!825 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !825, line: 197, size: 192, elements: !827)
!827 = !{!828, !830, !831, !832, !834, !836}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !826, file: !825, line: 198, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !825, line: 21, baseType: !170)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !826, file: !825, line: 199, baseType: !192, size: 8, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !826, file: !825, line: 200, baseType: !192, size: 8, offset: 40)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !826, file: !825, line: 201, baseType: !833, size: 16, offset: 48)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !825, line: 17, baseType: !187)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !826, file: !825, line: 202, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !825, line: 16, baseType: !165)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !826, file: !825, line: 203, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !825, line: 22, baseType: !165)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !820, file: !27, line: 380, baseType: !28, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !820, file: !27, line: 381, baseType: !383, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !820, file: !27, line: 382, baseType: !383, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !637, file: !27, line: 477, baseType: !820, size: 256, offset: 7168)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !637, file: !27, line: 480, baseType: !843, size: 64, offset: 7424)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !27, line: 480, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !637, file: !27, line: 483, baseType: !846, size: 64, offset: 7488)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !27, line: 483, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !637, file: !27, line: 488, baseType: !383, size: 64, offset: 7552)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !637, file: !27, line: 492, baseType: !168, size: 64, offset: 7616)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !637, file: !27, line: 493, baseType: !28, size: 32, offset: 7680)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !637, file: !27, line: 495, baseType: !168, size: 64, offset: 7744)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !637, file: !27, line: 496, baseType: !28, size: 32, offset: 7808)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !637, file: !27, line: 499, baseType: !28, size: 32, offset: 7840)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !637, file: !27, line: 500, baseType: !855, size: 64, offset: 7872)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !857, line: 45, baseType: !858)
!857 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !637, file: !27, line: 503, baseType: !28, size: 32, offset: 7936)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !637, file: !27, line: 504, baseType: !861, size: 64, offset: 8000)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !864, line: 96, size: 192, elements: !865)
!864 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!865 = !{!866, !867, !946, !950}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !863, file: !864, line: 97, baseType: !28, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !863, file: !864, line: 98, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !864, line: 24, size: 3072, elements: !870)
!870 = !{!871, !873, !874, !875, !876, !898, !899, !900, !901, !919, !931, !932, !943, !944, !945}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !869, file: !864, line: 26, baseType: !872, size: 128)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 128, elements: !781)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !869, file: !864, line: 27, baseType: !872, size: 128, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !869, file: !864, line: 28, baseType: !130, size: 32, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !869, file: !864, line: 31, baseType: !319, size: 32, align: 512, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !869, file: !864, line: 32, baseType: !877, size: 960, offset: 576)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !878, line: 206, size: 960, elements: !879)
!878 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!879 = !{!880, !889, !892, !894, !895, !897}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !877, file: !878, line: 207, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !286, line: 232, size: 128, align: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !882, file: !286, line: 233, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !882, file: !286, line: 234, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !881}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !877, file: !878, line: 208, baseType: !890, size: 256, offset: 64)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 256, elements: !269)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !877, file: !878, line: 209, baseType: !893, size: 256, offset: 320)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !269)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !877, file: !878, line: 213, baseType: !295, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !877, file: !878, line: 215, baseType: !896, size: 256, offset: 640)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !269)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !878, line: 216, baseType: !347, size: 8, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !869, file: !864, line: 33, baseType: !207, size: 64, offset: 1536)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !869, file: !864, line: 34, baseType: !207, size: 64, offset: 1600)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !869, file: !864, line: 35, baseType: !742, size: 8, offset: 1664)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !869, file: !864, line: 36, baseType: !902, size: 320, offset: 1728)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !903, line: 11, size: 320, elements: !904)
!903 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!904 = !{!905, !912, !913, !918}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !902, file: !903, line: 16, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !286, line: 198, size: 128, elements: !907)
!907 = !{!908, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !906, file: !286, line: 199, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !906, file: !286, line: 199, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !902, file: !903, line: 17, baseType: !207, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !902, file: !903, line: 18, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !903, line: 19, baseType: !169, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !869, file: !864, line: 37, baseType: !920, size: 256, offset: 2048)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !921, line: 98, size: 256, elements: !922)
!921 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !920, file: !921, line: 99, baseType: !665, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !920, file: !921, line: 100, baseType: !306, size: 128, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !920, file: !921, line: 101, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !921, line: 21, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !869, file: !864, line: 38, baseType: !882, size: 128, align: 64, offset: 2304)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !869, file: !864, line: 39, baseType: !933, size: 64, offset: 2432)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !864, line: 49, size: 768, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !864, line: 50, baseType: !319, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !934, file: !864, line: 51, baseType: !893, size: 256, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !934, file: !864, line: 53, baseType: !893, size: 256, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !934, file: !864, line: 54, baseType: !207, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !934, file: !864, line: 55, baseType: !933, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !934, file: !864, line: 56, baseType: !130, size: 32, offset: 704)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !934, file: !864, line: 57, baseType: !130, size: 32, offset: 736)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !869, file: !864, line: 40, baseType: !207, size: 64, offset: 2496)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !869, file: !864, line: 42, baseType: !130, size: 32, offset: 2560)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !869, file: !864, line: 43, baseType: !862, size: 64, offset: 2624)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !863, file: !864, line: 99, baseType: !947, offset: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !948, line: 211, elements: !949)
!948 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!949 = !{}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !863, file: !864, line: 100, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !864, line: 63, size: 3008, elements: !953)
!953 = !{!954, !955, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !983, !984, !985, !986, !995}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !952, file: !864, line: 64, baseType: !933, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !952, file: !864, line: 65, baseType: !956, size: 192, offset: 64)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 192, elements: !384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !952, file: !864, line: 67, baseType: !130, size: 32, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !952, file: !864, line: 68, baseType: !661, size: 256, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !864, line: 69, baseType: !319, size: 32, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !952, file: !864, line: 70, baseType: !661, size: 256, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !952, file: !864, line: 71, baseType: !207, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !952, file: !864, line: 72, baseType: !207, size: 64, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !952, file: !864, line: 73, baseType: !207, size: 64, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !952, file: !864, line: 74, baseType: !207, size: 64, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !952, file: !864, line: 75, baseType: !207, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !952, file: !864, line: 76, baseType: !207, size: 64, offset: 1216)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !952, file: !864, line: 77, baseType: !207, size: 64, offset: 1280)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !952, file: !864, line: 78, baseType: !207, size: 64, offset: 1344)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !952, file: !864, line: 79, baseType: !742, size: 8, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !952, file: !864, line: 80, baseType: !207, size: 64, offset: 1472)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !952, file: !864, line: 81, baseType: !661, size: 256, offset: 1536)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !952, file: !864, line: 82, baseType: !973, size: 256, offset: 1792)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !974, line: 26, size: 256, elements: !975)
!974 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !973, file: !974, line: 27, baseType: !28, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !973, file: !974, line: 28, baseType: !978, size: 192, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !979, line: 43, size: 192, elements: !980)
!979 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !978, file: !979, line: 44, baseType: !674, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !978, file: !979, line: 45, baseType: !306, size: 128, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !952, file: !864, line: 84, baseType: !339, size: 32, offset: 2048)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !952, file: !864, line: 87, baseType: !207, size: 64, offset: 2112)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !952, file: !864, line: 88, baseType: !207, size: 64, offset: 2176)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !952, file: !864, line: 89, baseType: !987, size: 704, offset: 2240)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !921, line: 111, size: 704, elements: !988)
!988 = !{!989, !990, !991, !994}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !987, file: !921, line: 112, baseType: !920, size: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !987, file: !921, line: 113, baseType: !902, size: 320, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !987, file: !921, line: 116, baseType: !992, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !921, line: 18, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !987, file: !921, line: 117, baseType: !130, size: 32, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !952, file: !864, line: 90, baseType: !862, size: 64, offset: 2944)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !637, file: !27, line: 515, baseType: !997, size: 64, offset: 8064)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !999, line: 117, size: 128, elements: !1000)
!999 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !998, file: !999, line: 118, baseType: !657, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !998, file: !999, line: 119, baseType: !657, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !998, file: !999, line: 120, baseType: !295, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !637, file: !27, line: 516, baseType: !28, size: 32, offset: 8128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !637, file: !27, line: 519, baseType: !28, size: 32, offset: 8160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !637, file: !27, line: 520, baseType: !1007, size: 64, offset: 8192)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !637, file: !27, line: 523, baseType: !1009, size: 64, offset: 8256)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !27, line: 523, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !637, file: !27, line: 524, baseType: !28, size: 32, offset: 8320)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !637, file: !27, line: 525, baseType: !1014, size: 64, offset: 8384)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !27, line: 525, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !637, file: !27, line: 526, baseType: !28, size: 32, offset: 8448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !637, file: !27, line: 533, baseType: !168, size: 64, offset: 8512)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !637, file: !27, line: 534, baseType: !28, size: 32, offset: 8576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !637, file: !27, line: 535, baseType: !1021, size: 64, offset: 8640)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !637, file: !27, line: 536, baseType: !28, size: 32, offset: 8704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !637, file: !27, line: 539, baseType: !130, size: 32, offset: 8736)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !637, file: !27, line: 540, baseType: !1025, size: 64, offset: 8768)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1027, line: 32, size: 64, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1026, file: !1027, line: 33, baseType: !657, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1026, file: !1027, line: 34, baseType: !657, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !637, file: !27, line: 563, baseType: !306, size: 128, offset: 8832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !637, file: !27, line: 565, baseType: !306, size: 128, offset: 8960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !637, file: !27, line: 568, baseType: !1034, size: 64, offset: 9088)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !637, file: !27, line: 570, baseType: !339, size: 32, offset: 9152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !35, line: 2382, baseType: !611, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !612, file: !35, line: 2383, baseType: !1040, size: 64, offset: 512)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !286, line: 194, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1040, file: !286, line: 195, baseType: !909, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !612, file: !35, line: 2385, baseType: !1044, offset: 576)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !948, line: 206, elements: !949)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !612, file: !35, line: 2386, baseType: !1044, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !612, file: !35, line: 2387, baseType: !1044, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !612, file: !35, line: 2388, baseType: !1048, offset: 576)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, elements: !384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !612, file: !35, line: 2390, baseType: !1044, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !612, file: !35, line: 2391, baseType: !1044, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !612, file: !35, line: 2392, baseType: !1044, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !612, file: !35, line: 2393, baseType: !1044, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !598, file: !35, line: 1197, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !1057)
!1057 = !{!1058, !1062, !1066, !1067, !1071, !1077, !1081, !1082, !1083, !1087, !1091, !1095, !1096, !1097, !1103, !1107, !1108, !1115, !1116, !1117, !1118, !1122, !1126, !1175, !1191, !1192}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1056, file: !35, line: 2058, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!451, !597}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1056, file: !35, line: 2059, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !451}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1056, file: !35, line: 2060, baseType: !1063, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1056, file: !35, line: 2062, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !451, !130}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1056, file: !35, line: 2063, baseType: !1072, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!130, !451, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1056, file: !35, line: 2064, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!130, !451}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1056, file: !35, line: 2065, baseType: !1063, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1056, file: !35, line: 2066, baseType: !632, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1056, file: !35, line: 2067, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!130, !597, !130}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1056, file: !35, line: 2068, baseType: !1088, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!130, !597, !34}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1056, file: !35, line: 2069, baseType: !1092, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!130, !597}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1056, file: !35, line: 2070, baseType: !1088, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1056, file: !35, line: 2071, baseType: !1092, size: 64, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1056, file: !35, line: 2072, baseType: !1098, size: 64, offset: 832)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!130, !486, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1056, file: !35, line: 2073, baseType: !1104, size: 64, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!130, !597, !791, !383}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1056, file: !35, line: 2074, baseType: !632, size: 64, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1056, file: !35, line: 2076, baseType: !1109, size: 64, offset: 1024)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!130, !1112, !486}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1114, line: 66, flags: DIFlagFwdDecl)
!1114 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1056, file: !35, line: 2077, baseType: !1109, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1056, file: !35, line: 2078, baseType: !1109, size: 64, offset: 1152)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1056, file: !35, line: 2079, baseType: !1109, size: 64, offset: 1216)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1056, file: !35, line: 2081, baseType: !1119, size: 64, offset: 1280)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!291, !597, !130, !383, !419, !607}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1056, file: !35, line: 2082, baseType: !1123, size: 64, offset: 1344)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!291, !597, !130, !283, !419, !607}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1056, file: !35, line: 2083, baseType: !1127, size: 64, offset: 1408)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!1130, !451}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1158, !1159, !1160}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1132, file: !40, line: 297, baseType: !906, size: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1132, file: !40, line: 298, baseType: !306, size: 128, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1132, file: !40, line: 299, baseType: !306, size: 128, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1132, file: !40, line: 300, baseType: !306, size: 128, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1132, file: !40, line: 301, baseType: !661, size: 256, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1132, file: !40, line: 302, baseType: !319, size: 32, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1132, file: !40, line: 303, baseType: !339, size: 32, offset: 800)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1132, file: !40, line: 304, baseType: !597, size: 64, offset: 832)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1132, file: !40, line: 305, baseType: !1143, size: 64, offset: 896)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !1144)
!1144 = !{!1145, !1157}
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !40, line: 69, baseType: !1146, size: 32)
!1146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !40, line: 69, size: 32, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1146, file: !40, line: 70, baseType: !457, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1146, file: !40, line: 71, baseType: !466, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1146, file: !40, line: 72, baseType: !1151, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1152, line: 24, baseType: !1153)
!1152 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1152, line: 22, size: 32, elements: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1153, file: !1152, line: 23, baseType: !1156, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1152, line: 20, baseType: !463)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1143, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1132, file: !40, line: 306, baseType: !607, size: 64, offset: 960)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1132, file: !40, line: 307, baseType: !207, size: 64, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1132, file: !40, line: 308, baseType: !1161, size: 576, offset: 1088)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !1162)
!1162 = !{!1163, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1174}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1161, file: !40, line: 206, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !609)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1161, file: !40, line: 207, baseType: !1164, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1161, file: !40, line: 208, baseType: !1164, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1161, file: !40, line: 209, baseType: !1164, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1161, file: !40, line: 210, baseType: !1164, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1161, file: !40, line: 211, baseType: !1164, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1161, file: !40, line: 212, baseType: !1164, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1161, file: !40, line: 213, baseType: !1172, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1173, line: 8, baseType: !672)
!1173 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1161, file: !40, line: 214, baseType: !1172, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1056, file: !35, line: 2085, baseType: !1176, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!295, !597, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1181, line: 15, size: 256, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1182 = !{!1183, !1185, !1186, !1187, !1188}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1180, file: !1181, line: 16, baseType: !1184, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !286, line: 154, baseType: !28)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1180, file: !1181, line: 19, baseType: !130, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1180, file: !1181, line: 26, baseType: !207, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1180, file: !1181, line: 33, baseType: !207, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1180, file: !1181, line: 36, baseType: !1189, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !59, line: 33, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1056, file: !35, line: 2087, baseType: !1176, size: 64, offset: 1536)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1056, file: !35, line: 2089, baseType: !632, size: 64, offset: 1600)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !598, file: !35, line: 1198, baseType: !1194, size: 64, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !1197)
!1197 = !{!1198, !1202, !1206, !1210, !1211, !1212, !1213, !1214, !1219, !1224, !1228}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1196, file: !40, line: 325, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!130, !1131}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1196, file: !40, line: 326, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1131, !597, !130}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1196, file: !40, line: 327, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !1131}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1196, file: !40, line: 328, baseType: !1199, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1196, file: !40, line: 329, baseType: !1199, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1196, file: !40, line: 330, baseType: !1199, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1196, file: !40, line: 331, baseType: !1084, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1196, file: !40, line: 334, baseType: !1215, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!1218, !451}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1196, file: !40, line: 335, baseType: !1220, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!130, !451, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1196, file: !40, line: 337, baseType: !1225, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!130, !451, !1218}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1196, file: !40, line: 339, baseType: !1229, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!130, !597, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !598, file: !35, line: 1199, baseType: !1234, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !1237)
!1237 = !{!1238, !1249, !1250, !1254, !1255, !1256, !1271, !1294, !1298, !1299, !1322}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1236, file: !40, line: 431, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!130, !597, !130, !130, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1245, line: 8, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1244, file: !1245, line: 9, baseType: !591, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1244, file: !1245, line: 10, baseType: !486, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1236, file: !40, line: 432, baseType: !1084, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1236, file: !40, line: 433, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!130, !597, !28}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1236, file: !40, line: 434, baseType: !1251, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1236, file: !40, line: 435, baseType: !1084, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1236, file: !40, line: 436, baseType: !1257, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!130, !597, !130, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1261, file: !40, line: 418, baseType: !130, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1261, file: !40, line: 419, baseType: !28, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1261, file: !40, line: 420, baseType: !28, size: 32, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1261, file: !40, line: 422, baseType: !28, size: 32, offset: 96)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1261, file: !40, line: 423, baseType: !28, size: 32, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1261, file: !40, line: 424, baseType: !28, size: 32, offset: 160)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1261, file: !40, line: 425, baseType: !28, size: 32, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1261, file: !40, line: 426, baseType: !28, size: 32, offset: 224)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1236, file: !40, line: 437, baseType: !1272, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!130, !597, !1143, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1276, file: !40, line: 346, baseType: !130, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1276, file: !40, line: 347, baseType: !163, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1276, file: !40, line: 348, baseType: !163, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1276, file: !40, line: 349, baseType: !163, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1276, file: !40, line: 350, baseType: !163, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1276, file: !40, line: 351, baseType: !163, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1276, file: !40, line: 352, baseType: !163, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1276, file: !40, line: 353, baseType: !671, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1276, file: !40, line: 355, baseType: !671, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1276, file: !40, line: 356, baseType: !130, size: 32, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1276, file: !40, line: 357, baseType: !130, size: 32, offset: 608)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1276, file: !40, line: 358, baseType: !163, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1276, file: !40, line: 359, baseType: !163, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1276, file: !40, line: 360, baseType: !163, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1276, file: !40, line: 361, baseType: !671, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1276, file: !40, line: 362, baseType: !130, size: 32, offset: 896)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1236, file: !40, line: 438, baseType: !1295, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!130, !597, !1232, !1275}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1236, file: !40, line: 440, baseType: !1272, size: 64, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1236, file: !40, line: 441, baseType: !1300, size: 64, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!130, !597, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1304, file: !40, line: 412, baseType: !28, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1304, file: !40, line: 413, baseType: !1308, size: 1344, offset: 64)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 1344, elements: !384)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1321}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !40, line: 398, baseType: !28, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1309, file: !40, line: 399, baseType: !28, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1309, file: !40, line: 401, baseType: !28, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1309, file: !40, line: 402, baseType: !28, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1309, file: !40, line: 403, baseType: !28, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1309, file: !40, line: 404, baseType: !28, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1309, file: !40, line: 405, baseType: !28, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1309, file: !40, line: 406, baseType: !167, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1309, file: !40, line: 407, baseType: !1320, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !286, line: 132, baseType: !163)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1309, file: !40, line: 408, baseType: !1320, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1236, file: !40, line: 442, baseType: !1251, size: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !598, file: !35, line: 1200, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !598, file: !35, line: 1201, baseType: !207, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !598, file: !35, line: 1202, baseType: !207, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !598, file: !35, line: 1203, baseType: !207, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !598, file: !35, line: 1204, baseType: !486, size: 64, offset: 832)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !598, file: !35, line: 1205, baseType: !1332, size: 320, offset: 896)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1333, line: 48, size: 320, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1334 = !{!1335, !1336, !1337, !1338, !1339}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1332, file: !1333, line: 49, baseType: !665, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1332, file: !1333, line: 55, baseType: !665, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1332, file: !1333, line: 57, baseType: !676, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1332, file: !1333, line: 59, baseType: !674, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1332, file: !1333, line: 60, baseType: !306, size: 128, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !598, file: !35, line: 1206, baseType: !130, size: 32, offset: 1216)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !598, file: !35, line: 1207, baseType: !339, size: 32, offset: 1248)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !598, file: !35, line: 1209, baseType: !168, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !598, file: !35, line: 1211, baseType: !1344, size: 64, offset: 1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !598, file: !35, line: 1223, baseType: !1349, size: 64, offset: 1408)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !503, line: 34, size: 64, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1349, file: !503, line: 35, baseType: !506, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !598, file: !35, line: 1224, baseType: !306, size: 128, offset: 1472)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !598, file: !35, line: 1225, baseType: !1354, size: 64, offset: 1600)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !598, file: !35, line: 1226, baseType: !1357, size: 64, offset: 1664)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !598, file: !35, line: 1227, baseType: !1360, size: 64, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !598, file: !35, line: 1228, baseType: !1363, size: 64, offset: 1792)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !598, file: !35, line: 1229, baseType: !906, size: 128, offset: 1856)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !598, file: !35, line: 1230, baseType: !28, size: 32, offset: 1984)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !598, file: !35, line: 1231, baseType: !1368, size: 2496, offset: 2048)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1374, !1406}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !40, line: 522, baseType: !28, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1368, file: !40, line: 523, baseType: !1332, size: 320, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1368, file: !40, line: 524, baseType: !1373, size: 192, offset: 384)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 192, elements: !384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1368, file: !40, line: 525, baseType: !1375, size: 1728, offset: 576)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 1728, elements: !384)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !1377)
!1377 = !{!1378, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1376, file: !40, line: 223, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !1381)
!1381 = !{!1382, !1383, !1396, !1397}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1380, file: !40, line: 446, baseType: !130, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1380, file: !40, line: 447, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1386, file: !40, line: 313, baseType: !1084, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1386, file: !40, line: 314, baseType: !1084, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1386, file: !40, line: 315, baseType: !1084, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1386, file: !40, line: 316, baseType: !1084, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1386, file: !40, line: 317, baseType: !1199, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1386, file: !40, line: 318, baseType: !1199, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1386, file: !40, line: 319, baseType: !1199, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1386, file: !40, line: 320, baseType: !1229, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1380, file: !40, line: 448, baseType: !636, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1380, file: !40, line: 449, baseType: !1379, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1376, file: !40, line: 224, baseType: !130, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1376, file: !40, line: 226, baseType: !306, size: 128, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1376, file: !40, line: 227, baseType: !207, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1376, file: !40, line: 228, baseType: !28, size: 32, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1376, file: !40, line: 229, baseType: !28, size: 32, offset: 352)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1376, file: !40, line: 230, baseType: !1164, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1376, file: !40, line: 231, baseType: !1164, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1376, file: !40, line: 232, baseType: !168, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1368, file: !40, line: 526, baseType: !1407, size: 192, offset: 2304)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 192, elements: !384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !598, file: !35, line: 1233, baseType: !1409, size: 2368, offset: 4544)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1409, file: !35, line: 1185, baseType: !188, size: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1409, file: !35, line: 1186, baseType: !188, size: 16, offset: 16)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1409, file: !35, line: 1187, baseType: !1414, size: 2304, offset: 64)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 2304, elements: !384)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1416, line: 12, size: 768, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1417 = !{!1418, !1432, !1433, !3515, !3516}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1415, file: !1416, line: 13, baseType: !1419, size: 384)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1420, line: 17, size: 384, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1421 = !{!1422, !1423, !1424, !1431}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1419, file: !1420, line: 18, baseType: !130, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1419, file: !1420, line: 19, baseType: !130, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1419, file: !1420, line: 20, baseType: !1425, size: 192, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1426, line: 41, baseType: !1427)
!1426 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1426, line: 37, size: 192, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1427, file: !1426, line: 38, baseType: !319, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1427, file: !1426, line: 39, baseType: !306, size: 128, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1419, file: !1420, line: 22, baseType: !882, size: 128, align: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1415, file: !1416, line: 14, baseType: !734, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1415, file: !1416, line: 15, baseType: !1434, size: 64, offset: 448)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1435, line: 16, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1434, file: !1435, line: 17, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1114, line: 746, size: 58368, elements: !1440)
!1440 = !{!1441, !1449, !1450, !1451, !1457, !1458, !1459, !1460, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1531, !1542, !1635, !1639, !1642, !1673, !1674, !1675, !1676, !1687, !1689, !1690, !1691, !1692, !1693, !1694, !1705, !1706, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1723, !1724, !1731, !1732, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2690, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2705, !2706, !2707, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2739, !2745, !2746, !2747, !2748, !2749, !2753, !2756, !2763, !2768, !2771, !2774, !2777, !2780, !2918, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2956, !2957, !2958, !2967, !2975, !2976, !2977, !2978, !2979, !2984, !2985, !2986, !2989, !2990, !2993, !2996, !2999, !3007, !3010, !3011, !3096, !3097, !3098, !3099, !3100, !3106, !3107, !3108, !3109, !3112, !3113, !3116, !3119, !3120, !3123, !3124, !3125, !3128, !3129, !3130, !3131, !3132, !3133, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3165, !3166, !3172, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3184, !3256, !3258, !3259, !3260, !3261, !3262, !3263, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3292, !3293, !3294}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1439, file: !1114, line: 752, baseType: !1442, size: 192)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1443, line: 56, size: 192, elements: !1444)
!1443 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1444 = !{!1445, !1446, !1447, !1448}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1442, file: !1443, line: 57, baseType: !207, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1442, file: !1443, line: 58, baseType: !207, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1442, file: !1443, line: 59, baseType: !169, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1442, file: !1443, line: 61, baseType: !169, size: 32, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1439, file: !1114, line: 754, baseType: !28, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1439, file: !1114, line: 767, baseType: !168, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1439, file: !1114, line: 768, baseType: !1452, size: 32, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1453, line: 113, baseType: !1454)
!1453 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1453, line: 111, size: 32, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1454, file: !1453, line: 112, baseType: !339, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !1114, line: 770, baseType: !28, size: 32, offset: 352)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1439, file: !1114, line: 771, baseType: !28, size: 32, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1439, file: !1114, line: 774, baseType: !130, size: 32, offset: 416)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1439, file: !1114, line: 775, baseType: !1461, size: 128, offset: 448)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1462, line: 58, size: 128, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1463 = !{!1464, !1470, !1475, !1476}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1461, file: !1462, line: 59, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1466, line: 60, size: 64, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1465, file: !1466, line: 61, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1462, line: 60, baseType: !1471, size: 32, offset: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1462, line: 60, size: 32, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1471, file: !1462, line: 61, baseType: !28, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1471, file: !1462, line: 62, baseType: !339, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1461, file: !1462, line: 65, baseType: !353, size: 16, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1461, file: !1462, line: 65, baseType: !353, size: 16, offset: 112)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1439, file: !1114, line: 776, baseType: !28, size: 32, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1439, file: !1114, line: 777, baseType: !207, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1439, file: !1114, line: 778, baseType: !1438, size: 64, offset: 704)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1439, file: !1114, line: 787, baseType: !130, size: 32, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1439, file: !1114, line: 788, baseType: !130, size: 32, offset: 800)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1439, file: !1114, line: 790, baseType: !130, size: 32, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1439, file: !1114, line: 792, baseType: !130, size: 32, offset: 864)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1439, file: !1114, line: 793, baseType: !130, size: 32, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1439, file: !1114, line: 794, baseType: !130, size: 32, offset: 928)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1439, file: !1114, line: 795, baseType: !28, size: 32, offset: 960)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1439, file: !1114, line: 797, baseType: !1488, size: 2048, offset: 1024)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1114, line: 551, size: 2048, elements: !1489)
!1489 = !{!1490, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1510, !1513, !1514, !1515}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1488, file: !1114, line: 553, baseType: !1491, size: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1114, line: 411, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1491, file: !1114, line: 412, baseType: !207, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1491, file: !1114, line: 413, baseType: !169, size: 32, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1488, file: !1114, line: 554, baseType: !774, size: 192, align: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1488, file: !1114, line: 555, baseType: !163, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1488, file: !1114, line: 556, baseType: !163, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1488, file: !1114, line: 558, baseType: !306, size: 128, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1488, file: !1114, line: 559, baseType: !28, size: 32, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1488, file: !1114, line: 561, baseType: !163, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1488, file: !1114, line: 562, baseType: !163, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1488, file: !1114, line: 563, baseType: !163, size: 64, offset: 768)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1488, file: !1114, line: 564, baseType: !163, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1488, file: !1114, line: 565, baseType: !671, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1488, file: !1114, line: 566, baseType: !163, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1488, file: !1114, line: 568, baseType: !163, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1488, file: !1114, line: 571, baseType: !130, size: 32, offset: 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1488, file: !1114, line: 572, baseType: !1509, size: 64, offset: 1152)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1488, file: !1114, line: 574, baseType: !1511, size: 64, offset: 1216)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1114, line: 49, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1488, file: !1114, line: 576, baseType: !1511, size: 64, offset: 1280)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1488, file: !1114, line: 578, baseType: !207, size: 64, offset: 1344)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1488, file: !1114, line: 588, baseType: !1516, size: 512, align: 512, offset: 1536)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1114, line: 497, size: 512, align: 512, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1516, file: !1114, line: 498, baseType: !163, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1516, file: !1114, line: 499, baseType: !163, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1516, file: !1114, line: 500, baseType: !163, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1516, file: !1114, line: 501, baseType: !169, size: 32, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1516, file: !1114, line: 502, baseType: !169, size: 32, offset: 224)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1516, file: !1114, line: 503, baseType: !207, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1516, file: !1114, line: 504, baseType: !207, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1516, file: !1114, line: 505, baseType: !207, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1516, file: !1114, line: 506, baseType: !1527, size: 64, align: 64, offset: 448)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1114, line: 445, size: 64, align: 64, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1527, file: !1114, line: 446, baseType: !28, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1527, file: !1114, line: 447, baseType: !28, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1439, file: !1114, line: 798, baseType: !1532, size: 384, offset: 3072)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1114, line: 592, size: 384, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1532, file: !1114, line: 593, baseType: !306, size: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1532, file: !1114, line: 594, baseType: !207, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1532, file: !1114, line: 595, baseType: !207, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1532, file: !1114, line: 596, baseType: !28, size: 32, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1532, file: !1114, line: 597, baseType: !188, size: 16, offset: 288)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1532, file: !1114, line: 598, baseType: !188, size: 16, offset: 304)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1532, file: !1114, line: 600, baseType: !1541, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1439, file: !1114, line: 799, baseType: !1543, size: 1792, offset: 3456)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1114, line: 610, size: 1792, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1632, !1633}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1543, file: !1114, line: 611, baseType: !774, size: 192, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1543, file: !1114, line: 618, baseType: !163, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1543, file: !1114, line: 619, baseType: !163, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1543, file: !1114, line: 620, baseType: !163, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1543, file: !1114, line: 621, baseType: !163, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1543, file: !1114, line: 622, baseType: !163, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1543, file: !1114, line: 629, baseType: !671, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1543, file: !1114, line: 630, baseType: !163, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1114, line: 631, baseType: !28, size: 32, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1543, file: !1114, line: 653, baseType: !28, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1543, file: !1114, line: 654, baseType: !28, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1543, file: !1114, line: 655, baseType: !28, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1543, file: !1114, line: 656, baseType: !28, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1543, file: !1114, line: 662, baseType: !1559, size: 512, offset: 704)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !1560)
!1560 = !{!1561, !1569, !1570, !1575, !1628, !1629, !1630, !1631}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1559, file: !46, line: 119, baseType: !1562, size: 256)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1563, line: 9, size: 256, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1562, file: !1563, line: 10, baseType: !774, size: 192, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1562, file: !1563, line: 11, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1568, line: 29, baseType: !671)
!1568 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1559, file: !46, line: 120, baseType: !1567, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1559, file: !46, line: 121, baseType: !1571, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!45, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1559, file: !46, line: 122, baseType: !1576, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !1578)
!1578 = !{!1579, !1602, !1603, !1606, !1611, !1612, !1623, !1627}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1577, file: !46, line: 160, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1581, file: !46, line: 216, baseType: !674, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1581, file: !46, line: 217, baseType: !28, size: 32, offset: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1581, file: !46, line: 218, baseType: !28, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1581, file: !46, line: 219, baseType: !28, size: 32, offset: 96)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1581, file: !46, line: 220, baseType: !28, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1581, file: !46, line: 221, baseType: !28, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1581, file: !46, line: 222, baseType: !28, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1581, file: !46, line: 223, baseType: !28, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1581, file: !46, line: 224, baseType: !28, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1581, file: !46, line: 226, baseType: !28, size: 32, offset: 160)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1581, file: !46, line: 227, baseType: !188, size: 16, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1581, file: !46, line: 228, baseType: !188, size: 16, offset: 208)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1581, file: !46, line: 229, baseType: !28, size: 32, offset: 224)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1581, file: !46, line: 235, baseType: !1567, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1581, file: !46, line: 236, baseType: !1574, size: 64, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1581, file: !46, line: 237, baseType: !1567, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1581, file: !46, line: 238, baseType: !1574, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1581, file: !46, line: 239, baseType: !1601, size: 4096, align: 512, offset: 512)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 4096, align: 512, elements: !259)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1577, file: !46, line: 161, baseType: !28, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1577, file: !46, line: 162, baseType: !1604, size: 32, offset: 96)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !286, line: 32, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !293, line: 96, baseType: !130)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1577, file: !46, line: 163, baseType: !1607, size: 32, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !493, line: 274, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !493, line: 274, size: 32, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1608, file: !493, line: 274, baseType: !497, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1577, file: !46, line: 164, baseType: !1574, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1577, file: !46, line: 165, baseType: !1613, size: 128, offset: 256)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1563, line: 14, size: 128, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1613, file: !1563, line: 15, baseType: !1616, size: 128)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !775, line: 26, size: 128, elements: !1617)
!1617 = !{!1618, !1622}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1616, file: !775, line: 27, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !775, line: 12, size: 64, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1619, file: !775, line: 13, baseType: !779, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1616, file: !775, line: 28, baseType: !779, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1577, file: !46, line: 166, baseType: !1624, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1567}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1577, file: !46, line: 167, baseType: !1567, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1559, file: !46, line: 123, baseType: !347, size: 8, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1559, file: !46, line: 124, baseType: !347, size: 8, offset: 456)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1559, file: !46, line: 125, baseType: !347, size: 8, offset: 464)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1559, file: !46, line: 126, baseType: !347, size: 8, offset: 472)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1543, file: !1114, line: 671, baseType: !1559, size: 512, offset: 1216)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1543, file: !1114, line: 679, baseType: !1634, size: 64, offset: 1728)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1439, file: !1114, line: 800, baseType: !1636, size: 64, offset: 5248)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1114, line: 800, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1439, file: !1114, line: 809, baseType: !1640, size: 64, offset: 5312)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1114, line: 70, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1439, file: !1114, line: 825, baseType: !1643, size: 2048, align: 512, offset: 5632)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1114, line: 509, size: 2048, align: 512, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1643, file: !1114, line: 511, baseType: !163, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1643, file: !1114, line: 512, baseType: !163, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1643, file: !1114, line: 513, baseType: !163, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1643, file: !1114, line: 514, baseType: !163, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1643, file: !1114, line: 515, baseType: !163, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1643, file: !1114, line: 516, baseType: !163, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1643, file: !1114, line: 518, baseType: !163, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1643, file: !1114, line: 519, baseType: !163, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1643, file: !1114, line: 520, baseType: !671, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1643, file: !1114, line: 522, baseType: !163, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1643, file: !1114, line: 523, baseType: !163, size: 64, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1643, file: !1114, line: 524, baseType: !671, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1643, file: !1114, line: 526, baseType: !671, size: 64, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1643, file: !1114, line: 527, baseType: !163, size: 64, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1643, file: !1114, line: 529, baseType: !163, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1643, file: !1114, line: 530, baseType: !163, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1643, file: !1114, line: 531, baseType: !163, size: 64, offset: 1024)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1643, file: !1114, line: 532, baseType: !163, size: 64, offset: 1088)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1643, file: !1114, line: 533, baseType: !163, size: 64, offset: 1152)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1643, file: !1114, line: 535, baseType: !163, size: 64, offset: 1216)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1643, file: !1114, line: 536, baseType: !163, size: 64, offset: 1280)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1643, file: !1114, line: 537, baseType: !163, size: 64, offset: 1344)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1643, file: !1114, line: 538, baseType: !163, size: 64, offset: 1408)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1643, file: !1114, line: 539, baseType: !163, size: 64, offset: 1472)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1643, file: !1114, line: 540, baseType: !163, size: 64, offset: 1536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1643, file: !1114, line: 541, baseType: !163, size: 64, offset: 1600)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1643, file: !1114, line: 542, baseType: !163, size: 64, offset: 1664)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1643, file: !1114, line: 543, baseType: !163, size: 64, offset: 1728)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1439, file: !1114, line: 833, baseType: !28, size: 32, offset: 7680)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1439, file: !1114, line: 836, baseType: !28, size: 32, offset: 7712)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1439, file: !1114, line: 837, baseType: !130, size: 32, offset: 7744)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1439, file: !1114, line: 838, baseType: !1677, size: 64, offset: 7808)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1680, line: 19, baseType: !1681)
!1680 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1680, line: 19, size: 64, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1681, file: !1680, line: 19, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !1685)
!1685 = !{!1686}
!1686 = !DISubrange(count: 1)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1439, file: !1114, line: 839, baseType: !1688, size: 64, offset: 7872)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1439, file: !1114, line: 840, baseType: !1679, size: 64, offset: 7936)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1439, file: !1114, line: 841, baseType: !168, size: 64, offset: 8000)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1439, file: !1114, line: 843, baseType: !188, size: 16, offset: 8064)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1439, file: !1114, line: 845, baseType: !188, size: 16, offset: 8080)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1439, file: !1114, line: 848, baseType: !130, size: 32, offset: 8096)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1439, file: !1114, line: 849, baseType: !1695, size: 32, offset: 8128)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1114, line: 718, size: 32, elements: !1696)
!1696 = !{!1697, !1704}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1695, file: !1114, line: 724, baseType: !1698, size: 32)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !1114, line: 719, size: 32, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1698, file: !1114, line: 720, baseType: !347, size: 8)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1698, file: !1114, line: 721, baseType: !347, size: 8, offset: 8)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1698, file: !1114, line: 722, baseType: !347, size: 8, offset: 16)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1698, file: !1114, line: 723, baseType: !347, size: 8, offset: 24)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1695, file: !1114, line: 725, baseType: !169, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1439, file: !1114, line: 850, baseType: !306, size: 128, offset: 8192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1439, file: !1114, line: 851, baseType: !1707, size: 64, offset: 8320)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1114, line: 60, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1439, file: !1114, line: 855, baseType: !207, size: 64, offset: 8384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1439, file: !1114, line: 856, baseType: !347, size: 8, offset: 8448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1439, file: !1114, line: 857, baseType: !347, size: 8, offset: 8456)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1439, file: !1114, line: 858, baseType: !130, size: 32, offset: 8480)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1439, file: !1114, line: 859, baseType: !306, size: 128, offset: 8512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1439, file: !1114, line: 860, baseType: !130, size: 32, offset: 8640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1439, file: !1114, line: 861, baseType: !306, size: 128, offset: 8704)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1439, file: !1114, line: 873, baseType: !1717, size: 256, offset: 8832)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1114, line: 376, size: 256, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1717, file: !1114, line: 381, baseType: !207, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1717, file: !1114, line: 384, baseType: !167, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1717, file: !1114, line: 389, baseType: !167, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1717, file: !1114, line: 392, baseType: !167, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1439, file: !1114, line: 875, baseType: !306, size: 128, offset: 9088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1439, file: !1114, line: 877, baseType: !1725, size: 320, offset: 9216)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1726, line: 86, size: 320, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1725, file: !1726, line: 87, baseType: !130, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1725, file: !1726, line: 88, baseType: !306, size: 128, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1725, file: !1726, line: 89, baseType: !306, size: 128, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1439, file: !1114, line: 878, baseType: !774, size: 192, align: 64, offset: 9536)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1439, file: !1114, line: 881, baseType: !1733, size: 64, offset: 9728)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !59, line: 733, size: 10240, elements: !1735)
!1735 = !{!1736, !2609}
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !59, line: 734, baseType: !1737, size: 10240)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !59, line: 734, size: 10240, elements: !1738)
!1738 = !{!1739, !1743, !1756, !2486, !2487, !2488, !2489, !2490, !2491, !2498, !2499, !2500, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2539, !2541, !2544, !2589, !2590, !2591, !2594, !2595, !2596, !2599, !2600, !2601, !2607, !2608}
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !59, line: 739, baseType: !1740, size: 512, align: 512)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !59, line: 739, size: 512, align: 512, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1740, file: !59, line: 747, baseType: !339, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1737, file: !59, line: 750, baseType: !1744, size: 128, offset: 512)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1745, line: 218, size: 128, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1746 = !{!1747, !1754, !1755}
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 219, baseType: !1748, size: 32)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 219, size: 32, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1748, file: !1745, line: 220, baseType: !319, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1748, file: !1745, line: 221, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1745, line: 197, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1745, line: 197, elements: !949)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1744, file: !1745, line: 223, baseType: !28, size: 32, offset: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1744, file: !1745, line: 224, baseType: !168, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1737, file: !59, line: 752, baseType: !1757, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!207, !1760, !207, !207, !207, !207}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !1762)
!1762 = !{!1763, !1769, !1770, !1772, !1773, !1774, !1775, !1776, !1826, !2016, !2025, !2026, !2027, !2476, !2477, !2478, !2479, !2481, !2482, !2485}
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !35, line: 995, baseType: !1764, size: 128)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !35, line: 995, size: 128, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1764, file: !35, line: 996, baseType: !1465, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1764, file: !35, line: 997, baseType: !882, size: 128, align: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1764, file: !35, line: 998, baseType: !28, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1761, file: !35, line: 1005, baseType: !319, size: 32, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1761, file: !35, line: 1006, baseType: !1771, size: 32, offset: 160)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !286, line: 156, baseType: !28)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1761, file: !35, line: 1007, baseType: !665, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1761, file: !35, line: 1008, baseType: !661, size: 256, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1761, file: !35, line: 1009, baseType: !607, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1761, file: !35, line: 1010, baseType: !28, size: 32, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1761, file: !35, line: 1011, baseType: !1777, size: 256, offset: 640)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !1778)
!1778 = !{!1779, !1800, !1822, !1823, !1824, !1825}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !35, line: 949, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1781, line: 34, baseType: !1782)
!1781 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1781, line: 25, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1782, file: !1781, line: 26, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1786, line: 27, baseType: !1787)
!1786 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1786, line: 13, size: 64, elements: !1788)
!1788 = !{!1789, !1799}
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1786, line: 14, baseType: !1790, size: 32)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1786, line: 14, size: 32, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1790, file: !1786, line: 15, baseType: !339, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1790, file: !1786, line: 16, baseType: !1794, size: 32)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1786, line: 16, size: 32, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1794, file: !1786, line: 18, baseType: !347, size: 8)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1794, file: !1786, line: 19, baseType: !1798, size: 24, offset: 8)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 24, elements: !384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1787, file: !1786, line: 26, baseType: !331, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1777, file: !35, line: 950, baseType: !1801, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1809, !1810, !1811, !1812}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1802, file: !51, line: 61, baseType: !1452, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1802, file: !51, line: 62, baseType: !28, size: 32, offset: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1802, file: !51, line: 63, baseType: !319, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1802, file: !51, line: 65, baseType: !1808, size: 256, offset: 128)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 256, elements: !269)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1802, file: !51, line: 66, baseType: !1040, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1802, file: !51, line: 68, baseType: !1425, size: 192, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1802, file: !51, line: 69, baseType: !882, size: 128, align: 64, offset: 640)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1802, file: !51, line: 70, baseType: !1813, offset: 768)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, elements: !1820)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1814, file: !51, line: 55, baseType: !130, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1814, file: !51, line: 56, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1820 = !{!1821}
!1821 = !DISubrange(count: -1)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1777, file: !35, line: 951, baseType: !50, size: 32, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1777, file: !35, line: 952, baseType: !457, size: 32, offset: 160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1777, file: !35, line: 952, baseType: !457, size: 32, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1777, file: !35, line: 953, baseType: !130, size: 32, offset: 224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1761, file: !35, line: 1012, baseType: !1827, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1830, line: 110, size: 1472, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1848, !1849, !1850, !1851, !1852, !1853, !1961, !1962, !1963, !1964, !1965, !1996, !1999, !2003, !2011}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1829, file: !1830, line: 111, baseType: !665, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1829, file: !1830, line: 112, baseType: !457, size: 32, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1829, file: !1830, line: 113, baseType: !466, size: 32, offset: 96)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1829, file: !1830, line: 114, baseType: !457, size: 32, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1829, file: !1830, line: 115, baseType: !466, size: 32, offset: 160)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1829, file: !1830, line: 116, baseType: !457, size: 32, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1829, file: !1830, line: 117, baseType: !466, size: 32, offset: 224)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1829, file: !1830, line: 118, baseType: !457, size: 32, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1829, file: !1830, line: 119, baseType: !466, size: 32, offset: 288)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1829, file: !1830, line: 120, baseType: !28, size: 32, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1829, file: !1830, line: 121, baseType: !1843, size: 64, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1844, line: 24, baseType: !1845)
!1844 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1844, line: 24, size: 64, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1845, file: !1844, line: 24, baseType: !163, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1829, file: !1830, line: 122, baseType: !1843, size: 64, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1829, file: !1830, line: 123, baseType: !1843, size: 64, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1829, file: !1830, line: 124, baseType: !1843, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1829, file: !1830, line: 125, baseType: !1843, size: 64, offset: 640)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1829, file: !1830, line: 127, baseType: !192, size: 8, offset: 704)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1829, file: !1830, line: 129, baseType: !1854, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1856, line: 195, size: 1728, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1857 = !{!1858, !1859, !1862, !1867, !1868, !1871, !1872, !1877, !1878, !1879, !1880, !1883, !1884, !1885, !1886, !1887, !1925, !1946}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1855, file: !1856, line: 196, baseType: !1452, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1855, file: !1856, line: 197, baseType: !1860, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1856, line: 28, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !286, line: 104, baseType: !657)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1856, line: 198, baseType: !1863, size: 192, offset: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 198, size: 192, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1863, file: !1856, line: 199, baseType: !306, size: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1863, file: !1856, line: 200, baseType: !774, size: 192, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1855, file: !1856, line: 205, baseType: !1332, size: 320, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1855, file: !1856, line: 206, baseType: !1869, size: 64, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1856, line: 206, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1855, file: !1856, line: 207, baseType: !168, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1856, line: 208, baseType: !1873, size: 64, offset: 704)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 208, size: 64, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1873, file: !1856, line: 209, baseType: !1172, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1873, file: !1856, line: 210, baseType: !1172, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1855, file: !1856, line: 212, baseType: !1172, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1855, file: !1856, line: 213, baseType: !457, size: 32, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1855, file: !1856, line: 214, baseType: !466, size: 32, offset: 864)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1855, file: !1856, line: 215, baseType: !1881, size: 32, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1856, line: 31, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !286, line: 110, baseType: !169)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1855, file: !1856, line: 216, baseType: !188, size: 16, offset: 928)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1855, file: !1856, line: 217, baseType: !188, size: 16, offset: 944)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1855, file: !1856, line: 221, baseType: !800, size: 16, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1856, line: 228, baseType: !207, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1856, line: 245, baseType: !1888, size: 320, offset: 1088)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 245, size: 320, elements: !1889)
!1889 = !{!1890, !1917}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1888, file: !1856, line: 246, baseType: !1891, size: 320)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1856, line: 114, size: 320, elements: !1892)
!1892 = !{!1893, !1894, !1906, !1909, !1916}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1891, file: !1856, line: 116, baseType: !207, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1856, line: 117, baseType: !1895, size: 64, offset: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1856, line: 117, size: 64, elements: !1896)
!1896 = !{!1897, !1905}
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1856, line: 118, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !1856, line: 118, size: 64, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1898, file: !1856, line: 120, baseType: !353, size: 16)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1898, file: !1856, line: 121, baseType: !1902, size: 48, offset: 16)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1903)
!1903 = !{!1904}
!1904 = !DISubrange(count: 6)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1895, file: !1856, line: 127, baseType: !207, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1891, file: !1856, line: 129, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1856, line: 102, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1891, file: !1856, line: 130, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1856, line: 108, size: 192, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1911, file: !1856, line: 109, baseType: !882, size: 128, align: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1911, file: !1856, line: 110, baseType: !1452, size: 32, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1911, file: !1856, line: 111, baseType: !742, size: 8, offset: 160)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1891, file: !1856, line: 131, baseType: !283, size: 64, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1856, line: 247, baseType: !1918, size: 320)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1888, file: !1856, line: 247, size: 320, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1918, file: !1856, line: 248, baseType: !207, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1918, file: !1856, line: 249, baseType: !207, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1918, file: !1856, line: 250, baseType: !1907, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1918, file: !1856, line: 251, baseType: !1910, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1918, file: !1856, line: 252, baseType: !383, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1856, line: 260, baseType: !1926, size: 256, offset: 1408)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 260, size: 256, elements: !1927)
!1927 = !{!1928, !1934}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1926, file: !1856, line: 261, baseType: !1929, size: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1856, line: 134, size: 256, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1929, file: !1856, line: 135, baseType: !168, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1929, file: !1856, line: 136, baseType: !1933, size: 256)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !269)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1856, line: 262, baseType: !1935, size: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1856, line: 262, size: 256, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1935, file: !1856, line: 264, baseType: !306, size: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1935, file: !1856, line: 265, baseType: !1939, size: 128, offset: 128)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1940, line: 22, size: 128, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1941 = !{!1942, !1945}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1939, file: !1940, line: 23, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1940, line: 23, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1939, file: !1940, line: 24, baseType: !207, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1855, file: !1856, line: 280, baseType: !1947, size: 64, offset: 1664)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1856, line: 176, size: 192, elements: !1949)
!1949 = !{!1950, !1959, !1960}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1948, file: !1856, line: 177, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1856, line: 171, baseType: !1952)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!130, !1854, !1955, !1957, !1854}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1948, file: !1856, line: 178, baseType: !1854, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1948, file: !1856, line: 179, baseType: !1907, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1829, file: !1830, line: 130, baseType: !1854, size: 64, offset: 832)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1829, file: !1830, line: 131, baseType: !1854, size: 64, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1829, file: !1830, line: 132, baseType: !1854, size: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1829, file: !1830, line: 135, baseType: !168, size: 64, offset: 1024)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1829, file: !1830, line: 137, baseType: !1966, size: 64, offset: 1088)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1968, line: 14, size: 1088, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1969 = !{!1970, !1971, !1980, !1981, !1982, !1983, !1984, !1985}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1967, file: !1968, line: 15, baseType: !1452, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1967, file: !1968, line: 17, baseType: !1972, size: 320, offset: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1973, line: 22, size: 320, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1972, file: !1973, line: 23, baseType: !674, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1972, file: !1973, line: 24, baseType: !671, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1972, file: !1973, line: 26, baseType: !306, size: 128, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1972, file: !1973, line: 28, baseType: !1979, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1967, file: !1968, line: 19, baseType: !207, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1967, file: !1968, line: 20, baseType: !665, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1967, file: !1968, line: 23, baseType: !906, size: 128, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1967, file: !1968, line: 24, baseType: !457, size: 32, offset: 640)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1967, file: !1968, line: 29, baseType: !665, size: 64, offset: 704)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1967, file: !1968, line: 36, baseType: !1986, size: 320, offset: 768)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1987, line: 15, size: 320, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1986, file: !1987, line: 16, baseType: !674, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1986, file: !1987, line: 18, baseType: !130, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1986, file: !1987, line: 19, baseType: !130, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1986, file: !1987, line: 20, baseType: !130, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1986, file: !1987, line: 21, baseType: !130, size: 32, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1986, file: !1987, line: 22, baseType: !207, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1987, line: 23, baseType: !207, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1829, file: !1830, line: 138, baseType: !1997, size: 64, offset: 1152)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !59, line: 901, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1829, file: !1830, line: 139, baseType: !2000, size: 64, offset: 1216)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2002, line: 16, flags: DIFlagFwdDecl)
!2002 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1829, file: !1830, line: 140, baseType: !2004, size: 64, offset: 1280)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1830, line: 25, size: 64, elements: !2006)
!2006 = !{!2007, !2008, !2009}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2005, file: !1830, line: 26, baseType: !339, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2005, file: !1830, line: 27, baseType: !130, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2005, file: !1830, line: 28, baseType: !2010, offset: 64)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, elements: !1820)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1830, line: 142, baseType: !2012, size: 128, offset: 1344)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1829, file: !1830, line: 142, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2012, file: !1830, line: 143, baseType: !130, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2012, file: !1830, line: 144, baseType: !882, size: 128, align: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1761, file: !35, line: 1013, baseType: !2017, size: 256, offset: 960)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2017, file: !35, line: 971, baseType: !207, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2017, file: !35, line: 972, baseType: !28, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2017, file: !35, line: 973, baseType: !28, size: 32, offset: 96)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2017, file: !35, line: 974, baseType: !28, size: 32, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2017, file: !35, line: 975, baseType: !28, size: 32, offset: 160)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2017, file: !35, line: 976, baseType: !607, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1761, file: !35, line: 1014, baseType: !1244, size: 128, offset: 1216)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1761, file: !35, line: 1015, baseType: !451, size: 64, offset: 1344)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1761, file: !35, line: 1016, baseType: !2028, size: 64, offset: 1408)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !2031)
!2031 = !{!2032, !2033, !2037, !2042, !2046, !2075, !2076, !2082, !2095, !2102, !2106, !2107, !2398, !2399, !2403, !2408, !2409, !2413, !2417, !2423, !2424, !2428, !2429, !2435, !2439, !2443, !2449, !2453, !2457, !2461, !2465, !2466, !2472}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2030, file: !35, line: 1915, baseType: !636, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2030, file: !35, line: 1916, baseType: !2034, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!607, !1760, !607, !130}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2030, file: !35, line: 1917, baseType: !2038, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!291, !1760, !383, !419, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2030, file: !35, line: 1918, baseType: !2043, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!291, !1760, !283, !419, !2041}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2030, file: !35, line: 1919, baseType: !2047, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!291, !2050, !2072}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2059, !2060, !2061, !2062}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2051, file: !35, line: 374, baseType: !1760, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2051, file: !35, line: 375, baseType: !607, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2051, file: !35, line: 376, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2050, !295}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2051, file: !35, line: 377, baseType: !168, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2051, file: !35, line: 378, baseType: !130, size: 32, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2051, file: !35, line: 379, baseType: !353, size: 16, offset: 288)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !35, line: 380, baseType: !2063, size: 64, offset: 320)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2051, file: !35, line: 380, size: 64, elements: !2064)
!2064 = !{!2065, !2068}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2063, file: !35, line: 386, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2063, file: !35, line: 395, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!291, !168}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2074, line: 17, flags: DIFlagFwdDecl)
!2074 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2030, file: !35, line: 1920, baseType: !2047, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2030, file: !35, line: 1921, baseType: !2077, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!130, !2050, !2080, !28}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2030, file: !35, line: 1923, baseType: !2083, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!130, !1760, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !2088)
!2088 = !{!2089, !2094}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2087, file: !35, line: 1859, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !2091)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!742, !2086, !283, !130, !607, !163, !28}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2087, file: !35, line: 1860, baseType: !607, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2030, file: !35, line: 1924, baseType: !2096, size: 64, offset: 512)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!2099, !1760, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !181, line: 59, baseType: !28)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !622, line: 31, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2030, file: !35, line: 1925, baseType: !2103, size: 64, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!295, !1760, !28, !207}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2030, file: !35, line: 1926, baseType: !2103, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2030, file: !35, line: 1927, baseType: !2108, size: 64, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!130, !1760, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !59, line: 625, size: 1344, elements: !2113)
!2113 = !{!2114, !2123, !2124, !2132, !2139, !2140, !2145, !2146, !2151, !2152, !2155, !2391, !2392, !2393, !2394, !2395, !2396}
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !59, line: 628, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !59, line: 628, size: 128, elements: !2116)
!2116 = !{!2117, !2122}
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !59, line: 629, baseType: !2118, size: 128)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !59, line: 629, size: 128, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2118, file: !59, line: 631, baseType: !207, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2118, file: !59, line: 632, baseType: !207, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2115, file: !59, line: 635, baseType: !882, size: 128, align: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2112, file: !59, line: 639, baseType: !1733, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2112, file: !59, line: 640, baseType: !2125, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2126, line: 297, baseType: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2126, line: 297, size: 64, elements: !2128)
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2127, file: !2126, line: 297, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2131, line: 19, baseType: !207)
!2131 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !59, line: 646, baseType: !2133, size: 64, offset: 256)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !59, line: 646, size: 64, elements: !2134)
!2134 = !{!2135, !2138}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2133, file: !59, line: 647, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !59, line: 542, baseType: !207)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2133, file: !59, line: 648, baseType: !2137, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2112, file: !59, line: 666, baseType: !130, size: 32, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2112, file: !59, line: 667, baseType: !2141, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !59, line: 579, size: 320, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2142, file: !59, line: 580, baseType: !1332, size: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2112, file: !59, line: 670, baseType: !742, size: 8, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2112, file: !59, line: 681, baseType: !2147, size: 256, offset: 512)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !59, line: 678, size: 256, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2147, file: !59, line: 679, baseType: !774, size: 192, align: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2147, file: !59, line: 680, baseType: !207, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2112, file: !59, line: 689, baseType: !306, size: 128, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2112, file: !59, line: 691, baseType: !2153, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !59, line: 691, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2112, file: !59, line: 694, baseType: !2156, size: 64, offset: 960)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2159, line: 563, size: 1024, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2160 = !{!2161, !2165, !2166, !2170, !2174, !2178, !2355, !2359, !2363, !2367, !2368, !2369, !2373, !2377, !2383, !2387}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2158, file: !2159, line: 564, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2111}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2158, file: !2159, line: 569, baseType: !2162, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2158, file: !2159, line: 571, baseType: !2167, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!130, !2111, !207}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2158, file: !2159, line: 572, baseType: !2171, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!130, !2111}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2158, file: !2159, line: 578, baseType: !2175, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!130, !2111, !207, !207, !207}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2158, file: !2159, line: 580, baseType: !2179, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !59, line: 1184, baseType: !28)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2159, line: 512, size: 896, elements: !2185)
!2185 = !{!2186, !2194, !2195, !2202, !2209, !2219, !2348, !2349, !2351, !2353}
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2159, line: 513, baseType: !2187, size: 320)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2159, line: 513, size: 320, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2187, file: !2159, line: 514, baseType: !2111, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2187, file: !2159, line: 515, baseType: !1184, size: 32, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2187, file: !2159, line: 516, baseType: !207, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2187, file: !2159, line: 517, baseType: !207, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2187, file: !2159, line: 518, baseType: !207, size: 64, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2159, line: 520, baseType: !58, size: 32, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2184, file: !2159, line: 522, baseType: !2196, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2131, line: 22, baseType: !2198)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2131, line: 22, size: 64, elements: !2199)
!2199 = !{!2200}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2198, file: !2131, line: 22, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2131, line: 15, baseType: !207)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2184, file: !2159, line: 524, baseType: !2203, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2126, line: 372, baseType: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2126, line: 372, size: 64, elements: !2206)
!2206 = !{!2207}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2205, file: !2126, line: 372, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2131, line: 16, baseType: !207)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2159, line: 527, baseType: !2210, size: 64, offset: 512)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2184, file: !2159, line: 527, size: 64, elements: !2211)
!2211 = !{!2212, !2218}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2210, file: !2159, line: 528, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2131, line: 21, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2131, line: 21, size: 64, elements: !2215)
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2214, file: !2131, line: 21, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2131, line: 14, baseType: !207)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2210, file: !2159, line: 529, baseType: !2197, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2184, file: !2159, line: 534, baseType: !2220, size: 64, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !59, line: 74, size: 512, align: 128, elements: !2222)
!2222 = !{!2223, !2224, !2342, !2347}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2221, file: !59, line: 75, baseType: !207, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !59, line: 83, baseType: !2225, size: 320, offset: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !59, line: 83, size: 320, elements: !2226)
!2226 = !{!2227, !2248, !2262, !2266, !2341}
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !59, line: 84, baseType: !2228, size: 320)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !59, line: 84, size: 320, elements: !2229)
!2229 = !{!2230, !2241, !2242, !2247}
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !59, line: 90, baseType: !2231, size: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2228, file: !59, line: 90, size: 128, elements: !2232)
!2232 = !{!2233, !2234, !2239, !2240}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2231, file: !59, line: 91, baseType: !306, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !59, line: 94, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !59, line: 94, size: 128, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2235, file: !59, line: 96, baseType: !168, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2235, file: !59, line: 98, baseType: !28, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2231, file: !59, line: 102, baseType: !306, size: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2231, file: !59, line: 103, baseType: !306, size: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2228, file: !59, line: 106, baseType: !447, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !59, line: 107, baseType: !2243, size: 64, offset: 192)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2228, file: !59, line: 107, size: 64, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2243, file: !59, line: 108, baseType: !207, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2243, file: !59, line: 109, baseType: !207, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2228, file: !59, line: 117, baseType: !207, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !59, line: 119, baseType: !2249, size: 320)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !59, line: 119, size: 320, elements: !2250)
!2250 = !{!2251, !2252, !2255, !2256, !2257}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2249, file: !59, line: 124, baseType: !207, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2249, file: !59, line: 125, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !59, line: 125, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2249, file: !59, line: 126, baseType: !207, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2249, file: !59, line: 127, baseType: !207, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !59, line: 128, baseType: !2258, size: 64, offset: 256)
!2258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !59, line: 128, size: 64, elements: !2259)
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2258, file: !59, line: 133, baseType: !207, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2258, file: !59, line: 138, baseType: !665, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !59, line: 141, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !59, line: 141, size: 64, elements: !2264)
!2264 = !{!2265}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2263, file: !59, line: 142, baseType: !207, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !59, line: 144, baseType: !2267, size: 128)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2225, file: !59, line: 144, size: 128, elements: !2268)
!2268 = !{!2269, !2340}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2267, file: !59, line: 146, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !75, line: 126, size: 1216, elements: !2272)
!2272 = !{!2273, !2283, !2304, !2305, !2306, !2307, !2308, !2322, !2323, !2324}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2271, file: !75, line: 127, baseType: !2274, size: 384)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !75, line: 21, size: 384, elements: !2275)
!2275 = !{!2276, !2277, !2279, !2280, !2281, !2282}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2274, file: !75, line: 22, baseType: !207, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2274, file: !75, line: 23, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2274, file: !75, line: 24, baseType: !2278, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2274, file: !75, line: 25, baseType: !207, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2274, file: !75, line: 26, baseType: !207, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2274, file: !75, line: 27, baseType: !207, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2271, file: !75, line: 128, baseType: !2284, size: 128, offset: 384)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2285, line: 105, size: 128, elements: !2286)
!2285 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2284, file: !2285, line: 110, baseType: !207, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2284, file: !2285, line: 118, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2285, line: 95, size: 448, elements: !2291)
!2291 = !{!2292, !2293, !2299, !2300, !2301, !2302, !2303}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2290, file: !2285, line: 96, baseType: !665, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2290, file: !2285, line: 97, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2285, line: 60, baseType: !2296)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2290, file: !2285, line: 98, baseType: !2294, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2290, file: !2285, line: 99, baseType: !742, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2290, file: !2285, line: 100, baseType: !742, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2290, file: !2285, line: 101, baseType: !882, size: 128, align: 64, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2290, file: !2285, line: 102, baseType: !2298, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2271, file: !75, line: 129, baseType: !973, size: 256, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2271, file: !75, line: 130, baseType: !74, size: 32, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2271, file: !75, line: 131, baseType: !28, size: 32, offset: 800)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2271, file: !75, line: 132, baseType: !207, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2271, file: !75, line: 133, baseType: !2309, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !75, line: 77, size: 192, elements: !2312)
!2312 = !{!2313, !2317, !2318}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2311, file: !75, line: 83, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !2220}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2311, file: !75, line: 89, baseType: !2179, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2311, file: !75, line: 100, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!130, !2270, !207, !207, !130}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2271, file: !75, line: 134, baseType: !168, size: 64, offset: 960)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2271, file: !75, line: 135, baseType: !130, size: 32, offset: 1024)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !75, line: 136, baseType: !2325, size: 128, offset: 1088)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !75, line: 136, size: 128, elements: !2326)
!2326 = !{!2327, !2333}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2325, file: !75, line: 137, baseType: !2328, size: 128)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2329, line: 6, size: 128, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2328, file: !2329, line: 7, baseType: !163, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2328, file: !2329, line: 8, baseType: !163, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !75, line: 138, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !75, line: 138, elements: !2335)
!2335 = !{!2336, !2338}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2334, file: !75, line: 138, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2334, file: !75, line: 138, elements: !949)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2334, file: !75, line: 138, baseType: !2339)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2328, elements: !1820)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2267, file: !59, line: 147, baseType: !168, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2225, file: !59, line: 161, baseType: !882, size: 128, align: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2221, file: !59, line: 164, baseType: !2343, size: 32, offset: 384)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2221, file: !59, line: 164, size: 32, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2343, file: !59, line: 169, baseType: !339, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2343, file: !59, line: 177, baseType: !28, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2221, file: !59, line: 181, baseType: !339, size: 32, offset: 416)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2184, file: !2159, line: 535, baseType: !2220, size: 64, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2184, file: !2159, line: 541, baseType: !2350, size: 64, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2184, file: !2159, line: 545, baseType: !2352, size: 64, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2184, file: !2159, line: 549, baseType: !2354, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2126, line: 520, baseType: !2220)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2158, file: !2159, line: 581, baseType: !2356, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2182, !2183, !28}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2158, file: !2159, line: 582, baseType: !2360, size: 64, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2182, !2183, !207, !207}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2158, file: !2159, line: 584, baseType: !2364, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!207, !2111}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2158, file: !2159, line: 588, baseType: !2179, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2158, file: !2159, line: 591, baseType: !2179, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2158, file: !2159, line: 597, baseType: !2370, size: 64, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!130, !2111, !207, !168, !130, !130}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2158, file: !2159, line: 603, baseType: !2374, size: 64, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!283, !2111}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2158, file: !2159, line: 613, baseType: !2378, size: 64, offset: 832)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!130, !2111, !2381}
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !59, line: 717, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2158, file: !2159, line: 625, baseType: !2384, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!2381, !2111, !207}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2158, file: !2159, line: 633, baseType: !2388, size: 64, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!2220, !2111, !207}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2112, file: !59, line: 697, baseType: !207, size: 64, offset: 1024)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2112, file: !59, line: 699, baseType: !1760, size: 64, offset: 1088)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2112, file: !59, line: 700, baseType: !168, size: 64, offset: 1152)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2112, file: !59, line: 711, baseType: !665, size: 64, offset: 1216)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2112, file: !59, line: 717, baseType: !2381, size: 64, offset: 1280)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2112, file: !59, line: 722, baseType: !2397, offset: 1344)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !59, line: 570, elements: !949)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2030, file: !35, line: 1928, baseType: !207, size: 64, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2030, file: !35, line: 1929, baseType: !2400, size: 64, offset: 832)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!130, !451, !1760}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2030, file: !35, line: 1930, baseType: !2404, size: 64, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!130, !1760, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !168)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2030, file: !35, line: 1931, baseType: !2400, size: 64, offset: 960)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2030, file: !35, line: 1932, baseType: !2410, size: 64, offset: 1024)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!130, !1760, !607, !607, !130}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2030, file: !35, line: 1933, baseType: !2414, size: 64, offset: 1088)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!130, !130, !1760, !130}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2030, file: !35, line: 1934, baseType: !2418, size: 64, offset: 1152)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!130, !1760, !130, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2030, file: !35, line: 1935, baseType: !1757, size: 64, offset: 1216)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2030, file: !35, line: 1936, baseType: !2425, size: 64, offset: 1280)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!130, !130}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2030, file: !35, line: 1937, baseType: !2418, size: 64, offset: 1344)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2030, file: !35, line: 1938, baseType: !2430, size: 64, offset: 1408)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!291, !2433, !1760, !2041, !419, !28}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1114, line: 59, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2030, file: !35, line: 1939, baseType: !2436, size: 64, offset: 1472)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!291, !1760, !2041, !2433, !419, !28}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2030, file: !35, line: 1940, baseType: !2440, size: 64, offset: 1536)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !1760}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2030, file: !35, line: 1941, baseType: !2444, size: 64, offset: 1600)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!130, !1760, !130, !2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2030, file: !35, line: 1942, baseType: !2450, size: 64, offset: 1664)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!295, !1760, !130, !607, !607}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2030, file: !35, line: 1944, baseType: !2454, size: 64, offset: 1728)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !1112, !1760}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2030, file: !35, line: 1948, baseType: !2458, size: 64, offset: 1792)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!291, !1760, !607, !1760, !607, !419, !28}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2030, file: !35, line: 1950, baseType: !2462, size: 64, offset: 1856)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!607, !1760, !607, !1760, !607, !607, !28}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2030, file: !35, line: 1953, baseType: !2410, size: 64, offset: 1920)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2030, file: !35, line: 1954, baseType: !2467, size: 64, offset: 1984)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!130, !2470, !28}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2030, file: !35, line: 1955, baseType: !2473, size: 64, offset: 2048)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!130, !2470, !2080, !28}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1761, file: !35, line: 1018, baseType: !163, size: 64, offset: 1472)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1761, file: !35, line: 1020, baseType: !168, size: 64, offset: 1536)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1761, file: !35, line: 1023, baseType: !168, size: 64, offset: 1600)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1761, file: !35, line: 1027, baseType: !2480, size: 64, offset: 1664)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1761, file: !35, line: 1029, baseType: !447, size: 64, offset: 1728)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1761, file: !35, line: 1030, baseType: !2483, size: 32, offset: 1792)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2484, line: 8, baseType: !169)
!2484 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1761, file: !35, line: 1031, baseType: !2483, size: 32, offset: 1824)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1737, file: !59, line: 756, baseType: !207, size: 64, offset: 704)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1737, file: !59, line: 757, baseType: !207, size: 64, offset: 768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1737, file: !59, line: 760, baseType: !207, size: 64, offset: 832)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1737, file: !59, line: 761, baseType: !207, size: 64, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1737, file: !59, line: 763, baseType: !207, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1737, file: !59, line: 764, baseType: !2492, size: 64, offset: 1024)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2126, line: 299, baseType: !2494)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2126, line: 299, size: 64, elements: !2495)
!2495 = !{!2496}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2494, file: !2126, line: 299, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2131, line: 18, baseType: !207)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1737, file: !59, line: 773, baseType: !339, size: 32, offset: 1088)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1737, file: !59, line: 785, baseType: !339, size: 32, offset: 1120)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1737, file: !59, line: 795, baseType: !2501, size: 64, offset: 1152)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !59, line: 726, size: 128, elements: !2503)
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2502, file: !59, line: 727, baseType: !163, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2502, file: !59, line: 728, baseType: !130, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1737, file: !59, line: 801, baseType: !207, size: 64, offset: 1216)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1737, file: !59, line: 804, baseType: !665, size: 64, offset: 1280)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1737, file: !59, line: 806, baseType: !130, size: 32, offset: 1344)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1737, file: !59, line: 808, baseType: !319, size: 32, offset: 1376)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1737, file: !59, line: 823, baseType: !1332, size: 320, offset: 1408)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1737, file: !59, line: 825, baseType: !306, size: 128, offset: 1728)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1737, file: !59, line: 845, baseType: !130, size: 32, offset: 1856)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1737, file: !59, line: 849, baseType: !207, size: 64, offset: 1920)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1737, file: !59, line: 850, baseType: !207, size: 64, offset: 1984)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1737, file: !59, line: 852, baseType: !207, size: 64, offset: 2048)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1737, file: !59, line: 853, baseType: !207, size: 64, offset: 2112)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1737, file: !59, line: 854, baseType: !667, size: 64, offset: 2176)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1737, file: !59, line: 855, baseType: !207, size: 64, offset: 2240)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1737, file: !59, line: 856, baseType: !207, size: 64, offset: 2304)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1737, file: !59, line: 857, baseType: !207, size: 64, offset: 2368)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1737, file: !59, line: 858, baseType: !207, size: 64, offset: 2432)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1737, file: !59, line: 865, baseType: !497, size: 32, offset: 2496)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1737, file: !59, line: 867, baseType: !319, size: 32, offset: 2528)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1737, file: !59, line: 869, baseType: !207, size: 64, offset: 2560)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1737, file: !59, line: 869, baseType: !207, size: 64, offset: 2624)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1737, file: !59, line: 869, baseType: !207, size: 64, offset: 2688)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1737, file: !59, line: 869, baseType: !207, size: 64, offset: 2752)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1737, file: !59, line: 870, baseType: !207, size: 64, offset: 2816)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1737, file: !59, line: 870, baseType: !207, size: 64, offset: 2880)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1737, file: !59, line: 870, baseType: !207, size: 64, offset: 2944)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1737, file: !59, line: 871, baseType: !207, size: 64, offset: 3008)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1737, file: !59, line: 871, baseType: !207, size: 64, offset: 3072)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1737, file: !59, line: 871, baseType: !207, size: 64, offset: 3136)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1737, file: !59, line: 871, baseType: !207, size: 64, offset: 3200)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1737, file: !59, line: 873, baseType: !2536, size: 3328, offset: 3264)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 3328, elements: !2537)
!2537 = !{!2538}
!2538 = !DISubrange(count: 52)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1737, file: !59, line: 875, baseType: !2540, size: 1280, offset: 6592)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1972, size: 1280, elements: !269)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1737, file: !59, line: 877, baseType: !2542, size: 64, offset: 7872)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !59, line: 877, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1737, file: !59, line: 880, baseType: !2545, size: 1088, offset: 7936)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2546, line: 72, baseType: !2547)
!2546 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2546, line: 23, size: 1088, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2556, !2557, !2558, !2559, !2586, !2587, !2588}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2547, file: !2546, line: 28, baseType: !163, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2547, file: !2546, line: 38, baseType: !667, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2547, file: !2546, line: 40, baseType: !207, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2547, file: !2546, line: 43, baseType: !1332, size: 320, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2547, file: !2546, line: 44, baseType: !2554, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2546, line: 44, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !2546, line: 48, baseType: !207, size: 64, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2547, file: !2546, line: 59, baseType: !661, size: 256, offset: 640)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2547, file: !2546, line: 60, baseType: !168, size: 64, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2547, file: !2546, line: 61, baseType: !2560, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2563, line: 13, size: 1216, elements: !2564)
!2563 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2562, file: !2563, line: 14, baseType: !168, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2562, file: !2563, line: 15, baseType: !207, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2562, file: !2563, line: 17, baseType: !207, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2562, file: !2563, line: 17, baseType: !207, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2562, file: !2563, line: 18, baseType: !207, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2562, file: !2563, line: 18, baseType: !207, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2562, file: !2563, line: 19, baseType: !2572, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2562, file: !2563, line: 21, baseType: !295, size: 64, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2562, file: !2563, line: 23, baseType: !295, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2562, file: !2563, line: 24, baseType: !295, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2562, file: !2563, line: 25, baseType: !295, size: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2562, file: !2563, line: 26, baseType: !295, size: 64, offset: 704)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2562, file: !2563, line: 27, baseType: !295, size: 64, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2562, file: !2563, line: 28, baseType: !295, size: 64, offset: 832)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2562, file: !2563, line: 29, baseType: !295, size: 64, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2562, file: !2563, line: 30, baseType: !295, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2562, file: !2563, line: 31, baseType: !295, size: 64, offset: 1024)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2562, file: !2563, line: 32, baseType: !295, size: 64, offset: 1088)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2562, file: !2563, line: 33, baseType: !295, size: 64, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2547, file: !2546, line: 63, baseType: !339, size: 32, offset: 1024)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2547, file: !2546, line: 69, baseType: !353, size: 16, offset: 1056)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2547, file: !2546, line: 70, baseType: !798, size: 16, offset: 1072)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !59, line: 882, baseType: !207, size: 64, offset: 9024)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1737, file: !59, line: 885, baseType: !319, size: 32, offset: 9088)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1737, file: !59, line: 886, baseType: !2592, size: 64, offset: 9152)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !59, line: 732, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1737, file: !59, line: 901, baseType: !1997, size: 64, offset: 9216)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1737, file: !59, line: 904, baseType: !1760, size: 64, offset: 9280)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1737, file: !59, line: 906, baseType: !2597, size: 64, offset: 9344)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !59, line: 906, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1737, file: !59, line: 930, baseType: !339, size: 32, offset: 9408)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1737, file: !59, line: 933, baseType: !339, size: 32, offset: 9440)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1737, file: !59, line: 935, baseType: !2602, size: 64, offset: 9472)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !89, line: 103, size: 64, elements: !2603)
!2603 = !{!2604}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2602, file: !89, line: 104, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !89, line: 101, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1737, file: !59, line: 940, baseType: !665, size: 64, offset: 9536)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1737, file: !59, line: 942, baseType: !920, size: 256, offset: 9600)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1734, file: !59, line: 986, baseType: !2610, offset: 10240)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !1820)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1439, file: !1114, line: 882, baseType: !1733, size: 64, offset: 9792)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1439, file: !1114, line: 884, baseType: !130, size: 32, offset: 9856)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1439, file: !1114, line: 885, baseType: !130, size: 32, offset: 9888)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1439, file: !1114, line: 886, baseType: !130, size: 32, offset: 9920)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1439, file: !1114, line: 888, baseType: !130, size: 32, offset: 9952)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1439, file: !1114, line: 890, baseType: !207, size: 64, offset: 9984)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1439, file: !1114, line: 893, baseType: !28, size: 32, offset: 10048)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1439, file: !1114, line: 896, baseType: !28, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1439, file: !1114, line: 897, baseType: !28, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1439, file: !1114, line: 898, baseType: !28, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1439, file: !1114, line: 899, baseType: !28, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1439, file: !1114, line: 919, baseType: !28, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1439, file: !1114, line: 922, baseType: !28, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1439, file: !1114, line: 923, baseType: !28, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1439, file: !1114, line: 925, baseType: !28, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1439, file: !1114, line: 939, baseType: !28, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1439, file: !1114, line: 941, baseType: !28, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1439, file: !1114, line: 944, baseType: !28, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1439, file: !1114, line: 956, baseType: !28, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1439, file: !1114, line: 962, baseType: !28, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1439, file: !1114, line: 966, baseType: !28, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1439, file: !1114, line: 969, baseType: !207, size: 64, offset: 10176)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1439, file: !1114, line: 971, baseType: !2634, size: 448, offset: 10240)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !83, line: 25, size: 448, elements: !2635)
!2635 = !{!2636, !2637, !2642}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2634, file: !83, line: 26, baseType: !207, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2634, file: !83, line: 27, baseType: !2638, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!295, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !83, line: 28, baseType: !2643, size: 320, offset: 128)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !83, line: 28, size: 320, elements: !2644)
!2644 = !{!2645, !2655, !2680}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2643, file: !83, line: 37, baseType: !2646, size: 320)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !83, line: 30, size: 320, elements: !2647)
!2647 = !{!2648, !2650, !2651, !2652, !2653, !2654}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2646, file: !83, line: 31, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2646, file: !83, line: 32, baseType: !169, size: 32, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2646, file: !83, line: 33, baseType: !169, size: 32, offset: 96)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2646, file: !83, line: 34, baseType: !169, size: 32, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2646, file: !83, line: 35, baseType: !163, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2646, file: !83, line: 36, baseType: !2649, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2643, file: !83, line: 47, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !83, line: 39, size: 192, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2679}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2656, file: !83, line: 40, baseType: !1604, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2656, file: !83, line: 41, baseType: !82, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, scope: !2656, file: !83, line: 42, baseType: !2661, size: 64, offset: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2656, file: !83, line: 42, size: 64, elements: !2662)
!2662 = !{!2663, !2671}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2661, file: !83, line: 43, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2666, line: 7, size: 128, elements: !2667)
!2666 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2667 = !{!2668, !2670}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2665, file: !2666, line: 8, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !293, line: 93, baseType: !609)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2665, file: !2666, line: 9, baseType: !609, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2661, file: !83, line: 44, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2674, line: 7, size: 64, elements: !2675)
!2674 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2675 = !{!2676, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2673, file: !2674, line: 8, baseType: !2677, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2674, line: 5, baseType: !657)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2673, file: !2674, line: 9, baseType: !657, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2656, file: !83, line: 46, baseType: !163, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2643, file: !83, line: 55, baseType: !2681, size: 256)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !83, line: 49, size: 256, elements: !2682)
!2682 = !{!2683, !2686, !2687, !2688, !2689}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2681, file: !83, line: 50, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !83, line: 14, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2681, file: !83, line: 51, baseType: !130, size: 32, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2681, file: !83, line: 52, baseType: !130, size: 32, offset: 96)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2681, file: !83, line: 53, baseType: !207, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2681, file: !83, line: 54, baseType: !207, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1439, file: !1114, line: 973, baseType: !2691, size: 32, offset: 10688)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !286, line: 27, baseType: !2692)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !293, line: 28, baseType: !130)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1439, file: !1114, line: 974, baseType: !2691, size: 32, offset: 10720)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1439, file: !1114, line: 978, baseType: !207, size: 64, offset: 10752)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1439, file: !1114, line: 987, baseType: !1438, size: 64, offset: 10816)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1439, file: !1114, line: 990, baseType: !1438, size: 64, offset: 10880)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1439, file: !1114, line: 995, baseType: !306, size: 128, offset: 10944)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1439, file: !1114, line: 996, baseType: !306, size: 128, offset: 11072)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1439, file: !1114, line: 997, baseType: !1438, size: 64, offset: 11200)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1439, file: !1114, line: 1005, baseType: !306, size: 128, offset: 11264)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1439, file: !1114, line: 1006, baseType: !306, size: 128, offset: 11392)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1439, file: !1114, line: 1009, baseType: !1801, size: 64, offset: 11520)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1439, file: !1114, line: 1010, baseType: !2704, size: 512, offset: 11584)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 512, elements: !269)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1439, file: !1114, line: 1011, baseType: !306, size: 128, offset: 12096)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1439, file: !1114, line: 1012, baseType: !306, size: 128, offset: 12224)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1439, file: !1114, line: 1014, baseType: !2708, size: 64, offset: 12352)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1439, file: !1114, line: 1017, baseType: !791, size: 64, offset: 12416)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1439, file: !1114, line: 1020, baseType: !791, size: 64, offset: 12480)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1439, file: !1114, line: 1023, baseType: !168, size: 64, offset: 12544)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1439, file: !1114, line: 1025, baseType: !163, size: 64, offset: 12608)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1439, file: !1114, line: 1026, baseType: !163, size: 64, offset: 12672)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1439, file: !1114, line: 1031, baseType: !163, size: 64, offset: 12736)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1439, file: !1114, line: 1032, baseType: !2716, size: 192, offset: 12800)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1114, line: 324, size: 192, elements: !2717)
!2717 = !{!2718, !2719, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2716, file: !1114, line: 326, baseType: !163, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2716, file: !1114, line: 327, baseType: !163, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2716, file: !1114, line: 328, baseType: !674, size: 32, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1439, file: !1114, line: 1041, baseType: !207, size: 64, offset: 12992)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1439, file: !1114, line: 1042, baseType: !207, size: 64, offset: 13056)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1439, file: !1114, line: 1045, baseType: !163, size: 64, offset: 13120)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1439, file: !1114, line: 1048, baseType: !163, size: 64, offset: 13184)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1439, file: !1114, line: 1051, baseType: !207, size: 64, offset: 13248)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1439, file: !1114, line: 1052, baseType: !207, size: 64, offset: 13312)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1439, file: !1114, line: 1055, baseType: !2728, size: 640, offset: 13376)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2729, line: 132, size: 640, elements: !2730)
!2729 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2730 = !{!2731, !2737, !2738}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2728, file: !2729, line: 133, baseType: !2732, size: 576)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, size: 576, elements: !384)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2729, line: 117, size: 192, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2733, file: !2729, line: 118, baseType: !163, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2733, file: !2729, line: 119, baseType: !1613, size: 128, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2728, file: !2729, line: 134, baseType: !28, size: 32, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2728, file: !2729, line: 135, baseType: !28, size: 32, offset: 608)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1439, file: !1114, line: 1058, baseType: !2740, size: 448, offset: 14016)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2729, line: 144, size: 448, elements: !2741)
!2741 = !{!2742, !2743, !2744}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2740, file: !2729, line: 145, baseType: !882, size: 128, align: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2740, file: !2729, line: 146, baseType: !661, size: 256, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2740, file: !2729, line: 147, baseType: !28, size: 32, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1439, file: !1114, line: 1064, baseType: !1827, size: 64, offset: 14464)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1439, file: !1114, line: 1067, baseType: !1827, size: 64, offset: 14528)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1439, file: !1114, line: 1070, baseType: !1827, size: 64, offset: 14592)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1439, file: !1114, line: 1074, baseType: !1854, size: 64, offset: 14656)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1439, file: !1114, line: 1084, baseType: !2750, size: 128, offset: 14720)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2751)
!2751 = !{!2752}
!2752 = !DISubrange(count: 16)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1439, file: !1114, line: 1086, baseType: !2754, size: 64, offset: 14848)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1114, line: 55, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1439, file: !1114, line: 1089, baseType: !2757, size: 64, offset: 14912)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2758, line: 12, size: 64, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2757, file: !2758, line: 13, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2758, line: 8, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1439, file: !1114, line: 1090, baseType: !2764, size: 128, offset: 14976)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2765, line: 13, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2764, file: !2765, line: 14, baseType: !306, size: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1439, file: !1114, line: 1097, baseType: !2769, size: 64, offset: 15104)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1114, line: 50, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1439, file: !1114, line: 1100, baseType: !2772, size: 64, offset: 15168)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1114, line: 1100, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1439, file: !1114, line: 1103, baseType: !2775, size: 64, offset: 15232)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1114, line: 53, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1439, file: !1114, line: 1107, baseType: !2778, size: 64, offset: 15296)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1114, line: 56, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1439, file: !1114, line: 1110, baseType: !2781, size: 64, offset: 15360)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2783, line: 93, size: 8768, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2832, !2841, !2842, !2844, !2845, !2846, !2849, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2887, !2888, !2895, !2905, !2908, !2909, !2912, !2913, !2914, !2915, !2916, !2917}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2782, file: !2783, line: 94, baseType: !1452, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2782, file: !2783, line: 95, baseType: !339, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2782, file: !2783, line: 96, baseType: !130, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2782, file: !2783, line: 97, baseType: !130, size: 32, offset: 96)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2782, file: !2783, line: 98, baseType: !306, size: 128, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2782, file: !2783, line: 100, baseType: !1425, size: 192, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2782, file: !2783, line: 103, baseType: !1438, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2782, file: !2783, line: 106, baseType: !2793, size: 192, offset: 512)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2002, line: 32, size: 192, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2793, file: !2002, line: 33, baseType: !306, size: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2793, file: !2002, line: 34, baseType: !2797, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2798, line: 25, baseType: !2799)
!2798 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2798, line: 23, size: 64, elements: !2800)
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2799, file: !2798, line: 24, baseType: !1684, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2782, file: !2783, line: 109, baseType: !1040, size: 64, offset: 704)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2782, file: !2783, line: 112, baseType: !130, size: 32, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2782, file: !2783, line: 114, baseType: !130, size: 32, offset: 800)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2782, file: !2783, line: 115, baseType: !1438, size: 64, offset: 832)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2782, file: !2783, line: 118, baseType: !130, size: 32, offset: 896)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2782, file: !2783, line: 119, baseType: !28, size: 32, offset: 928)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2782, file: !2783, line: 121, baseType: !2809, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2783, line: 80, size: 448, elements: !2811)
!2811 = !{!2812, !2813, !2819}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2810, file: !2783, line: 81, baseType: !339, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2810, file: !2783, line: 82, baseType: !2814, size: 128, offset: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2783, line: 75, size: 128, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2814, file: !2783, line: 76, baseType: !1438, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2814, file: !2783, line: 77, baseType: !2818, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2810, file: !2783, line: 83, baseType: !973, size: 256, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2782, file: !2783, line: 132, baseType: !28, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2782, file: !2783, line: 133, baseType: !28, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2782, file: !2783, line: 138, baseType: !28, size: 32, offset: 1056)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2782, file: !2783, line: 139, baseType: !306, size: 128, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2782, file: !2783, line: 142, baseType: !1559, size: 512, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2782, file: !2783, line: 143, baseType: !1567, size: 64, offset: 1728)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2782, file: !2783, line: 150, baseType: !2827, size: 256, offset: 1792)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2828, size: 256, elements: !781)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2783, line: 38, size: 128, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2828, file: !2783, line: 39, baseType: !163, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2828, file: !2783, line: 40, baseType: !163, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2782, file: !2783, line: 156, baseType: !2833, size: 192, offset: 2048)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2783, line: 66, size: 192, elements: !2834)
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2833, file: !2783, line: 67, baseType: !2836, size: 192)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2783, line: 47, size: 192, elements: !2837)
!2837 = !{!2838, !2839, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2836, file: !2783, line: 48, baseType: !667, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2836, file: !2783, line: 49, baseType: !667, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2836, file: !2783, line: 50, baseType: !667, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2782, file: !2783, line: 160, baseType: !2728, size: 640, offset: 2240)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2782, file: !2783, line: 163, baseType: !2843, size: 256, offset: 2880)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 256, elements: !269)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2782, file: !2783, line: 169, baseType: !1801, size: 64, offset: 3136)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2782, file: !2783, line: 172, baseType: !130, size: 32, offset: 3200)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2782, file: !2783, line: 174, baseType: !2847, size: 64, offset: 3264)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2783, line: 174, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2782, file: !2783, line: 185, baseType: !2850, size: 64, offset: 3328)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !493, line: 860, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 853, size: 64, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2851, file: !493, line: 858, baseType: !492, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2851, file: !493, line: 859, baseType: !319, size: 32, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2782, file: !2783, line: 186, baseType: !163, size: 64, offset: 3392)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2782, file: !2783, line: 186, baseType: !163, size: 64, offset: 3456)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2782, file: !2783, line: 186, baseType: !163, size: 64, offset: 3520)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2782, file: !2783, line: 186, baseType: !163, size: 64, offset: 3584)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2782, file: !2783, line: 187, baseType: !163, size: 64, offset: 3648)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2782, file: !2783, line: 188, baseType: !163, size: 64, offset: 3712)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2782, file: !2783, line: 189, baseType: !2716, size: 192, offset: 3776)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2782, file: !2783, line: 190, baseType: !207, size: 64, offset: 3968)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2782, file: !2783, line: 190, baseType: !207, size: 64, offset: 4032)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2782, file: !2783, line: 190, baseType: !207, size: 64, offset: 4096)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2782, file: !2783, line: 190, baseType: !207, size: 64, offset: 4160)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2782, file: !2783, line: 191, baseType: !207, size: 64, offset: 4224)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2782, file: !2783, line: 191, baseType: !207, size: 64, offset: 4288)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2782, file: !2783, line: 191, baseType: !207, size: 64, offset: 4352)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2782, file: !2783, line: 191, baseType: !207, size: 64, offset: 4416)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2782, file: !2783, line: 192, baseType: !207, size: 64, offset: 4480)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2782, file: !2783, line: 192, baseType: !207, size: 64, offset: 4544)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2782, file: !2783, line: 192, baseType: !207, size: 64, offset: 4608)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2782, file: !2783, line: 192, baseType: !207, size: 64, offset: 4672)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2782, file: !2783, line: 193, baseType: !207, size: 64, offset: 4736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2782, file: !2783, line: 193, baseType: !207, size: 64, offset: 4800)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2782, file: !2783, line: 194, baseType: !2877, size: 448, offset: 4864)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2878, line: 12, size: 448, elements: !2879)
!2878 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2877, file: !2878, line: 15, baseType: !163, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2877, file: !2878, line: 17, baseType: !163, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2877, file: !2878, line: 19, baseType: !163, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2877, file: !2878, line: 21, baseType: !163, size: 64, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2877, file: !2878, line: 29, baseType: !163, size: 64, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2877, file: !2878, line: 35, baseType: !163, size: 64, offset: 320)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2877, file: !2878, line: 44, baseType: !163, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2782, file: !2783, line: 202, baseType: !167, size: 64, offset: 5312)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2782, file: !2783, line: 213, baseType: !2889, size: 2048, offset: 5376)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2890, size: 2048, elements: !2751)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2891, line: 43, size: 128, elements: !2892)
!2891 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2890, file: !2891, line: 44, baseType: !421, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2890, file: !2891, line: 45, baseType: !421, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2782, file: !2783, line: 216, baseType: !2896, size: 448, offset: 7424)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2783, line: 30, size: 448, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2896, file: !2783, line: 31, baseType: !130, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2896, file: !2783, line: 32, baseType: !295, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2896, file: !2783, line: 33, baseType: !207, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2896, file: !2783, line: 34, baseType: !163, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2896, file: !2783, line: 34, baseType: !163, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2896, file: !2783, line: 35, baseType: !207, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2896, file: !2783, line: 35, baseType: !207, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2782, file: !2783, line: 219, baseType: !2906, size: 64, offset: 7872)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2783, line: 219, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2782, file: !2783, line: 222, baseType: !28, size: 32, offset: 7936)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2782, file: !2783, line: 223, baseType: !2910, size: 64, offset: 8000)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2783, line: 223, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2782, file: !2783, line: 230, baseType: !742, size: 8, offset: 8064)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2782, file: !2783, line: 231, baseType: !800, size: 16, offset: 8080)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2782, file: !2783, line: 232, baseType: !800, size: 16, offset: 8096)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2782, file: !2783, line: 234, baseType: !1733, size: 64, offset: 8128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2782, file: !2783, line: 237, baseType: !661, size: 256, offset: 8192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2782, file: !2783, line: 243, baseType: !1332, size: 320, offset: 8448)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1439, file: !1114, line: 1111, baseType: !2919, size: 64, offset: 15424)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2783, line: 20, size: 16640, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2920, file: !2783, line: 21, baseType: !319, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2920, file: !2783, line: 22, baseType: !1452, size: 32, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2920, file: !2783, line: 23, baseType: !1425, size: 192, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2920, file: !2783, line: 24, baseType: !2926, size: 16384, offset: 256)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2927, size: 16384, elements: !388)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2002, line: 51, size: 256, elements: !2928)
!2928 = !{!2929}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2927, file: !2002, line: 52, baseType: !2930, size: 256)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2002, line: 37, size: 256, elements: !2931)
!2931 = !{!2932, !2939, !2940, !2944}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2930, file: !2002, line: 39, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2934, line: 83, baseType: !2935)
!2934 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2934, line: 82, baseType: !2937)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !130}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2930, file: !2002, line: 40, baseType: !207, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2930, file: !2002, line: 46, baseType: !2941, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2934, line: 86, baseType: !2942)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2934, line: 85, baseType: !1035)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2930, file: !2002, line: 48, baseType: !2797, size: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1439, file: !1114, line: 1112, baseType: !2797, size: 64, offset: 15488)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1439, file: !1114, line: 1113, baseType: !2797, size: 64, offset: 15552)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1439, file: !1114, line: 1115, baseType: !2797, size: 64, offset: 15616)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1439, file: !1114, line: 1116, baseType: !2793, size: 192, offset: 15680)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1439, file: !1114, line: 1117, baseType: !207, size: 64, offset: 15872)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1439, file: !1114, line: 1118, baseType: !419, size: 64, offset: 15936)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1439, file: !1114, line: 1119, baseType: !28, size: 32, offset: 16000)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1439, file: !1114, line: 1121, baseType: !881, size: 64, offset: 16064)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1439, file: !1114, line: 1125, baseType: !2954, size: 64, offset: 16128)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1114, line: 43, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1439, file: !1114, line: 1127, baseType: !457, size: 32, offset: 16192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1439, file: !1114, line: 1128, baseType: !28, size: 32, offset: 16224)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1439, file: !1114, line: 1130, baseType: !2959, size: 128, offset: 16256)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2960, line: 37, size: 128, elements: !2961)
!2960 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2959, file: !2960, line: 38, baseType: !130, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2959, file: !2960, line: 39, baseType: !339, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2959, file: !2960, line: 40, baseType: !2965, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2960, line: 24, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1439, file: !1114, line: 1131, baseType: !2968, size: 256, offset: 16384)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2969, line: 12, size: 256, elements: !2970)
!2969 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2968, file: !2969, line: 13, baseType: !383, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2968, file: !2969, line: 14, baseType: !207, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2968, file: !2969, line: 15, baseType: !207, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2968, file: !2969, line: 16, baseType: !742, size: 8, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1439, file: !1114, line: 1134, baseType: !163, size: 64, offset: 16640)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1439, file: !1114, line: 1135, baseType: !163, size: 64, offset: 16704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1439, file: !1114, line: 1138, baseType: !319, size: 32, offset: 16768)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1439, file: !1114, line: 1141, baseType: !674, size: 32, offset: 16800)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1439, file: !1114, line: 1143, baseType: !2980, size: 64, offset: 16832)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1114, line: 735, size: 64, elements: !2981)
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2980, file: !1114, line: 736, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1439, file: !1114, line: 1147, baseType: !1616, size: 128, offset: 16896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1439, file: !1114, line: 1149, baseType: !1438, size: 64, offset: 17024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1439, file: !1114, line: 1151, baseType: !2987, size: 64, offset: 17088)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1114, line: 1151, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1439, file: !1114, line: 1188, baseType: !168, size: 64, offset: 17152)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1439, file: !1114, line: 1191, baseType: !2991, size: 64, offset: 17216)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1114, line: 44, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1439, file: !1114, line: 1194, baseType: !2994, size: 64, offset: 17280)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1114, line: 45, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1439, file: !1114, line: 1197, baseType: !2997, size: 64, offset: 17344)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1114, line: 61, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1439, file: !1114, line: 1199, baseType: !3000, size: 64, offset: 17408)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3002, line: 99, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3001, file: !3002, line: 100, baseType: !665, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3001, file: !3002, line: 101, baseType: !339, size: 32, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3001, file: !3002, line: 103, baseType: !188, size: 16, offset: 96)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1439, file: !1114, line: 1202, baseType: !3008, size: 64, offset: 17472)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1114, line: 48, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1439, file: !1114, line: 1205, baseType: !207, size: 64, offset: 17536)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1439, file: !1114, line: 1206, baseType: !3012, size: 64, offset: 17600)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2002, line: 14, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2002, line: 12, size: 384, elements: !3015)
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !3014, file: !2002, line: 13, baseType: !3017, size: 384)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3014, file: !2002, line: 13, size: 384, elements: !3018)
!3018 = !{!3019, !3020, !3021, !3022}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3017, file: !2002, line: 13, baseType: !130, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3017, file: !2002, line: 13, baseType: !130, size: 32, offset: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3017, file: !2002, line: 13, baseType: !130, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3017, file: !2002, line: 13, baseType: !3023, size: 256, offset: 128)
!3023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3024, line: 37, size: 256, elements: !3025)
!3024 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3025 = !{!3026, !3031, !3044, !3050, !3059, !3085, !3090}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3023, file: !3024, line: 42, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 39, size: 64, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3027, file: !3024, line: 40, baseType: !2692, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3027, file: !3024, line: 41, baseType: !463, size: 32, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3023, file: !3024, line: 50, baseType: !3032, size: 192)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 45, size: 192, elements: !3033)
!3033 = !{!3034, !3036, !3037, !3043}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3032, file: !3024, line: 46, baseType: !3035, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !293, line: 95, baseType: !130)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3032, file: !3024, line: 47, baseType: !130, size: 32, offset: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3032, file: !3024, line: 48, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3024, line: 11, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3024, line: 8, size: 64, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3039, file: !3024, line: 9, baseType: !130, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3039, file: !3024, line: 10, baseType: !168, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3032, file: !3024, line: 49, baseType: !130, size: 32, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3023, file: !3024, line: 57, baseType: !3045, size: 128)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 53, size: 128, elements: !3046)
!3046 = !{!3047, !3048, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3045, file: !3024, line: 54, baseType: !2692, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3045, file: !3024, line: 55, baseType: !463, size: 32, offset: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3045, file: !3024, line: 56, baseType: !3038, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3023, file: !3024, line: 66, baseType: !3051, size: 256)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 60, size: 256, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056, !3058}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3051, file: !3024, line: 61, baseType: !2692, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3051, file: !3024, line: 62, baseType: !463, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3051, file: !3024, line: 63, baseType: !130, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3051, file: !3024, line: 64, baseType: !3057, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !293, line: 94, baseType: !294)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3051, file: !3024, line: 65, baseType: !3057, size: 64, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3023, file: !3024, line: 105, baseType: !3060, size: 256)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 69, size: 256, elements: !3061)
!3061 = !{!3062, !3063}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3060, file: !3024, line: 70, baseType: !168, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !3060, file: !3024, line: 79, baseType: !3064, size: 192, offset: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3060, file: !3024, line: 79, size: 192, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3074, !3079}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3064, file: !3024, line: 81, baseType: !130, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3064, file: !3024, line: 86, baseType: !800, size: 16)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3064, file: !3024, line: 92, baseType: !3069, size: 192)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !3024, line: 88, size: 192, elements: !3070)
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3069, file: !3024, line: 89, baseType: !258, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3069, file: !3024, line: 90, baseType: !168, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3069, file: !3024, line: 91, baseType: !168, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3064, file: !3024, line: 97, baseType: !3075, size: 96)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !3024, line: 94, size: 96, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3075, file: !3024, line: 95, baseType: !258, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3075, file: !3024, line: 96, baseType: !170, size: 32, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3064, file: !3024, line: 103, baseType: !3080, size: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !3024, line: 99, size: 128, elements: !3081)
!3081 = !{!3082, !3083, !3084}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3080, file: !3024, line: 100, baseType: !207, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3080, file: !3024, line: 101, baseType: !170, size: 32, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3080, file: !3024, line: 102, baseType: !170, size: 32, offset: 96)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3023, file: !3024, line: 111, baseType: !3086, size: 128)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 108, size: 128, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3086, file: !3024, line: 109, baseType: !295, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3086, file: !3024, line: 110, baseType: !130, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3023, file: !3024, line: 118, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !3024, line: 114, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3091, file: !3024, line: 115, baseType: !168, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3091, file: !3024, line: 116, baseType: !130, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3091, file: !3024, line: 117, baseType: !28, size: 32, offset: 96)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1439, file: !1114, line: 1208, baseType: !2877, size: 448, offset: 17664)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1439, file: !1114, line: 1215, baseType: !163, size: 64, offset: 18112)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1439, file: !1114, line: 1217, baseType: !163, size: 64, offset: 18176)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1439, file: !1114, line: 1219, baseType: !163, size: 64, offset: 18240)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1439, file: !1114, line: 1223, baseType: !3101, size: 64, offset: 18304)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3102, line: 99, baseType: !3103)
!3102 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3102, line: 99, size: 64, elements: !3104)
!3104 = !{!3105}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3103, file: !3102, line: 99, baseType: !1684, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1439, file: !1114, line: 1225, baseType: !492, size: 32, offset: 18368)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1439, file: !1114, line: 1226, baseType: !130, size: 32, offset: 18400)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1439, file: !1114, line: 1227, baseType: !130, size: 32, offset: 18432)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1439, file: !1114, line: 1231, baseType: !3110, size: 64, offset: 18496)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1114, line: 1231, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1439, file: !1114, line: 1233, baseType: !306, size: 128, offset: 18560)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1439, file: !1114, line: 1240, baseType: !3114, size: 64, offset: 18688)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1114, line: 62, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1439, file: !1114, line: 1242, baseType: !3117, size: 64, offset: 18752)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1114, line: 1242, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1439, file: !1114, line: 1244, baseType: !306, size: 128, offset: 18816)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1439, file: !1114, line: 1245, baseType: !3121, size: 64, offset: 18944)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1114, line: 51, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1439, file: !1114, line: 1246, baseType: !661, size: 256, offset: 19008)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1439, file: !1114, line: 1247, baseType: !28, size: 32, offset: 19264)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1439, file: !1114, line: 1250, baseType: !3126, size: 64, offset: 19328)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1114, line: 57, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1439, file: !1114, line: 1251, baseType: !661, size: 256, offset: 19392)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1439, file: !1114, line: 1252, baseType: !306, size: 128, offset: 19648)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1439, file: !1114, line: 1259, baseType: !2381, size: 64, offset: 19776)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1439, file: !1114, line: 1260, baseType: !800, size: 16, offset: 19840)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1439, file: !1114, line: 1261, baseType: !800, size: 16, offset: 19856)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1439, file: !1114, line: 1314, baseType: !3134, size: 64, offset: 19904)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3136, line: 62, size: 256, align: 256, elements: !3137)
!3136 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3135, file: !3136, line: 75, baseType: !170, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3135, file: !3136, line: 90, baseType: !170, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3135, file: !3136, line: 112, baseType: !165, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3135, file: !3136, line: 132, baseType: !170, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3135, file: !3136, line: 140, baseType: !170, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3135, file: !3136, line: 149, baseType: !170, size: 32, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3135, file: !3136, line: 154, baseType: !3145, offset: 224)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1820)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1439, file: !1114, line: 1315, baseType: !169, size: 32, offset: 19968)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1439, file: !1114, line: 1316, baseType: !169, size: 32, offset: 20000)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1439, file: !1114, line: 1321, baseType: !207, size: 64, offset: 20032)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1439, file: !1114, line: 1325, baseType: !130, size: 32, offset: 20096)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1439, file: !1114, line: 1326, baseType: !130, size: 32, offset: 20128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1439, file: !1114, line: 1327, baseType: !130, size: 32, offset: 20160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1439, file: !1114, line: 1328, baseType: !130, size: 32, offset: 20192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1439, file: !1114, line: 1329, baseType: !882, size: 128, align: 64, offset: 20224)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1439, file: !1114, line: 1332, baseType: !3155, size: 128, offset: 20352)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3156, line: 51, size: 128, elements: !3157)
!3156 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3157 = !{!3158, !3163, !3164}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3155, file: !3156, line: 60, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3160, line: 7, size: 64, elements: !3161)
!3160 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3159, file: !3160, line: 12, baseType: !1681, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3155, file: !3156, line: 63, baseType: !742, size: 8, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3155, file: !3156, line: 70, baseType: !742, size: 8, offset: 72)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1439, file: !1114, line: 1335, baseType: !2433, size: 64, offset: 20480)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1439, file: !1114, line: 1337, baseType: !3167, size: 128, offset: 20544)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3156, line: 39, size: 128, elements: !3168)
!3168 = !{!3169, !3170, !3171}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3167, file: !3156, line: 40, baseType: !2220, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3167, file: !3156, line: 42, baseType: !170, size: 32, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3167, file: !3156, line: 43, baseType: !170, size: 32, offset: 96)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1439, file: !1114, line: 1340, baseType: !3173, size: 64, offset: 20672)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1114, line: 69, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1439, file: !1114, line: 1351, baseType: !130, size: 32, offset: 20736)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1439, file: !1114, line: 1352, baseType: !130, size: 32, offset: 20768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1439, file: !1114, line: 1354, baseType: !207, size: 64, offset: 20800)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1439, file: !1114, line: 1364, baseType: !163, size: 64, offset: 20864)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1439, file: !1114, line: 1365, baseType: !163, size: 64, offset: 20928)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1439, file: !1114, line: 1412, baseType: !207, size: 64, offset: 20992)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1439, file: !1114, line: 1453, baseType: !3182, size: 64, offset: 21056)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1114, line: 1453, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1439, file: !1114, line: 1457, baseType: !3185, size: 64, offset: 21120)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !89, line: 61, size: 576, elements: !3187)
!3187 = !{!3188, !3189, !3208, !3211, !3212, !3245, !3255}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3186, file: !89, line: 62, baseType: !88, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !3186, file: !89, line: 64, baseType: !3190, size: 192, offset: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3186, file: !89, line: 64, size: 192, elements: !3191)
!3191 = !{!3192, !3203}
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !89, line: 65, baseType: !3193, size: 192)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !89, line: 65, size: 192, elements: !3194)
!3194 = !{!3195, !3202}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3193, file: !89, line: 66, baseType: !3196, size: 128)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3197, line: 50, size: 128, elements: !3198)
!3197 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3198 = !{!3199, !3200, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3196, file: !3197, line: 52, baseType: !207, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3196, file: !3197, line: 54, baseType: !28, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3196, file: !3197, line: 55, baseType: !28, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3193, file: !89, line: 67, baseType: !207, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3190, file: !89, line: 70, baseType: !3204, size: 192)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3190, file: !89, line: 70, size: 192, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3204, file: !89, line: 71, baseType: !882, size: 128, align: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3204, file: !89, line: 72, baseType: !207, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3186, file: !89, line: 76, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !89, line: 76, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3186, file: !89, line: 77, baseType: !207, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3186, file: !89, line: 79, baseType: !3213, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3197, line: 25, size: 256, elements: !3215)
!3215 = !{!3216, !3222, !3226}
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3197, line: 26, baseType: !3217, size: 128)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !3197, line: 26, size: 128, elements: !3218)
!3218 = !{!3219, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3217, file: !3197, line: 27, baseType: !3220, size: 128)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 128, elements: !2751)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3217, file: !3197, line: 28, baseType: !3220, size: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3214, file: !3197, line: 31, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3225)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3197, line: 23, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !3197, line: 33, baseType: !3227, size: 64, offset: 192)
!3227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !3197, line: 33, size: 64, elements: !3228)
!3228 = !{!3229, !3235, !3240}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3227, file: !3197, line: 38, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3197, line: 34, size: 64, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3230, file: !3197, line: 35, baseType: !657, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3230, file: !3197, line: 36, baseType: !347, size: 8, offset: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3230, file: !3197, line: 37, baseType: !347, size: 8, offset: 40)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3227, file: !3197, line: 42, baseType: !3236, size: 16)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3197, line: 39, size: 16, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3236, file: !3197, line: 40, baseType: !347, size: 8)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3236, file: !3197, line: 41, baseType: !347, size: 8, offset: 8)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3227, file: !3197, line: 46, baseType: !3241, size: 16)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3197, line: 43, size: 16, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3241, file: !3197, line: 44, baseType: !347, size: 8)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3241, file: !3197, line: 45, baseType: !347, size: 8, offset: 8)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3186, file: !89, line: 81, baseType: !3246, size: 64, offset: 448)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !89, line: 85, size: 384, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3247, file: !89, line: 86, baseType: !3209, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3247, file: !89, line: 87, baseType: !207, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3247, file: !89, line: 88, baseType: !207, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3247, file: !89, line: 89, baseType: !207, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3247, file: !89, line: 90, baseType: !742, size: 8, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3247, file: !89, line: 92, baseType: !3246, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3186, file: !89, line: 82, baseType: !28, size: 32, offset: 512)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1439, file: !1114, line: 1463, baseType: !3257, offset: 21184)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1114, line: 739, elements: !949)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1439, file: !1114, line: 1470, baseType: !882, size: 128, align: 64, offset: 21184)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1439, file: !1114, line: 1471, baseType: !1452, size: 32, offset: 21312)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1439, file: !1114, line: 1472, baseType: !130, size: 32, offset: 21344)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1439, file: !1114, line: 1474, baseType: !1438, size: 64, offset: 21376)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1439, file: !1114, line: 1475, baseType: !902, size: 320, offset: 21440)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1439, file: !1114, line: 1478, baseType: !3264, size: 64, offset: 21760)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2074, line: 49, size: 512, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3273, !3274, !3275, !3277}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3265, file: !2074, line: 50, baseType: !3264, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3265, file: !2074, line: 51, baseType: !168, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3265, file: !2074, line: 52, baseType: !207, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3265, file: !2074, line: 53, baseType: !207, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3265, file: !2074, line: 54, baseType: !3272, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3265, file: !2074, line: 56, baseType: !28, size: 32, offset: 320)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3265, file: !2074, line: 58, baseType: !28, size: 32, offset: 352)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3265, file: !2074, line: 59, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !286, line: 159, baseType: !163)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3265, file: !2074, line: 60, baseType: !2572, size: 64, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1439, file: !1114, line: 1482, baseType: !1452, size: 32, offset: 21824)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1439, file: !1114, line: 1489, baseType: !168, size: 64, offset: 21888)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1439, file: !1114, line: 1504, baseType: !168, size: 64, offset: 21952)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1439, file: !1114, line: 1505, baseType: !165, size: 64, offset: 22016)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1439, file: !1114, line: 1506, baseType: !163, size: 64, offset: 22080)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1439, file: !1114, line: 1507, baseType: !165, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1439, file: !1114, line: 1508, baseType: !165, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1439, file: !1114, line: 1509, baseType: !165, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1439, file: !1114, line: 1510, baseType: !882, size: 128, align: 64, offset: 22208)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1439, file: !1114, line: 1511, baseType: !130, size: 32, offset: 22336)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1439, file: !1114, line: 1515, baseType: !3289, size: 64, offset: 22400)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1466, line: 56, size: 64, elements: !3290)
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3289, file: !1466, line: 57, baseType: !1469, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1439, file: !1114, line: 1518, baseType: !3289, size: 64, offset: 22464)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1439, file: !1114, line: 1528, baseType: !882, size: 128, align: 64, offset: 22528)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1439, file: !1114, line: 1552, baseType: !3295, size: 35328, offset: 23040)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3296, line: 430, size: 35328, elements: !3297)
!3296 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3297 = !{!3298, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3327, !3328, !3329, !3330, !3331, !3332, !3335, !3336, !3337, !3338}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3295, file: !3296, line: 432, baseType: !3299, size: 192)
!3299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3300, size: 192, elements: !384)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3301, line: 16, size: 64, elements: !3302)
!3301 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3300, file: !3301, line: 17, baseType: !353, size: 16)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3300, file: !3301, line: 18, baseType: !353, size: 16, offset: 16)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3300, file: !3301, line: 19, baseType: !353, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3300, file: !3301, line: 19, baseType: !353, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3300, file: !3301, line: 19, baseType: !353, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3300, file: !3301, line: 19, baseType: !353, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3300, file: !3301, line: 19, baseType: !353, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3300, file: !3301, line: 20, baseType: !353, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3300, file: !3301, line: 20, baseType: !353, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3300, file: !3301, line: 20, baseType: !353, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3300, file: !3301, line: 20, baseType: !353, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3300, file: !3301, line: 20, baseType: !353, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3300, file: !3301, line: 20, baseType: !353, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3295, file: !3296, line: 436, baseType: !207, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3295, file: !3296, line: 440, baseType: !188, size: 16, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3295, file: !3296, line: 441, baseType: !188, size: 16, offset: 272)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3295, file: !3296, line: 442, baseType: !188, size: 16, offset: 288)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3295, file: !3296, line: 443, baseType: !188, size: 16, offset: 304)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3295, file: !3296, line: 447, baseType: !207, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3295, file: !3296, line: 448, baseType: !207, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3295, file: !3296, line: 459, baseType: !3324, size: 256, offset: 448)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3325, size: 256, elements: !269)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3296, line: 428, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3295, file: !3296, line: 461, baseType: !207, size: 64, offset: 704)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3295, file: !3296, line: 463, baseType: !207, size: 64, offset: 768)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3295, file: !3296, line: 465, baseType: !207, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3295, file: !3296, line: 466, baseType: !207, size: 64, offset: 896)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3295, file: !3296, line: 467, baseType: !207, size: 64, offset: 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3295, file: !3296, line: 473, baseType: !3333, size: 64, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3296, line: 10, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3295, file: !3296, line: 480, baseType: !207, size: 64, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3295, file: !3296, line: 482, baseType: !28, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3295, file: !3296, line: 491, baseType: !169, size: 32, offset: 1184)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3295, file: !3296, line: 501, baseType: !3339, size: 33792, offset: 1536)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3340, line: 448, size: 33792, elements: !3341)
!3340 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3341 = !{!3342, !3343, !3344, !3506, !3507, !3513, !3514}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3339, file: !3340, line: 461, baseType: !28, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3339, file: !3340, line: 468, baseType: !207, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3339, file: !3340, line: 476, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3340, line: 356, size: 33280, align: 512, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3346, file: !3340, line: 358, baseType: !28, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3346, file: !3340, line: 361, baseType: !28, size: 32, offset: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3346, file: !3340, line: 364, baseType: !163, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3346, file: !3340, line: 367, baseType: !163, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3346, file: !3340, line: 370, baseType: !163, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3346, file: !3340, line: 373, baseType: !28, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3346, file: !3340, line: 376, baseType: !28, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3346, file: !3340, line: 391, baseType: !28, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3346, file: !3340, line: 394, baseType: !28, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3346, file: !3340, line: 397, baseType: !3358, size: 32768, offset: 512)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3340, line: 348, size: 32768, elements: !3359)
!3359 = !{!3360, !3375, !3412, !3489, !3502}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3358, file: !3340, line: 349, baseType: !3361, size: 896)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3340, line: 12, size: 896, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3374}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3361, file: !3340, line: 13, baseType: !169, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3361, file: !3340, line: 14, baseType: !169, size: 32, offset: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3361, file: !3340, line: 15, baseType: !169, size: 32, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3361, file: !3340, line: 16, baseType: !169, size: 32, offset: 96)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3361, file: !3340, line: 17, baseType: !169, size: 32, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3361, file: !3340, line: 18, baseType: !169, size: 32, offset: 160)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3361, file: !3340, line: 19, baseType: !169, size: 32, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3361, file: !3340, line: 22, baseType: !3371, size: 640, offset: 224)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 640, elements: !3372)
!3372 = !{!3373}
!3373 = !DISubrange(count: 20)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3361, file: !3340, line: 25, baseType: !169, size: 32, offset: 864)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3358, file: !3340, line: 350, baseType: !3376, size: 4096, align: 128)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3340, line: 34, size: 4096, align: 128, elements: !3377)
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3397, !3398, !3399, !3401, !3403, !3407}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3376, file: !3340, line: 35, baseType: !353, size: 16)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3376, file: !3340, line: 36, baseType: !353, size: 16, offset: 16)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3376, file: !3340, line: 37, baseType: !353, size: 16, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3376, file: !3340, line: 38, baseType: !353, size: 16, offset: 48)
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3340, line: 39, baseType: !3383, size: 128, offset: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3340, line: 39, size: 128, elements: !3384)
!3384 = !{!3385, !3390}
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3340, line: 40, baseType: !3386, size: 128)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !3340, line: 40, size: 128, elements: !3387)
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3386, file: !3340, line: 41, baseType: !163, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3386, file: !3340, line: 42, baseType: !163, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3340, line: 44, baseType: !3391, size: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !3340, line: 44, size: 128, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3391, file: !3340, line: 45, baseType: !169, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3391, file: !3340, line: 46, baseType: !169, size: 32, offset: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3391, file: !3340, line: 47, baseType: !169, size: 32, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3391, file: !3340, line: 48, baseType: !169, size: 32, offset: 96)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3376, file: !3340, line: 51, baseType: !169, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3376, file: !3340, line: 52, baseType: !169, size: 32, offset: 224)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3376, file: !3340, line: 55, baseType: !3400, size: 1024, offset: 256)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 1024, elements: !528)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3376, file: !3340, line: 58, baseType: !3402, size: 2048, offset: 1280)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 2048, elements: !388)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3376, file: !3340, line: 60, baseType: !3404, size: 384, offset: 3328)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 384, elements: !3405)
!3405 = !{!3406}
!3406 = !DISubrange(count: 12)
!3407 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !3340, line: 62, baseType: !3408, size: 384, offset: 3712)
!3408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !3340, line: 62, size: 384, elements: !3409)
!3409 = !{!3410, !3411}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3408, file: !3340, line: 63, baseType: !3404, size: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3408, file: !3340, line: 64, baseType: !3404, size: 384)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3358, file: !3340, line: 351, baseType: !3413, size: 1088)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3340, line: 79, size: 1088, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3488}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3413, file: !3340, line: 80, baseType: !169, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3413, file: !3340, line: 81, baseType: !169, size: 32, offset: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3413, file: !3340, line: 82, baseType: !169, size: 32, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3413, file: !3340, line: 83, baseType: !169, size: 32, offset: 96)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3413, file: !3340, line: 84, baseType: !169, size: 32, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3413, file: !3340, line: 85, baseType: !169, size: 32, offset: 160)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3413, file: !3340, line: 86, baseType: !169, size: 32, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3413, file: !3340, line: 88, baseType: !3371, size: 640, offset: 224)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3413, file: !3340, line: 89, baseType: !347, size: 8, offset: 864)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3413, file: !3340, line: 90, baseType: !347, size: 8, offset: 872)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3413, file: !3340, line: 91, baseType: !347, size: 8, offset: 880)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3413, file: !3340, line: 92, baseType: !347, size: 8, offset: 888)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3413, file: !3340, line: 93, baseType: !347, size: 8, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3413, file: !3340, line: 94, baseType: !347, size: 8, offset: 904)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3413, file: !3340, line: 95, baseType: !3430, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3432, line: 11, size: 128, elements: !3433)
!3432 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3431, file: !3432, line: 12, baseType: !295, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3431, file: !3432, line: 13, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3438, line: 103, size: 1344, elements: !3439)
!3438 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3468, !3469, !3470}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3437, file: !3438, line: 109, baseType: !207, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3437, file: !3438, line: 110, baseType: !207, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3437, file: !3438, line: 111, baseType: !207, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3437, file: !3438, line: 112, baseType: !207, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3437, file: !3438, line: 113, baseType: !207, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3437, file: !3438, line: 114, baseType: !207, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3437, file: !3438, line: 117, baseType: !207, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3437, file: !3438, line: 118, baseType: !207, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3437, file: !3438, line: 119, baseType: !207, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3437, file: !3438, line: 120, baseType: !207, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3437, file: !3438, line: 121, baseType: !207, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3437, file: !3438, line: 122, baseType: !207, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3437, file: !3438, line: 123, baseType: !207, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3437, file: !3438, line: 124, baseType: !207, size: 64, offset: 832)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3437, file: !3438, line: 125, baseType: !207, size: 64, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3437, file: !3438, line: 139, baseType: !207, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3437, file: !3438, line: 142, baseType: !207, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3437, file: !3438, line: 144, baseType: !3458, size: 64, offset: 1088)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3437, file: !3438, line: 144, size: 64, elements: !3459)
!3459 = !{!3460, !3461, !3462}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3458, file: !3438, line: 146, baseType: !353, size: 16)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3458, file: !3438, line: 148, baseType: !163, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3458, file: !3438, line: 150, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3438, line: 59, size: 64, elements: !3464)
!3464 = !{!3465, !3466, !3467}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3463, file: !3438, line: 61, baseType: !163, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3463, file: !3438, line: 63, baseType: !163, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3463, file: !3438, line: 65, baseType: !163, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3437, file: !3438, line: 153, baseType: !207, size: 64, offset: 1152)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3437, file: !3438, line: 154, baseType: !207, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3437, file: !3438, line: 156, baseType: !3471, size: 64, offset: 1280)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3437, file: !3438, line: 156, size: 64, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3471, file: !3438, line: 158, baseType: !353, size: 16)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3471, file: !3438, line: 160, baseType: !163, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3471, file: !3438, line: 162, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3438, line: 69, size: 64, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3476, file: !3438, line: 71, baseType: !163, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3476, file: !3438, line: 73, baseType: !163, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3476, file: !3438, line: 75, baseType: !163, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3476, file: !3438, line: 77, baseType: !163, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3476, file: !3438, line: 80, baseType: !163, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3476, file: !3438, line: 83, baseType: !163, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3476, file: !3438, line: 86, baseType: !163, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3476, file: !3438, line: 88, baseType: !163, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3476, file: !3438, line: 93, baseType: !163, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3476, file: !3438, line: 100, baseType: !163, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3413, file: !3340, line: 96, baseType: !169, size: 32, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3358, file: !3340, line: 352, baseType: !3490, size: 4608, align: 512)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3340, line: 333, size: 4608, align: 512, elements: !3491)
!3491 = !{!3492, !3493, !3500}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3490, file: !3340, line: 334, baseType: !3376, size: 4096, align: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3490, file: !3340, line: 335, baseType: !3494, size: 512, offset: 4096)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3340, line: 312, size: 512, elements: !3495)
!3495 = !{!3496, !3497, !3498}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3494, file: !3340, line: 313, baseType: !163, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3494, file: !3340, line: 314, baseType: !163, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3494, file: !3340, line: 315, baseType: !3499, size: 384, offset: 128)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !1903)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3490, file: !3340, line: 336, baseType: !3501, offset: 4608)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, elements: !1820)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3358, file: !3340, line: 353, baseType: !3503, size: 32768)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 32768, elements: !3504)
!3504 = !{!3505}
!3505 = !DISubrange(count: 4096)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3339, file: !3340, line: 484, baseType: !3345, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3339, file: !3340, line: 491, baseType: !3508, size: 128, offset: 256)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3340, line: 404, size: 128, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3508, file: !3340, line: 424, baseType: !163, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3508, file: !3340, line: 432, baseType: !28, size: 32, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3508, file: !3340, line: 440, baseType: !28, size: 32, offset: 96)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3339, file: !3340, line: 498, baseType: !3508, size: 128, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3339, file: !3340, line: 508, baseType: !3346, size: 33280, align: 512, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1415, file: !1416, line: 16, baseType: !1425, size: 192, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1415, file: !1416, line: 17, baseType: !339, size: 32, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !598, file: !35, line: 1240, baseType: !168, size: 64, offset: 6912)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !598, file: !35, line: 1243, baseType: !169, size: 32, offset: 6976)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !598, file: !35, line: 1245, baseType: !1172, size: 64, offset: 7040)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !598, file: !35, line: 1246, baseType: !1172, size: 64, offset: 7104)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !598, file: !35, line: 1248, baseType: !170, size: 32, offset: 7168)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !598, file: !35, line: 1249, baseType: !3523, size: 64, offset: 7232)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !598, file: !35, line: 1252, baseType: !3526, size: 256, offset: 7296)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !528)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !598, file: !35, line: 1253, baseType: !3528, size: 128, offset: 7552)
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3529, line: 21, baseType: !3530)
!3529 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3529, line: 19, size: 128, elements: !3531)
!3531 = !{!3532}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3530, file: !3529, line: 20, baseType: !3533, size: 128)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !2751)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !598, file: !35, line: 1255, baseType: !28, size: 32, offset: 7680)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !598, file: !35, line: 1261, baseType: !661, size: 256, offset: 7744)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !598, file: !35, line: 1267, baseType: !283, size: 64, offset: 8000)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !598, file: !35, line: 1269, baseType: !544, size: 64, offset: 8064)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !598, file: !35, line: 1271, baseType: !3539, size: 448, offset: 8128)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1181, line: 63, size: 448, elements: !3540)
!3540 = !{!3541, !3546, !3547, !3548, !3549, !3550, !3551}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3539, file: !1181, line: 64, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!207, !3545, !1179}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3539, file: !1181, line: 66, baseType: !3542, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3539, file: !1181, line: 69, baseType: !295, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3539, file: !1181, line: 70, baseType: !130, size: 32, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3539, file: !1181, line: 71, baseType: !28, size: 32, offset: 224)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3539, file: !1181, line: 74, baseType: !306, size: 128, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3539, file: !1181, line: 85, baseType: !3552, size: 64, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !598, file: !35, line: 1274, baseType: !665, size: 64, offset: 8576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !598, file: !35, line: 1280, baseType: !665, size: 64, offset: 8640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !598, file: !35, line: 1283, baseType: !130, size: 32, offset: 8704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !598, file: !35, line: 1286, baseType: !2483, size: 32, offset: 8736)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !598, file: !35, line: 1289, baseType: !992, size: 64, offset: 8768)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !598, file: !35, line: 1290, baseType: !1040, size: 64, offset: 8832)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !598, file: !35, line: 1297, baseType: !1997, size: 64, offset: 8896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !598, file: !35, line: 1304, baseType: !3561, size: 64, offset: 8960)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3562, line: 49, size: 64, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3563 = !{!3564}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3561, file: !3562, line: 50, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3562, line: 41, size: 512, align: 512, elements: !3567)
!3567 = !{!3568, !3569, !3574}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3566, file: !3562, line: 43, baseType: !319, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3566, file: !3562, line: 45, baseType: !3570, size: 192, offset: 64)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3562, line: 29, size: 192, elements: !3571)
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3570, file: !3562, line: 30, baseType: !306, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3570, file: !3562, line: 32, baseType: !295, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3566, file: !3562, line: 46, baseType: !295, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !598, file: !35, line: 1305, baseType: !3561, size: 64, offset: 9024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !598, file: !35, line: 1306, baseType: !882, size: 128, align: 64, offset: 9088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !598, file: !35, line: 1307, baseType: !920, size: 256, offset: 9216)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !598, file: !35, line: 1309, baseType: !661, size: 256, offset: 9472)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !598, file: !35, line: 1314, baseType: !130, size: 32, offset: 9728)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !598, file: !35, line: 1317, baseType: !319, size: 32, align: 512, offset: 10240)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !598, file: !35, line: 1318, baseType: !306, size: 128, offset: 10304)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !598, file: !35, line: 1320, baseType: !319, size: 32, offset: 10432)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !598, file: !35, line: 1321, baseType: !306, size: 128, offset: 10496)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !592, file: !593, line: 73, baseType: !130, size: 32, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !592, file: !593, line: 74, baseType: !3586, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1844, line: 42, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !546, file: !488, line: 141, baseType: !3590, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!130, !1242, !742}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !546, file: !488, line: 142, baseType: !3594, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!486, !486, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !487, file: !488, line: 96, baseType: !597, size: 64, offset: 832)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !487, file: !488, line: 97, baseType: !207, size: 64, offset: 896)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !487, file: !488, line: 98, baseType: !168, size: 64, offset: 960)
!3602 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !488, line: 100, baseType: !3603, size: 128, offset: 1024)
!3603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 100, size: 128, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3603, file: !488, line: 101, baseType: !306, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3603, file: !488, line: 102, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !487, file: !488, line: 104, baseType: !306, size: 128, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !487, file: !488, line: 105, baseType: !306, size: 128, offset: 1280)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !487, file: !488, line: 113, baseType: !3611, size: 128, offset: 1408)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 109, size: 128, elements: !3612)
!3612 = !{!3613, !3614, !3615}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3611, file: !488, line: 110, baseType: !906, size: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3611, file: !488, line: 111, baseType: !502, size: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3611, file: !488, line: 112, baseType: !882, size: 128, align: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !480, file: !35, line: 1968, baseType: !3617, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!283, !486, !451, !3620}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3622, line: 10, size: 128, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3621, file: !3622, line: 11, baseType: !705, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3621, file: !3622, line: 12, baseType: !168, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !480, file: !35, line: 1969, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!130, !3586, !451, !130}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !480, file: !35, line: 1970, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!474, !451, !130, !742}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !480, file: !35, line: 1972, baseType: !3635, size: 64, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!130, !486, !383, !130}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !480, file: !35, line: 1974, baseType: !3639, size: 64, offset: 320)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!130, !3586, !451, !486, !285, !742}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !480, file: !35, line: 1976, baseType: !3643, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!130, !486, !451, !486}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !480, file: !35, line: 1977, baseType: !3647, size: 64, offset: 448)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!130, !451, !486}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !480, file: !35, line: 1978, baseType: !3651, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!130, !3586, !451, !486, !283}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !480, file: !35, line: 1980, baseType: !3655, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!130, !3586, !451, !486, !285}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !480, file: !35, line: 1982, baseType: !3647, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !480, file: !35, line: 1983, baseType: !3660, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!130, !3586, !451, !486, !285, !602}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !480, file: !35, line: 1985, baseType: !3664, size: 64, offset: 768)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!130, !3586, !451, !486, !451, !486, !28}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !480, file: !35, line: 1987, baseType: !3668, size: 64, offset: 832)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!130, !3586, !486, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3686, !3695, !3696, !3701, !3702, !3703}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3672, file: !35, line: 227, baseType: !28, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3672, file: !35, line: 228, baseType: !285, size: 16, offset: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !35, line: 241, baseType: !3677, size: 32, offset: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !35, line: 241, size: 32, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3677, file: !35, line: 242, baseType: !457, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3677, file: !35, line: 243, baseType: !3681, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3682, line: 16, baseType: !3683)
!3682 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3682, line: 14, size: 32, elements: !3684)
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3683, file: !3682, line: 15, baseType: !462, size: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, scope: !3672, file: !35, line: 245, baseType: !3687, size: 32, offset: 96)
!3687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3672, file: !35, line: 245, size: 32, elements: !3688)
!3688 = !{!3689, !3690}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3687, file: !35, line: 246, baseType: !466, size: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3687, file: !35, line: 247, baseType: !3691, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3682, line: 20, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3682, line: 18, size: 32, elements: !3693)
!3693 = !{!3694}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3692, file: !3682, line: 19, baseType: !470, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3672, file: !35, line: 249, baseType: !607, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3672, file: !35, line: 250, baseType: !3697, size: 128, offset: 192)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1173, line: 13, size: 128, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3697, file: !1173, line: 14, baseType: !1172, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3697, file: !1173, line: 15, baseType: !295, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3672, file: !35, line: 251, baseType: !3697, size: 128, offset: 320)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3672, file: !35, line: 252, baseType: !3697, size: 128, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3672, file: !35, line: 259, baseType: !1760, size: 64, offset: 576)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !480, file: !35, line: 1988, baseType: !3705, size: 64, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!130, !3586, !1242, !3708, !169, !28}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3710, line: 22, size: 1280, elements: !3711)
!3710 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3709, file: !3710, line: 23, baseType: !169, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3709, file: !3710, line: 24, baseType: !285, size: 16, offset: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3709, file: !3710, line: 25, baseType: !28, size: 32, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3709, file: !3710, line: 26, baseType: !1882, size: 32, offset: 96)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3709, file: !3710, line: 27, baseType: !163, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3709, file: !3710, line: 28, baseType: !163, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3709, file: !3710, line: 41, baseType: !163, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3709, file: !3710, line: 42, baseType: !602, size: 32, offset: 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3709, file: !3710, line: 43, baseType: !602, size: 32, offset: 352)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3709, file: !3710, line: 44, baseType: !457, size: 32, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3709, file: !3710, line: 45, baseType: !466, size: 32, offset: 416)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3709, file: !3710, line: 46, baseType: !607, size: 64, offset: 448)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3709, file: !3710, line: 47, baseType: !3697, size: 128, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3709, file: !3710, line: 48, baseType: !3697, size: 128, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3709, file: !3710, line: 49, baseType: !3697, size: 128, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3709, file: !3710, line: 50, baseType: !3697, size: 128, offset: 896)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3709, file: !3710, line: 51, baseType: !163, size: 64, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3709, file: !3710, line: 52, baseType: !163, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3709, file: !3710, line: 53, baseType: !169, size: 32, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3709, file: !3710, line: 54, baseType: !169, size: 32, offset: 1184)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3709, file: !3710, line: 55, baseType: !163, size: 64, offset: 1216)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !480, file: !35, line: 1990, baseType: !3734, size: 64, offset: 960)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!291, !486, !383, !419}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !480, file: !35, line: 1991, baseType: !3738, size: 64, offset: 1024)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!130, !451, !3741, !163, !163}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !480, file: !35, line: 1993, baseType: !3744, size: 64, offset: 1088)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!130, !451, !130}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !480, file: !35, line: 1994, baseType: !3748, size: 64, offset: 1152)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!130, !451, !486, !1760, !28, !285}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !480, file: !35, line: 1997, baseType: !3752, size: 64, offset: 1216)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!130, !3586, !451, !1760, !285}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !480, file: !35, line: 1999, baseType: !3756, size: 64, offset: 1280)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!474, !3586, !486, !130}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !480, file: !35, line: 2001, baseType: !3760, size: 64, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!130, !3586, !486, !474, !130}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !480, file: !35, line: 2003, baseType: !3764, size: 64, offset: 1408)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!130, !3586, !486, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !480, file: !35, line: 2005, baseType: !3770, size: 64, offset: 1472)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!130, !486, !3767}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !480, file: !35, line: 2006, baseType: !3774, size: 64, offset: 1536)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!3777, !451}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !3779)
!3779 = !{!3780, !3787}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3778, file: !35, line: 3193, baseType: !3781, size: 128)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3782, line: 296, size: 128, elements: !3783)
!3782 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3781, file: !3782, line: 297, baseType: !319, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3781, file: !3782, line: 299, baseType: !1184, size: 32, offset: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3781, file: !3782, line: 300, baseType: !168, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3778, file: !35, line: 3194, baseType: !169, size: 32, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !452, file: !35, line: 655, baseType: !597, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !452, file: !35, line: 656, baseType: !447, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !452, file: !35, line: 659, baseType: !168, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !452, file: !35, line: 663, baseType: !207, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !35, line: 671, baseType: !3793, size: 32, offset: 704)
!3793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !35, line: 671, size: 32, elements: !3794)
!3794 = !{!3795, !3797}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3793, file: !35, line: 672, baseType: !3796, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3793, file: !35, line: 673, baseType: !28, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !452, file: !35, line: 675, baseType: !602, size: 32, offset: 736)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !452, file: !35, line: 676, baseType: !607, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !452, file: !35, line: 677, baseType: !3697, size: 128, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !452, file: !35, line: 678, baseType: !3697, size: 128, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !452, file: !35, line: 679, baseType: !3697, size: 128, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !452, file: !35, line: 680, baseType: !319, size: 32, offset: 1216)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !452, file: !35, line: 681, baseType: !188, size: 16, offset: 1248)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !452, file: !35, line: 682, baseType: !347, size: 8, offset: 1264)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !452, file: !35, line: 683, baseType: !347, size: 8, offset: 1272)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !452, file: !35, line: 684, baseType: !1320, size: 64, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !452, file: !35, line: 691, baseType: !207, size: 64, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !452, file: !35, line: 692, baseType: !1332, size: 320, offset: 1408)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !452, file: !35, line: 694, baseType: !207, size: 64, offset: 1728)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !452, file: !35, line: 695, baseType: !207, size: 64, offset: 1792)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !452, file: !35, line: 697, baseType: !906, size: 128, offset: 1856)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !452, file: !35, line: 698, baseType: !306, size: 128, offset: 1984)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !452, file: !35, line: 707, baseType: !306, size: 128, offset: 2112)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !452, file: !35, line: 708, baseType: !306, size: 128, offset: 2240)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !35, line: 709, baseType: !3817, size: 128, offset: 2368)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !35, line: 709, size: 128, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3817, file: !35, line: 710, baseType: !1040, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3817, file: !35, line: 711, baseType: !882, size: 128, align: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !452, file: !35, line: 713, baseType: !667, size: 64, offset: 2496)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !452, file: !35, line: 714, baseType: !667, size: 64, offset: 2560)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !452, file: !35, line: 715, baseType: !339, size: 32, offset: 2624)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !452, file: !35, line: 716, baseType: !339, size: 32, offset: 2656)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !452, file: !35, line: 717, baseType: !339, size: 32, offset: 2688)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !452, file: !35, line: 719, baseType: !339, size: 32, offset: 2720)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !35, line: 721, baseType: !3828, size: 64, offset: 2752)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !35, line: 721, size: 64, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3828, file: !35, line: 722, baseType: !2028, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3828, file: !35, line: 723, baseType: !1063, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !452, file: !35, line: 725, baseType: !3833, size: 64, offset: 2816)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !452, file: !35, line: 726, baseType: !448, size: 1536, align: 64, offset: 2880)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !452, file: !35, line: 727, baseType: !306, size: 128, offset: 4416)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !35, line: 728, baseType: !3838, size: 64, offset: 4544)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !35, line: 728, size: 64, elements: !3839)
!3839 = !{!3840, !3841, !3844, !3845}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3838, file: !35, line: 729, baseType: !2433, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3838, file: !35, line: 730, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3838, file: !35, line: 731, baseType: !383, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3838, file: !35, line: 732, baseType: !28, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !452, file: !35, line: 735, baseType: !170, size: 32, offset: 4608)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !452, file: !35, line: 738, baseType: !170, size: 32, offset: 4640)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !452, file: !35, line: 739, baseType: !3523, size: 64, offset: 4672)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !452, file: !35, line: 750, baseType: !168, size: 64, offset: 4736)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !448, file: !35, line: 474, baseType: !3781, size: 128, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !448, file: !35, line: 475, baseType: !1332, size: 320, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !448, file: !35, line: 476, baseType: !1184, size: 32, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !448, file: !35, line: 477, baseType: !339, size: 32, offset: 544)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !448, file: !35, line: 482, baseType: !1616, size: 128, offset: 576)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !448, file: !35, line: 483, baseType: !207, size: 64, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !448, file: !35, line: 484, baseType: !207, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !448, file: !35, line: 485, baseType: !3858, size: 64, offset: 832)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !3861)
!3861 = !{!3862, !3866, !3936, !3940, !3944, !3950, !3954, !3958, !3963, !3967, !3971, !3975, !3976, !3980, !3984, !3988, !3993, !3997, !4004, !4005}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3860, file: !35, line: 405, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!130, !2220, !1075}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3860, file: !35, line: 406, baseType: !3867, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!130, !1760, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !59, line: 293, size: 1536, elements: !3872)
!3872 = !{!3873, !3903, !3917}
!3873 = !DIDerivedType(tag: DW_TAG_member, scope: !3871, file: !59, line: 295, baseType: !3874, size: 512)
!3874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3871, file: !59, line: 295, size: 512, elements: !3875)
!3875 = !{!3876, !3902}
!3876 = !DIDerivedType(tag: DW_TAG_member, scope: !3874, file: !59, line: 296, baseType: !3877, size: 448)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3874, file: !59, line: 296, size: 448, elements: !3878)
!3878 = !{!3879, !3880, !3889, !3890, !3891, !3900, !3901}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3877, file: !59, line: 298, baseType: !207, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !3877, file: !59, line: 299, baseType: !3881, size: 128, offset: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3877, file: !59, line: 299, size: 128, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3881, file: !59, line: 300, baseType: !306, size: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, scope: !3881, file: !59, line: 302, baseType: !3885, size: 128)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3881, file: !59, line: 302, size: 128, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3885, file: !59, line: 303, baseType: !168, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3885, file: !59, line: 305, baseType: !28, size: 32, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3877, file: !59, line: 310, baseType: !447, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3877, file: !59, line: 311, baseType: !207, size: 64, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3877, file: !59, line: 312, baseType: !3892, size: 64, offset: 320)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3877, file: !59, line: 312, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3892, file: !59, line: 313, baseType: !168, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3892, file: !59, line: 314, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !59, line: 257, baseType: !3897)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 255, size: 64, elements: !3898)
!3898 = !{!3899}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3897, file: !59, line: 256, baseType: !207, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3877, file: !59, line: 316, baseType: !339, size: 32, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3877, file: !59, line: 317, baseType: !339, size: 32, offset: 416)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3874, file: !59, line: 323, baseType: !2221, size: 512, align: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3871, file: !59, line: 325, baseType: !3904, size: 512, offset: 512)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3871, file: !59, line: 325, size: 512, elements: !3905)
!3905 = !{!3906, !3916}
!3906 = !DIDerivedType(tag: DW_TAG_member, scope: !3904, file: !59, line: 326, baseType: !3907, size: 320)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3904, file: !59, line: 326, size: 320, elements: !3908)
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3914, !3915}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3907, file: !59, line: 327, baseType: !207, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3907, file: !59, line: 328, baseType: !207, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3907, file: !59, line: 329, baseType: !207, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3907, file: !59, line: 331, baseType: !339, size: 32, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3907, file: !59, line: 332, baseType: !339, size: 32, offset: 224)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3907, file: !59, line: 333, baseType: !339, size: 32, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3907, file: !59, line: 335, baseType: !28, size: 32, offset: 288)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3904, file: !59, line: 339, baseType: !2221, size: 512, align: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3871, file: !59, line: 341, baseType: !3918, size: 512, offset: 1024)
!3918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3871, file: !59, line: 341, size: 512, elements: !3919)
!3919 = !{!3920, !3929, !3935}
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !59, line: 342, baseType: !3921, size: 384)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !59, line: 342, size: 384, elements: !3922)
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3921, file: !59, line: 343, baseType: !207, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3921, file: !59, line: 344, baseType: !207, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3921, file: !59, line: 346, baseType: !168, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3921, file: !59, line: 347, baseType: !168, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3921, file: !59, line: 348, baseType: !168, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3921, file: !59, line: 349, baseType: !168, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3918, file: !59, line: 352, baseType: !3930, size: 256)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !59, line: 352, size: 256, elements: !3931)
!3931 = !{!3932, !3933, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3930, file: !59, line: 353, baseType: !207, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3930, file: !59, line: 354, baseType: !207, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3930, file: !59, line: 356, baseType: !306, size: 128, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3918, file: !59, line: 359, baseType: !2221, size: 512, align: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3860, file: !35, line: 409, baseType: !3937, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!130, !447, !1075}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3860, file: !35, line: 412, baseType: !3941, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!742, !447, !3870}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3860, file: !35, line: 414, baseType: !3945, size: 64, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3860, file: !35, line: 416, baseType: !3951, size: 64, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!130, !1760, !447, !607, !28, !3272, !2448}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3860, file: !35, line: 419, baseType: !3955, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!130, !1760, !447, !607, !28, !28, !2220, !168}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3860, file: !35, line: 424, baseType: !3959, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!3962, !447, !3962}
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !286, line: 131, baseType: !163)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3860, file: !35, line: 425, baseType: !3964, size: 64, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3870, !419, !419}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3860, file: !35, line: 426, baseType: !3968, size: 64, offset: 576)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!742, !3870, !1184}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3860, file: !35, line: 427, baseType: !3972, size: 64, offset: 640)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3870}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3860, file: !35, line: 428, baseType: !2047, size: 64, offset: 704)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3860, file: !35, line: 433, baseType: !3977, size: 64, offset: 768)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!130, !447, !3870, !3870, !95}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3860, file: !35, line: 435, baseType: !3981, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!130, !3870}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3860, file: !35, line: 436, baseType: !3985, size: 64, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!742, !3870, !419, !419}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3860, file: !35, line: 438, baseType: !3989, size: 64, offset: 960)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !3870, !3992, !3992}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3860, file: !35, line: 439, baseType: !3994, size: 64, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!130, !447, !2220}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3860, file: !35, line: 442, baseType: !3998, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!130, !4001, !1760, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3860, file: !35, line: 444, baseType: !2440, size: 64, offset: 1152)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3860, file: !35, line: 445, baseType: !4006, size: 64, offset: 1216)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!130, !2050, !2072}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !35, line: 486, baseType: !207, size: 64, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !448, file: !35, line: 487, baseType: !1332, size: 320, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !448, file: !35, line: 488, baseType: !2483, size: 32, offset: 1280)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !448, file: !35, line: 489, baseType: !319, size: 32, offset: 1312)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !448, file: !35, line: 490, baseType: !306, size: 128, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !448, file: !35, line: 491, baseType: !168, size: 64, offset: 1472)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !438, file: !280, line: 180, baseType: !4016, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!291, !1760, !312, !437, !383, !607, !419}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !438, file: !280, line: 182, baseType: !4016, size: 64, offset: 384)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !438, file: !280, line: 184, baseType: !4021, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!130, !1760, !312, !437, !2111}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !426, file: !280, line: 90, baseType: !4025, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !426, file: !280, line: 91, baseType: !4027, size: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !399, file: !302, line: 120, baseType: !4029, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!4032, !366}
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4034)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !4035)
!4035 = !{!4036, !4037, !4041, !4045, !4051, !4055}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4034, file: !103, line: 40, baseType: !102, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4034, file: !103, line: 41, baseType: !4038, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!742}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4034, file: !103, line: 42, baseType: !4042, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!168}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4034, file: !103, line: 43, baseType: !4046, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!2572, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4034, file: !103, line: 44, baseType: !4052, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!2572}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4034, file: !103, line: 45, baseType: !705, size: 64, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !399, file: !302, line: 121, baseType: !4057, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!2572, !366}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !399, file: !302, line: 122, baseType: !4061, size: 64, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !366, !4064, !4065}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !301, file: !302, line: 70, baseType: !4067, size: 64, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !622, line: 190, size: 1152, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4161, !4162, !4163, !4164, !4165, !4168}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4068, file: !622, line: 191, baseType: !339, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4068, file: !622, line: 192, baseType: !339, size: 32, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4068, file: !622, line: 202, baseType: !4067, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4068, file: !622, line: 203, baseType: !283, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4068, file: !622, line: 205, baseType: !774, size: 192, align: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4068, file: !622, line: 207, baseType: !2572, size: 64, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4068, file: !622, line: 208, baseType: !28, size: 32, offset: 448)
!4077 = !DIDerivedType(tag: DW_TAG_member, scope: !4068, file: !622, line: 209, baseType: !4078, size: 256, offset: 512)
!4078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4068, file: !622, line: 209, size: 256, elements: !4079)
!4079 = !{!4080, !4089, !4093}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4078, file: !622, line: 210, baseType: !4081, size: 256)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !622, line: 153, size: 256, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4088}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4081, file: !622, line: 154, baseType: !207, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4081, file: !622, line: 156, baseType: !1619, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4081, file: !622, line: 162, baseType: !4086, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !622, line: 162, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4081, file: !622, line: 167, baseType: !207, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4078, file: !622, line: 211, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !622, line: 170, size: 64, elements: !4091)
!4091 = !{!4092}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4090, file: !622, line: 171, baseType: !4067, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4078, file: !622, line: 212, baseType: !4094, size: 256)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !622, line: 174, size: 256, elements: !4095)
!4095 = !{!4096, !4156, !4159, !4160}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4094, file: !622, line: 175, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !622, line: 271, size: 768, elements: !4100)
!4100 = !{!4101, !4121, !4125, !4129, !4133, !4137, !4141, !4145, !4146, !4147, !4148, !4152}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4099, file: !622, line: 276, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!130, !4105}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !622, line: 251, size: 1216, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4106, file: !622, line: 253, baseType: !4067, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4106, file: !622, line: 254, baseType: !1760, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4106, file: !622, line: 255, baseType: !1112, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4106, file: !622, line: 256, baseType: !168, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4106, file: !622, line: 259, baseType: !661, size: 256, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4106, file: !622, line: 260, baseType: !661, size: 256, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4106, file: !622, line: 261, baseType: !130, size: 32, offset: 768)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4106, file: !622, line: 262, baseType: !306, size: 128, offset: 832)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4106, file: !622, line: 263, baseType: !383, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4106, file: !622, line: 265, baseType: !419, size: 64, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4106, file: !622, line: 266, baseType: !742, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4106, file: !622, line: 267, baseType: !742, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4106, file: !622, line: 268, baseType: !2156, size: 64, offset: 1152)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4099, file: !622, line: 277, baseType: !4122, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !4105}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4099, file: !622, line: 290, baseType: !4126, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!130, !1112, !168}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4099, file: !622, line: 292, baseType: !4130, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!168, !1112, !2041}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4099, file: !622, line: 293, baseType: !4134, size: 64, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!168, !1112, !168, !2041}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4099, file: !622, line: 294, baseType: !4138, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !1112, !168}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4099, file: !622, line: 296, baseType: !4142, size: 64, offset: 384)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!291, !4105, !383, !419, !607}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4099, file: !622, line: 306, baseType: !419, size: 64, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4099, file: !622, line: 313, baseType: !742, size: 8, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4099, file: !622, line: 314, baseType: !4142, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4099, file: !622, line: 317, baseType: !4149, size: 64, offset: 640)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!2099, !4105, !2100}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4099, file: !622, line: 320, baseType: !4153, size: 64, offset: 704)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!130, !4105, !2111}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4094, file: !622, line: 176, baseType: !4157, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !622, line: 35, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4094, file: !622, line: 177, baseType: !607, size: 64, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4094, file: !622, line: 178, baseType: !4067, size: 64, offset: 192)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4068, file: !622, line: 215, baseType: !168, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4068, file: !622, line: 221, baseType: !163, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4068, file: !622, line: 223, baseType: !188, size: 16, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4068, file: !622, line: 224, baseType: !285, size: 16, offset: 912)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4068, file: !622, line: 225, baseType: !4166, size: 64, offset: 960)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !622, line: 36, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4068, file: !622, line: 227, baseType: !882, size: 128, align: 64, offset: 1024)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !301, file: !302, line: 71, baseType: !4170, size: 32, offset: 448)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4171, line: 19, size: 32, elements: !4172)
!4171 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4172 = !{!4173}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4170, file: !4171, line: 20, baseType: !1452, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !301, file: !302, line: 73, baseType: !28, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !301, file: !302, line: 74, baseType: !28, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !301, file: !302, line: 75, baseType: !28, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !301, file: !302, line: 76, baseType: !28, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !301, file: !302, line: 77, baseType: !28, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !298, file: !27, line: 47, baseType: !636, size: 64, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !298, file: !27, line: 48, baseType: !312, size: 64, offset: 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !298, file: !27, line: 49, baseType: !4182, size: 64, offset: 640)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !27, line: 49, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !298, file: !27, line: 50, baseType: !2708, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !276, file: !27, line: 57, baseType: !4186, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!291, !296, !297, !283, !419}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !276, file: !27, line: 59, baseType: !4190, size: 64, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !636, !283}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !276, file: !27, line: 60, baseType: !4194, size: 64, offset: 320)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!130, !636}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !276, file: !27, line: 61, baseType: !4198, size: 64, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !636}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !273, file: !27, line: 66, baseType: !283, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !273, file: !27, line: 67, baseType: !283, size: 64, offset: 512)
!4203 = !DIGlobalVariableExpression(var: !4204, expr: !DIExpression())
!4204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description339", scope: !24, file: !2, line: 718, type: !4205, isLocal: true, isDefinition: true, align: 8)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 472, elements: !4206)
!4206 = !{!4207}
!4207 = !DISubrange(count: 59)
!4208 = !DIGlobalVariableExpression(var: !4209, expr: !DIExpression())
!4209 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author340", scope: !24, file: !2, line: 719, type: !4210, isLocal: true, isDefinition: true, align: 8)
!4210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 496, elements: !4211)
!4211 = !{!4212}
!4212 = !DISubrange(count: 62)
!4213 = !DIGlobalVariableExpression(var: !4214, expr: !DIExpression())
!4214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file341", scope: !24, file: !2, line: 720, type: !4215, isLocal: true, isDefinition: true, align: 8)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !388)
!4216 = !DIGlobalVariableExpression(var: !4217, expr: !DIExpression())
!4217 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license342", scope: !24, file: !2, line: 720, type: !252, isLocal: true, isDefinition: true, align: 8)
!4218 = !DIGlobalVariableExpression(var: !4219, expr: !DIExpression())
!4219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !4220, isLocal: true, isDefinition: true)
!4220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !4221)
!4221 = !{!4222}
!4222 = !DISubrange(count: 44)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !4225, isLocal: true, isDefinition: true)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !4226)
!4226 = !{!4227}
!4227 = !DISubrange(count: 50)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !4230, isLocal: true, isDefinition: true)
!4230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !2537)
!4231 = !DIGlobalVariableExpression(var: !4232, expr: !DIExpression())
!4232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !4233, isLocal: true, isDefinition: true)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !4234)
!4234 = !{!4235}
!4235 = !DISubrange(count: 35)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !4238, isLocal: true, isDefinition: true)
!4238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !4239)
!4239 = !{!4240}
!4240 = !DISubrange(count: 41)
!4241 = !DIGlobalVariableExpression(var: !4242, expr: !DIExpression())
!4242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !4243, isLocal: true, isDefinition: true)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !4244)
!4244 = !{!4245}
!4245 = !DISubrange(count: 65)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !4225, isLocal: true, isDefinition: true)
!4248 = !{i32 7, !"Dwarf Version", i32 5}
!4249 = !{i32 2, !"Debug Info Version", i32 3}
!4250 = !{i32 1, !"wchar_size", i32 2}
!4251 = !{i32 8, !"cf-protection-branch", i32 1}
!4252 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4253 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4254 = !{i32 1, !"Code Model", i32 2}
!4255 = !{i32 1, !"override-stack-alignment", i32 8}
!4256 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4257 = distinct !DISubprogram(name: "vp_modern_probe", scope: !2, file: !2, line: 215, type: !4258, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5051)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!130, !4260}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_pci_modern_device", file: !173, line: 15, size: 832, elements: !4262)
!4262 = !{!4263, !5032, !5034, !5035, !5036, !5037, !5039, !5040, !5041, !5042, !5043, !5044, !5049, !5050}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pci_dev", scope: !4261, file: !173, line: 16, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4266, line: 322, size: 16640, elements: !4267)
!4266 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4267 = !{!4268, !4269, !4807, !4808, !4809, !4810, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4916, !4917, !4918, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4995, !4996, !4997, !4999, !5000, !5002, !5003, !5004, !5005, !5011, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4265, file: !4266, line: 323, baseType: !306, size: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4265, file: !4266, line: 324, baseType: !4270, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4266, line: 647, size: 8256, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4294, !4295, !4296, !4320, !4321, !4325, !4326, !4327, !4328, !4329, !4333, !4334, !4336, !4802, !4803, !4804, !4805, !4806}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4271, file: !4266, line: 648, baseType: !306, size: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4271, file: !4266, line: 649, baseType: !4270, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4271, file: !4266, line: 650, baseType: !306, size: 128, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4271, file: !4266, line: 651, baseType: !306, size: 128, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4271, file: !4266, line: 652, baseType: !4264, size: 64, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4271, file: !4266, line: 653, baseType: !306, size: 128, offset: 512)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4271, file: !4266, line: 655, baseType: !4280, size: 256, offset: 640)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4281, size: 256, elements: !269)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4283, line: 21, size: 512, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4284 = !{!4285, !4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4282, file: !4283, line: 22, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !286, line: 164, baseType: !3276)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4282, file: !4283, line: 23, baseType: !4286, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !4283, line: 24, baseType: !283, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4282, file: !4283, line: 25, baseType: !207, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4282, file: !4283, line: 26, baseType: !207, size: 64, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4282, file: !4283, line: 27, baseType: !4281, size: 64, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4282, file: !4283, line: 27, baseType: !4281, size: 64, offset: 384)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4282, file: !4283, line: 27, baseType: !4281, size: 64, offset: 448)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4271, file: !4266, line: 656, baseType: !306, size: 128, offset: 896)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4271, file: !4266, line: 657, baseType: !4282, size: 512, offset: 1024)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4271, file: !4266, line: 659, baseType: !4297, size: 64, offset: 1536)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4266, line: 773, size: 320, elements: !4299)
!4299 = !{!4300, !4304, !4308, !4312, !4316}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4298, file: !4266, line: 774, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!130, !4270}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4298, file: !4266, line: 775, baseType: !4305, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4270}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4298, file: !4266, line: 776, baseType: !4309, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!168, !4270, !28, !130}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4298, file: !4266, line: 777, baseType: !4313, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!130, !4270, !28, !130, !130, !2649}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4298, file: !4266, line: 778, baseType: !4317, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!130, !4270, !28, !130, !130, !169}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4271, file: !4266, line: 660, baseType: !168, size: 64, offset: 1600)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4271, file: !4266, line: 661, baseType: !4322, size: 64, offset: 1664)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4324, line: 131, flags: DIFlagFwdDecl)
!4324 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4271, file: !4266, line: 663, baseType: !192, size: 8, offset: 1728)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4271, file: !4266, line: 664, baseType: !192, size: 8, offset: 1736)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4271, file: !4266, line: 665, baseType: !192, size: 8, offset: 1744)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4271, file: !4266, line: 666, baseType: !192, size: 8, offset: 1752)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !4266, line: 671, baseType: !4330, size: 384, offset: 1760)
!4330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !4331)
!4331 = !{!4332}
!4332 = !DISubrange(count: 48)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4271, file: !4266, line: 673, baseType: !188, size: 16, offset: 2144)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4271, file: !4266, line: 674, baseType: !4335, size: 16, offset: 2160)
!4335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4266, line: 255, baseType: !188)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4271, file: !4266, line: 675, baseType: !4337, size: 64, offset: 2176)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !115, line: 705, size: 5824, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4345, !4346, !4399, !4484, !4485, !4486, !4487, !4488, !4495, !4587, !4600, !4610, !4614, !4616, !4617, !4618, !4622, !4629, !4630, !4633, !4636, !4640, !4744, !4745, !4746, !4747, !4748, !4749, !4779, !4780, !4781, !4784, !4787, !4796, !4797, !4798, !4799, !4800, !4801}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4338, file: !115, line: 706, baseType: !301, size: 512)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4338, file: !115, line: 707, baseType: !4337, size: 64, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4338, file: !115, line: 709, baseType: !4343, size: 64, offset: 576)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !115, line: 37, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4338, file: !115, line: 711, baseType: !283, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4338, file: !115, line: 712, baseType: !4347, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4349)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !115, line: 89, size: 384, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4359, !4364, !4368}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4349, file: !115, line: 90, baseType: !283, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4349, file: !115, line: 91, baseType: !423, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4349, file: !115, line: 92, baseType: !4354, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!130, !4357, !378}
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4349, file: !115, line: 93, baseType: !4360, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!383, !4357, !4363, !4064, !4065}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4349, file: !115, line: 95, baseType: !4365, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4337}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4349, file: !115, line: 97, baseType: !4369, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4371)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !122, line: 286, size: 1472, elements: !4372)
!4372 = !{!4373, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4371, file: !122, line: 287, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!130, !4337}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4371, file: !122, line: 288, baseType: !4365, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4371, file: !122, line: 289, baseType: !4374, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4371, file: !122, line: 290, baseType: !4374, size: 64, offset: 192)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4371, file: !122, line: 291, baseType: !4374, size: 64, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4371, file: !122, line: 292, baseType: !4374, size: 64, offset: 320)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4371, file: !122, line: 293, baseType: !4374, size: 64, offset: 384)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4371, file: !122, line: 294, baseType: !4374, size: 64, offset: 448)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4371, file: !122, line: 295, baseType: !4374, size: 64, offset: 512)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4371, file: !122, line: 296, baseType: !4374, size: 64, offset: 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4371, file: !122, line: 297, baseType: !4374, size: 64, offset: 640)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4371, file: !122, line: 298, baseType: !4374, size: 64, offset: 704)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4371, file: !122, line: 299, baseType: !4374, size: 64, offset: 768)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4371, file: !122, line: 300, baseType: !4374, size: 64, offset: 832)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4371, file: !122, line: 301, baseType: !4374, size: 64, offset: 896)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4371, file: !122, line: 302, baseType: !4374, size: 64, offset: 960)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4371, file: !122, line: 303, baseType: !4374, size: 64, offset: 1024)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4371, file: !122, line: 304, baseType: !4374, size: 64, offset: 1088)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4371, file: !122, line: 305, baseType: !4374, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4371, file: !122, line: 306, baseType: !4374, size: 64, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4371, file: !122, line: 307, baseType: !4374, size: 64, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4371, file: !122, line: 308, baseType: !4374, size: 64, offset: 1344)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4371, file: !122, line: 309, baseType: !4374, size: 64, offset: 1408)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4338, file: !115, line: 714, baseType: !4400, size: 64, offset: 768)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4402)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4403, line: 80, size: 1344, elements: !4404)
!4403 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4483}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4402, file: !4403, line: 81, baseType: !283, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4402, file: !4403, line: 82, baseType: !283, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4402, file: !4403, line: 83, baseType: !423, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4402, file: !4403, line: 84, baseType: !423, size: 64, offset: 192)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4402, file: !4403, line: 85, baseType: !423, size: 64, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4402, file: !4403, line: 87, baseType: !4411, size: 64, offset: 320)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!130, !4337, !4414}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !109, line: 96, size: 1152, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4436, !4446, !4447, !4448, !4449, !4450, !4458, !4459, !4460, !4461, !4462, !4463}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4415, file: !109, line: 97, baseType: !283, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4415, file: !109, line: 98, baseType: !4400, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4415, file: !109, line: 100, baseType: !636, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4415, file: !109, line: 101, baseType: !283, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4415, file: !109, line: 103, baseType: !742, size: 8, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4415, file: !109, line: 104, baseType: !108, size: 32, offset: 288)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4415, file: !109, line: 106, baseType: !4424, size: 64, offset: 320)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4427, line: 282, size: 1600, elements: !4428)
!4427 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4428 = !{!4429, !4430, !4431, !4435}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4426, file: !4427, line: 283, baseType: !3526, size: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4426, file: !4427, line: 284, baseType: !3526, size: 256, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4426, file: !4427, line: 285, baseType: !4432, size: 1024, offset: 512)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4433)
!4433 = !{!4434}
!4434 = !DISubrange(count: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4426, file: !4427, line: 286, baseType: !2572, size: 64, offset: 1536)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4415, file: !109, line: 107, baseType: !4437, size: 64, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4439)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4427, line: 217, size: 256, elements: !4440)
!4440 = !{!4441, !4442, !4444, !4445}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4439, file: !4427, line: 218, baseType: !3533, size: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4439, file: !4427, line: 219, baseType: !4443, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4427, line: 15, baseType: !207)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4439, file: !4427, line: 220, baseType: !170, size: 32, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4439, file: !4427, line: 221, baseType: !170, size: 32, offset: 224)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4415, file: !109, line: 109, baseType: !4374, size: 64, offset: 448)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4415, file: !109, line: 110, baseType: !4365, size: 64, offset: 512)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4415, file: !109, line: 111, baseType: !4374, size: 64, offset: 576)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4415, file: !109, line: 112, baseType: !4365, size: 64, offset: 640)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4415, file: !109, line: 113, baseType: !4451, size: 64, offset: 704)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!130, !4337, !4454}
!4454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !122, line: 60, baseType: !4455)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !122, line: 58, size: 32, elements: !4456)
!4456 = !{!4457}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4455, file: !122, line: 59, baseType: !130, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4415, file: !109, line: 114, baseType: !4374, size: 64, offset: 768)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4415, file: !109, line: 115, baseType: !423, size: 64, offset: 832)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4415, file: !109, line: 116, baseType: !423, size: 64, offset: 896)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4415, file: !109, line: 118, baseType: !4369, size: 64, offset: 960)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4415, file: !109, line: 119, baseType: !4365, size: 64, offset: 1024)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4415, file: !109, line: 121, baseType: !4464, size: 64, offset: 1088)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !109, line: 121, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4402, file: !4403, line: 88, baseType: !4354, size: 64, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4402, file: !4403, line: 89, baseType: !4374, size: 64, offset: 448)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4402, file: !4403, line: 90, baseType: !4365, size: 64, offset: 512)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4402, file: !4403, line: 91, baseType: !4365, size: 64, offset: 576)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4402, file: !4403, line: 92, baseType: !4365, size: 64, offset: 640)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4402, file: !4403, line: 94, baseType: !4374, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4402, file: !4403, line: 95, baseType: !4374, size: 64, offset: 768)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4402, file: !4403, line: 97, baseType: !4451, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4402, file: !4403, line: 98, baseType: !4374, size: 64, offset: 896)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4402, file: !4403, line: 100, baseType: !4374, size: 64, offset: 960)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4402, file: !4403, line: 102, baseType: !4374, size: 64, offset: 1024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4402, file: !4403, line: 103, baseType: !4365, size: 64, offset: 1088)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4402, file: !4403, line: 105, baseType: !4369, size: 64, offset: 1152)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4402, file: !4403, line: 107, baseType: !4480, size: 64, offset: 1216)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4482)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4403, line: 107, flags: DIFlagFwdDecl)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4402, file: !4403, line: 109, baseType: !742, size: 8, offset: 1280)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4338, file: !115, line: 715, baseType: !4414, size: 64, offset: 832)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4338, file: !115, line: 717, baseType: !168, size: 64, offset: 896)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4338, file: !115, line: 719, baseType: !168, size: 64, offset: 960)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4338, file: !115, line: 721, baseType: !661, size: 256, offset: 1024)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4338, file: !115, line: 725, baseType: !4489, size: 448, offset: 1280)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !115, line: 517, size: 448, elements: !4490)
!4490 = !{!4491, !4492, !4493, !4494}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4489, file: !115, line: 518, baseType: !306, size: 128)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4489, file: !115, line: 519, baseType: !306, size: 128, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4489, file: !115, line: 520, baseType: !306, size: 128, offset: 256)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4489, file: !115, line: 521, baseType: !114, size: 32, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4338, file: !115, line: 726, baseType: !4496, size: 2496, offset: 1728)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !122, line: 663, size: 2496, elements: !4497)
!4497 = !{!4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4580, !4584}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4496, file: !122, line: 664, baseType: !4454, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4496, file: !122, line: 665, baseType: !28, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4496, file: !122, line: 666, baseType: !28, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4496, file: !122, line: 667, baseType: !742, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4496, file: !122, line: 668, baseType: !742, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4496, file: !122, line: 669, baseType: !742, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4496, file: !122, line: 670, baseType: !742, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4496, file: !122, line: 671, baseType: !742, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4496, file: !122, line: 672, baseType: !742, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4496, file: !122, line: 673, baseType: !742, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4496, file: !122, line: 674, baseType: !742, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4496, file: !122, line: 675, baseType: !169, size: 32, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4496, file: !122, line: 676, baseType: !319, size: 32, offset: 96)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4496, file: !122, line: 678, baseType: !306, size: 128, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4496, file: !122, line: 679, baseType: !973, size: 256, offset: 256)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4496, file: !122, line: 680, baseType: !4514, size: 64, offset: 512)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4516, line: 43, size: 1536, elements: !4517)
!4516 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4517 = !{!4518, !4519, !4520, !4521, !4522, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4515, file: !4516, line: 44, baseType: !283, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4515, file: !4516, line: 45, baseType: !130, size: 32, offset: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4515, file: !4516, line: 46, baseType: !306, size: 128, offset: 128)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4515, file: !4516, line: 47, baseType: !319, size: 32, offset: 256)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4515, file: !4516, line: 48, baseType: !4523, size: 64, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !122, line: 629, flags: DIFlagFwdDecl)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4515, file: !4516, line: 49, baseType: !902, size: 320, offset: 384)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4515, file: !4516, line: 50, baseType: !207, size: 64, offset: 704)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4515, file: !4516, line: 51, baseType: !1567, size: 64, offset: 768)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4515, file: !4516, line: 52, baseType: !1567, size: 64, offset: 832)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4515, file: !4516, line: 53, baseType: !1567, size: 64, offset: 896)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4515, file: !4516, line: 54, baseType: !1567, size: 64, offset: 960)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4515, file: !4516, line: 55, baseType: !1567, size: 64, offset: 1024)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4515, file: !4516, line: 56, baseType: !207, size: 64, offset: 1088)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4515, file: !4516, line: 57, baseType: !207, size: 64, offset: 1152)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4515, file: !4516, line: 58, baseType: !207, size: 64, offset: 1216)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4515, file: !4516, line: 59, baseType: !207, size: 64, offset: 1280)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4515, file: !4516, line: 60, baseType: !207, size: 64, offset: 1344)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4515, file: !4516, line: 61, baseType: !4337, size: 64, offset: 1408)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4515, file: !4516, line: 62, baseType: !742, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4515, file: !4516, line: 63, baseType: !742, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4496, file: !122, line: 681, baseType: !742, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4496, file: !122, line: 682, baseType: !742, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4496, file: !122, line: 683, baseType: !742, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4496, file: !122, line: 684, baseType: !28, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4496, file: !122, line: 685, baseType: !28, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4496, file: !122, line: 690, baseType: !1559, size: 512, offset: 640)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4496, file: !122, line: 691, baseType: !163, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4496, file: !122, line: 692, baseType: !920, size: 256, offset: 1216)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4496, file: !122, line: 693, baseType: !1425, size: 192, offset: 1472)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4496, file: !122, line: 694, baseType: !4523, size: 64, offset: 1664)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4496, file: !122, line: 695, baseType: !339, size: 32, offset: 1728)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4496, file: !122, line: 696, baseType: !339, size: 32, offset: 1760)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4496, file: !122, line: 697, baseType: !28, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4496, file: !122, line: 698, baseType: !28, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4496, file: !122, line: 699, baseType: !28, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4496, file: !122, line: 700, baseType: !28, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4496, file: !122, line: 701, baseType: !28, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4496, file: !122, line: 702, baseType: !28, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4496, file: !122, line: 703, baseType: !742, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4496, file: !122, line: 704, baseType: !28, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4496, file: !122, line: 705, baseType: !28, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4496, file: !122, line: 706, baseType: !28, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4496, file: !122, line: 707, baseType: !28, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4496, file: !122, line: 708, baseType: !28, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4496, file: !122, line: 709, baseType: !28, size: 32, offset: 1824)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4496, file: !122, line: 710, baseType: !121, size: 32, offset: 1856)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4496, file: !122, line: 711, baseType: !129, size: 32, offset: 1888)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4496, file: !122, line: 712, baseType: !129, size: 32, offset: 1920)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4496, file: !122, line: 713, baseType: !130, size: 32, offset: 1952)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4496, file: !122, line: 714, baseType: !130, size: 32, offset: 1984)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4496, file: !122, line: 715, baseType: !163, size: 64, offset: 2048)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4496, file: !122, line: 716, baseType: !163, size: 64, offset: 2112)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4496, file: !122, line: 717, baseType: !163, size: 64, offset: 2176)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4496, file: !122, line: 718, baseType: !163, size: 64, offset: 2240)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4496, file: !122, line: 720, baseType: !4575, size: 64, offset: 2304)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !122, line: 632, size: 64, elements: !4577)
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4576, file: !122, line: 633, baseType: !319, size: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4576, file: !122, line: 634, baseType: !28, size: 32, offset: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4496, file: !122, line: 721, baseType: !4581, size: 64, offset: 2368)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !4337, !657}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4496, file: !122, line: 722, baseType: !4585, size: 64, offset: 2432)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !122, line: 722, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4338, file: !115, line: 727, baseType: !4588, size: 64, offset: 4224)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !122, line: 742, size: 1792, elements: !4590)
!4590 = !{!4591, !4592, !4593, !4597, !4598, !4599}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4589, file: !122, line: 743, baseType: !4371, size: 1472)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4589, file: !122, line: 744, baseType: !4374, size: 64, offset: 1472)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4589, file: !122, line: 745, baseType: !4594, size: 64, offset: 1536)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{null, !4337, !742}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4589, file: !122, line: 746, baseType: !4374, size: 64, offset: 1600)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4589, file: !122, line: 747, baseType: !4365, size: 64, offset: 1664)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4589, file: !122, line: 748, baseType: !4365, size: 64, offset: 1728)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4338, file: !115, line: 736, baseType: !4601, size: 128, offset: 4288)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !115, line: 529, size: 128, elements: !4602)
!4602 = !{!4603, !4607}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4601, file: !115, line: 531, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4606, line: 13, flags: DIFlagFwdDecl)
!4606 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4601, file: !115, line: 532, baseType: !4608, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !115, line: 49, flags: DIFlagFwdDecl)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4338, file: !115, line: 738, baseType: !4611, size: 64, offset: 4416)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4613)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !115, line: 738, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4338, file: !115, line: 740, baseType: !4615, size: 64, offset: 4480)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4338, file: !115, line: 741, baseType: !163, size: 64, offset: 4544)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4338, file: !115, line: 746, baseType: !163, size: 64, offset: 4608)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4338, file: !115, line: 747, baseType: !4619, size: 64, offset: 4672)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4621)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !115, line: 747, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4338, file: !115, line: 749, baseType: !4623, size: 64, offset: 4736)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !115, line: 428, size: 128, elements: !4625)
!4625 = !{!4626, !4627, !4628}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4624, file: !115, line: 433, baseType: !28, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4624, file: !115, line: 434, baseType: !28, size: 32, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4624, file: !115, line: 435, baseType: !207, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4338, file: !115, line: 751, baseType: !306, size: 128, offset: 4800)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4338, file: !115, line: 762, baseType: !4631, size: 64, offset: 4928)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !115, line: 762, flags: DIFlagFwdDecl)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4338, file: !115, line: 770, baseType: !4634, offset: 4992)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4635, line: 5, elements: !949)
!4635 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4338, file: !115, line: 772, baseType: !4637, size: 64, offset: 4992)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4639, line: 18, flags: DIFlagFwdDecl)
!4639 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4338, file: !115, line: 773, baseType: !4641, size: 64, offset: 5056)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4643, line: 41, size: 512, elements: !4644)
!4643 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4644 = !{!4645, !4646, !4740, !4741, !4742, !4743}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4642, file: !4643, line: 42, baseType: !4641, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4642, file: !4643, line: 43, baseType: !4647, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4643, line: 125, size: 1408, elements: !4650)
!4650 = !{!4651, !4655, !4659, !4665, !4669, !4670, !4675, !4679, !4683, !4687, !4691, !4692, !4696, !4700, !4704, !4715, !4716, !4717, !4718, !4728, !4732, !4736}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4649, file: !4643, line: 126, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!4641, !4641}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4649, file: !4643, line: 127, baseType: !4656, size: 64, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{null, !4641}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4649, file: !4643, line: 128, baseType: !4660, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!742, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4642)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4649, file: !4643, line: 129, baseType: !4666, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!2572, !4663, !4357}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4649, file: !4643, line: 131, baseType: !4660, size: 64, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4649, file: !4643, line: 133, baseType: !4671, size: 64, offset: 320)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!4674, !4663}
!4674 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4643, line: 132, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4649, file: !4643, line: 134, baseType: !4676, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!742, !4663, !283}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4649, file: !4643, line: 136, baseType: !4680, size: 64, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!130, !4663, !283, !28, !168, !419}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4649, file: !4643, line: 141, baseType: !4684, size: 64, offset: 512)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!130, !4663, !283, !1007, !419}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4649, file: !4643, line: 144, baseType: !4688, size: 64, offset: 576)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!283, !4663}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4649, file: !4643, line: 145, baseType: !4688, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4649, file: !4643, line: 146, baseType: !4693, size: 64, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!4641, !4663}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4649, file: !4643, line: 148, baseType: !4697, size: 64, offset: 768)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!4641, !4663, !4641}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4649, file: !4643, line: 151, baseType: !4701, size: 64, offset: 832)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!4641, !4663, !283}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4649, file: !4643, line: 153, baseType: !4705, size: 64, offset: 896)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!130, !4663, !283, !283, !28, !28, !4708}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4643, line: 94, size: 640, elements: !4710)
!4710 = !{!4711, !4712, !4713}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4709, file: !4643, line: 95, baseType: !4641, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4709, file: !4643, line: 96, baseType: !28, size: 32, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4709, file: !4643, line: 97, baseType: !4714, size: 512, offset: 128)
!4714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 512, elements: !259)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4649, file: !4643, line: 158, baseType: !4697, size: 64, offset: 960)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4649, file: !4643, line: 161, baseType: !4693, size: 64, offset: 1024)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4649, file: !4643, line: 163, baseType: !4652, size: 64, offset: 1088)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4649, file: !4643, line: 164, baseType: !4719, size: 64, offset: 1152)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!130, !4663, !4722}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4643, line: 73, size: 128, elements: !4724)
!4724 = !{!4725, !4726, !4727}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4723, file: !4643, line: 74, baseType: !28, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4723, file: !4643, line: 75, baseType: !28, size: 32, offset: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4723, file: !4643, line: 76, baseType: !4663, size: 64, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4649, file: !4643, line: 166, baseType: !4729, size: 64, offset: 1216)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!168, !4641, !130}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4649, file: !4643, line: 167, baseType: !4733, size: 64, offset: 1280)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!130, !4663, !28}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4649, file: !4643, line: 168, baseType: !4737, size: 64, offset: 1344)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!130, !4641}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4642, file: !4643, line: 44, baseType: !4337, size: 64, offset: 128)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4642, file: !4643, line: 45, baseType: !306, size: 128, offset: 192)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4642, file: !4643, line: 46, baseType: !306, size: 128, offset: 320)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4642, file: !4643, line: 47, baseType: !347, size: 8, offset: 448)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4338, file: !115, line: 776, baseType: !130, size: 32, offset: 5120)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4338, file: !115, line: 778, baseType: !602, size: 32, offset: 5152)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4338, file: !115, line: 779, baseType: !169, size: 32, offset: 5184)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4338, file: !115, line: 781, baseType: !319, size: 32, offset: 5216)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4338, file: !115, line: 782, baseType: !306, size: 128, offset: 5248)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4338, file: !115, line: 784, baseType: !4750, size: 64, offset: 5376)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4752)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4753, line: 52, size: 768, elements: !4754)
!4753 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4763, !4767, !4768, !4769, !4770, !4774, !4778}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4752, file: !4753, line: 53, baseType: !283, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4752, file: !4753, line: 55, baseType: !423, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4752, file: !4753, line: 56, baseType: !423, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4752, file: !4753, line: 58, baseType: !4354, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4752, file: !4753, line: 59, baseType: !4760, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!383, !4357, !4363}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4752, file: !4753, line: 61, baseType: !4764, size: 64, offset: 320)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4750}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4752, file: !4753, line: 62, baseType: !4365, size: 64, offset: 384)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4752, file: !4753, line: 64, baseType: !4374, size: 64, offset: 448)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4752, file: !4753, line: 66, baseType: !4032, size: 64, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4752, file: !4753, line: 67, baseType: !4771, size: 64, offset: 576)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!2572, !4357}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4752, file: !4753, line: 69, baseType: !4775, size: 64, offset: 640)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{null, !4357, !4064, !4065}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4752, file: !4753, line: 71, baseType: !4369, size: 64, offset: 704)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4338, file: !115, line: 785, baseType: !423, size: 64, offset: 5440)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4338, file: !115, line: 787, baseType: !4365, size: 64, offset: 5504)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4338, file: !115, line: 788, baseType: !4782, size: 64, offset: 5568)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !115, line: 46, flags: DIFlagFwdDecl)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4338, file: !115, line: 789, baseType: !4785, size: 64, offset: 5632)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !115, line: 48, flags: DIFlagFwdDecl)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4338, file: !115, line: 791, baseType: !4788, size: 64, offset: 5696)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !115, line: 597, size: 128, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4794, !4795}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4789, file: !115, line: 598, baseType: !137, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4789, file: !115, line: 599, baseType: !146, size: 32, offset: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4789, file: !115, line: 600, baseType: !151, size: 32, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4789, file: !115, line: 601, baseType: !742, size: 8, offset: 96)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4789, file: !115, line: 602, baseType: !742, size: 8, offset: 104)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4338, file: !115, line: 793, baseType: !156, size: 32, offset: 5760)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4338, file: !115, line: 795, baseType: !742, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4338, file: !115, line: 796, baseType: !742, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4338, file: !115, line: 797, baseType: !742, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4338, file: !115, line: 798, baseType: !742, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4338, file: !115, line: 799, baseType: !742, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4271, file: !4266, line: 676, baseType: !4338, size: 5824, offset: 2240)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4271, file: !4266, line: 677, baseType: !437, size: 64, offset: 8064)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4271, file: !4266, line: 678, baseType: !437, size: 64, offset: 8128)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4271, file: !4266, line: 679, baseType: !28, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4271, file: !4266, line: 680, baseType: !28, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4265, file: !4266, line: 325, baseType: !4270, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4265, file: !4266, line: 327, baseType: !168, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4265, file: !4266, line: 328, baseType: !4322, size: 64, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4265, file: !4266, line: 329, baseType: !4811, size: 64, offset: 384)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4266, line: 76, size: 832, elements: !4813)
!4813 = !{!4814, !4815, !4816, !4819, !4820}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4812, file: !4266, line: 77, baseType: !4270, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4812, file: !4266, line: 78, baseType: !306, size: 128, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4812, file: !4266, line: 79, baseType: !4817, size: 64, offset: 192)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4266, line: 79, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4812, file: !4266, line: 80, baseType: !192, size: 8, offset: 256)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4812, file: !4266, line: 81, baseType: !301, size: 512, offset: 320)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4265, file: !4266, line: 331, baseType: !28, size: 32, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4265, file: !4266, line: 332, baseType: !188, size: 16, offset: 480)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4265, file: !4266, line: 333, baseType: !188, size: 16, offset: 496)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4265, file: !4266, line: 334, baseType: !188, size: 16, offset: 512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4265, file: !4266, line: 335, baseType: !188, size: 16, offset: 528)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4265, file: !4266, line: 336, baseType: !28, size: 32, offset: 544)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4265, file: !4266, line: 337, baseType: !347, size: 8, offset: 576)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4265, file: !4266, line: 338, baseType: !347, size: 8, offset: 584)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4265, file: !4266, line: 344, baseType: !4830, size: 64, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4266, line: 319, flags: DIFlagFwdDecl)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4265, file: !4266, line: 345, baseType: !4264, size: 64, offset: 704)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4265, file: !4266, line: 347, baseType: !169, size: 32, offset: 768)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4265, file: !4266, line: 348, baseType: !347, size: 8, offset: 800)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4265, file: !4266, line: 349, baseType: !347, size: 8, offset: 808)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4265, file: !4266, line: 350, baseType: !347, size: 8, offset: 816)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4265, file: !4266, line: 351, baseType: !347, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4265, file: !4266, line: 352, baseType: !347, size: 8, offset: 832)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4265, file: !4266, line: 353, baseType: !347, size: 8, offset: 840)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4265, file: !4266, line: 354, baseType: !353, size: 16, offset: 848)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4265, file: !4266, line: 355, baseType: !1021, size: 64, offset: 896)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4265, file: !4266, line: 357, baseType: !4843, size: 64, offset: 960)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4266, line: 918, size: 2368, elements: !4845)
!4845 = !{!4846, !4847, !4848, !4861, !4865, !4869, !4873, !4877, !4878, !4882, !4883, !4887, !4907, !4908, !4909, !4910, !4915}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4844, file: !4266, line: 919, baseType: !306, size: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4844, file: !4266, line: 920, baseType: !283, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4844, file: !4266, line: 921, baseType: !4849, size: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4851)
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4427, line: 44, size: 320, elements: !4852)
!4852 = !{!4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4851, file: !4427, line: 45, baseType: !170, size: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4851, file: !4427, line: 45, baseType: !170, size: 32, offset: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4851, file: !4427, line: 46, baseType: !170, size: 32, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4851, file: !4427, line: 46, baseType: !170, size: 32, offset: 96)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4851, file: !4427, line: 47, baseType: !170, size: 32, offset: 128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4851, file: !4427, line: 47, baseType: !170, size: 32, offset: 160)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4851, file: !4427, line: 48, baseType: !4443, size: 64, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4851, file: !4427, line: 49, baseType: !170, size: 32, offset: 256)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4844, file: !4266, line: 922, baseType: !4862, size: 64, offset: 256)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!130, !4264, !4849}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4844, file: !4266, line: 923, baseType: !4866, size: 64, offset: 320)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !4264}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4844, file: !4266, line: 924, baseType: !4870, size: 64, offset: 384)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!130, !4264, !4454}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4844, file: !4266, line: 925, baseType: !4874, size: 64, offset: 448)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!130, !4264}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4844, file: !4266, line: 926, baseType: !4866, size: 64, offset: 512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4844, file: !4266, line: 927, baseType: !4879, size: 64, offset: 576)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!130, !4264, !130}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4844, file: !4266, line: 928, baseType: !4879, size: 64, offset: 640)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4844, file: !4266, line: 929, baseType: !4884, size: 64, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!169, !4264}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4844, file: !4266, line: 930, baseType: !4888, size: 64, offset: 768)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4890)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4266, line: 837, size: 448, elements: !4891)
!4891 = !{!4892, !4898, !4902, !4903, !4904, !4905, !4906}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4890, file: !4266, line: 839, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!4896, !4264, !4897}
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4266, line: 814, baseType: !28)
!4897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4266, line: 196, baseType: !28)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4890, file: !4266, line: 843, baseType: !4899, size: 64, offset: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!4896, !4264}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4890, file: !4266, line: 846, baseType: !4899, size: 64, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4890, file: !4266, line: 849, baseType: !4866, size: 64, offset: 192)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4890, file: !4266, line: 850, baseType: !4866, size: 64, offset: 256)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4890, file: !4266, line: 853, baseType: !4866, size: 64, offset: 320)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4890, file: !4266, line: 856, baseType: !4866, size: 64, offset: 384)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4844, file: !4266, line: 931, baseType: !423, size: 64, offset: 832)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4844, file: !4266, line: 932, baseType: !423, size: 64, offset: 896)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4844, file: !4266, line: 933, baseType: !4415, size: 1152, offset: 960)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4844, file: !4266, line: 934, baseType: !4911, size: 192, offset: 2112)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4266, line: 801, size: 192, elements: !4912)
!4912 = !{!4913, !4914}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4911, file: !4266, line: 802, baseType: !319, size: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4911, file: !4266, line: 803, baseType: !306, size: 128, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4844, file: !4266, line: 935, baseType: !742, size: 8, offset: 2304)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4265, file: !4266, line: 358, baseType: !163, size: 64, offset: 1024)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4265, file: !4266, line: 364, baseType: !4624, size: 128, offset: 1088)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4265, file: !4266, line: 366, baseType: !4919, size: 32, offset: 1216)
!4919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4266, line: 171, baseType: !130)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4265, file: !4266, line: 369, baseType: !347, size: 8, offset: 1248)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4265, file: !4266, line: 370, baseType: !28, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4265, file: !4266, line: 371, baseType: !28, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4265, file: !4266, line: 373, baseType: !28, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4265, file: !4266, line: 374, baseType: !28, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4265, file: !4266, line: 375, baseType: !28, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4265, file: !4266, line: 376, baseType: !28, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4265, file: !4266, line: 377, baseType: !28, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4265, file: !4266, line: 378, baseType: !28, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4265, file: !4266, line: 379, baseType: !28, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4265, file: !4266, line: 380, baseType: !28, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4265, file: !4266, line: 382, baseType: !28, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4265, file: !4266, line: 383, baseType: !28, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4265, file: !4266, line: 384, baseType: !28, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4265, file: !4266, line: 385, baseType: !28, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4265, file: !4266, line: 388, baseType: !28, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4265, file: !4266, line: 390, baseType: !28, size: 32, offset: 1280)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4265, file: !4266, line: 391, baseType: !28, size: 32, offset: 1312)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4265, file: !4266, line: 394, baseType: !4939, size: 64, offset: 1344)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4266, line: 316, flags: DIFlagFwdDecl)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4265, file: !4266, line: 395, baseType: !353, size: 16, offset: 1408)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4265, file: !4266, line: 396, baseType: !28, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4265, file: !4266, line: 399, baseType: !28, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4265, file: !4266, line: 400, baseType: !28, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4265, file: !4266, line: 402, baseType: !4897, size: 32, offset: 1440)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4265, file: !4266, line: 403, baseType: !4338, size: 5824, offset: 1472)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4265, file: !4266, line: 405, baseType: !130, size: 32, offset: 7296)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4265, file: !4266, line: 411, baseType: !28, size: 32, offset: 7328)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4265, file: !4266, line: 412, baseType: !4950, size: 5632, offset: 7360)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4282, size: 5632, elements: !4951)
!4951 = !{!4952}
!4952 = !DISubrange(count: 11)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4265, file: !4266, line: 413, baseType: !4282, size: 512, offset: 12992)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4265, file: !4266, line: 415, baseType: !742, size: 8, offset: 13504)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4265, file: !4266, line: 417, baseType: !28, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4265, file: !4266, line: 418, baseType: !28, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4265, file: !4266, line: 419, baseType: !28, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4265, file: !4266, line: 420, baseType: !28, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4265, file: !4266, line: 421, baseType: !28, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4265, file: !4266, line: 423, baseType: !28, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4265, file: !4266, line: 424, baseType: !28, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4265, file: !4266, line: 425, baseType: !28, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4265, file: !4266, line: 426, baseType: !28, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4265, file: !4266, line: 427, baseType: !28, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4265, file: !4266, line: 428, baseType: !28, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4265, file: !4266, line: 429, baseType: !28, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4265, file: !4266, line: 430, baseType: !28, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4265, file: !4266, line: 431, baseType: !28, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4265, file: !4266, line: 432, baseType: !28, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4265, file: !4266, line: 433, baseType: !28, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4265, file: !4266, line: 434, baseType: !28, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4265, file: !4266, line: 435, baseType: !28, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4265, file: !4266, line: 436, baseType: !28, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4265, file: !4266, line: 437, baseType: !28, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4265, file: !4266, line: 438, baseType: !28, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4265, file: !4266, line: 439, baseType: !28, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4265, file: !4266, line: 440, baseType: !28, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4265, file: !4266, line: 441, baseType: !28, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4265, file: !4266, line: 442, baseType: !28, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4265, file: !4266, line: 443, baseType: !28, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4265, file: !4266, line: 451, baseType: !28, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4265, file: !4266, line: 457, baseType: !28, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4265, file: !4266, line: 458, baseType: !28, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4265, file: !4266, line: 459, baseType: !28, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4265, file: !4266, line: 460, baseType: !28, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4265, file: !4266, line: 461, baseType: !28, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4265, file: !4266, line: 462, baseType: !28, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4265, file: !4266, line: 463, baseType: !28, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4265, file: !4266, line: 464, baseType: !28, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4265, file: !4266, line: 465, baseType: !28, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4265, file: !4266, line: 466, baseType: !28, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4265, file: !4266, line: 467, baseType: !28, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4265, file: !4266, line: 468, baseType: !4994, size: 16, offset: 13552)
!4994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4266, line: 222, baseType: !188)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4265, file: !4266, line: 469, baseType: !339, size: 32, offset: 13568)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4265, file: !4266, line: 471, baseType: !319, size: 32, offset: 13600)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4265, file: !4266, line: 472, baseType: !4998, size: 512, offset: 13632)
!4998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 512, elements: !2751)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4265, file: !4266, line: 473, baseType: !1040, size: 64, offset: 14144)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4265, file: !4266, line: 474, baseType: !5001, size: 704, offset: 14208)
!5001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 704, elements: !4951)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4265, file: !4266, line: 475, baseType: !5001, size: 704, offset: 14912)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4265, file: !4266, line: 487, baseType: !168, size: 64, offset: 15616)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4265, file: !4266, line: 488, baseType: !674, size: 32, offset: 15680)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4265, file: !4266, line: 490, baseType: !5006, size: 320, offset: 15744)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4266, line: 309, size: 320, elements: !5007)
!5007 = !{!5008, !5009, !5010}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5006, file: !4266, line: 310, baseType: !661, size: 256)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5006, file: !4266, line: 311, baseType: !28, size: 32, offset: 256)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5006, file: !4266, line: 312, baseType: !347, size: 8, offset: 288)
!5011 = !DIDerivedType(tag: DW_TAG_member, scope: !4265, file: !4266, line: 497, baseType: !5012, size: 64, offset: 16064)
!5012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4265, file: !4266, line: 497, size: 64, elements: !5013)
!5013 = !{!5014, !5017}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5012, file: !4266, line: 498, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4266, line: 317, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5012, file: !4266, line: 499, baseType: !4264, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4265, file: !4266, line: 501, baseType: !353, size: 16, offset: 16128)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4265, file: !4266, line: 502, baseType: !347, size: 8, offset: 16144)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4265, file: !4266, line: 505, baseType: !353, size: 16, offset: 16160)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4265, file: !4266, line: 506, baseType: !169, size: 32, offset: 16192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4265, file: !4266, line: 507, baseType: !28, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4265, file: !4266, line: 510, baseType: !353, size: 16, offset: 16240)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4265, file: !4266, line: 511, baseType: !353, size: 16, offset: 16256)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4265, file: !4266, line: 519, baseType: !353, size: 16, offset: 16272)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4265, file: !4266, line: 520, baseType: !3276, size: 64, offset: 16320)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4265, file: !4266, line: 521, baseType: !419, size: 64, offset: 16384)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4265, file: !4266, line: 526, baseType: !283, size: 64, offset: 16448)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4265, file: !4266, line: 528, baseType: !207, size: 64, offset: 16512)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4265, file: !4266, line: 531, baseType: !5031, size: 56, offset: 16576)
!5031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 56, elements: !783)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !4261, file: !173, line: 18, baseType: !5033, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4261, file: !173, line: 20, baseType: !168, size: 64, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "notify_base", scope: !4261, file: !173, line: 22, baseType: !168, size: 64, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "notify_pa", scope: !4261, file: !173, line: 24, baseType: !4286, size: 64, offset: 256)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "isr", scope: !4261, file: !173, line: 26, baseType: !5038, size: 64, offset: 320)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "notify_len", scope: !4261, file: !173, line: 29, baseType: !419, size: 64, offset: 384)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "device_len", scope: !4261, file: !173, line: 30, baseType: !419, size: 64, offset: 448)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "notify_map_cap", scope: !4261, file: !173, line: 33, baseType: !130, size: 32, offset: 512)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "notify_offset_multiplier", scope: !4261, file: !173, line: 36, baseType: !169, size: 32, offset: 544)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "modern_bars", scope: !4261, file: !173, line: 38, baseType: !130, size: 32, offset: 576)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4261, file: !173, line: 40, baseType: !5045, size: 64, offset: 608)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4427, line: 449, size: 64, elements: !5046)
!5046 = !{!5047, !5048}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5045, file: !4427, line: 450, baseType: !170, size: 32)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5045, file: !4427, line: 451, baseType: !170, size: 32, offset: 32)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_check", scope: !4261, file: !173, line: 43, baseType: !4874, size: 64, offset: 704)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4261, file: !173, line: 46, baseType: !163, size: 64, offset: 768)
!5051 = !{!5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065}
!5052 = !DILocalVariable(name: "mdev", arg: 1, scope: !4257, file: !2, line: 215, type: !4260)
!5053 = !DILocalVariable(name: "pci_dev", scope: !4257, file: !2, line: 217, type: !4264)
!5054 = !DILocalVariable(name: "err", scope: !4257, file: !2, line: 218, type: !130)
!5055 = !DILocalVariable(name: "common", scope: !4257, file: !2, line: 218, type: !130)
!5056 = !DILocalVariable(name: "isr", scope: !4257, file: !2, line: 218, type: !130)
!5057 = !DILocalVariable(name: "notify", scope: !4257, file: !2, line: 218, type: !130)
!5058 = !DILocalVariable(name: "device", scope: !4257, file: !2, line: 218, type: !130)
!5059 = !DILocalVariable(name: "notify_length", scope: !4257, file: !2, line: 219, type: !169)
!5060 = !DILocalVariable(name: "notify_offset", scope: !4257, file: !2, line: 220, type: !169)
!5061 = !DILocalVariable(name: "devid", scope: !4257, file: !2, line: 221, type: !130)
!5062 = !DILabel(scope: !4257, name: "err_map_device", file: !2, line: 350)
!5063 = !DILabel(scope: !4257, name: "err_map_notify", file: !2, line: 353)
!5064 = !DILabel(scope: !4257, name: "err_map_isr", file: !2, line: 355)
!5065 = !DILabel(scope: !4257, name: "err_map_common", file: !2, line: 357)
!5066 = !DILocation(line: 215, column: 54, scope: !4257)
!5067 = !DILocation(line: 217, column: 2, scope: !4257)
!5068 = !DILocation(line: 217, column: 18, scope: !4257)
!5069 = !DILocation(line: 217, column: 28, scope: !4257)
!5070 = !DILocation(line: 217, column: 34, scope: !4257)
!5071 = !DILocation(line: 218, column: 2, scope: !4257)
!5072 = !DILocation(line: 218, column: 6, scope: !4257)
!5073 = !DILocation(line: 218, column: 11, scope: !4257)
!5074 = !DILocation(line: 218, column: 19, scope: !4257)
!5075 = !DILocation(line: 218, column: 24, scope: !4257)
!5076 = !DILocation(line: 218, column: 32, scope: !4257)
!5077 = !DILocation(line: 219, column: 2, scope: !4257)
!5078 = !DILocation(line: 219, column: 6, scope: !4257)
!5079 = !DILocation(line: 220, column: 2, scope: !4257)
!5080 = !DILocation(line: 220, column: 6, scope: !4257)
!5081 = !DILocation(line: 221, column: 2, scope: !4257)
!5082 = !DILocation(line: 221, column: 6, scope: !4257)
!5083 = !DILocation(line: 223, column: 2, scope: !4257)
!5084 = !DILocation(line: 225, column: 6, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 225, column: 6)
!5086 = !DILocation(line: 225, column: 12, scope: !5085)
!5087 = !DILocation(line: 225, column: 6, scope: !4257)
!5088 = !DILocation(line: 226, column: 11, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !2, line: 225, column: 29)
!5090 = !DILocation(line: 226, column: 17, scope: !5089)
!5091 = !DILocation(line: 226, column: 33, scope: !5089)
!5092 = !DILocation(line: 226, column: 9, scope: !5089)
!5093 = !DILocation(line: 227, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5089, file: !2, line: 227, column: 7)
!5095 = !DILocation(line: 227, column: 13, scope: !5094)
!5096 = !DILocation(line: 227, column: 7, scope: !5089)
!5097 = !DILocation(line: 228, column: 11, scope: !5094)
!5098 = !DILocation(line: 228, column: 4, scope: !5094)
!5099 = !DILocation(line: 229, column: 21, scope: !5089)
!5100 = !DILocation(line: 229, column: 3, scope: !5089)
!5101 = !DILocation(line: 229, column: 9, scope: !5089)
!5102 = !DILocation(line: 229, column: 12, scope: !5089)
!5103 = !DILocation(line: 229, column: 19, scope: !5089)
!5104 = !DILocation(line: 230, column: 2, scope: !5089)
!5105 = !DILocation(line: 232, column: 7, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5107, file: !2, line: 232, column: 7)
!5107 = distinct !DILexicalBlock(scope: !5085, file: !2, line: 230, column: 9)
!5108 = !DILocation(line: 232, column: 16, scope: !5106)
!5109 = !DILocation(line: 232, column: 23, scope: !5106)
!5110 = !DILocation(line: 232, column: 32, scope: !5106)
!5111 = !DILocation(line: 232, column: 35, scope: !5106)
!5112 = !DILocation(line: 232, column: 44, scope: !5106)
!5113 = !DILocation(line: 232, column: 51, scope: !5106)
!5114 = !DILocation(line: 232, column: 7, scope: !5107)
!5115 = !DILocation(line: 233, column: 4, scope: !5106)
!5116 = !DILocation(line: 235, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5107, file: !2, line: 235, column: 7)
!5118 = !DILocation(line: 235, column: 16, scope: !5117)
!5119 = !DILocation(line: 235, column: 23, scope: !5117)
!5120 = !DILocation(line: 235, column: 7, scope: !5107)
!5121 = !DILocation(line: 239, column: 22, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5117, file: !2, line: 235, column: 33)
!5123 = !DILocation(line: 239, column: 31, scope: !5122)
!5124 = !DILocation(line: 239, column: 4, scope: !5122)
!5125 = !DILocation(line: 239, column: 10, scope: !5122)
!5126 = !DILocation(line: 239, column: 13, scope: !5122)
!5127 = !DILocation(line: 239, column: 20, scope: !5122)
!5128 = !DILocation(line: 240, column: 3, scope: !5122)
!5129 = !DILocation(line: 242, column: 22, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5117, file: !2, line: 240, column: 10)
!5131 = !DILocation(line: 242, column: 31, scope: !5130)
!5132 = !DILocation(line: 242, column: 38, scope: !5130)
!5133 = !DILocation(line: 242, column: 4, scope: !5130)
!5134 = !DILocation(line: 242, column: 10, scope: !5130)
!5135 = !DILocation(line: 242, column: 13, scope: !5130)
!5136 = !DILocation(line: 242, column: 20, scope: !5130)
!5137 = !DILocation(line: 245, column: 20, scope: !4257)
!5138 = !DILocation(line: 245, column: 29, scope: !4257)
!5139 = !DILocation(line: 245, column: 2, scope: !4257)
!5140 = !DILocation(line: 245, column: 8, scope: !4257)
!5141 = !DILocation(line: 245, column: 11, scope: !4257)
!5142 = !DILocation(line: 245, column: 18, scope: !4257)
!5143 = !DILocation(line: 248, column: 38, scope: !4257)
!5144 = !DILocation(line: 250, column: 11, scope: !4257)
!5145 = !DILocation(line: 250, column: 17, scope: !4257)
!5146 = !DILocation(line: 248, column: 11, scope: !4257)
!5147 = !DILocation(line: 248, column: 9, scope: !4257)
!5148 = !DILocation(line: 251, column: 7, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 251, column: 6)
!5150 = !DILocation(line: 251, column: 6, scope: !4257)
!5151 = !DILocation(line: 252, column: 3, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !2, line: 252, column: 3)
!5153 = distinct !DILexicalBlock(scope: !5149, file: !2, line: 251, column: 15)
!5154 = !DILocation(line: 252, column: 3, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 252, column: 3)
!5156 = !DILocation(line: 254, column: 3, scope: !5153)
!5157 = !DILocation(line: 258, column: 35, scope: !4257)
!5158 = !DILocation(line: 260, column: 8, scope: !4257)
!5159 = !DILocation(line: 260, column: 14, scope: !4257)
!5160 = !DILocation(line: 258, column: 8, scope: !4257)
!5161 = !DILocation(line: 258, column: 6, scope: !4257)
!5162 = !DILocation(line: 261, column: 38, scope: !4257)
!5163 = !DILocation(line: 263, column: 11, scope: !4257)
!5164 = !DILocation(line: 263, column: 17, scope: !4257)
!5165 = !DILocation(line: 261, column: 11, scope: !4257)
!5166 = !DILocation(line: 261, column: 9, scope: !4257)
!5167 = !DILocation(line: 264, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 264, column: 6)
!5169 = !DILocation(line: 264, column: 11, scope: !5168)
!5170 = !DILocation(line: 264, column: 15, scope: !5168)
!5171 = !DILocation(line: 264, column: 6, scope: !4257)
!5172 = !DILocation(line: 265, column: 3, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 265, column: 3)
!5174 = distinct !DILexicalBlock(scope: !5168, file: !2, line: 264, column: 23)
!5175 = !DILocation(line: 265, column: 3, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5173, file: !2, line: 265, column: 3)
!5177 = !DILocation(line: 268, column: 3, scope: !5174)
!5178 = !DILocation(line: 271, column: 35, scope: !4257)
!5179 = !DILocation(line: 271, column: 44, scope: !4257)
!5180 = !DILocation(line: 272, column: 6, scope: !4257)
!5181 = !DILocation(line: 272, column: 12, scope: !4257)
!5182 = !DILocation(line: 271, column: 8, scope: !4257)
!5183 = !DILocation(line: 271, column: 6, scope: !4257)
!5184 = !DILocation(line: 273, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 273, column: 6)
!5186 = !DILocation(line: 273, column: 6, scope: !4257)
!5187 = !DILocation(line: 274, column: 36, scope: !5185)
!5188 = !DILocation(line: 274, column: 45, scope: !5185)
!5189 = !DILocation(line: 274, column: 9, scope: !5185)
!5190 = !DILocation(line: 274, column: 7, scope: !5185)
!5191 = !DILocation(line: 274, column: 3, scope: !5185)
!5192 = !DILocation(line: 276, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 276, column: 6)
!5194 = !DILocation(line: 276, column: 6, scope: !4257)
!5195 = !DILocation(line: 277, column: 3, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5193, file: !2, line: 277, column: 3)
!5197 = !DILocation(line: 277, column: 3, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5196, file: !2, line: 277, column: 3)
!5199 = !DILocation(line: 277, column: 3, scope: !5193)
!5200 = !DILocation(line: 282, column: 38, scope: !4257)
!5201 = !DILocation(line: 284, column: 11, scope: !4257)
!5202 = !DILocation(line: 284, column: 17, scope: !4257)
!5203 = !DILocation(line: 282, column: 11, scope: !4257)
!5204 = !DILocation(line: 282, column: 9, scope: !4257)
!5205 = !DILocation(line: 286, column: 37, scope: !4257)
!5206 = !DILocation(line: 286, column: 46, scope: !4257)
!5207 = !DILocation(line: 286, column: 52, scope: !4257)
!5208 = !DILocation(line: 286, column: 8, scope: !4257)
!5209 = !DILocation(line: 286, column: 6, scope: !4257)
!5210 = !DILocation(line: 288, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 288, column: 6)
!5212 = !DILocation(line: 288, column: 6, scope: !4257)
!5213 = !DILocation(line: 289, column: 10, scope: !5211)
!5214 = !DILocation(line: 289, column: 3, scope: !5211)
!5215 = !DILocation(line: 291, column: 6, scope: !4257)
!5216 = !DILocation(line: 292, column: 42, scope: !4257)
!5217 = !DILocation(line: 292, column: 48, scope: !4257)
!5218 = !DILocation(line: 292, column: 17, scope: !4257)
!5219 = !DILocation(line: 292, column: 2, scope: !4257)
!5220 = !DILocation(line: 292, column: 8, scope: !4257)
!5221 = !DILocation(line: 292, column: 15, scope: !4257)
!5222 = !DILocation(line: 296, column: 7, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 296, column: 6)
!5224 = !DILocation(line: 296, column: 13, scope: !5223)
!5225 = !DILocation(line: 296, column: 6, scope: !4257)
!5226 = !DILocation(line: 297, column: 3, scope: !5223)
!5227 = !DILocation(line: 298, column: 39, scope: !4257)
!5228 = !DILocation(line: 298, column: 45, scope: !4257)
!5229 = !DILocation(line: 298, column: 14, scope: !4257)
!5230 = !DILocation(line: 298, column: 2, scope: !4257)
!5231 = !DILocation(line: 298, column: 8, scope: !4257)
!5232 = !DILocation(line: 298, column: 12, scope: !4257)
!5233 = !DILocation(line: 301, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 301, column: 6)
!5235 = !DILocation(line: 301, column: 13, scope: !5234)
!5236 = !DILocation(line: 301, column: 6, scope: !4257)
!5237 = !DILocation(line: 302, column: 3, scope: !5234)
!5238 = !DILocation(line: 305, column: 24, scope: !4257)
!5239 = !DILocation(line: 306, column: 10, scope: !4257)
!5240 = !DILocation(line: 306, column: 17, scope: !4257)
!5241 = !DILocation(line: 308, column: 11, scope: !4257)
!5242 = !DILocation(line: 308, column: 17, scope: !4257)
!5243 = !DILocation(line: 305, column: 2, scope: !4257)
!5244 = !DILocation(line: 310, column: 24, scope: !4257)
!5245 = !DILocation(line: 311, column: 10, scope: !4257)
!5246 = !DILocation(line: 311, column: 17, scope: !4257)
!5247 = !DILocation(line: 310, column: 2, scope: !4257)
!5248 = !DILocation(line: 315, column: 24, scope: !4257)
!5249 = !DILocation(line: 316, column: 10, scope: !4257)
!5250 = !DILocation(line: 316, column: 17, scope: !4257)
!5251 = !DILocation(line: 315, column: 2, scope: !4257)
!5252 = !DILocation(line: 324, column: 11, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 324, column: 6)
!5254 = !DILocation(line: 324, column: 6, scope: !5253)
!5255 = !DILocation(line: 324, column: 28, scope: !5253)
!5256 = !DILocation(line: 324, column: 42, scope: !5253)
!5257 = !DILocation(line: 324, column: 25, scope: !5253)
!5258 = !DILocation(line: 324, column: 55, scope: !5253)
!5259 = !DILocation(line: 324, column: 6, scope: !4257)
!5260 = !DILocation(line: 325, column: 48, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 324, column: 69)
!5262 = !DILocation(line: 325, column: 54, scope: !5261)
!5263 = !DILocation(line: 327, column: 16, scope: !5261)
!5264 = !DILocation(line: 328, column: 14, scope: !5261)
!5265 = !DILocation(line: 328, column: 20, scope: !5261)
!5266 = !DILocation(line: 329, column: 14, scope: !5261)
!5267 = !DILocation(line: 329, column: 20, scope: !5261)
!5268 = !DILocation(line: 325, column: 23, scope: !5261)
!5269 = !DILocation(line: 325, column: 3, scope: !5261)
!5270 = !DILocation(line: 325, column: 9, scope: !5261)
!5271 = !DILocation(line: 325, column: 21, scope: !5261)
!5272 = !DILocation(line: 330, column: 8, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5261, file: !2, line: 330, column: 7)
!5274 = !DILocation(line: 330, column: 14, scope: !5273)
!5275 = !DILocation(line: 330, column: 7, scope: !5261)
!5276 = !DILocation(line: 331, column: 4, scope: !5273)
!5277 = !DILocation(line: 332, column: 2, scope: !5261)
!5278 = !DILocation(line: 333, column: 26, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 332, column: 9)
!5280 = !DILocation(line: 333, column: 3, scope: !5279)
!5281 = !DILocation(line: 333, column: 9, scope: !5279)
!5282 = !DILocation(line: 333, column: 24, scope: !5279)
!5283 = !DILocation(line: 339, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 339, column: 6)
!5285 = !DILocation(line: 339, column: 6, scope: !4257)
!5286 = !DILocation(line: 340, column: 43, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5284, file: !2, line: 339, column: 14)
!5288 = !DILocation(line: 340, column: 49, scope: !5287)
!5289 = !DILocation(line: 342, column: 9, scope: !5287)
!5290 = !DILocation(line: 342, column: 15, scope: !5287)
!5291 = !DILocation(line: 340, column: 18, scope: !5287)
!5292 = !DILocation(line: 340, column: 3, scope: !5287)
!5293 = !DILocation(line: 340, column: 9, scope: !5287)
!5294 = !DILocation(line: 340, column: 16, scope: !5287)
!5295 = !DILocation(line: 344, column: 8, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5287, file: !2, line: 344, column: 7)
!5297 = !DILocation(line: 344, column: 14, scope: !5296)
!5298 = !DILocation(line: 344, column: 7, scope: !5287)
!5299 = !DILocation(line: 345, column: 4, scope: !5296)
!5300 = !DILocation(line: 346, column: 2, scope: !5287)
!5301 = !DILocation(line: 348, column: 2, scope: !4257)
!5302 = !DILocation(line: 350, column: 1, scope: !4257)
!5303 = !DILocation(line: 351, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 351, column: 6)
!5305 = !DILocation(line: 351, column: 12, scope: !5304)
!5306 = !DILocation(line: 351, column: 6, scope: !4257)
!5307 = !DILocation(line: 352, column: 15, scope: !5304)
!5308 = !DILocation(line: 352, column: 24, scope: !5304)
!5309 = !DILocation(line: 352, column: 30, scope: !5304)
!5310 = !DILocation(line: 352, column: 3, scope: !5304)
!5311 = !DILocation(line: 353, column: 1, scope: !4257)
!5312 = !DILocation(line: 354, column: 14, scope: !4257)
!5313 = !DILocation(line: 354, column: 23, scope: !4257)
!5314 = !DILocation(line: 354, column: 29, scope: !4257)
!5315 = !DILocation(line: 354, column: 2, scope: !4257)
!5316 = !DILocation(line: 355, column: 1, scope: !4257)
!5317 = !DILocation(line: 356, column: 14, scope: !4257)
!5318 = !DILocation(line: 356, column: 23, scope: !4257)
!5319 = !DILocation(line: 356, column: 29, scope: !4257)
!5320 = !DILocation(line: 356, column: 2, scope: !4257)
!5321 = !DILocation(line: 357, column: 1, scope: !4257)
!5322 = !DILocation(line: 358, column: 31, scope: !4257)
!5323 = !DILocation(line: 358, column: 40, scope: !4257)
!5324 = !DILocation(line: 358, column: 46, scope: !4257)
!5325 = !DILocation(line: 358, column: 2, scope: !4257)
!5326 = !DILocation(line: 359, column: 9, scope: !4257)
!5327 = !DILocation(line: 359, column: 2, scope: !4257)
!5328 = !DILocation(line: 360, column: 1, scope: !4257)
!5329 = distinct !DISubprogram(name: "check_offsets", scope: !2, file: !2, line: 146, type: !1035, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!5330 = !DILocation(line: 149, column: 2, scope: !5329)
!5331 = !DILocation(line: 149, column: 2, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 149, column: 2)
!5333 = !DILocation(line: 151, column: 2, scope: !5329)
!5334 = !DILocation(line: 151, column: 2, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 151, column: 2)
!5336 = !DILocation(line: 153, column: 2, scope: !5329)
!5337 = !DILocation(line: 153, column: 2, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 153, column: 2)
!5339 = !DILocation(line: 155, column: 2, scope: !5329)
!5340 = !DILocation(line: 155, column: 2, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 155, column: 2)
!5342 = !DILocation(line: 157, column: 2, scope: !5329)
!5343 = !DILocation(line: 157, column: 2, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 157, column: 2)
!5345 = !DILocation(line: 159, column: 2, scope: !5329)
!5346 = !DILocation(line: 159, column: 2, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 159, column: 2)
!5348 = !DILocation(line: 161, column: 2, scope: !5329)
!5349 = !DILocation(line: 161, column: 2, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 161, column: 2)
!5351 = !DILocation(line: 163, column: 2, scope: !5329)
!5352 = !DILocation(line: 163, column: 2, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 163, column: 2)
!5354 = !DILocation(line: 166, column: 2, scope: !5329)
!5355 = !DILocation(line: 166, column: 2, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 166, column: 2)
!5357 = !DILocation(line: 169, column: 2, scope: !5329)
!5358 = !DILocation(line: 169, column: 2, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 169, column: 2)
!5360 = !DILocation(line: 171, column: 2, scope: !5329)
!5361 = !DILocation(line: 171, column: 2, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 171, column: 2)
!5363 = !DILocation(line: 174, column: 2, scope: !5329)
!5364 = !DILocation(line: 174, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 174, column: 2)
!5366 = !DILocation(line: 176, column: 2, scope: !5329)
!5367 = !DILocation(line: 176, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 176, column: 2)
!5369 = !DILocation(line: 178, column: 2, scope: !5329)
!5370 = !DILocation(line: 178, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 178, column: 2)
!5372 = !DILocation(line: 180, column: 2, scope: !5329)
!5373 = !DILocation(line: 180, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 180, column: 2)
!5375 = !DILocation(line: 182, column: 2, scope: !5329)
!5376 = !DILocation(line: 182, column: 2, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 182, column: 2)
!5378 = !DILocation(line: 184, column: 2, scope: !5329)
!5379 = !DILocation(line: 184, column: 2, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 184, column: 2)
!5381 = !DILocation(line: 186, column: 2, scope: !5329)
!5382 = !DILocation(line: 186, column: 2, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 186, column: 2)
!5384 = !DILocation(line: 188, column: 2, scope: !5329)
!5385 = !DILocation(line: 188, column: 2, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 188, column: 2)
!5387 = !DILocation(line: 190, column: 2, scope: !5329)
!5388 = !DILocation(line: 190, column: 2, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 190, column: 2)
!5390 = !DILocation(line: 192, column: 2, scope: !5329)
!5391 = !DILocation(line: 192, column: 2, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 192, column: 2)
!5393 = !DILocation(line: 194, column: 2, scope: !5329)
!5394 = !DILocation(line: 194, column: 2, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 194, column: 2)
!5396 = !DILocation(line: 196, column: 2, scope: !5329)
!5397 = !DILocation(line: 196, column: 2, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 196, column: 2)
!5399 = !DILocation(line: 198, column: 2, scope: !5329)
!5400 = !DILocation(line: 198, column: 2, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 198, column: 2)
!5402 = !DILocation(line: 200, column: 2, scope: !5329)
!5403 = !DILocation(line: 200, column: 2, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 200, column: 2)
!5405 = !DILocation(line: 202, column: 2, scope: !5329)
!5406 = !DILocation(line: 202, column: 2, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 202, column: 2)
!5408 = !DILocation(line: 204, column: 2, scope: !5329)
!5409 = !DILocation(line: 204, column: 2, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 204, column: 2)
!5411 = !DILocation(line: 206, column: 1, scope: !5329)
!5412 = distinct !DISubprogram(name: "virtio_pci_find_capability", scope: !2, file: !2, line: 114, type: !5413, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5415)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!130, !4264, !347, !169, !791}
!5415 = !{!5416, !5417, !5418, !5419, !5420, !5421, !5425}
!5416 = !DILocalVariable(name: "dev", arg: 1, scope: !5412, file: !2, line: 114, type: !4264)
!5417 = !DILocalVariable(name: "cfg_type", arg: 2, scope: !5412, file: !2, line: 114, type: !347)
!5418 = !DILocalVariable(name: "ioresource_types", arg: 3, scope: !5412, file: !2, line: 115, type: !169)
!5419 = !DILocalVariable(name: "bars", arg: 4, scope: !5412, file: !2, line: 115, type: !791)
!5420 = !DILocalVariable(name: "pos", scope: !5412, file: !2, line: 117, type: !130)
!5421 = !DILocalVariable(name: "type", scope: !5422, file: !2, line: 122, type: !347)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 121, column: 66)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !2, line: 119, column: 2)
!5424 = distinct !DILexicalBlock(scope: !5412, file: !2, line: 119, column: 2)
!5425 = !DILocalVariable(name: "bar", scope: !5422, file: !2, line: 122, type: !347)
!5426 = !DILocation(line: 114, column: 62, scope: !5412)
!5427 = !DILocation(line: 114, column: 70, scope: !5412)
!5428 = !DILocation(line: 115, column: 15, scope: !5412)
!5429 = !DILocation(line: 115, column: 38, scope: !5412)
!5430 = !DILocation(line: 117, column: 2, scope: !5412)
!5431 = !DILocation(line: 117, column: 6, scope: !5412)
!5432 = !DILocation(line: 119, column: 33, scope: !5424)
!5433 = !DILocation(line: 119, column: 13, scope: !5424)
!5434 = !DILocation(line: 119, column: 11, scope: !5424)
!5435 = !DILocation(line: 119, column: 7, scope: !5424)
!5436 = !DILocation(line: 120, column: 7, scope: !5423)
!5437 = !DILocation(line: 120, column: 11, scope: !5423)
!5438 = !DILocation(line: 119, column: 2, scope: !5424)
!5439 = !DILocation(line: 122, column: 3, scope: !5422)
!5440 = !DILocation(line: 122, column: 6, scope: !5422)
!5441 = !DILocation(line: 122, column: 12, scope: !5422)
!5442 = !DILocation(line: 123, column: 24, scope: !5422)
!5443 = !DILocation(line: 123, column: 29, scope: !5422)
!5444 = !DILocation(line: 123, column: 33, scope: !5422)
!5445 = !DILocation(line: 123, column: 3, scope: !5422)
!5446 = !DILocation(line: 126, column: 24, scope: !5422)
!5447 = !DILocation(line: 126, column: 29, scope: !5422)
!5448 = !DILocation(line: 126, column: 33, scope: !5422)
!5449 = !DILocation(line: 126, column: 3, scope: !5422)
!5450 = !DILocation(line: 131, column: 7, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5422, file: !2, line: 131, column: 7)
!5452 = !DILocation(line: 131, column: 11, scope: !5451)
!5453 = !DILocation(line: 131, column: 7, scope: !5422)
!5454 = !DILocation(line: 132, column: 4, scope: !5451)
!5455 = !DILocation(line: 134, column: 7, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5422, file: !2, line: 134, column: 7)
!5457 = !DILocation(line: 134, column: 15, scope: !5456)
!5458 = !DILocation(line: 134, column: 12, scope: !5456)
!5459 = !DILocation(line: 134, column: 7, scope: !5422)
!5460 = !DILocation(line: 135, column: 8, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5462, file: !2, line: 135, column: 8)
!5462 = distinct !DILexicalBlock(scope: !5456, file: !2, line: 134, column: 25)
!5463 = !DILocation(line: 135, column: 35, scope: !5461)
!5464 = !DILocation(line: 136, column: 8, scope: !5461)
!5465 = !DILocation(line: 136, column: 39, scope: !5461)
!5466 = !DILocation(line: 136, column: 37, scope: !5461)
!5467 = !DILocation(line: 135, column: 8, scope: !5462)
!5468 = !DILocation(line: 137, column: 20, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5461, file: !2, line: 136, column: 57)
!5470 = !DILocation(line: 137, column: 17, scope: !5469)
!5471 = !DILocation(line: 137, column: 6, scope: !5469)
!5472 = !DILocation(line: 137, column: 11, scope: !5469)
!5473 = !DILocation(line: 138, column: 12, scope: !5469)
!5474 = !DILocation(line: 138, column: 5, scope: !5469)
!5475 = !DILocation(line: 140, column: 3, scope: !5462)
!5476 = !DILocation(line: 141, column: 2, scope: !5423)
!5477 = !DILocation(line: 141, column: 2, scope: !5422)
!5478 = !DILocation(line: 121, column: 38, scope: !5423)
!5479 = !DILocation(line: 121, column: 43, scope: !5423)
!5480 = !DILocation(line: 121, column: 13, scope: !5423)
!5481 = !DILocation(line: 121, column: 11, scope: !5423)
!5482 = !DILocation(line: 119, column: 2, scope: !5423)
!5483 = distinct !{!5483, !5438, !5484, !5485, !5486}
!5484 = !DILocation(line: 141, column: 2, scope: !5424)
!5485 = !{!"llvm.loop.mustprogress"}
!5486 = !{!"llvm.loop.unroll.disable"}
!5487 = !DILocation(line: 142, column: 2, scope: !5412)
!5488 = !DILocation(line: 143, column: 1, scope: !5412)
!5489 = !DISubprogram(name: "_dev_info", scope: !5490, file: !5490, line: 56, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5490 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5491 = !DISubroutineType(types: !5492)
!5492 = !{null, !4357, !283, null}
!5493 = !DISubprogram(name: "_dev_err", scope: !5490, file: !5490, line: 50, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5494 = distinct !DISubprogram(name: "dma_set_mask_and_coherent", scope: !5495, file: !5495, line: 450, type: !5496, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5498)
!5495 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!130, !4337, !163}
!5498 = !{!5499, !5500, !5501}
!5499 = !DILocalVariable(name: "dev", arg: 1, scope: !5494, file: !5495, line: 450, type: !4337)
!5500 = !DILocalVariable(name: "mask", arg: 2, scope: !5494, file: !5495, line: 450, type: !163)
!5501 = !DILocalVariable(name: "rc", scope: !5494, file: !5495, line: 452, type: !130)
!5502 = !DILocation(line: 450, column: 60, scope: !5494)
!5503 = !DILocation(line: 450, column: 69, scope: !5494)
!5504 = !DILocation(line: 452, column: 2, scope: !5494)
!5505 = !DILocation(line: 452, column: 6, scope: !5494)
!5506 = !DILocation(line: 452, column: 24, scope: !5494)
!5507 = !DILocation(line: 452, column: 29, scope: !5494)
!5508 = !DILocation(line: 452, column: 11, scope: !5494)
!5509 = !DILocation(line: 453, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5494, file: !5495, line: 453, column: 6)
!5511 = !DILocation(line: 453, column: 9, scope: !5510)
!5512 = !DILocation(line: 453, column: 6, scope: !5494)
!5513 = !DILocation(line: 454, column: 25, scope: !5510)
!5514 = !DILocation(line: 454, column: 30, scope: !5510)
!5515 = !DILocation(line: 454, column: 3, scope: !5510)
!5516 = !DILocation(line: 455, column: 9, scope: !5494)
!5517 = !DILocation(line: 456, column: 1, scope: !5494)
!5518 = !DILocation(line: 455, column: 2, scope: !5494)
!5519 = !DISubprogram(name: "_dev_warn", scope: !5490, file: !5490, line: 52, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5520 = !DISubprogram(name: "pci_request_selected_regions", scope: !4266, file: !4266, line: 1449, type: !5521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!130, !4264, !130, !283}
!5523 = distinct !DISubprogram(name: "vp_modern_map_capability", scope: !2, file: !2, line: 22, type: !5524, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5528)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!168, !4260, !130, !419, !169, !169, !169, !5526, !5527}
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!5528 = !{!5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541}
!5529 = !DILocalVariable(name: "mdev", arg: 1, scope: !5523, file: !2, line: 22, type: !4260)
!5530 = !DILocalVariable(name: "off", arg: 2, scope: !5523, file: !2, line: 22, type: !130)
!5531 = !DILocalVariable(name: "minlen", arg: 3, scope: !5523, file: !2, line: 23, type: !419)
!5532 = !DILocalVariable(name: "align", arg: 4, scope: !5523, file: !2, line: 23, type: !169)
!5533 = !DILocalVariable(name: "start", arg: 5, scope: !5523, file: !2, line: 23, type: !169)
!5534 = !DILocalVariable(name: "size", arg: 6, scope: !5523, file: !2, line: 23, type: !169)
!5535 = !DILocalVariable(name: "len", arg: 7, scope: !5523, file: !2, line: 24, type: !5526)
!5536 = !DILocalVariable(name: "pa", arg: 8, scope: !5523, file: !2, line: 24, type: !5527)
!5537 = !DILocalVariable(name: "dev", scope: !5523, file: !2, line: 26, type: !4264)
!5538 = !DILocalVariable(name: "bar", scope: !5523, file: !2, line: 27, type: !347)
!5539 = !DILocalVariable(name: "offset", scope: !5523, file: !2, line: 28, type: !169)
!5540 = !DILocalVariable(name: "length", scope: !5523, file: !2, line: 28, type: !169)
!5541 = !DILocalVariable(name: "p", scope: !5523, file: !2, line: 29, type: !168)
!5542 = !DILocation(line: 22, column: 59, scope: !5523)
!5543 = !DILocation(line: 22, column: 69, scope: !5523)
!5544 = !DILocation(line: 23, column: 12, scope: !5523)
!5545 = !DILocation(line: 23, column: 24, scope: !5523)
!5546 = !DILocation(line: 23, column: 35, scope: !5523)
!5547 = !DILocation(line: 23, column: 46, scope: !5523)
!5548 = !DILocation(line: 24, column: 13, scope: !5523)
!5549 = !DILocation(line: 24, column: 35, scope: !5523)
!5550 = !DILocation(line: 26, column: 2, scope: !5523)
!5551 = !DILocation(line: 26, column: 18, scope: !5523)
!5552 = !DILocation(line: 26, column: 24, scope: !5523)
!5553 = !DILocation(line: 26, column: 30, scope: !5523)
!5554 = !DILocation(line: 27, column: 2, scope: !5523)
!5555 = !DILocation(line: 27, column: 5, scope: !5523)
!5556 = !DILocation(line: 28, column: 2, scope: !5523)
!5557 = !DILocation(line: 28, column: 6, scope: !5523)
!5558 = !DILocation(line: 28, column: 14, scope: !5523)
!5559 = !DILocation(line: 29, column: 2, scope: !5523)
!5560 = !DILocation(line: 29, column: 16, scope: !5523)
!5561 = !DILocation(line: 31, column: 23, scope: !5523)
!5562 = !DILocation(line: 31, column: 28, scope: !5523)
!5563 = !DILocation(line: 31, column: 32, scope: !5523)
!5564 = !DILocation(line: 31, column: 2, scope: !5523)
!5565 = !DILocation(line: 34, column: 24, scope: !5523)
!5566 = !DILocation(line: 34, column: 29, scope: !5523)
!5567 = !DILocation(line: 34, column: 33, scope: !5523)
!5568 = !DILocation(line: 34, column: 2, scope: !5523)
!5569 = !DILocation(line: 36, column: 24, scope: !5523)
!5570 = !DILocation(line: 36, column: 29, scope: !5523)
!5571 = !DILocation(line: 36, column: 33, scope: !5523)
!5572 = !DILocation(line: 36, column: 2, scope: !5523)
!5573 = !DILocation(line: 40, column: 6, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 40, column: 6)
!5575 = !DILocation(line: 40, column: 10, scope: !5574)
!5576 = !DILocation(line: 40, column: 30, scope: !5574)
!5577 = !DILocation(line: 40, column: 35, scope: !5574)
!5578 = !DILocation(line: 40, column: 41, scope: !5574)
!5579 = !DILocation(line: 40, column: 61, scope: !5574)
!5580 = !DILocation(line: 40, column: 58, scope: !5574)
!5581 = !DILocation(line: 40, column: 53, scope: !5574)
!5582 = !DILocation(line: 40, column: 6, scope: !5523)
!5583 = !DILocation(line: 41, column: 3, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5585, file: !2, line: 41, column: 3)
!5585 = distinct !DILexicalBlock(scope: !5574, file: !2, line: 40, column: 68)
!5586 = !DILocation(line: 41, column: 3, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5584, file: !2, line: 41, column: 3)
!5588 = !DILocation(line: 43, column: 3, scope: !5585)
!5589 = !DILocation(line: 46, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 46, column: 6)
!5591 = !DILocation(line: 46, column: 16, scope: !5590)
!5592 = !DILocation(line: 46, column: 13, scope: !5590)
!5593 = !DILocation(line: 46, column: 6, scope: !5523)
!5594 = !DILocation(line: 47, column: 3, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5596, file: !2, line: 47, column: 3)
!5596 = distinct !DILexicalBlock(scope: !5590, file: !2, line: 46, column: 23)
!5597 = !DILocation(line: 47, column: 3, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5595, file: !2, line: 47, column: 3)
!5599 = !DILocation(line: 50, column: 3, scope: !5596)
!5600 = !DILocation(line: 53, column: 6, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 53, column: 6)
!5602 = !DILocation(line: 53, column: 15, scope: !5601)
!5603 = !DILocation(line: 53, column: 13, scope: !5601)
!5604 = !DILocation(line: 53, column: 23, scope: !5601)
!5605 = !DILocation(line: 53, column: 21, scope: !5601)
!5606 = !DILocation(line: 53, column: 6, scope: !5523)
!5607 = !DILocation(line: 54, column: 3, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !2, line: 54, column: 3)
!5609 = distinct !DILexicalBlock(scope: !5601, file: !2, line: 53, column: 31)
!5610 = !DILocation(line: 54, column: 3, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5608, file: !2, line: 54, column: 3)
!5612 = !DILocation(line: 57, column: 3, scope: !5609)
!5613 = !DILocation(line: 60, column: 12, scope: !5523)
!5614 = !DILocation(line: 60, column: 9, scope: !5523)
!5615 = !DILocation(line: 62, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 62, column: 6)
!5617 = !DILocation(line: 62, column: 14, scope: !5616)
!5618 = !DILocation(line: 62, column: 12, scope: !5616)
!5619 = !DILocation(line: 62, column: 23, scope: !5616)
!5620 = !DILocation(line: 62, column: 21, scope: !5616)
!5621 = !DILocation(line: 62, column: 6, scope: !5523)
!5622 = !DILocation(line: 63, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !2, line: 63, column: 3)
!5624 = distinct !DILexicalBlock(scope: !5616, file: !2, line: 62, column: 31)
!5625 = !DILocation(line: 63, column: 3, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 63, column: 3)
!5627 = !DILocation(line: 66, column: 3, scope: !5624)
!5628 = !DILocation(line: 69, column: 12, scope: !5523)
!5629 = !DILocation(line: 69, column: 9, scope: !5523)
!5630 = !DILocation(line: 71, column: 6, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 71, column: 6)
!5632 = !DILocation(line: 71, column: 16, scope: !5631)
!5633 = !DILocation(line: 71, column: 22, scope: !5631)
!5634 = !DILocation(line: 71, column: 13, scope: !5631)
!5635 = !DILocation(line: 71, column: 6, scope: !5523)
!5636 = !DILocation(line: 72, column: 3, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 72, column: 3)
!5638 = distinct !DILexicalBlock(scope: !5631, file: !2, line: 71, column: 28)
!5639 = !DILocation(line: 72, column: 3, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 72, column: 3)
!5641 = !DILocation(line: 75, column: 3, scope: !5638)
!5642 = !DILocation(line: 78, column: 6, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 78, column: 6)
!5644 = !DILocation(line: 78, column: 15, scope: !5643)
!5645 = !DILocation(line: 78, column: 13, scope: !5643)
!5646 = !DILocation(line: 78, column: 6, scope: !5523)
!5647 = !DILocation(line: 79, column: 12, scope: !5643)
!5648 = !DILocation(line: 79, column: 10, scope: !5643)
!5649 = !DILocation(line: 79, column: 3, scope: !5643)
!5650 = !DILocation(line: 81, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 81, column: 6)
!5652 = !DILocation(line: 81, column: 6, scope: !5523)
!5653 = !DILocation(line: 82, column: 10, scope: !5651)
!5654 = !DILocation(line: 82, column: 4, scope: !5651)
!5655 = !DILocation(line: 82, column: 8, scope: !5651)
!5656 = !DILocation(line: 82, column: 3, scope: !5651)
!5657 = !DILocation(line: 84, column: 6, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 84, column: 6)
!5659 = !DILocation(line: 84, column: 15, scope: !5658)
!5660 = !DILocation(line: 84, column: 13, scope: !5658)
!5661 = !DILocation(line: 84, column: 24, scope: !5658)
!5662 = !DILocation(line: 84, column: 22, scope: !5658)
!5663 = !DILocation(line: 84, column: 31, scope: !5658)
!5664 = !DILocation(line: 85, column: 6, scope: !5658)
!5665 = !DILocation(line: 85, column: 15, scope: !5658)
!5666 = !DILocation(line: 85, column: 13, scope: !5658)
!5667 = !DILocation(line: 85, column: 24, scope: !5658)
!5668 = !DILocation(line: 85, column: 22, scope: !5658)
!5669 = !DILocation(line: 84, column: 6, scope: !5523)
!5670 = !DILocation(line: 86, column: 3, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5672, file: !2, line: 86, column: 3)
!5672 = distinct !DILexicalBlock(scope: !5658, file: !2, line: 85, column: 52)
!5673 = !DILocation(line: 86, column: 3, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5671, file: !2, line: 86, column: 3)
!5675 = !DILocation(line: 91, column: 3, scope: !5672)
!5676 = !DILocation(line: 94, column: 22, scope: !5523)
!5677 = !DILocation(line: 94, column: 27, scope: !5523)
!5678 = !DILocation(line: 94, column: 32, scope: !5523)
!5679 = !DILocation(line: 94, column: 40, scope: !5523)
!5680 = !DILocation(line: 94, column: 6, scope: !5523)
!5681 = !DILocation(line: 94, column: 4, scope: !5523)
!5682 = !DILocation(line: 95, column: 7, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5523, file: !2, line: 95, column: 6)
!5684 = !DILocation(line: 95, column: 6, scope: !5523)
!5685 = !DILocation(line: 96, column: 3, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 96, column: 3)
!5687 = !DILocation(line: 96, column: 3, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5686, file: !2, line: 96, column: 3)
!5689 = !DILocation(line: 96, column: 3, scope: !5683)
!5690 = !DILocation(line: 99, column: 11, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 99, column: 11)
!5692 = !DILocation(line: 99, column: 11, scope: !5683)
!5693 = !DILocation(line: 100, column: 9, scope: !5691)
!5694 = !DILocation(line: 100, column: 40, scope: !5691)
!5695 = !DILocation(line: 100, column: 38, scope: !5691)
!5696 = !DILocation(line: 100, column: 4, scope: !5691)
!5697 = !DILocation(line: 100, column: 7, scope: !5691)
!5698 = !DILocation(line: 100, column: 3, scope: !5691)
!5699 = !DILocation(line: 102, column: 9, scope: !5523)
!5700 = !DILocation(line: 102, column: 2, scope: !5523)
!5701 = !DILocation(line: 103, column: 1, scope: !5523)
!5702 = !DISubprogram(name: "pci_read_config_dword", scope: !4266, file: !4266, line: 1215, type: !5703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!130, !5705, !130, !2649}
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4265)
!5707 = !DISubprogram(name: "pci_iounmap", scope: !5708, file: !5708, line: 21, type: !5709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5708 = !DIFile(filename: "./include/asm-generic/pci_iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d9d4783b1a299a88d20563407f34fb6c")
!5709 = !DISubroutineType(types: !5710)
!5710 = !{null, !4264, !168}
!5711 = !DISubprogram(name: "pci_release_selected_regions", scope: !4266, file: !4266, line: 1451, type: !5712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{null, !4264, !130}
!5714 = distinct !DISubprogram(name: "vp_modern_remove", scope: !2, file: !2, line: 367, type: !5715, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5717)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{null, !4260}
!5717 = !{!5718, !5719}
!5718 = !DILocalVariable(name: "mdev", arg: 1, scope: !5714, file: !2, line: 367, type: !4260)
!5719 = !DILocalVariable(name: "pci_dev", scope: !5714, file: !2, line: 369, type: !4264)
!5720 = !DILocation(line: 367, column: 56, scope: !5714)
!5721 = !DILocation(line: 369, column: 2, scope: !5714)
!5722 = !DILocation(line: 369, column: 18, scope: !5714)
!5723 = !DILocation(line: 369, column: 28, scope: !5714)
!5724 = !DILocation(line: 369, column: 34, scope: !5714)
!5725 = !DILocation(line: 371, column: 6, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5714, file: !2, line: 371, column: 6)
!5727 = !DILocation(line: 371, column: 12, scope: !5726)
!5728 = !DILocation(line: 371, column: 6, scope: !5714)
!5729 = !DILocation(line: 372, column: 15, scope: !5726)
!5730 = !DILocation(line: 372, column: 24, scope: !5726)
!5731 = !DILocation(line: 372, column: 30, scope: !5726)
!5732 = !DILocation(line: 372, column: 3, scope: !5726)
!5733 = !DILocation(line: 373, column: 6, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5714, file: !2, line: 373, column: 6)
!5735 = !DILocation(line: 373, column: 12, scope: !5734)
!5736 = !DILocation(line: 373, column: 6, scope: !5714)
!5737 = !DILocation(line: 374, column: 15, scope: !5734)
!5738 = !DILocation(line: 374, column: 24, scope: !5734)
!5739 = !DILocation(line: 374, column: 30, scope: !5734)
!5740 = !DILocation(line: 374, column: 3, scope: !5734)
!5741 = !DILocation(line: 375, column: 14, scope: !5714)
!5742 = !DILocation(line: 375, column: 23, scope: !5714)
!5743 = !DILocation(line: 375, column: 29, scope: !5714)
!5744 = !DILocation(line: 375, column: 2, scope: !5714)
!5745 = !DILocation(line: 376, column: 14, scope: !5714)
!5746 = !DILocation(line: 376, column: 23, scope: !5714)
!5747 = !DILocation(line: 376, column: 29, scope: !5714)
!5748 = !DILocation(line: 376, column: 2, scope: !5714)
!5749 = !DILocation(line: 377, column: 31, scope: !5714)
!5750 = !DILocation(line: 377, column: 40, scope: !5714)
!5751 = !DILocation(line: 377, column: 46, scope: !5714)
!5752 = !DILocation(line: 377, column: 2, scope: !5714)
!5753 = !DILocation(line: 378, column: 1, scope: !5714)
!5754 = distinct !DISubprogram(name: "vp_modern_get_features", scope: !2, file: !2, line: 387, type: !5755, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5757)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!163, !4260}
!5757 = !{!5758, !5759, !5760}
!5758 = !DILocalVariable(name: "mdev", arg: 1, scope: !5754, file: !2, line: 387, type: !4260)
!5759 = !DILocalVariable(name: "cfg", scope: !5754, file: !2, line: 389, type: !5033)
!5760 = !DILocalVariable(name: "features", scope: !5754, file: !2, line: 391, type: !163)
!5761 = !DILocation(line: 387, column: 61, scope: !5754)
!5762 = !DILocation(line: 389, column: 2, scope: !5754)
!5763 = !DILocation(line: 389, column: 40, scope: !5754)
!5764 = !DILocation(line: 389, column: 46, scope: !5754)
!5765 = !DILocation(line: 389, column: 52, scope: !5754)
!5766 = !DILocation(line: 391, column: 2, scope: !5754)
!5767 = !DILocation(line: 391, column: 6, scope: !5754)
!5768 = !DILocation(line: 393, column: 19, scope: !5754)
!5769 = !DILocation(line: 393, column: 24, scope: !5754)
!5770 = !DILocation(line: 393, column: 2, scope: !5754)
!5771 = !DILocation(line: 394, column: 26, scope: !5754)
!5772 = !DILocation(line: 394, column: 31, scope: !5754)
!5773 = !DILocation(line: 394, column: 13, scope: !5754)
!5774 = !DILocation(line: 394, column: 11, scope: !5754)
!5775 = !DILocation(line: 395, column: 19, scope: !5754)
!5776 = !DILocation(line: 395, column: 24, scope: !5754)
!5777 = !DILocation(line: 395, column: 2, scope: !5754)
!5778 = !DILocation(line: 396, column: 33, scope: !5754)
!5779 = !DILocation(line: 396, column: 38, scope: !5754)
!5780 = !DILocation(line: 396, column: 20, scope: !5754)
!5781 = !DILocation(line: 396, column: 15, scope: !5754)
!5782 = !DILocation(line: 396, column: 54, scope: !5754)
!5783 = !DILocation(line: 396, column: 11, scope: !5754)
!5784 = !DILocation(line: 398, column: 9, scope: !5754)
!5785 = !DILocation(line: 399, column: 1, scope: !5754)
!5786 = !DILocation(line: 398, column: 2, scope: !5754)
!5787 = distinct !DISubprogram(name: "vp_iowrite32", scope: !173, file: !173, line: 81, type: !5788, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5791)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{null, !169, !5790}
!5790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!5791 = !{!5792, !5793}
!5792 = !DILocalVariable(name: "value", arg: 1, scope: !5787, file: !173, line: 81, type: !169)
!5793 = !DILocalVariable(name: "addr", arg: 2, scope: !5787, file: !173, line: 81, type: !5790)
!5794 = !DILocation(line: 81, column: 37, scope: !5787)
!5795 = !DILocation(line: 81, column: 60, scope: !5787)
!5796 = !DILocation(line: 83, column: 12, scope: !5787)
!5797 = !DILocation(line: 83, column: 19, scope: !5787)
!5798 = !DILocation(line: 83, column: 2, scope: !5787)
!5799 = !DILocation(line: 84, column: 1, scope: !5787)
!5800 = distinct !DISubprogram(name: "vp_ioread32", scope: !173, file: !173, line: 66, type: !5801, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5805)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!169, !5803}
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!5805 = !{!5806}
!5806 = !DILocalVariable(name: "addr", arg: 1, scope: !5800, file: !173, line: 66, type: !5803)
!5807 = !DILocation(line: 66, column: 53, scope: !5800)
!5808 = !DILocation(line: 68, column: 18, scope: !5800)
!5809 = !DILocation(line: 68, column: 9, scope: !5800)
!5810 = !DILocation(line: 68, column: 2, scope: !5800)
!5811 = distinct !DISubprogram(name: "vp_modern_get_driver_features", scope: !2, file: !2, line: 408, type: !5755, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5812)
!5812 = !{!5813, !5814, !5815}
!5813 = !DILocalVariable(name: "mdev", arg: 1, scope: !5811, file: !2, line: 408, type: !4260)
!5814 = !DILocalVariable(name: "cfg", scope: !5811, file: !2, line: 410, type: !5033)
!5815 = !DILocalVariable(name: "features", scope: !5811, file: !2, line: 412, type: !163)
!5816 = !DILocation(line: 408, column: 68, scope: !5811)
!5817 = !DILocation(line: 410, column: 2, scope: !5811)
!5818 = !DILocation(line: 410, column: 40, scope: !5811)
!5819 = !DILocation(line: 410, column: 46, scope: !5811)
!5820 = !DILocation(line: 410, column: 52, scope: !5811)
!5821 = !DILocation(line: 412, column: 2, scope: !5811)
!5822 = !DILocation(line: 412, column: 6, scope: !5811)
!5823 = !DILocation(line: 414, column: 19, scope: !5811)
!5824 = !DILocation(line: 414, column: 24, scope: !5811)
!5825 = !DILocation(line: 414, column: 2, scope: !5811)
!5826 = !DILocation(line: 415, column: 26, scope: !5811)
!5827 = !DILocation(line: 415, column: 31, scope: !5811)
!5828 = !DILocation(line: 415, column: 13, scope: !5811)
!5829 = !DILocation(line: 415, column: 11, scope: !5811)
!5830 = !DILocation(line: 416, column: 19, scope: !5811)
!5831 = !DILocation(line: 416, column: 24, scope: !5811)
!5832 = !DILocation(line: 416, column: 2, scope: !5811)
!5833 = !DILocation(line: 417, column: 33, scope: !5811)
!5834 = !DILocation(line: 417, column: 38, scope: !5811)
!5835 = !DILocation(line: 417, column: 20, scope: !5811)
!5836 = !DILocation(line: 417, column: 15, scope: !5811)
!5837 = !DILocation(line: 417, column: 53, scope: !5811)
!5838 = !DILocation(line: 417, column: 11, scope: !5811)
!5839 = !DILocation(line: 419, column: 9, scope: !5811)
!5840 = !DILocation(line: 420, column: 1, scope: !5811)
!5841 = !DILocation(line: 419, column: 2, scope: !5811)
!5842 = distinct !DISubprogram(name: "vp_modern_set_features", scope: !2, file: !2, line: 428, type: !5843, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5845)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{null, !4260, !163}
!5845 = !{!5846, !5847, !5848}
!5846 = !DILocalVariable(name: "mdev", arg: 1, scope: !5842, file: !2, line: 428, type: !4260)
!5847 = !DILocalVariable(name: "features", arg: 2, scope: !5842, file: !2, line: 429, type: !163)
!5848 = !DILocalVariable(name: "cfg", scope: !5842, file: !2, line: 431, type: !5033)
!5849 = !DILocation(line: 428, column: 62, scope: !5842)
!5850 = !DILocation(line: 429, column: 12, scope: !5842)
!5851 = !DILocation(line: 431, column: 2, scope: !5842)
!5852 = !DILocation(line: 431, column: 40, scope: !5842)
!5853 = !DILocation(line: 431, column: 46, scope: !5842)
!5854 = !DILocation(line: 431, column: 52, scope: !5842)
!5855 = !DILocation(line: 433, column: 19, scope: !5842)
!5856 = !DILocation(line: 433, column: 24, scope: !5842)
!5857 = !DILocation(line: 433, column: 2, scope: !5842)
!5858 = !DILocation(line: 434, column: 20, scope: !5842)
!5859 = !DILocation(line: 434, column: 15, scope: !5842)
!5860 = !DILocation(line: 434, column: 31, scope: !5842)
!5861 = !DILocation(line: 434, column: 36, scope: !5842)
!5862 = !DILocation(line: 434, column: 2, scope: !5842)
!5863 = !DILocation(line: 435, column: 19, scope: !5842)
!5864 = !DILocation(line: 435, column: 24, scope: !5842)
!5865 = !DILocation(line: 435, column: 2, scope: !5842)
!5866 = !DILocation(line: 436, column: 15, scope: !5842)
!5867 = !DILocation(line: 436, column: 24, scope: !5842)
!5868 = !DILocation(line: 436, column: 32, scope: !5842)
!5869 = !DILocation(line: 436, column: 37, scope: !5842)
!5870 = !DILocation(line: 436, column: 2, scope: !5842)
!5871 = !DILocation(line: 437, column: 1, scope: !5842)
!5872 = distinct !DISubprogram(name: "vp_modern_generation", scope: !2, file: !2, line: 446, type: !5873, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5875)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!169, !4260}
!5875 = !{!5876, !5877}
!5876 = !DILocalVariable(name: "mdev", arg: 1, scope: !5872, file: !2, line: 446, type: !4260)
!5877 = !DILocalVariable(name: "cfg", scope: !5872, file: !2, line: 448, type: !5033)
!5878 = !DILocation(line: 446, column: 59, scope: !5872)
!5879 = !DILocation(line: 448, column: 2, scope: !5872)
!5880 = !DILocation(line: 448, column: 40, scope: !5872)
!5881 = !DILocation(line: 448, column: 46, scope: !5872)
!5882 = !DILocation(line: 448, column: 52, scope: !5872)
!5883 = !DILocation(line: 450, column: 21, scope: !5872)
!5884 = !DILocation(line: 450, column: 26, scope: !5872)
!5885 = !DILocation(line: 450, column: 9, scope: !5872)
!5886 = !DILocation(line: 451, column: 1, scope: !5872)
!5887 = !DILocation(line: 450, column: 2, scope: !5872)
!5888 = distinct !DISubprogram(name: "vp_ioread8", scope: !173, file: !173, line: 57, type: !5889, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5893)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!347, !5891}
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!5893 = !{!5894}
!5894 = !DILocalVariable(name: "addr", arg: 1, scope: !5888, file: !173, line: 57, type: !5891)
!5895 = !DILocation(line: 57, column: 47, scope: !5888)
!5896 = !DILocation(line: 59, column: 17, scope: !5888)
!5897 = !DILocation(line: 59, column: 9, scope: !5888)
!5898 = !DILocation(line: 59, column: 2, scope: !5888)
!5899 = distinct !DISubprogram(name: "vp_modern_get_status", scope: !2, file: !2, line: 460, type: !5900, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5902)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!347, !4260}
!5902 = !{!5903, !5904}
!5903 = !DILocalVariable(name: "mdev", arg: 1, scope: !5899, file: !2, line: 460, type: !4260)
!5904 = !DILocalVariable(name: "cfg", scope: !5899, file: !2, line: 462, type: !5033)
!5905 = !DILocation(line: 460, column: 58, scope: !5899)
!5906 = !DILocation(line: 462, column: 2, scope: !5899)
!5907 = !DILocation(line: 462, column: 40, scope: !5899)
!5908 = !DILocation(line: 462, column: 46, scope: !5899)
!5909 = !DILocation(line: 462, column: 52, scope: !5899)
!5910 = !DILocation(line: 464, column: 21, scope: !5899)
!5911 = !DILocation(line: 464, column: 26, scope: !5899)
!5912 = !DILocation(line: 464, column: 9, scope: !5899)
!5913 = !DILocation(line: 465, column: 1, scope: !5899)
!5914 = !DILocation(line: 464, column: 2, scope: !5899)
!5915 = distinct !DISubprogram(name: "vp_modern_set_status", scope: !2, file: !2, line: 473, type: !5916, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5918)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{null, !4260, !347}
!5918 = !{!5919, !5920, !5921}
!5919 = !DILocalVariable(name: "mdev", arg: 1, scope: !5915, file: !2, line: 473, type: !4260)
!5920 = !DILocalVariable(name: "status", arg: 2, scope: !5915, file: !2, line: 474, type: !347)
!5921 = !DILocalVariable(name: "cfg", scope: !5915, file: !2, line: 476, type: !5033)
!5922 = !DILocation(line: 473, column: 60, scope: !5915)
!5923 = !DILocation(line: 474, column: 9, scope: !5915)
!5924 = !DILocation(line: 476, column: 2, scope: !5915)
!5925 = !DILocation(line: 476, column: 40, scope: !5915)
!5926 = !DILocation(line: 476, column: 46, scope: !5915)
!5927 = !DILocation(line: 476, column: 52, scope: !5915)
!5928 = !DILocation(line: 483, column: 14, scope: !5915)
!5929 = !DILocation(line: 483, column: 23, scope: !5915)
!5930 = !DILocation(line: 483, column: 28, scope: !5915)
!5931 = !DILocation(line: 483, column: 2, scope: !5915)
!5932 = !DILocation(line: 484, column: 1, scope: !5915)
!5933 = distinct !DISubprogram(name: "vp_iowrite8", scope: !173, file: !173, line: 71, type: !5934, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5936)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{null, !347, !5038}
!5936 = !{!5937, !5938}
!5937 = !DILocalVariable(name: "value", arg: 1, scope: !5933, file: !173, line: 71, type: !347)
!5938 = !DILocalVariable(name: "addr", arg: 2, scope: !5933, file: !173, line: 71, type: !5038)
!5939 = !DILocation(line: 71, column: 35, scope: !5933)
!5940 = !DILocation(line: 71, column: 54, scope: !5933)
!5941 = !DILocation(line: 73, column: 11, scope: !5933)
!5942 = !DILocation(line: 73, column: 18, scope: !5933)
!5943 = !DILocation(line: 73, column: 2, scope: !5933)
!5944 = !DILocation(line: 74, column: 1, scope: !5933)
!5945 = distinct !DISubprogram(name: "vp_modern_get_queue_reset", scope: !2, file: !2, line: 492, type: !5946, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5948)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!130, !4260, !353}
!5948 = !{!5949, !5950, !5951}
!5949 = !DILocalVariable(name: "mdev", arg: 1, scope: !5945, file: !2, line: 492, type: !4260)
!5950 = !DILocalVariable(name: "index", arg: 2, scope: !5945, file: !2, line: 492, type: !353)
!5951 = !DILocalVariable(name: "cfg", scope: !5945, file: !2, line: 494, type: !171)
!5952 = !DILocation(line: 492, column: 64, scope: !5945)
!5953 = !DILocation(line: 492, column: 74, scope: !5945)
!5954 = !DILocation(line: 494, column: 2, scope: !5945)
!5955 = !DILocation(line: 494, column: 47, scope: !5945)
!5956 = !DILocation(line: 496, column: 55, scope: !5945)
!5957 = !DILocation(line: 496, column: 61, scope: !5945)
!5958 = !DILocation(line: 496, column: 6, scope: !5945)
!5959 = !DILocation(line: 498, column: 15, scope: !5945)
!5960 = !DILocation(line: 498, column: 23, scope: !5945)
!5961 = !DILocation(line: 498, column: 28, scope: !5945)
!5962 = !DILocation(line: 498, column: 32, scope: !5945)
!5963 = !DILocation(line: 498, column: 2, scope: !5945)
!5964 = !DILocation(line: 499, column: 22, scope: !5945)
!5965 = !DILocation(line: 499, column: 27, scope: !5945)
!5966 = !DILocation(line: 499, column: 9, scope: !5945)
!5967 = !DILocation(line: 500, column: 1, scope: !5945)
!5968 = !DILocation(line: 499, column: 2, scope: !5945)
!5969 = distinct !DISubprogram(name: "vp_iowrite16", scope: !173, file: !173, line: 76, type: !5970, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5973)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{null, !353, !5972}
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!5973 = !{!5974, !5975}
!5974 = !DILocalVariable(name: "value", arg: 1, scope: !5969, file: !173, line: 76, type: !353)
!5975 = !DILocalVariable(name: "addr", arg: 2, scope: !5969, file: !173, line: 76, type: !5972)
!5976 = !DILocation(line: 76, column: 37, scope: !5969)
!5977 = !DILocation(line: 76, column: 60, scope: !5969)
!5978 = !DILocation(line: 78, column: 12, scope: !5969)
!5979 = !DILocation(line: 78, column: 19, scope: !5969)
!5980 = !DILocation(line: 78, column: 2, scope: !5969)
!5981 = !DILocation(line: 79, column: 1, scope: !5969)
!5982 = distinct !DISubprogram(name: "vp_ioread16", scope: !173, file: !173, line: 61, type: !5983, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5987)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!353, !5985}
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!5987 = !{!5988}
!5988 = !DILocalVariable(name: "addr", arg: 1, scope: !5982, file: !173, line: 61, type: !5985)
!5989 = !DILocation(line: 61, column: 54, scope: !5982)
!5990 = !DILocation(line: 63, column: 18, scope: !5982)
!5991 = !DILocation(line: 63, column: 9, scope: !5982)
!5992 = !DILocation(line: 63, column: 2, scope: !5982)
!5993 = distinct !DISubprogram(name: "vp_modern_set_queue_reset", scope: !2, file: !2, line: 508, type: !5994, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5996)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{null, !4260, !353}
!5996 = !{!5997, !5998, !5999}
!5997 = !DILocalVariable(name: "mdev", arg: 1, scope: !5993, file: !2, line: 508, type: !4260)
!5998 = !DILocalVariable(name: "index", arg: 2, scope: !5993, file: !2, line: 508, type: !353)
!5999 = !DILocalVariable(name: "cfg", scope: !5993, file: !2, line: 510, type: !171)
!6000 = !DILocation(line: 508, column: 65, scope: !5993)
!6001 = !DILocation(line: 508, column: 75, scope: !5993)
!6002 = !DILocation(line: 510, column: 2, scope: !5993)
!6003 = !DILocation(line: 510, column: 47, scope: !5993)
!6004 = !DILocation(line: 512, column: 55, scope: !5993)
!6005 = !DILocation(line: 512, column: 61, scope: !5993)
!6006 = !DILocation(line: 512, column: 6, scope: !5993)
!6007 = !DILocation(line: 514, column: 15, scope: !5993)
!6008 = !DILocation(line: 514, column: 23, scope: !5993)
!6009 = !DILocation(line: 514, column: 28, scope: !5993)
!6010 = !DILocation(line: 514, column: 32, scope: !5993)
!6011 = !DILocation(line: 514, column: 2, scope: !5993)
!6012 = !DILocation(line: 515, column: 19, scope: !5993)
!6013 = !DILocation(line: 515, column: 24, scope: !5993)
!6014 = !DILocation(line: 515, column: 2, scope: !5993)
!6015 = !DILocation(line: 517, column: 2, scope: !5993)
!6016 = !DILocation(line: 517, column: 22, scope: !5993)
!6017 = !DILocation(line: 517, column: 27, scope: !5993)
!6018 = !DILocation(line: 517, column: 9, scope: !5993)
!6019 = !DILocation(line: 518, column: 3, scope: !5993)
!6020 = distinct !{!6020, !6015, !6021, !5485, !5486}
!6021 = !DILocation(line: 518, column: 11, scope: !5993)
!6022 = !DILocation(line: 520, column: 2, scope: !5993)
!6023 = !DILocation(line: 520, column: 22, scope: !5993)
!6024 = !DILocation(line: 520, column: 27, scope: !5993)
!6025 = !DILocation(line: 520, column: 31, scope: !5993)
!6026 = !DILocation(line: 520, column: 9, scope: !5993)
!6027 = !DILocation(line: 521, column: 3, scope: !5993)
!6028 = distinct !{!6028, !6022, !6029, !5485, !5486}
!6029 = !DILocation(line: 521, column: 11, scope: !5993)
!6030 = !DILocation(line: 522, column: 1, scope: !5993)
!6031 = !DISubprogram(name: "msleep", scope: !6032, file: !6032, line: 61, type: !6033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6032 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6033 = !DISubroutineType(types: !6034)
!6034 = !{null, !28}
!6035 = distinct !DISubprogram(name: "vp_modern_queue_vector", scope: !2, file: !2, line: 533, type: !6036, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6038)
!6036 = !DISubroutineType(types: !6037)
!6037 = !{!353, !4260, !353, !353}
!6038 = !{!6039, !6040, !6041, !6042}
!6039 = !DILocalVariable(name: "mdev", arg: 1, scope: !6035, file: !2, line: 533, type: !4260)
!6040 = !DILocalVariable(name: "index", arg: 2, scope: !6035, file: !2, line: 534, type: !353)
!6041 = !DILocalVariable(name: "vector", arg: 3, scope: !6035, file: !2, line: 534, type: !353)
!6042 = !DILocalVariable(name: "cfg", scope: !6035, file: !2, line: 536, type: !5033)
!6043 = !DILocation(line: 533, column: 61, scope: !6035)
!6044 = !DILocation(line: 534, column: 11, scope: !6035)
!6045 = !DILocation(line: 534, column: 22, scope: !6035)
!6046 = !DILocation(line: 536, column: 2, scope: !6035)
!6047 = !DILocation(line: 536, column: 40, scope: !6035)
!6048 = !DILocation(line: 536, column: 46, scope: !6035)
!6049 = !DILocation(line: 536, column: 52, scope: !6035)
!6050 = !DILocation(line: 538, column: 15, scope: !6035)
!6051 = !DILocation(line: 538, column: 23, scope: !6035)
!6052 = !DILocation(line: 538, column: 28, scope: !6035)
!6053 = !DILocation(line: 538, column: 2, scope: !6035)
!6054 = !DILocation(line: 539, column: 15, scope: !6035)
!6055 = !DILocation(line: 539, column: 24, scope: !6035)
!6056 = !DILocation(line: 539, column: 29, scope: !6035)
!6057 = !DILocation(line: 539, column: 2, scope: !6035)
!6058 = !DILocation(line: 541, column: 22, scope: !6035)
!6059 = !DILocation(line: 541, column: 27, scope: !6035)
!6060 = !DILocation(line: 541, column: 9, scope: !6035)
!6061 = !DILocation(line: 542, column: 1, scope: !6035)
!6062 = !DILocation(line: 541, column: 2, scope: !6035)
!6063 = distinct !DISubprogram(name: "vp_modern_config_vector", scope: !2, file: !2, line: 552, type: !6064, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6066)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{!353, !4260, !353}
!6066 = !{!6067, !6068, !6069}
!6067 = !DILocalVariable(name: "mdev", arg: 1, scope: !6063, file: !2, line: 552, type: !4260)
!6068 = !DILocalVariable(name: "vector", arg: 2, scope: !6063, file: !2, line: 553, type: !353)
!6069 = !DILocalVariable(name: "cfg", scope: !6063, file: !2, line: 555, type: !5033)
!6070 = !DILocation(line: 552, column: 62, scope: !6063)
!6071 = !DILocation(line: 553, column: 12, scope: !6063)
!6072 = !DILocation(line: 555, column: 2, scope: !6063)
!6073 = !DILocation(line: 555, column: 40, scope: !6063)
!6074 = !DILocation(line: 555, column: 46, scope: !6063)
!6075 = !DILocation(line: 555, column: 52, scope: !6063)
!6076 = !DILocation(line: 558, column: 15, scope: !6063)
!6077 = !DILocation(line: 558, column: 24, scope: !6063)
!6078 = !DILocation(line: 558, column: 29, scope: !6063)
!6079 = !DILocation(line: 558, column: 2, scope: !6063)
!6080 = !DILocation(line: 561, column: 22, scope: !6063)
!6081 = !DILocation(line: 561, column: 27, scope: !6063)
!6082 = !DILocation(line: 561, column: 9, scope: !6063)
!6083 = !DILocation(line: 562, column: 1, scope: !6063)
!6084 = !DILocation(line: 561, column: 2, scope: !6063)
!6085 = distinct !DISubprogram(name: "vp_modern_queue_address", scope: !2, file: !2, line: 573, type: !6086, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6088)
!6086 = !DISubroutineType(types: !6087)
!6087 = !{null, !4260, !353, !163, !163, !163}
!6088 = !{!6089, !6090, !6091, !6092, !6093, !6094}
!6089 = !DILocalVariable(name: "mdev", arg: 1, scope: !6085, file: !2, line: 573, type: !4260)
!6090 = !DILocalVariable(name: "index", arg: 2, scope: !6085, file: !2, line: 574, type: !353)
!6091 = !DILocalVariable(name: "desc_addr", arg: 3, scope: !6085, file: !2, line: 574, type: !163)
!6092 = !DILocalVariable(name: "driver_addr", arg: 4, scope: !6085, file: !2, line: 574, type: !163)
!6093 = !DILocalVariable(name: "device_addr", arg: 5, scope: !6085, file: !2, line: 575, type: !163)
!6094 = !DILocalVariable(name: "cfg", scope: !6085, file: !2, line: 577, type: !5033)
!6095 = !DILocation(line: 573, column: 63, scope: !6085)
!6096 = !DILocation(line: 574, column: 13, scope: !6085)
!6097 = !DILocation(line: 574, column: 24, scope: !6085)
!6098 = !DILocation(line: 574, column: 39, scope: !6085)
!6099 = !DILocation(line: 575, column: 13, scope: !6085)
!6100 = !DILocation(line: 577, column: 2, scope: !6085)
!6101 = !DILocation(line: 577, column: 40, scope: !6085)
!6102 = !DILocation(line: 577, column: 46, scope: !6085)
!6103 = !DILocation(line: 577, column: 52, scope: !6085)
!6104 = !DILocation(line: 579, column: 15, scope: !6085)
!6105 = !DILocation(line: 579, column: 23, scope: !6085)
!6106 = !DILocation(line: 579, column: 28, scope: !6085)
!6107 = !DILocation(line: 579, column: 2, scope: !6085)
!6108 = !DILocation(line: 581, column: 23, scope: !6085)
!6109 = !DILocation(line: 581, column: 35, scope: !6085)
!6110 = !DILocation(line: 581, column: 40, scope: !6085)
!6111 = !DILocation(line: 582, column: 10, scope: !6085)
!6112 = !DILocation(line: 582, column: 15, scope: !6085)
!6113 = !DILocation(line: 581, column: 2, scope: !6085)
!6114 = !DILocation(line: 583, column: 23, scope: !6085)
!6115 = !DILocation(line: 583, column: 37, scope: !6085)
!6116 = !DILocation(line: 583, column: 42, scope: !6085)
!6117 = !DILocation(line: 584, column: 10, scope: !6085)
!6118 = !DILocation(line: 584, column: 15, scope: !6085)
!6119 = !DILocation(line: 583, column: 2, scope: !6085)
!6120 = !DILocation(line: 585, column: 23, scope: !6085)
!6121 = !DILocation(line: 585, column: 37, scope: !6085)
!6122 = !DILocation(line: 585, column: 42, scope: !6085)
!6123 = !DILocation(line: 586, column: 10, scope: !6085)
!6124 = !DILocation(line: 586, column: 15, scope: !6085)
!6125 = !DILocation(line: 585, column: 2, scope: !6085)
!6126 = !DILocation(line: 587, column: 1, scope: !6085)
!6127 = distinct !DISubprogram(name: "vp_iowrite64_twopart", scope: !173, file: !173, line: 86, type: !6128, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6130)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{null, !163, !5790, !5790}
!6130 = !{!6131, !6132, !6133}
!6131 = !DILocalVariable(name: "val", arg: 1, scope: !6127, file: !173, line: 86, type: !163)
!6132 = !DILocalVariable(name: "lo", arg: 2, scope: !6127, file: !173, line: 87, type: !5790)
!6133 = !DILocalVariable(name: "hi", arg: 3, scope: !6127, file: !173, line: 88, type: !5790)
!6134 = !DILocation(line: 86, column: 45, scope: !6127)
!6135 = !DILocation(line: 87, column: 22, scope: !6127)
!6136 = !DILocation(line: 88, column: 22, scope: !6127)
!6137 = !DILocation(line: 90, column: 20, scope: !6127)
!6138 = !DILocation(line: 90, column: 15, scope: !6127)
!6139 = !DILocation(line: 90, column: 25, scope: !6127)
!6140 = !DILocation(line: 90, column: 2, scope: !6127)
!6141 = !DILocation(line: 91, column: 15, scope: !6127)
!6142 = !DILocation(line: 91, column: 19, scope: !6127)
!6143 = !DILocation(line: 91, column: 26, scope: !6127)
!6144 = !DILocation(line: 91, column: 2, scope: !6127)
!6145 = !DILocation(line: 92, column: 1, scope: !6127)
!6146 = distinct !DISubprogram(name: "vp_modern_set_queue_enable", scope: !2, file: !2, line: 596, type: !6147, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6149)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !4260, !353, !742}
!6149 = !{!6150, !6151, !6152}
!6150 = !DILocalVariable(name: "mdev", arg: 1, scope: !6146, file: !2, line: 596, type: !4260)
!6151 = !DILocalVariable(name: "index", arg: 2, scope: !6146, file: !2, line: 597, type: !353)
!6152 = !DILocalVariable(name: "enable", arg: 3, scope: !6146, file: !2, line: 597, type: !742)
!6153 = !DILocation(line: 596, column: 66, scope: !6146)
!6154 = !DILocation(line: 597, column: 9, scope: !6146)
!6155 = !DILocation(line: 597, column: 21, scope: !6146)
!6156 = !DILocation(line: 599, column: 15, scope: !6146)
!6157 = !DILocation(line: 599, column: 23, scope: !6146)
!6158 = !DILocation(line: 599, column: 29, scope: !6146)
!6159 = !DILocation(line: 599, column: 37, scope: !6146)
!6160 = !DILocation(line: 599, column: 2, scope: !6146)
!6161 = !DILocation(line: 600, column: 15, scope: !6146)
!6162 = !{i8 0, i8 2}
!6163 = !DILocation(line: 600, column: 24, scope: !6146)
!6164 = !DILocation(line: 600, column: 30, scope: !6146)
!6165 = !DILocation(line: 600, column: 38, scope: !6146)
!6166 = !DILocation(line: 600, column: 2, scope: !6146)
!6167 = !DILocation(line: 601, column: 1, scope: !6146)
!6168 = distinct !DISubprogram(name: "vp_modern_get_queue_enable", scope: !2, file: !2, line: 611, type: !6169, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6171)
!6169 = !DISubroutineType(types: !6170)
!6170 = !{!742, !4260, !353}
!6171 = !{!6172, !6173}
!6172 = !DILocalVariable(name: "mdev", arg: 1, scope: !6168, file: !2, line: 611, type: !4260)
!6173 = !DILocalVariable(name: "index", arg: 2, scope: !6168, file: !2, line: 612, type: !353)
!6174 = !DILocation(line: 611, column: 66, scope: !6168)
!6175 = !DILocation(line: 612, column: 9, scope: !6168)
!6176 = !DILocation(line: 614, column: 15, scope: !6168)
!6177 = !DILocation(line: 614, column: 23, scope: !6168)
!6178 = !DILocation(line: 614, column: 29, scope: !6168)
!6179 = !DILocation(line: 614, column: 37, scope: !6168)
!6180 = !DILocation(line: 614, column: 2, scope: !6168)
!6181 = !DILocation(line: 616, column: 22, scope: !6168)
!6182 = !DILocation(line: 616, column: 28, scope: !6168)
!6183 = !DILocation(line: 616, column: 36, scope: !6168)
!6184 = !DILocation(line: 616, column: 9, scope: !6168)
!6185 = !DILocation(line: 616, column: 2, scope: !6168)
!6186 = distinct !DISubprogram(name: "vp_modern_set_queue_size", scope: !2, file: !2, line: 626, type: !6187, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6189)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{null, !4260, !353, !353}
!6189 = !{!6190, !6191, !6192}
!6190 = !DILocalVariable(name: "mdev", arg: 1, scope: !6186, file: !2, line: 626, type: !4260)
!6191 = !DILocalVariable(name: "index", arg: 2, scope: !6186, file: !2, line: 627, type: !353)
!6192 = !DILocalVariable(name: "size", arg: 3, scope: !6186, file: !2, line: 627, type: !353)
!6193 = !DILocation(line: 626, column: 64, scope: !6186)
!6194 = !DILocation(line: 627, column: 14, scope: !6186)
!6195 = !DILocation(line: 627, column: 25, scope: !6186)
!6196 = !DILocation(line: 629, column: 15, scope: !6186)
!6197 = !DILocation(line: 629, column: 23, scope: !6186)
!6198 = !DILocation(line: 629, column: 29, scope: !6186)
!6199 = !DILocation(line: 629, column: 37, scope: !6186)
!6200 = !DILocation(line: 629, column: 2, scope: !6186)
!6201 = !DILocation(line: 630, column: 15, scope: !6186)
!6202 = !DILocation(line: 630, column: 22, scope: !6186)
!6203 = !DILocation(line: 630, column: 28, scope: !6186)
!6204 = !DILocation(line: 630, column: 36, scope: !6186)
!6205 = !DILocation(line: 630, column: 2, scope: !6186)
!6206 = !DILocation(line: 632, column: 1, scope: !6186)
!6207 = distinct !DISubprogram(name: "vp_modern_get_queue_size", scope: !2, file: !2, line: 642, type: !6064, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6208)
!6208 = !{!6209, !6210}
!6209 = !DILocalVariable(name: "mdev", arg: 1, scope: !6207, file: !2, line: 642, type: !4260)
!6210 = !DILocalVariable(name: "index", arg: 2, scope: !6207, file: !2, line: 643, type: !353)
!6211 = !DILocation(line: 642, column: 63, scope: !6207)
!6212 = !DILocation(line: 643, column: 13, scope: !6207)
!6213 = !DILocation(line: 645, column: 15, scope: !6207)
!6214 = !DILocation(line: 645, column: 23, scope: !6207)
!6215 = !DILocation(line: 645, column: 29, scope: !6207)
!6216 = !DILocation(line: 645, column: 37, scope: !6207)
!6217 = !DILocation(line: 645, column: 2, scope: !6207)
!6218 = !DILocation(line: 647, column: 22, scope: !6207)
!6219 = !DILocation(line: 647, column: 28, scope: !6207)
!6220 = !DILocation(line: 647, column: 36, scope: !6207)
!6221 = !DILocation(line: 647, column: 9, scope: !6207)
!6222 = !DILocation(line: 647, column: 2, scope: !6207)
!6223 = distinct !DISubprogram(name: "vp_modern_get_num_queues", scope: !2, file: !2, line: 658, type: !6224, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6226)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!353, !4260}
!6226 = !{!6227}
!6227 = !DILocalVariable(name: "mdev", arg: 1, scope: !6223, file: !2, line: 658, type: !4260)
!6228 = !DILocation(line: 658, column: 63, scope: !6223)
!6229 = !DILocation(line: 660, column: 22, scope: !6223)
!6230 = !DILocation(line: 660, column: 28, scope: !6223)
!6231 = !DILocation(line: 660, column: 36, scope: !6223)
!6232 = !DILocation(line: 660, column: 9, scope: !6223)
!6233 = !DILocation(line: 660, column: 2, scope: !6223)
!6234 = distinct !DISubprogram(name: "vp_modern_map_vq_notify", scope: !2, file: !2, line: 688, type: !6235, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6237)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{!168, !4260, !353, !5527}
!6237 = !{!6238, !6239, !6240, !6241}
!6238 = !DILocalVariable(name: "mdev", arg: 1, scope: !6234, file: !2, line: 688, type: !4260)
!6239 = !DILocalVariable(name: "index", arg: 2, scope: !6234, file: !2, line: 689, type: !353)
!6240 = !DILocalVariable(name: "pa", arg: 3, scope: !6234, file: !2, line: 689, type: !5527)
!6241 = !DILocalVariable(name: "off", scope: !6234, file: !2, line: 691, type: !353)
!6242 = !DILocation(line: 688, column: 72, scope: !6234)
!6243 = !DILocation(line: 689, column: 15, scope: !6234)
!6244 = !DILocation(line: 689, column: 39, scope: !6234)
!6245 = !DILocation(line: 691, column: 2, scope: !6234)
!6246 = !DILocation(line: 691, column: 6, scope: !6234)
!6247 = !DILocation(line: 691, column: 43, scope: !6234)
!6248 = !DILocation(line: 691, column: 49, scope: !6234)
!6249 = !DILocation(line: 691, column: 12, scope: !6234)
!6250 = !DILocation(line: 693, column: 6, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6234, file: !2, line: 693, column: 6)
!6252 = !DILocation(line: 693, column: 12, scope: !6251)
!6253 = !DILocation(line: 693, column: 6, scope: !6234)
!6254 = !DILocation(line: 695, column: 12, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6256, file: !2, line: 695, column: 7)
!6256 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 693, column: 25)
!6257 = !DILocation(line: 695, column: 7, scope: !6255)
!6258 = !DILocation(line: 695, column: 18, scope: !6255)
!6259 = !DILocation(line: 695, column: 24, scope: !6255)
!6260 = !DILocation(line: 695, column: 16, scope: !6255)
!6261 = !DILocation(line: 695, column: 49, scope: !6255)
!6262 = !DILocation(line: 696, column: 6, scope: !6255)
!6263 = !DILocation(line: 696, column: 12, scope: !6255)
!6264 = !DILocation(line: 696, column: 4, scope: !6255)
!6265 = !DILocation(line: 695, column: 7, scope: !6256)
!6266 = !DILocation(line: 697, column: 4, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !2, line: 697, column: 4)
!6268 = distinct !DILexicalBlock(scope: !6255, file: !2, line: 696, column: 24)
!6269 = !DILocation(line: 697, column: 4, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6267, file: !2, line: 697, column: 4)
!6271 = !DILocation(line: 702, column: 4, scope: !6268)
!6272 = !DILocation(line: 704, column: 7, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6256, file: !2, line: 704, column: 7)
!6274 = !DILocation(line: 704, column: 7, scope: !6256)
!6275 = !DILocation(line: 705, column: 10, scope: !6273)
!6276 = !DILocation(line: 705, column: 16, scope: !6273)
!6277 = !DILocation(line: 706, column: 10, scope: !6273)
!6278 = !DILocation(line: 706, column: 16, scope: !6273)
!6279 = !DILocation(line: 706, column: 22, scope: !6273)
!6280 = !DILocation(line: 706, column: 14, scope: !6273)
!6281 = !DILocation(line: 705, column: 26, scope: !6273)
!6282 = !DILocation(line: 705, column: 5, scope: !6273)
!6283 = !DILocation(line: 705, column: 8, scope: !6273)
!6284 = !DILocation(line: 705, column: 4, scope: !6273)
!6285 = !DILocation(line: 707, column: 10, scope: !6256)
!6286 = !DILocation(line: 707, column: 16, scope: !6256)
!6287 = !DILocation(line: 707, column: 30, scope: !6256)
!6288 = !DILocation(line: 707, column: 36, scope: !6256)
!6289 = !DILocation(line: 707, column: 42, scope: !6256)
!6290 = !DILocation(line: 707, column: 34, scope: !6256)
!6291 = !DILocation(line: 707, column: 28, scope: !6256)
!6292 = !DILocation(line: 707, column: 3, scope: !6256)
!6293 = !DILocation(line: 709, column: 35, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 708, column: 9)
!6295 = !DILocation(line: 710, column: 12, scope: !6294)
!6296 = !DILocation(line: 710, column: 18, scope: !6294)
!6297 = !DILocation(line: 711, column: 12, scope: !6294)
!6298 = !DILocation(line: 711, column: 18, scope: !6294)
!6299 = !DILocation(line: 711, column: 24, scope: !6294)
!6300 = !DILocation(line: 711, column: 16, scope: !6294)
!6301 = !DILocation(line: 712, column: 18, scope: !6294)
!6302 = !DILocation(line: 709, column: 10, scope: !6294)
!6303 = !DILocation(line: 709, column: 3, scope: !6294)
!6304 = !DILocation(line: 714, column: 1, scope: !6234)
!6305 = distinct !DISubprogram(name: "vp_modern_get_queue_notify_off", scope: !2, file: !2, line: 671, type: !6064, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6306)
!6306 = !{!6307, !6308}
!6307 = !DILocalVariable(name: "mdev", arg: 1, scope: !6305, file: !2, line: 671, type: !4260)
!6308 = !DILocalVariable(name: "index", arg: 2, scope: !6305, file: !2, line: 672, type: !353)
!6309 = !DILocation(line: 671, column: 76, scope: !6305)
!6310 = !DILocation(line: 672, column: 12, scope: !6305)
!6311 = !DILocation(line: 674, column: 15, scope: !6305)
!6312 = !DILocation(line: 674, column: 23, scope: !6305)
!6313 = !DILocation(line: 674, column: 29, scope: !6305)
!6314 = !DILocation(line: 674, column: 37, scope: !6305)
!6315 = !DILocation(line: 674, column: 2, scope: !6305)
!6316 = !DILocation(line: 676, column: 22, scope: !6305)
!6317 = !DILocation(line: 676, column: 28, scope: !6305)
!6318 = !DILocation(line: 676, column: 36, scope: !6305)
!6319 = !DILocation(line: 676, column: 9, scope: !6305)
!6320 = !DILocation(line: 676, column: 2, scope: !6305)
!6321 = !DISubprogram(name: "pci_find_capability", scope: !4266, file: !4266, line: 1164, type: !6322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!347, !4264, !130}
!6324 = !DISubprogram(name: "pci_read_config_byte", scope: !4266, file: !4266, line: 1213, type: !6325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6325 = !DISubroutineType(types: !6326)
!6326 = !{!130, !5705, !130, !5038}
!6327 = distinct !DISubprogram(name: "resource_size", scope: !4283, file: !4283, line: 219, type: !6328, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !6332)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!4286, !6330}
!6330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6331, size: 64)
!6331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4282)
!6332 = !{!6333}
!6333 = !DILocalVariable(name: "res", arg: 1, scope: !6327, file: !4283, line: 219, type: !6330)
!6334 = !DILocation(line: 219, column: 68, scope: !6327)
!6335 = !DILocation(line: 221, column: 9, scope: !6327)
!6336 = !DILocation(line: 221, column: 14, scope: !6327)
!6337 = !DILocation(line: 221, column: 20, scope: !6327)
!6338 = !DILocation(line: 221, column: 25, scope: !6327)
!6339 = !DILocation(line: 221, column: 18, scope: !6327)
!6340 = !DILocation(line: 221, column: 31, scope: !6327)
!6341 = !DILocation(line: 221, column: 2, scope: !6327)
!6342 = !DISubprogram(name: "pci_find_next_capability", scope: !4266, file: !4266, line: 1165, type: !6343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!347, !4264, !347, !130}
!6345 = !DISubprogram(name: "dma_set_mask", scope: !5495, file: !5495, line: 144, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6346 = !DISubprogram(name: "dma_set_coherent_mask", scope: !5495, file: !5495, line: 145, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6347 = !DISubprogram(name: "pci_iomap_range", scope: !5708, file: !5708, line: 15, type: !6348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!168, !4264, !130, !207, !207}
!6350 = !DISubprogram(name: "iowrite32", scope: !6351, file: !6351, line: 53, type: !6352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6351 = !DIFile(filename: "./include/asm-generic/iomap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2fb4069c6c763a33a87cd5332e9980e8")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{null, !169, !168}
!6354 = !DISubprogram(name: "ioread32", scope: !6351, file: !6351, line: 32, type: !6355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6355 = !DISubroutineType(types: !6356)
!6356 = !{!28, !2572}
!6357 = !DISubprogram(name: "ioread8", scope: !6351, file: !6351, line: 29, type: !6355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6358 = !DISubprogram(name: "iowrite8", scope: !6351, file: !6351, line: 50, type: !6359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6359 = !DISubroutineType(types: !6360)
!6360 = !{null, !347, !168}
!6361 = !DISubprogram(name: "iowrite16", scope: !6351, file: !6351, line: 51, type: !6362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6362 = !DISubroutineType(types: !6363)
!6363 = !{null, !353, !168}
!6364 = !DISubprogram(name: "ioread16", scope: !6351, file: !6351, line: 30, type: !6355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
