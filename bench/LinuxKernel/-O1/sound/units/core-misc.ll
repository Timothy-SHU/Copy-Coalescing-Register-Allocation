; ModuleID = 'sound/core/misc.c'
source_filename = "sound/core/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_release_and_free_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad release_and_free_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pci_quirk_lookup_id: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pci_quirk_lookup_id ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pci_quirk_lookup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pci_quirk_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_fasync_helper: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_fasync_helper ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_kill_fasync: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_kill_fasync ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_fasync_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_fasync_free ; .previous"

%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.snd_pci_quirk = type { i16, i16, i16, i32 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.snd_fasync = type { ptr, i32, i32, i32, %struct.list_head }

@__UNIQUE_ID___addressable_release_and_free_resource269 = internal global ptr @release_and_free_resource, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_pci_quirk_lookup_id295 = internal global ptr @snd_pci_quirk_lookup_id, section ".discard.addressable", align 8, !dbg !4150
@__UNIQUE_ID___addressable_snd_pci_quirk_lookup296 = internal global ptr @snd_pci_quirk_lookup, section ".discard.addressable", align 8, !dbg !4152
@snd_fasync_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4165
@__UNIQUE_ID___addressable_snd_fasync_helper297 = internal global ptr @snd_fasync_helper, section ".discard.addressable", align 8, !dbg !4154
@snd_fasync_list = internal global %struct.list_head { ptr @snd_fasync_list, ptr @snd_fasync_list }, align 8, !dbg !4167
@snd_fasync_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @snd_fasync_work, i64 8), ptr getelementptr (i8, ptr @snd_fasync_work, i64 8) }, ptr @snd_fasync_work_fn }, align 8, !dbg !4169
@__UNIQUE_ID___addressable_snd_kill_fasync298 = internal global ptr @snd_kill_fasync, section ".discard.addressable", align 8, !dbg !4156
@__UNIQUE_ID___addressable_snd_fasync_free299 = internal global ptr @snd_fasync_free, section ".discard.addressable", align 8, !dbg !4158
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4160
@system_wq = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_release_and_free_resource269, ptr @__UNIQUE_ID___addressable_snd_pci_quirk_lookup_id295, ptr @__UNIQUE_ID___addressable_snd_pci_quirk_lookup296, ptr @__UNIQUE_ID___addressable_snd_fasync_helper297, ptr @__UNIQUE_ID___addressable_snd_kill_fasync298, ptr @__UNIQUE_ID___addressable_snd_fasync_free299], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @release_and_free_resource(ptr noundef %res) #0 align 16 !dbg !4180 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  %0 = load ptr, ptr %res.addr, align 8, !dbg !4199
  %tobool = icmp ne ptr %0, null, !dbg !4199
  br i1 %tobool, label %if.then, label %if.end, !dbg !4201

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %res.addr, align 8, !dbg !4202
  %call = call i32 @release_resource(ptr noundef %1) #13, !dbg !4204
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4205
  call void @kfree(ptr noundef %2) #13, !dbg !4206
  br label %if.end, !dbg !4207

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4209 dso_local i32 @release_resource(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4212 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %vendor, i16 noundef zeroext %device, ptr noundef %list) #0 align 16 !dbg !4215 {
entry:
  %retval = alloca ptr, align 8
  %vendor.addr = alloca i16, align 2
  %device.addr = alloca i16, align 2
  %list.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %vendor, ptr %vendor.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !4228, metadata !DIExpression()), !dbg !4232
  store i16 %device, ptr %device.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4229, metadata !DIExpression()), !dbg !4233
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4230, metadata !DIExpression()), !dbg !4234
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #14, !dbg !4235
  call void @llvm.dbg.declare(metadata ptr %q, metadata !4231, metadata !DIExpression()), !dbg !4236
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4237
  store ptr %0, ptr %q, align 8, !dbg !4239
  br label %for.cond, !dbg !4240

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %q, align 8, !dbg !4241
  %subvendor = getelementptr inbounds %struct.snd_pci_quirk, ptr %1, i32 0, i32 0, !dbg !4243
  %2 = load i16, ptr %subvendor, align 4, !dbg !4243
  %conv = zext i16 %2 to i32, !dbg !4241
  %tobool = icmp ne i32 %conv, 0, !dbg !4241
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4244

lor.rhs:                                          ; preds = %for.cond
  %3 = load ptr, ptr %q, align 8, !dbg !4245
  %subdevice = getelementptr inbounds %struct.snd_pci_quirk, ptr %3, i32 0, i32 1, !dbg !4246
  %4 = load i16, ptr %subdevice, align 2, !dbg !4246
  %conv1 = zext i16 %4 to i32, !dbg !4245
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !4244
  br label %lor.end, !dbg !4244

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %5 = phi i1 [ true, %for.cond ], [ %tobool2, %lor.rhs ]
  br i1 %5, label %for.body, label %for.end, !dbg !4247

for.body:                                         ; preds = %lor.end
  %6 = load ptr, ptr %q, align 8, !dbg !4248
  %subvendor3 = getelementptr inbounds %struct.snd_pci_quirk, ptr %6, i32 0, i32 0, !dbg !4251
  %7 = load i16, ptr %subvendor3, align 4, !dbg !4251
  %conv4 = zext i16 %7 to i32, !dbg !4248
  %8 = load i16, ptr %vendor.addr, align 2, !dbg !4252
  %conv5 = zext i16 %8 to i32, !dbg !4252
  %cmp = icmp ne i32 %conv4, %conv5, !dbg !4253
  br i1 %cmp, label %if.then, label %if.end, !dbg !4254

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4255

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %q, align 8, !dbg !4256
  %subdevice7 = getelementptr inbounds %struct.snd_pci_quirk, ptr %9, i32 0, i32 1, !dbg !4258
  %10 = load i16, ptr %subdevice7, align 2, !dbg !4258
  %tobool8 = icmp ne i16 %10, 0, !dbg !4256
  br i1 %tobool8, label %lor.lhs.false, label %if.then15, !dbg !4259

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i16, ptr %device.addr, align 2, !dbg !4260
  %conv9 = zext i16 %11 to i32, !dbg !4260
  %12 = load ptr, ptr %q, align 8, !dbg !4261
  %subdevice_mask = getelementptr inbounds %struct.snd_pci_quirk, ptr %12, i32 0, i32 2, !dbg !4262
  %13 = load i16, ptr %subdevice_mask, align 4, !dbg !4262
  %conv10 = zext i16 %13 to i32, !dbg !4261
  %and = and i32 %conv9, %conv10, !dbg !4263
  %14 = load ptr, ptr %q, align 8, !dbg !4264
  %subdevice11 = getelementptr inbounds %struct.snd_pci_quirk, ptr %14, i32 0, i32 1, !dbg !4265
  %15 = load i16, ptr %subdevice11, align 2, !dbg !4265
  %conv12 = zext i16 %15 to i32, !dbg !4264
  %cmp13 = icmp eq i32 %and, %conv12, !dbg !4266
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4267

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  %16 = load ptr, ptr %q, align 8, !dbg !4268
  store ptr %16, ptr %retval, align 8, !dbg !4269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4269

if.end16:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !4270

for.inc:                                          ; preds = %if.end16, %if.then
  %17 = load ptr, ptr %q, align 8, !dbg !4271
  %incdec.ptr = getelementptr %struct.snd_pci_quirk, ptr %17, i32 1, !dbg !4271
  store ptr %incdec.ptr, ptr %q, align 8, !dbg !4271
  br label %for.cond, !dbg !4272, !llvm.loop !4273

for.end:                                          ; preds = %lor.end
  store ptr null, ptr %retval, align 8, !dbg !4277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4277

cleanup:                                          ; preds = %for.end, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #14, !dbg !4278
  %18 = load ptr, ptr %retval, align 8, !dbg !4278
  ret ptr %18, !dbg !4278
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef %list) #0 align 16 !dbg !4279 {
entry:
  %retval = alloca ptr, align 8
  %pci.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %pci, ptr %pci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci.addr, metadata !5037, metadata !DIExpression()), !dbg !5039
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5038, metadata !DIExpression()), !dbg !5040
  %0 = load ptr, ptr %pci.addr, align 8, !dbg !5041
  %tobool = icmp ne ptr %0, null, !dbg !5041
  br i1 %tobool, label %if.end, label %if.then, !dbg !5043

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5044
  br label %return, !dbg !5044

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pci.addr, align 8, !dbg !5045
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9, !dbg !5046
  %2 = load i16, ptr %subsystem_vendor, align 8, !dbg !5046
  %3 = load ptr, ptr %pci.addr, align 8, !dbg !5047
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10, !dbg !5048
  %4 = load i16, ptr %subsystem_device, align 2, !dbg !5048
  %5 = load ptr, ptr %list.addr, align 8, !dbg !5049
  %call = call ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %2, i16 noundef zeroext %4, ptr noundef %5) #13, !dbg !5050
  store ptr %call, ptr %retval, align 8, !dbg !5051
  br label %return, !dbg !5051

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !5052
  ret ptr %6, !dbg !5052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasyncp) #0 align 16 !dbg !5053 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %on.addr = alloca i32, align 4
  %fasyncp.addr = alloca ptr, align 8
  %fasync = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5058, metadata !DIExpression()), !dbg !5063
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5059, metadata !DIExpression()), !dbg !5064
  store i32 %on, ptr %on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !5060, metadata !DIExpression()), !dbg !5065
  store ptr %fasyncp, ptr %fasyncp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fasyncp.addr, metadata !5061, metadata !DIExpression()), !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %fasync) #14, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %fasync, metadata !5062, metadata !DIExpression()), !dbg !5068
  store ptr null, ptr %fasync, align 8, !dbg !5068
  %0 = load i32, ptr %on.addr, align 4, !dbg !5069
  %tobool = icmp ne i32 %0, 0, !dbg !5069
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5071

if.then:                                          ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #15, !dbg !5072
  store ptr %call, ptr %fasync, align 8, !dbg !5074
  %1 = load ptr, ptr %fasync, align 8, !dbg !5075
  %tobool1 = icmp ne ptr %1, null, !dbg !5075
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !5077

if.then2:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !5078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5078

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %fasync, align 8, !dbg !5079
  %list = getelementptr inbounds %struct.snd_fasync, ptr %2, i32 0, i32 4, !dbg !5080
  call void @INIT_LIST_HEAD(ptr noundef %list) #13, !dbg !5081
  br label %if.end3, !dbg !5082

if.end3:                                          ; preds = %if.end, %entry
  call void @spin_lock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5083
  %3 = load ptr, ptr %fasyncp.addr, align 8, !dbg !5084
  %4 = load ptr, ptr %3, align 8, !dbg !5086
  %tobool4 = icmp ne ptr %4, null, !dbg !5086
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5087

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %fasync, align 8, !dbg !5088
  call void @kfree(ptr noundef %5) #13, !dbg !5090
  %6 = load ptr, ptr %fasyncp.addr, align 8, !dbg !5091
  %7 = load ptr, ptr %6, align 8, !dbg !5092
  store ptr %7, ptr %fasync, align 8, !dbg !5093
  br label %if.end9, !dbg !5094

if.else:                                          ; preds = %if.end3
  %8 = load ptr, ptr %fasync, align 8, !dbg !5095
  %tobool6 = icmp ne ptr %8, null, !dbg !5095
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5098

if.then7:                                         ; preds = %if.else
  call void @spin_unlock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5099
  store i32 0, ptr %retval, align 4, !dbg !5101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5101

if.end8:                                          ; preds = %if.else
  %9 = load ptr, ptr %fasync, align 8, !dbg !5102
  %10 = load ptr, ptr %fasyncp.addr, align 8, !dbg !5103
  store ptr %9, ptr %10, align 8, !dbg !5104
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then5
  %11 = load i32, ptr %on.addr, align 4, !dbg !5105
  %12 = load ptr, ptr %fasync, align 8, !dbg !5106
  %on10 = getelementptr inbounds %struct.snd_fasync, ptr %12, i32 0, i32 3, !dbg !5107
  store i32 %11, ptr %on10, align 8, !dbg !5108
  call void @spin_unlock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5109
  %13 = load i32, ptr %fd.addr, align 4, !dbg !5110
  %14 = load ptr, ptr %file.addr, align 8, !dbg !5111
  %15 = load i32, ptr %on.addr, align 4, !dbg !5112
  %16 = load ptr, ptr %fasync, align 8, !dbg !5113
  %fasync11 = getelementptr inbounds %struct.snd_fasync, ptr %16, i32 0, i32 0, !dbg !5114
  %call12 = call i32 @fasync_helper(i32 noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %fasync11) #13, !dbg !5115
  store i32 %call12, ptr %retval, align 4, !dbg !5116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5116

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %fasync) #14, !dbg !5117
  %17 = load i32, ptr %retval, align 4, !dbg !5117
  ret i32 %17, !dbg !5117
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5118 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5122, metadata !DIExpression()), !dbg !5124
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5123, metadata !DIExpression()), !dbg !5125
  %0 = load i64, ptr %size.addr, align 8, !dbg !5126
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5127
  %or = or i32 %1, 256, !dbg !5128
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !5129
  ret ptr %call, !dbg !5130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5131 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  br label %do.body, !dbg !5138

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5139

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5141

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5139

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5143
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5143
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5143
  store volatile ptr %0, ptr %next, align 8, !dbg !5143
  br label %do.end3, !dbg !5143

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5139

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5145

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5146

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5148

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5146

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5150
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5150
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5150
  store volatile ptr %2, ptr %prev, align 8, !dbg !5150
  br label %do.end9, !dbg !5150

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5146

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5152
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !5153 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5160
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5160
  call void @_raw_spin_lock_irq(ptr noundef %1) #13, !dbg !5160
  ret void, !dbg !5161
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !5162 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5166
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5166
  call void @_raw_spin_unlock_irq(ptr noundef %1) #13, !dbg !5166
  ret void, !dbg !5167
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5168 dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_kill_fasync(ptr noundef %fasync, i32 noundef %signal, i32 noundef %poll) #0 align 16 !dbg !5172 {
entry:
  %fasync.addr = alloca ptr, align 8
  %signal.addr = alloca i32, align 4
  %poll.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %fasync, ptr %fasync.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fasync.addr, metadata !5176, metadata !DIExpression()), !dbg !5185
  store i32 %signal, ptr %signal.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %signal.addr, metadata !5177, metadata !DIExpression()), !dbg !5186
  store i32 %poll, ptr %poll.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %poll.addr, metadata !5178, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5179, metadata !DIExpression()), !dbg !5189
  %0 = load ptr, ptr %fasync.addr, align 8, !dbg !5190
  %tobool = icmp ne ptr %0, null, !dbg !5190
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5192

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fasync.addr, align 8, !dbg !5193
  %on = getelementptr inbounds %struct.snd_fasync, ptr %1, i32 0, i32 3, !dbg !5194
  %2 = load i32, ptr %on, align 8, !dbg !5194
  %tobool1 = icmp ne i32 %2, 0, !dbg !5193
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5195

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5196

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !5197

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5198

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !5199
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5180, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !5199
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5184, metadata !DIExpression()), !dbg !5199
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5199
  %conv = zext i1 %cmp to i32, !dbg !5199
  store i32 1, ptr %tmp, align 4, !dbg !5199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !5200
  %3 = load i32, ptr %tmp, align 4, !dbg !5199
  %call = call ptr @spinlock_check(ptr noundef @snd_fasync_lock) #13, !dbg !5200
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #13, !dbg !5200
  store i64 %call3, ptr %flags, align 8, !dbg !5200
  br label %do.cond, !dbg !5200

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5200

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5198

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5198

do.end5:                                          ; preds = %do.cond4
  %4 = load i32, ptr %signal.addr, align 4, !dbg !5201
  %5 = load ptr, ptr %fasync.addr, align 8, !dbg !5202
  %signal6 = getelementptr inbounds %struct.snd_fasync, ptr %5, i32 0, i32 1, !dbg !5203
  store i32 %4, ptr %signal6, align 8, !dbg !5204
  %6 = load i32, ptr %poll.addr, align 4, !dbg !5205
  %7 = load ptr, ptr %fasync.addr, align 8, !dbg !5206
  %poll7 = getelementptr inbounds %struct.snd_fasync, ptr %7, i32 0, i32 2, !dbg !5207
  store i32 %6, ptr %poll7, align 4, !dbg !5208
  %8 = load ptr, ptr %fasync.addr, align 8, !dbg !5209
  %list = getelementptr inbounds %struct.snd_fasync, ptr %8, i32 0, i32 4, !dbg !5210
  call void @list_move(ptr noundef %list, ptr noundef @snd_fasync_list) #13, !dbg !5211
  %call8 = call zeroext i1 @schedule_work(ptr noundef @snd_fasync_work) #13, !dbg !5212
  %9 = load i64, ptr %flags, align 8, !dbg !5213
  call void @spin_unlock_irqrestore(ptr noundef @snd_fasync_lock, i64 noundef %9) #13, !dbg !5214
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5215
  br label %cleanup, !dbg !5215

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !5215
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5215

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5216 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !5221 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5227
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5228
  ret ptr %1, !dbg !5229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #5 align 16 !dbg !5230 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5234, metadata !DIExpression()), !dbg !5236
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5235, metadata !DIExpression()), !dbg !5237
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5238
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !5239
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5240
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5241
  call void @list_add(ptr noundef %1, ptr noundef %2) #13, !dbg !5242
  ret void, !dbg !5243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #5 align 16 !dbg !5244 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load ptr, ptr @system_wq, align 8, !dbg !5250
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5251
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #13, !dbg !5252
  ret i1 %call, !dbg !5253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !5254 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5258, metadata !DIExpression()), !dbg !5264
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5259, metadata !DIExpression()), !dbg !5265
  br label %do.body, !dbg !5266

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !5267
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5260, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !5267
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5263, metadata !DIExpression()), !dbg !5267
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5267
  %conv = zext i1 %cmp to i32, !dbg !5267
  store i32 1, ptr %tmp, align 4, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !5268
  %0 = load i32, ptr %tmp, align 4, !dbg !5267
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5268
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5268
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5268
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #13, !dbg !5268
  br label %do.end, !dbg !5268

do.end:                                           ; preds = %do.body
  ret void, !dbg !5269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_fasync_free(ptr noundef %fasync) #0 align 16 !dbg !5270 {
entry:
  %fasync.addr = alloca ptr, align 8
  store ptr %fasync, ptr %fasync.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fasync.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load ptr, ptr %fasync.addr, align 8, !dbg !5276
  %tobool = icmp ne ptr %0, null, !dbg !5276
  br i1 %tobool, label %if.end, label %if.then, !dbg !5278

if.then:                                          ; preds = %entry
  br label %return, !dbg !5279

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fasync.addr, align 8, !dbg !5280
  %on = getelementptr inbounds %struct.snd_fasync, ptr %1, i32 0, i32 3, !dbg !5281
  store i32 0, ptr %on, align 8, !dbg !5282
  %call = call zeroext i1 @flush_work(ptr noundef @snd_fasync_work) #13, !dbg !5283
  %2 = load ptr, ptr %fasync.addr, align 8, !dbg !5284
  call void @kfree(ptr noundef %2) #13, !dbg !5285
  br label %return, !dbg !5286

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5286
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5287 dso_local zeroext i1 @flush_work(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5288 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5290, metadata !DIExpression()), !dbg !5295
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5291, metadata !DIExpression()), !dbg !5296
  %0 = load i64, ptr %size.addr, align 8, !dbg !5297
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5298
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5299

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5300
  %tobool = icmp ne i64 %2, 0, !dbg !5300
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5301

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5292, metadata !DIExpression()), !dbg !5303
  %3 = load i64, ptr %size.addr, align 8, !dbg !5304
  %cmp = icmp ugt i64 %3, 8192, !dbg !5306
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5307

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5308
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5309
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !5310
  store ptr %call, ptr %retval, align 8, !dbg !5311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5311

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5312
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !5312
  store i32 %call2, ptr %index, align 4, !dbg !5313
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5314
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5315
  %9 = ptrtoint ptr %8 to i64, !dbg !5315
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !5316
  %idxprom = zext i32 %call3 to i64, !dbg !5317
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5317
  %10 = load i32, ptr %index, align 4, !dbg !5318
  %idxprom4 = zext i32 %10 to i64, !dbg !5317
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5317
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5317
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5319
  %13 = load i64, ptr %size.addr, align 8, !dbg !5320
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !5321
  store ptr %call6, ptr %retval, align 8, !dbg !5322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5322

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !5323
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5324
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5325
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !5326
  store ptr %call8, ptr %retval, align 8, !dbg !5327
  br label %return, !dbg !5327

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5328
  ret ptr %16, !dbg !5328
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5329 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !5330 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5334, metadata !DIExpression()), !dbg !5336
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5335, metadata !DIExpression()), !dbg !5337
  %0 = load i64, ptr %size.addr, align 8, !dbg !5338
  %tobool = icmp ne i64 %0, 0, !dbg !5338
  br i1 %tobool, label %if.end, label %if.then, !dbg !5340

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5341
  br label %return, !dbg !5341

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5342
  %cmp = icmp ule i64 %1, 8, !dbg !5344
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5345

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5347
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5349
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5350

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5351
  %cmp4 = icmp ule i64 %3, 96, !dbg !5352
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5353

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5354
  br label %return, !dbg !5354

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5355
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5357
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5358

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5359
  %cmp9 = icmp ule i64 %5, 192, !dbg !5360
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5361

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5362
  br label %return, !dbg !5362

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5363
  %cmp12 = icmp ule i64 %6, 8, !dbg !5365
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5366

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5367
  br label %return, !dbg !5367

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5368
  %cmp15 = icmp ule i64 %7, 16, !dbg !5370
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5371

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5373
  %cmp18 = icmp ule i64 %8, 32, !dbg !5375
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5376

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5378
  %cmp21 = icmp ule i64 %9, 64, !dbg !5380
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5381

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5382
  br label %return, !dbg !5382

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5383
  %cmp24 = icmp ule i64 %10, 128, !dbg !5385
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5386

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5387
  br label %return, !dbg !5387

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5388
  %cmp27 = icmp ule i64 %11, 256, !dbg !5390
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5391

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5392
  br label %return, !dbg !5392

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5393
  %cmp30 = icmp ule i64 %12, 512, !dbg !5395
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5396

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5397
  br label %return, !dbg !5397

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5398
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5400
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5401

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5403
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5405
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5406

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5407
  br label %return, !dbg !5407

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5408
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5410
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5411

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5412
  br label %return, !dbg !5412

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5413
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5415
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5416

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5418
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5420
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5421

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5423
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5425
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5426

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5428
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5430
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5431

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5433
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5435
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5436

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5437
  br label %return, !dbg !5437

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5438
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5440
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5441

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5443
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5445
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5446

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5448
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5450
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5451

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5452
  br label %return, !dbg !5452

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5453
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5455
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5456

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5457
  br label %return, !dbg !5457

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5458, !range !5460, !noundef !1211
  %tobool69 = trunc i8 %25 to i1, !dbg !5458
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5461

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5462

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #17, !dbg !5463, !srcloc !5466
  unreachable, !dbg !5463

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5467

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5468

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5469

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5471

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5469

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !5473, !srcloc !5475
  br label %do.end75, !dbg !5473

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5469

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5476
  br label %return, !dbg !5476

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5477
  ret i32 %26, !dbg !5477
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5478 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5484 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5488, metadata !DIExpression()), !dbg !5490
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5489, metadata !DIExpression()), !dbg !5491
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5492
  %and = and i32 %0, 17, !dbg !5492
  %cmp = icmp eq i32 %and, 0, !dbg !5492
  %lnot = xor i1 %cmp, true, !dbg !5492
  %lnot1 = xor i1 %lnot, true, !dbg !5492
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5492
  %conv = sext i32 %lnot.ext to i64, !dbg !5492
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5492
  %tobool = icmp ne i64 %expval, 0, !dbg !5492
  br i1 %tobool, label %if.then, label %if.end, !dbg !5494

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5496
  %and2 = and i32 %1, 1, !dbg !5498
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5498
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5499

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5500
  br label %return, !dbg !5500

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5501
  br label %return, !dbg !5501

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5503
  ret i32 %2, !dbg !5503
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5504 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5505 dso_local void @__compiletime_assert_117() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5506 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5509 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5510 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5514
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13, !dbg !5516
  br i1 %call, label %if.end, label %if.then, !dbg !5517

if.then:                                          ; preds = %entry
  br label %return, !dbg !5518

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5519
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5520
  %2 = load ptr, ptr %prev, align 8, !dbg !5520
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5521
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5522
  %4 = load ptr, ptr %next, align 8, !dbg !5522
  call void @__list_del(ptr noundef %2, ptr noundef %4) #13, !dbg !5523
  br label %return, !dbg !5524

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5525 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5527, metadata !DIExpression()), !dbg !5529
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5528, metadata !DIExpression()), !dbg !5530
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5531
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5532
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5533
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5534
  %3 = load ptr, ptr %next, align 8, !dbg !5534
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #13, !dbg !5535
  ret void, !dbg !5536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5537 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  ret i1 true, !dbg !5543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5544 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5546, metadata !DIExpression()), !dbg !5548
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5547, metadata !DIExpression()), !dbg !5549
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5550
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5551
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5552
  store ptr %0, ptr %prev1, align 8, !dbg !5553
  br label %do.body, !dbg !5554

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5555

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5557

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5555

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5559
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5559
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5559
  store volatile ptr %2, ptr %next4, align 8, !dbg !5559
  br label %do.end5, !dbg !5559

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5555

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5562 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5566, metadata !DIExpression()), !dbg !5569
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5567, metadata !DIExpression()), !dbg !5570
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5568, metadata !DIExpression()), !dbg !5571
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5572
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5574
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5575
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13, !dbg !5576
  br i1 %call, label %if.end, label %if.then, !dbg !5577

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5578

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5579
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5580
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5581
  store ptr %3, ptr %prev1, align 8, !dbg !5582
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5583
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5584
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5585
  store ptr %5, ptr %next2, align 8, !dbg !5586
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5587
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5588
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5589
  store ptr %7, ptr %prev3, align 8, !dbg !5590
  br label %do.body, !dbg !5591

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5592

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5594

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5592

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5596
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5596
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5596
  store volatile ptr %9, ptr %next6, align 8, !dbg !5596
  br label %do.end7, !dbg !5596

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5592

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5599 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5603, metadata !DIExpression()), !dbg !5606
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5604, metadata !DIExpression()), !dbg !5607
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5605, metadata !DIExpression()), !dbg !5608
  ret i1 true, !dbg !5609
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #5 align 16 !dbg !5610 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5614, metadata !DIExpression()), !dbg !5616
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5615, metadata !DIExpression()), !dbg !5617
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5618
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5619
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #13, !dbg !5620
  ret i1 %call, !dbg !5621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5622 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_fasync_work_fn(ptr noundef %work) #0 align 16 !dbg !5625 {
entry:
  %work.addr = alloca ptr, align 8
  %fasync = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5627, metadata !DIExpression()), !dbg !5632
  call void @llvm.lifetime.start.p0(i64 8, ptr %fasync) #14, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %fasync, metadata !5628, metadata !DIExpression()), !dbg !5634
  call void @spin_lock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5635
  br label %while.cond, !dbg !5636

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @list_empty(ptr noundef @snd_fasync_list) #13, !dbg !5637
  %tobool = icmp ne i32 %call, 0, !dbg !5638
  %lnot = xor i1 %tobool, true, !dbg !5638
  br i1 %lnot, label %while.body, label %while.end, !dbg !5636

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5629, metadata !DIExpression()), !dbg !5639
  %0 = load ptr, ptr @snd_fasync_list, align 8, !dbg !5639
  store ptr %0, ptr %__mptr, align 8, !dbg !5639
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5639
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !5639
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5640
  %2 = load ptr, ptr %tmp, align 8, !dbg !5639
  store ptr %2, ptr %fasync, align 8, !dbg !5641
  %3 = load ptr, ptr %fasync, align 8, !dbg !5642
  %list = getelementptr inbounds %struct.snd_fasync, ptr %3, i32 0, i32 4, !dbg !5643
  call void @list_del_init(ptr noundef %list) #13, !dbg !5644
  call void @spin_unlock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5645
  %4 = load ptr, ptr %fasync, align 8, !dbg !5646
  %on = getelementptr inbounds %struct.snd_fasync, ptr %4, i32 0, i32 3, !dbg !5648
  %5 = load i32, ptr %on, align 8, !dbg !5648
  %tobool1 = icmp ne i32 %5, 0, !dbg !5646
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5649

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %fasync, align 8, !dbg !5650
  %fasync2 = getelementptr inbounds %struct.snd_fasync, ptr %6, i32 0, i32 0, !dbg !5651
  %7 = load ptr, ptr %fasync, align 8, !dbg !5652
  %signal = getelementptr inbounds %struct.snd_fasync, ptr %7, i32 0, i32 1, !dbg !5653
  %8 = load i32, ptr %signal, align 8, !dbg !5653
  %9 = load ptr, ptr %fasync, align 8, !dbg !5654
  %poll = getelementptr inbounds %struct.snd_fasync, ptr %9, i32 0, i32 2, !dbg !5655
  %10 = load i32, ptr %poll, align 4, !dbg !5655
  call void @kill_fasync(ptr noundef %fasync2, i32 noundef %8, i32 noundef %10) #13, !dbg !5656
  br label %if.end, !dbg !5656

if.end:                                           ; preds = %if.then, %while.body
  call void @spin_lock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5657
  br label %while.cond, !dbg !5636, !llvm.loop !5658

while.end:                                        ; preds = %while.cond
  call void @spin_unlock_irq(ptr noundef @snd_fasync_lock) #13, !dbg !5660
  call void @llvm.lifetime.end.p0(i64 8, ptr %fasync) #14, !dbg !5661
  ret void, !dbg !5661
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !5662 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  br label %do.body, !dbg !5670

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5672

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5670
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5670
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5670
  store ptr %1, ptr %tmp, align 8, !dbg !5672
  %2 = load ptr, ptr %tmp, align 8, !dbg !5670
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5674
  %cmp = icmp eq ptr %2, %3, !dbg !5675
  %conv = zext i1 %cmp to i32, !dbg !5675
  ret i32 %conv, !dbg !5676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #5 align 16 !dbg !5677 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5681
  call void @__list_del_entry(ptr noundef %0) #13, !dbg !5682
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5683
  call void @INIT_LIST_HEAD(ptr noundef %1) #13, !dbg !5684
  ret void, !dbg !5685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5686 dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5689 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #2 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178}
!llvm.ident = !{!4179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_release_and_free_resource269", scope: !2, file: !3, line: 37, type: !183, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22misc\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/misc.ll sound/core/misc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182, globals: !4149, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "124b16eb18bf2ef42893fba7f774f090")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !156}
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
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 364, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!151 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!152 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!153 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!154 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!155 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 30, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!159 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!160 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!161 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!162 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!163 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!164 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!165 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!166 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!167 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!168 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!169 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!170 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!171 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!172 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!173 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!174 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!175 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!176 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!177 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!178 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!179 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!180 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!181 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!182 = !{!183, !184, !186, !187, !194, !4147}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !185, line: 154, baseType: !7)
!185 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!186 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !185, line: 190, size: 128, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !185, line: 191, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !185, line: 191, baseType: !189, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_fasync", file: !3, line: 160, size: 320, elements: !196)
!196 = !{!197, !4143, !4144, !4145, !4146}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !195, file: !3, line: 161, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !200)
!200 = !{!201, !254, !255, !256, !257, !4142}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !199, file: !14, line: 1084, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !203, line: 34, baseType: !204)
!203 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 25, size: 64, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !204, file: !203, line: 26, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !208, line: 27, baseType: !209)
!208 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !208, line: 13, size: 64, elements: !210)
!210 = !{!211, !232}
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !208, line: 14, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !208, line: 14, size: 32, elements: !213)
!213 = !{!214, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !212, file: !208, line: 15, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !185, line: 174, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 172, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !216, file: !185, line: 173, baseType: !109, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !208, line: 16, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !212, file: !208, line: 16, size: 32, elements: !221)
!221 = !{!222, !228}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !220, file: !208, line: 18, baseType: !223, size: 8)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !224, line: 17, baseType: !225)
!224 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !226, line: 21, baseType: !227)
!226 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !220, file: !208, line: 19, baseType: !229, size: 24, offset: 8)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 24, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 3)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !209, file: !208, line: 26, baseType: !233, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !234, line: 44, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !234, line: 14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !234, line: 15, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !234, line: 15, size: 32, elements: !239)
!239 = !{!240, !241, !246}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !234, line: 16, baseType: !215, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 24, baseType: !242, size: 16)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 24, size: 16, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !242, file: !234, line: 25, baseType: !223, size: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !242, file: !234, line: 26, baseType: !223, size: 8, offset: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 28, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 28, size: 32, elements: !248)
!248 = !{!249, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !247, file: !234, line: 29, baseType: !250, size: 16)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !224, line: 19, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !226, line: 24, baseType: !252)
!252 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !247, file: !234, line: 30, baseType: !250, size: 16, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !199, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !199, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !199, file: !14, line: 1087, baseType: !198, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !199, file: !14, line: 1088, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !260)
!260 = !{!261, !280, !293, !295, !305, !318, !322, !323, !382, !609, !618, !4132, !4133, !4134, !4135, !4136, !4137, !4139, !4140, !4141}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !14, line: 995, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !14, line: 995, size: 128, elements: !263)
!263 = !{!264, !270, !279}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !262, file: !14, line: 996, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !266, line: 60, size: 64, elements: !267)
!266 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !266, line: 61, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !262, file: !14, line: 997, baseType: !271, size: 128, align: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !185, line: 232, size: 128, align: 64, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !185, line: 233, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !271, file: !185, line: 234, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !274}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !262, file: !14, line: 998, baseType: !7, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !259, file: !14, line: 1005, baseType: !281, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !282, line: 29, baseType: !283)
!282 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !282, line: 17, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !282, line: 18, baseType: !286, size: 32)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !282, line: 18, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !286, file: !282, line: 19, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !290, line: 14, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !289, file: !290, line: 15, baseType: !233, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !259, file: !14, line: 1006, baseType: !294, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !185, line: 156, baseType: !7)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !259, file: !14, line: 1007, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !297, line: 13, baseType: !298)
!297 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !185, line: 181, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 179, size: 64, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !299, file: !185, line: 180, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !224, line: 22, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !226, line: 30, baseType: !304)
!304 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !259, file: !14, line: 1008, baseType: !306, size: 256, offset: 256)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !307, line: 66, size: 256, elements: !308)
!307 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!308 = !{!309, !310, !312, !317}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !306, file: !307, line: 67, baseType: !296, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !306, file: !307, line: 68, baseType: !311, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !290, line: 23, baseType: !289)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !306, file: !307, line: 70, baseType: !313, size: 32, offset: 96)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !314, line: 15, size: 32, elements: !315)
!314 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !313, file: !314, line: 20, baseType: !215, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !306, file: !307, line: 72, baseType: !190, size: 128, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !259, file: !14, line: 1009, baseType: !319, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !185, line: 52, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !321, line: 88, baseType: !304)
!321 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !259, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !259, file: !14, line: 1011, baseType: !324, size: 256, offset: 640)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !325)
!325 = !{!326, !327, !371, !372, !380, !381}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !324, file: !14, line: 949, baseType: !202, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !324, file: !14, line: 950, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !330)
!330 = !{!331, !337, !338, !339, !352, !353, !360, !361}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !329, file: !30, line: 61, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !333, line: 113, baseType: !334)
!333 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !333, line: 111, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !334, file: !333, line: 112, baseType: !215, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !329, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !329, file: !30, line: 63, baseType: !281, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !329, file: !30, line: 65, baseType: !340, size: 256, offset: 128)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 256, elements: !350)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !185, line: 194, size: 64, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !341, file: !185, line: 195, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !185, line: 198, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !185, line: 199, baseType: !344, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !345, file: !185, line: 199, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!350 = !{!351}
!351 = !DISubrange(count: 4)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !329, file: !30, line: 66, baseType: !341, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !329, file: !30, line: 68, baseType: !354, size: 192, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !355, line: 41, baseType: !356)
!355 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !355, line: 37, size: 192, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !356, file: !355, line: 38, baseType: !281, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !356, file: !355, line: 39, baseType: !190, size: 128, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !329, file: !30, line: 69, baseType: !271, size: 128, align: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !329, file: !30, line: 70, baseType: !362, offset: 768)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, elements: !369)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !363, file: !30, line: 55, baseType: !109, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !363, file: !30, line: 56, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!369 = !{!370}
!370 = !DISubrange(count: -1)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !324, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !324, file: !14, line: 952, baseType: !373, size: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !374, line: 23, baseType: !375)
!374 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 21, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !375, file: !374, line: 22, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !185, line: 37, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !321, line: 49, baseType: !7)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !324, file: !14, line: 952, baseType: !373, size: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !324, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !259, file: !14, line: 1012, baseType: !383, size: 64, offset: 896)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !386, line: 110, size: 1472, elements: !387)
!386 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!387 = !{!388, !389, !390, !397, !398, !399, !400, !401, !402, !403, !404, !413, !414, !415, !416, !417, !418, !554, !555, !556, !557, !558, !589, !592, !596, !604}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !385, file: !386, line: 111, baseType: !296, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !385, file: !386, line: 112, baseType: !373, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !385, file: !386, line: 113, baseType: !391, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !374, line: 28, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 26, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !374, line: 27, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !185, line: 38, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !321, line: 50, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !385, file: !386, line: 114, baseType: !373, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !385, file: !386, line: 115, baseType: !391, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !385, file: !386, line: 116, baseType: !373, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !385, file: !386, line: 117, baseType: !391, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !385, file: !386, line: 118, baseType: !373, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !385, file: !386, line: 119, baseType: !391, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !385, file: !386, line: 120, baseType: !7, size: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !385, file: !386, line: 121, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !406, line: 24, baseType: !407)
!406 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 24, size: 64, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !406, line: 24, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !224, line: 23, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !226, line: 31, baseType: !412)
!412 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !385, file: !386, line: 122, baseType: !405, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !385, file: !386, line: 123, baseType: !405, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !385, file: !386, line: 124, baseType: !405, size: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !385, file: !386, line: 125, baseType: !405, size: 64, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !385, file: !386, line: 127, baseType: !227, size: 8, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !385, file: !386, line: 129, baseType: !419, size: 64, offset: 768)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !421, line: 195, size: 1728, elements: !422)
!421 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!422 = !{!423, !424, !429, !441, !450, !453, !454, !461, !462, !463, !464, !469, !470, !471, !473, !474, !518, !539}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !420, file: !421, line: 196, baseType: !332, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !420, file: !421, line: 197, baseType: !425, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !421, line: 28, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !185, line: 104, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !224, line: 20, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !226, line: 26, baseType: !109)
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 198, baseType: !430, size: 192, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 198, size: 192, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !430, file: !421, line: 199, baseType: !190, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !430, file: !421, line: 200, baseType: !434, size: 192, align: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !435, line: 5, size: 192, align: 64, elements: !436)
!435 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!436 = !{!437, !438, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !434, file: !435, line: 6, baseType: !186, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !434, file: !435, line: 7, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !434, file: !435, line: 8, baseType: !439, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !420, file: !421, line: 205, baseType: !442, size: 320, offset: 256)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !443, line: 48, size: 320, elements: !444)
!443 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!444 = !{!445, !446, !447, !448, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !442, file: !443, line: 49, baseType: !296, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !442, file: !443, line: 55, baseType: !296, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !442, file: !443, line: 57, baseType: !313, size: 32, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !442, file: !443, line: 59, baseType: !311, size: 32, offset: 160)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !442, file: !443, line: 60, baseType: !190, size: 128, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !420, file: !421, line: 206, baseType: !451, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !421, line: 206, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !420, file: !421, line: 207, baseType: !183, size: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 208, baseType: !455, size: 64, offset: 704)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 208, size: 64, elements: !456)
!456 = !{!457, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !455, file: !421, line: 209, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !459, line: 8, baseType: !303)
!459 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !455, file: !421, line: 210, baseType: !458, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !420, file: !421, line: 212, baseType: !458, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !420, file: !421, line: 213, baseType: !373, size: 32, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !420, file: !421, line: 214, baseType: !391, size: 32, offset: 864)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !420, file: !421, line: 215, baseType: !465, size: 32, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !421, line: 31, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !185, line: 110, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !224, line: 21, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !226, line: 27, baseType: !7)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !420, file: !421, line: 216, baseType: !252, size: 16, offset: 928)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !420, file: !421, line: 217, baseType: !252, size: 16, offset: 944)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !421, line: 221, baseType: !472, size: 16, offset: 960)
!472 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !421, line: 228, baseType: !186, size: 64, offset: 1024)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 245, baseType: !475, size: 320, offset: 1088)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 245, size: 320, elements: !476)
!476 = !{!477, !509}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !475, file: !421, line: 246, baseType: !478, size: 320)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !421, line: 114, size: 320, elements: !479)
!479 = !{!480, !481, !494, !497, !506}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !478, file: !421, line: 116, baseType: !186, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !421, line: 117, baseType: !482, size: 64, offset: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !421, line: 117, size: 64, elements: !483)
!483 = !{!484, !493}
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !421, line: 118, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !421, line: 118, size: 64, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !485, file: !421, line: 120, baseType: !250, size: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !485, file: !421, line: 121, baseType: !489, size: 48, offset: 16)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 48, elements: !491)
!490 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!491 = !{!492}
!492 = !DISubrange(count: 6)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !482, file: !421, line: 127, baseType: !186, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !421, line: 129, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !421, line: 102, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !478, file: !421, line: 130, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !421, line: 108, size: 192, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !499, file: !421, line: 109, baseType: !271, size: 128, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !499, file: !421, line: 110, baseType: !332, size: 32, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !499, file: !421, line: 111, baseType: !504, size: 8, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !185, line: 35, baseType: !505)
!505 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !478, file: !421, line: 131, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !421, line: 247, baseType: !510, size: 320)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !421, line: 247, size: 320, elements: !511)
!511 = !{!512, !513, !514, !515, !516}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !510, file: !421, line: 248, baseType: !186, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !510, file: !421, line: 249, baseType: !186, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !421, line: 250, baseType: !495, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !510, file: !421, line: 251, baseType: !498, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !510, file: !421, line: 252, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !421, line: 260, baseType: !519, size: 256, offset: 1408)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !421, line: 260, size: 256, elements: !520)
!520 = !{!521, !527}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !519, file: !421, line: 261, baseType: !522, size: 256)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !421, line: 134, size: 256, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !522, file: !421, line: 135, baseType: !183, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !522, file: !421, line: 136, baseType: !526, size: 256)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !350)
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !421, line: 262, baseType: !528, size: 256)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !421, line: 262, size: 256, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !528, file: !421, line: 264, baseType: !190, size: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !528, file: !421, line: 265, baseType: !532, size: 128, offset: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !533, line: 22, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !532, file: !533, line: 23, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !533, line: 23, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !532, file: !533, line: 24, baseType: !186, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !420, file: !421, line: 280, baseType: !540, size: 64, offset: 1664)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !421, line: 176, size: 192, elements: !542)
!542 = !{!543, !552, !553}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !541, file: !421, line: 177, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !421, line: 171, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!109, !419, !548, !550, !419}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !541, file: !421, line: 178, baseType: !419, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !541, file: !421, line: 179, baseType: !495, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !385, file: !386, line: 130, baseType: !419, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !385, file: !386, line: 131, baseType: !419, size: 64, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !385, file: !386, line: 132, baseType: !419, size: 64, offset: 960)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !385, file: !386, line: 135, baseType: !183, size: 64, offset: 1024)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !385, file: !386, line: 137, baseType: !559, size: 64, offset: 1088)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !561, line: 14, size: 1088, elements: !562)
!561 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!562 = !{!563, !564, !573, !574, !575, !576, !577, !578}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !560, file: !561, line: 15, baseType: !332, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !560, file: !561, line: 17, baseType: !565, size: 320, offset: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !566, line: 22, size: 320, elements: !567)
!566 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!567 = !{!568, !569, !570, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !565, file: !566, line: 23, baseType: !311, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !565, file: !566, line: 24, baseType: !302, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !565, file: !566, line: 26, baseType: !190, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !565, file: !566, line: 28, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !560, file: !561, line: 19, baseType: !186, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !560, file: !561, line: 20, baseType: !296, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !560, file: !561, line: 23, baseType: !345, size: 128, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !560, file: !561, line: 24, baseType: !373, size: 32, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !560, file: !561, line: 29, baseType: !296, size: 64, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !560, file: !561, line: 36, baseType: !579, size: 320, offset: 768)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !580, line: 15, size: 320, elements: !581)
!580 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !580, line: 16, baseType: !311, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !579, file: !580, line: 18, baseType: !109, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !579, file: !580, line: 19, baseType: !109, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !579, file: !580, line: 20, baseType: !109, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !579, file: !580, line: 21, baseType: !109, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !579, file: !580, line: 22, baseType: !186, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !580, line: 23, baseType: !186, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !385, file: !386, line: 138, baseType: !590, size: 64, offset: 1152)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !385, file: !386, line: 139, baseType: !593, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !595, line: 16, flags: DIFlagFwdDecl)
!595 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !385, file: !386, line: 140, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !386, line: 25, size: 64, elements: !599)
!599 = !{!600, !601, !602}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !598, file: !386, line: 26, baseType: !215, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !598, file: !386, line: 27, baseType: !109, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !598, file: !386, line: 28, baseType: !603, offset: 64)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, elements: !369)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !386, line: 142, baseType: !605, size: 128, offset: 1344)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 142, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !605, file: !386, line: 143, baseType: !109, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !605, file: !386, line: 144, baseType: !271, size: 128, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !259, file: !14, line: 1013, baseType: !610, size: 256, offset: 960)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !610, file: !14, line: 971, baseType: !186, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !610, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !610, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !610, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !610, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !610, file: !14, line: 976, baseType: !319, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !259, file: !14, line: 1014, baseType: !619, size: 128, offset: 1216)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !620, line: 8, size: 128, elements: !621)
!620 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!621 = !{!622, !4131}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !619, file: !620, line: 9, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !625, line: 70, size: 256, elements: !626)
!625 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!626 = !{!627, !4128, !4129, !4130}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !624, file: !625, line: 71, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !630, line: 82, size: 1536, elements: !631)
!630 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!631 = !{!632, !633, !643, !651, !652, !667, !4095, !4097, !4110, !4111, !4112, !4113, !4114, !4120, !4121, !4122}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !629, file: !630, line: 84, baseType: !7, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !629, file: !630, line: 85, baseType: !634, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !635, line: 275, baseType: !636)
!635 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !635, line: 275, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !636, file: !635, line: 275, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !635, line: 69, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !635, line: 64, size: 32, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !640, file: !635, line: 65, baseType: !7, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !629, file: !630, line: 86, baseType: !644, size: 128, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !645, line: 38, size: 128, elements: !646)
!645 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!646 = !{!647, !649}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !645, line: 39, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !644, file: !645, line: 39, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !629, file: !630, line: 87, baseType: !628, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !629, file: !630, line: 88, baseType: !653, size: 128, offset: 256)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !630, line: 49, size: 128, elements: !654)
!654 = !{!655, !664}
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !630, line: 50, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !630, line: 50, size: 64, elements: !657)
!657 = !{!658, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !630, line: 51, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !630, line: 51, size: 64, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !659, file: !630, line: 52, baseType: !467, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !659, file: !630, line: 52, baseType: !467, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !656, file: !630, line: 54, baseType: !410, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !630, line: 56, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !629, file: !630, line: 89, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !670)
!670 = !{!671, !673, !674, !675, !676, !677, !678, !681, !682, !879, !3911, !3912, !3913, !3914, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !4077, !4080, !4081, !4082, !4091, !4092, !4093, !4094}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !669, file: !14, line: 642, baseType: !672, size: 16)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !185, line: 24, baseType: !252)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !669, file: !14, line: 643, baseType: !252, size: 16, offset: 16)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !669, file: !14, line: 644, baseType: !373, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !669, file: !14, line: 645, baseType: !190, size: 128, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !669, file: !14, line: 646, baseType: !391, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !669, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !669, file: !14, line: 650, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !669, file: !14, line: 651, baseType: !679, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !669, file: !14, line: 654, baseType: !683, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !686)
!686 = !{!687, !691, !704, !710, !714, !718, !722, !726, !730, !734, !738, !739, !745, !749, !787, !818, !828, !834, !838, !842, !846, !850, !854, !860, !864}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !685, file: !14, line: 1967, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!628, !668, !628, !7}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !685, file: !14, line: 1968, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!507, !628, !668, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !697, line: 10, size: 128, elements: !698)
!697 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!698 = !{!699, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !696, file: !697, line: 11, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !183}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !696, file: !697, line: 12, baseType: !183, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !685, file: !14, line: 1969, baseType: !705, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!109, !708, !668, !109}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !406, line: 42, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !685, file: !14, line: 1970, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!679, !668, !109, !504}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !685, file: !14, line: 1972, baseType: !715, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!109, !628, !517, !109}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !685, file: !14, line: 1974, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!109, !708, !668, !628, !672, !504}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !685, file: !14, line: 1976, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!109, !628, !668, !628}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !685, file: !14, line: 1977, baseType: !727, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!109, !668, !628}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !685, file: !14, line: 1978, baseType: !731, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!109, !708, !668, !628, !507}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !685, file: !14, line: 1980, baseType: !735, size: 64, offset: 576)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!109, !708, !668, !628, !672}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !685, file: !14, line: 1982, baseType: !727, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !685, file: !14, line: 1983, baseType: !740, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!109, !708, !668, !628, !672, !743}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !185, line: 21, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !185, line: 18, baseType: !467)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !685, file: !14, line: 1985, baseType: !746, size: 64, offset: 768)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!109, !708, !668, !628, !668, !628, !7}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !685, file: !14, line: 1987, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!109, !708, !628, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !755)
!755 = !{!756, !757, !758, !768, !777, !778, !784, !785, !786}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !754, file: !14, line: 227, baseType: !7, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !754, file: !14, line: 228, baseType: !672, size: 16, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !14, line: 241, baseType: !759, size: 32, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !14, line: 241, size: 32, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !759, file: !14, line: 242, baseType: !373, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !759, file: !14, line: 243, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !764, line: 16, baseType: !765)
!764 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 14, size: 32, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !765, file: !764, line: 15, baseType: !378, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !14, line: 245, baseType: !769, size: 32, offset: 96)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !14, line: 245, size: 32, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !769, file: !14, line: 246, baseType: !391, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !769, file: !14, line: 247, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !764, line: 20, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 18, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !774, file: !764, line: 19, baseType: !395, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !754, file: !14, line: 249, baseType: !319, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !754, file: !14, line: 250, baseType: !779, size: 128, offset: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !459, line: 13, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !779, file: !459, line: 14, baseType: !458, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !779, file: !459, line: 15, baseType: !783, size: 64, offset: 64)
!783 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !754, file: !14, line: 251, baseType: !779, size: 128, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !754, file: !14, line: 252, baseType: !779, size: 128, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !754, file: !14, line: 259, baseType: !258, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !685, file: !14, line: 1988, baseType: !788, size: 64, offset: 896)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!109, !708, !791, !793, !467, !7}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !795, line: 22, size: 1280, elements: !796)
!795 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !794, file: !795, line: 23, baseType: !467, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !794, file: !795, line: 24, baseType: !672, size: 16, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !794, file: !795, line: 25, baseType: !7, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !794, file: !795, line: 26, baseType: !466, size: 32, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !794, file: !795, line: 27, baseType: !410, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !794, file: !795, line: 28, baseType: !410, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !794, file: !795, line: 41, baseType: !410, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !794, file: !795, line: 42, baseType: !743, size: 32, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !794, file: !795, line: 43, baseType: !743, size: 32, offset: 352)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !794, file: !795, line: 44, baseType: !373, size: 32, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !794, file: !795, line: 45, baseType: !391, size: 32, offset: 416)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !795, line: 46, baseType: !319, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !794, file: !795, line: 47, baseType: !779, size: 128, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !794, file: !795, line: 48, baseType: !779, size: 128, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !794, file: !795, line: 49, baseType: !779, size: 128, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !794, file: !795, line: 50, baseType: !779, size: 128, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !794, file: !795, line: 51, baseType: !410, size: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !794, file: !795, line: 52, baseType: !410, size: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !794, file: !795, line: 53, baseType: !467, size: 32, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !794, file: !795, line: 54, baseType: !467, size: 32, offset: 1184)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !794, file: !795, line: 55, baseType: !410, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !685, file: !14, line: 1990, baseType: !819, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!822, !628, !517, !825}
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !185, line: 66, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !321, line: 73, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !321, line: 15, baseType: !783)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 61, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !321, line: 72, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !321, line: 16, baseType: !186)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !685, file: !14, line: 1991, baseType: !829, size: 64, offset: 1024)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!109, !668, !832, !410, !410}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !685, file: !14, line: 1993, baseType: !835, size: 64, offset: 1088)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!109, !668, !109}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !685, file: !14, line: 1994, baseType: !839, size: 64, offset: 1152)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!109, !668, !628, !258, !7, !672}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !685, file: !14, line: 1997, baseType: !843, size: 64, offset: 1216)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!109, !708, !668, !258, !672}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !685, file: !14, line: 1999, baseType: !847, size: 64, offset: 1280)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!679, !708, !628, !109}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !685, file: !14, line: 2001, baseType: !851, size: 64, offset: 1344)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!109, !708, !628, !679, !109}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !685, file: !14, line: 2003, baseType: !855, size: 64, offset: 1408)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!109, !708, !628, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !685, file: !14, line: 2005, baseType: !861, size: 64, offset: 1472)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!109, !628, !858}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !685, file: !14, line: 2006, baseType: !865, size: 64, offset: 1536)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !668}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !870)
!870 = !{!871, !878}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !869, file: !14, line: 3193, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !873, line: 296, size: 128, elements: !874)
!873 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !872, file: !873, line: 297, baseType: !281, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !872, file: !873, line: 299, baseType: !184, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !872, file: !873, line: 300, baseType: !183, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !869, file: !14, line: 3194, baseType: !467, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !669, file: !14, line: 655, baseType: !880, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !882)
!882 = !{!883, !884, !885, !886, !887, !888, !2240, !2372, !2412, !2495, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2512, !2516, !2517, !2520, !2523, !2526, !2529, !2530, !2531, !2572, !3786, !3787, !3788, !3789, !3790, !3791, !3794, !3796, !3803, !3804, !3805, !3806, !3865, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !881, file: !14, line: 1191, baseType: !190, size: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !881, file: !14, line: 1192, baseType: !743, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !881, file: !14, line: 1193, baseType: !227, size: 8, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !881, file: !14, line: 1194, baseType: !186, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !881, file: !14, line: 1195, baseType: !319, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !881, file: !14, line: 1196, baseType: !889, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !891)
!891 = !{!892, !893, !894, !900, !904, !908, !912, !2228, !2229, !2230, !2232, !2233, !2234, !2236, !2237, !2238, !2239}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !890, file: !14, line: 2367, baseType: !507, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !890, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !890, file: !14, line: 2376, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!109, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !625, line: 21, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !890, file: !14, line: 2377, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !890, file: !14, line: 2378, baseType: !905, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!628, !889, !109, !507, !183}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !890, file: !14, line: 2380, baseType: !909, size: 64, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !880}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !890, file: !14, line: 2381, baseType: !913, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !915)
!915 = !{!916, !917, !918, !922, !1884, !1910, !1911, !1912, !1913, !1917, !1920, !1921, !1922, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1990, !1994, !2014, !2032, !2033, !2034, !2035, !2044, !2067, !2068, !2071, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2085, !2086, !2186, !2194, !2195, !2196, !2198, !2202, !2203, !2207, !2208, !2209, !2210, !2212, !2213, !2214, !2221, !2222, !2223, !2227}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !914, file: !6, line: 403, baseType: !5, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !914, file: !6, line: 406, baseType: !190, size: 128, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !914, file: !6, line: 409, baseType: !919, size: 448, offset: 192)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 448, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 56)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !914, file: !6, line: 417, baseType: !923, size: 768, offset: 640)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !924)
!924 = !{!925, !1877, !1878, !1879, !1882}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !923, file: !6, line: 46, baseType: !926, size: 512)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !927, line: 64, size: 512, elements: !928)
!927 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!928 = !{!929, !930, !931, !933, !977, !1755, !1867, !1872, !1873, !1874, !1875, !1876}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !926, file: !927, line: 65, baseType: !507, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !926, file: !927, line: 66, baseType: !190, size: 128, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !926, file: !927, line: 67, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !926, file: !927, line: 68, baseType: !934, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !927, line: 168, size: 768, elements: !936)
!936 = !{!937, !938, !939, !940}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !935, file: !927, line: 169, baseType: !190, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !935, file: !927, line: 170, baseType: !281, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !935, file: !927, line: 171, baseType: !926, size: 512, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !935, file: !927, line: 172, baseType: !941, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !927, line: 133, size: 192, elements: !944)
!944 = !{!945, !952, !957}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !943, file: !927, line: 134, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!109, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !943, file: !927, line: 135, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!507, !950}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !943, file: !927, line: 136, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!109, !950, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !927, line: 125, size: 20736, elements: !964)
!964 = !{!965, !967, !971, !972, !976}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !963, file: !927, line: 126, baseType: !966, size: 192)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, elements: !230)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !963, file: !927, line: 127, baseType: !968, size: 4096, offset: 192)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 4096, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !963, file: !927, line: 128, baseType: !109, size: 32, offset: 4288)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !963, file: !927, line: 129, baseType: !973, size: 16384, offset: 4320)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 16384, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 2048)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !963, file: !927, line: 130, baseType: !109, size: 32, offset: 20704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !926, file: !927, line: 69, baseType: !978, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !927, line: 116, size: 384, elements: !981)
!981 = !{!982, !986, !1005, !1717, !1745, !1749}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !980, file: !927, line: 117, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !932}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !980, file: !927, line: 118, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !990, line: 254, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!991 = !{!992, !1001}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !989, file: !990, line: 255, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!822, !932, !996, !517}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !990, line: 30, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !997, file: !990, line: 31, baseType: !507, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !997, file: !990, line: 32, baseType: !672, size: 16, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !989, file: !990, line: 256, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!822, !932, !996, !507, !825}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !980, file: !927, line: 119, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !990, line: 84, size: 320, elements: !1010)
!1010 = !{!1011, !1012, !1016, !1713, !1715}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1009, file: !990, line: 85, baseType: !507, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1009, file: !990, line: 86, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!672, !932, !996, !109}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1009, file: !990, line: 88, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!672, !932, !1020, !109}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !990, line: 175, size: 512, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1704, !1708, !1709}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1021, file: !990, line: 176, baseType: !997, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1021, file: !990, line: 177, baseType: !825, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1021, file: !990, line: 178, baseType: !183, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1021, file: !990, line: 179, baseType: !1027, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1046, !1047, !1048, !1696, !1697, !1698, !1701, !1702, !1703}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1031, file: !14, line: 473, baseType: !668, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1031, file: !14, line: 474, baseType: !872, size: 128, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1031, file: !14, line: 475, baseType: !442, size: 320, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1031, file: !14, line: 476, baseType: !184, size: 32, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1031, file: !14, line: 477, baseType: !215, size: 32, offset: 544)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1031, file: !14, line: 482, baseType: !1039, size: 128, offset: 576)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !435, line: 26, size: 128, elements: !1040)
!1040 = !{!1041, !1045}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1039, file: !435, line: 27, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !435, line: 12, size: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1042, file: !435, line: 13, baseType: !439, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1039, file: !435, line: 28, baseType: !439, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1031, file: !14, line: 483, baseType: !186, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1031, file: !14, line: 484, baseType: !186, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1031, file: !14, line: 485, baseType: !1049, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1052)
!1052 = !{!1053, !1521, !1591, !1595, !1599, !1605, !1611, !1615, !1620, !1624, !1628, !1632, !1660, !1664, !1668, !1672, !1677, !1681, !1688, !1692}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1051, file: !14, line: 405, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!109, !1057, !1519}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1059)
!1059 = !{!1060, !1061, !1513, !1518}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1058, file: !38, line: 75, baseType: !186, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !38, line: 83, baseType: !1062, size: 320, offset: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !38, line: 83, size: 320, elements: !1063)
!1063 = !{!1064, !1085, !1099, !1103, !1512}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !38, line: 84, baseType: !1065, size: 320)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !38, line: 84, size: 320, elements: !1066)
!1066 = !{!1067, !1078, !1079, !1084}
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !38, line: 90, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !38, line: 90, size: 128, elements: !1069)
!1069 = !{!1070, !1071, !1076, !1077}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1068, file: !38, line: 91, baseType: !190, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !38, line: 94, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !38, line: 94, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1072, file: !38, line: 96, baseType: !183, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1072, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1068, file: !38, line: 102, baseType: !190, size: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1068, file: !38, line: 103, baseType: !190, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1065, file: !38, line: 106, baseType: !1030, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !38, line: 107, baseType: !1080, size: 64, offset: 192)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !38, line: 107, size: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1080, file: !38, line: 108, baseType: !186, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1080, file: !38, line: 109, baseType: !186, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1065, file: !38, line: 117, baseType: !186, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !38, line: 119, baseType: !1086, size: 320)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !38, line: 119, size: 320, elements: !1087)
!1087 = !{!1088, !1089, !1092, !1093, !1094}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1086, file: !38, line: 124, baseType: !186, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1086, file: !38, line: 125, baseType: !1090, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1086, file: !38, line: 126, baseType: !186, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1086, file: !38, line: 127, baseType: !186, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !38, line: 128, baseType: !1095, size: 64, offset: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !38, line: 128, size: 64, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1095, file: !38, line: 133, baseType: !186, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1095, file: !38, line: 138, baseType: !296, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !38, line: 141, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !38, line: 141, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1100, file: !38, line: 142, baseType: !186, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !38, line: 144, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !38, line: 144, size: 128, elements: !1105)
!1105 = !{!1106, !1511}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1104, file: !38, line: 146, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1109)
!1109 = !{!1110, !1120, !1141, !1152, !1153, !1154, !1155, !1493, !1494, !1495}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1108, file: !54, line: 127, baseType: !1111, size: 384)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1112)
!1112 = !{!1113, !1114, !1116, !1117, !1118, !1119}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1111, file: !54, line: 22, baseType: !186, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1111, file: !54, line: 23, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1111, file: !54, line: 24, baseType: !1115, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1111, file: !54, line: 25, baseType: !186, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1111, file: !54, line: 26, baseType: !186, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1111, file: !54, line: 27, baseType: !186, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1108, file: !54, line: 128, baseType: !1121, size: 128, offset: 384)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1122, line: 105, size: 128, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1121, file: !1122, line: 110, baseType: !186, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1121, file: !1122, line: 118, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1122, line: 95, size: 448, elements: !1128)
!1128 = !{!1129, !1130, !1136, !1137, !1138, !1139, !1140}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1127, file: !1122, line: 96, baseType: !296, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1127, file: !1122, line: 97, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1122, line: 60, baseType: !1133)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1127, file: !1122, line: 98, baseType: !1131, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1127, file: !1122, line: 99, baseType: !504, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1127, file: !1122, line: 100, baseType: !504, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1127, file: !1122, line: 101, baseType: !271, size: 128, align: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1127, file: !1122, line: 102, baseType: !1135, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1108, file: !54, line: 129, baseType: !1142, size: 256, offset: 512)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1143, line: 26, size: 256, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1142, file: !1143, line: 27, baseType: !7, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1142, file: !1143, line: 28, baseType: !1147, size: 192, offset: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1148, line: 43, size: 192, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1147, file: !1148, line: 44, baseType: !311, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1147, file: !1148, line: 45, baseType: !190, size: 128, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1108, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1108, file: !54, line: 132, baseType: !186, size: 64, offset: 832)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1108, file: !54, line: 133, baseType: !1156, size: 64, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1159)
!1159 = !{!1160, !1164, !1489}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1158, file: !54, line: 83, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1057}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1158, file: !54, line: 89, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1171, line: 512, size: 896, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1172 = !{!1173, !1456, !1457, !1464, !1471, !1481, !1482, !1483, !1485, !1487}
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1171, line: 513, baseType: !1174, size: 320)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 513, size: 320, elements: !1175)
!1175 = !{!1176, !1452, !1453, !1454, !1455}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1174, file: !1171, line: 514, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1179)
!1179 = !{!1180, !1189, !1357, !1363, !1370, !1371, !1376, !1377, !1382, !1383, !1386, !1445, !1446, !1447, !1448, !1449, !1450}
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !38, line: 628, baseType: !1181, size: 128)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !38, line: 628, size: 128, elements: !1182)
!1182 = !{!1183, !1188}
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !38, line: 629, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !38, line: 629, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1184, file: !38, line: 631, baseType: !186, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1184, file: !38, line: 632, baseType: !186, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1181, file: !38, line: 635, baseType: !271, size: 128, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1178, file: !38, line: 639, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1192)
!1192 = !{!1193, !1355}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !38, line: 734, baseType: !1194, size: 10240)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !38, line: 734, size: 10240, elements: !1195)
!1195 = !{!1196, !1200, !1214, !1218, !1219, !1220, !1221, !1222, !1223, !1232, !1233, !1234, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1273, !1275, !1278, !1325, !1326, !1327, !1330, !1331, !1332, !1335, !1336, !1337, !1343, !1344}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !38, line: 739, baseType: !1197, size: 512, align: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !38, line: 739, size: 512, align: 512, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1197, file: !38, line: 747, baseType: !215, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1194, file: !38, line: 750, baseType: !1201, size: 128, offset: 512)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1202, line: 218, size: 128, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1203 = !{!1204, !1212, !1213}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 219, baseType: !1205, size: 32)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 219, size: 32, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1205, file: !1202, line: 220, baseType: !281, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1205, file: !1202, line: 221, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1202, line: 197, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 197, elements: !1211)
!1211 = !{}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1201, file: !1202, line: 223, baseType: !7, size: 32, offset: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1201, file: !1202, line: 224, baseType: !183, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1194, file: !38, line: 752, baseType: !1215, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!186, !258, !186, !186, !186, !186}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1194, file: !38, line: 756, baseType: !186, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1194, file: !38, line: 757, baseType: !186, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1194, file: !38, line: 760, baseType: !186, size: 64, offset: 832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1194, file: !38, line: 761, baseType: !186, size: 64, offset: 896)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1194, file: !38, line: 763, baseType: !186, size: 64, offset: 960)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1194, file: !38, line: 764, baseType: !1224, size: 64, offset: 1024)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1226, line: 299, baseType: !1227)
!1226 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 299, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1227, file: !1226, line: 299, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1231, line: 18, baseType: !186)
!1231 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1194, file: !38, line: 773, baseType: !215, size: 32, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1194, file: !38, line: 785, baseType: !215, size: 32, offset: 1120)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1194, file: !38, line: 795, baseType: !1235, size: 64, offset: 1152)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1236, file: !38, line: 727, baseType: !410, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1236, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1194, file: !38, line: 801, baseType: !186, size: 64, offset: 1216)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1194, file: !38, line: 804, baseType: !296, size: 64, offset: 1280)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1194, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1194, file: !38, line: 808, baseType: !281, size: 32, offset: 1376)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1194, file: !38, line: 823, baseType: !442, size: 320, offset: 1408)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1194, file: !38, line: 825, baseType: !190, size: 128, offset: 1728)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1194, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1194, file: !38, line: 849, baseType: !186, size: 64, offset: 1920)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1194, file: !38, line: 850, baseType: !186, size: 64, offset: 1984)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1194, file: !38, line: 852, baseType: !186, size: 64, offset: 2048)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1194, file: !38, line: 853, baseType: !186, size: 64, offset: 2112)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1194, file: !38, line: 854, baseType: !298, size: 64, offset: 2176)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1194, file: !38, line: 855, baseType: !186, size: 64, offset: 2240)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1194, file: !38, line: 856, baseType: !186, size: 64, offset: 2304)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1194, file: !38, line: 857, baseType: !186, size: 64, offset: 2368)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1194, file: !38, line: 858, baseType: !186, size: 64, offset: 2432)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1194, file: !38, line: 865, baseType: !639, size: 32, offset: 2496)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1194, file: !38, line: 867, baseType: !281, size: 32, offset: 2528)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1194, file: !38, line: 869, baseType: !186, size: 64, offset: 2560)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1194, file: !38, line: 869, baseType: !186, size: 64, offset: 2624)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1194, file: !38, line: 869, baseType: !186, size: 64, offset: 2688)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1194, file: !38, line: 869, baseType: !186, size: 64, offset: 2752)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1194, file: !38, line: 870, baseType: !186, size: 64, offset: 2816)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1194, file: !38, line: 870, baseType: !186, size: 64, offset: 2880)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1194, file: !38, line: 870, baseType: !186, size: 64, offset: 2944)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1194, file: !38, line: 871, baseType: !186, size: 64, offset: 3008)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1194, file: !38, line: 871, baseType: !186, size: 64, offset: 3072)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1194, file: !38, line: 871, baseType: !186, size: 64, offset: 3136)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1194, file: !38, line: 871, baseType: !186, size: 64, offset: 3200)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1194, file: !38, line: 873, baseType: !1270, size: 3328, offset: 3264)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 3328, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 52)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1194, file: !38, line: 875, baseType: !1274, size: 1280, offset: 6592)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 1280, elements: !350)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1194, file: !38, line: 877, baseType: !1276, size: 64, offset: 7872)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1194, file: !38, line: 880, baseType: !1279, size: 1088, offset: 7936)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1280, line: 72, baseType: !1281)
!1280 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1280, line: 23, size: 1088, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1290, !1291, !1292, !1293, !1320, !1321, !1322}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1281, file: !1280, line: 28, baseType: !410, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1281, file: !1280, line: 38, baseType: !298, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1281, file: !1280, line: 40, baseType: !186, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1281, file: !1280, line: 43, baseType: !442, size: 320, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1281, file: !1280, line: 44, baseType: !1288, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1280, line: 44, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !1280, line: 48, baseType: !186, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1281, file: !1280, line: 59, baseType: !306, size: 256, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1281, file: !1280, line: 60, baseType: !183, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1281, file: !1280, line: 61, baseType: !1294, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1297, line: 13, size: 1216, elements: !1298)
!1297 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1296, file: !1297, line: 14, baseType: !183, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1296, file: !1297, line: 15, baseType: !186, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1296, file: !1297, line: 17, baseType: !186, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1296, file: !1297, line: 17, baseType: !186, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1296, file: !1297, line: 18, baseType: !186, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1296, file: !1297, line: 18, baseType: !186, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1296, file: !1297, line: 19, baseType: !1306, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1296, file: !1297, line: 21, baseType: !783, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1296, file: !1297, line: 23, baseType: !783, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1296, file: !1297, line: 24, baseType: !783, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1296, file: !1297, line: 25, baseType: !783, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1296, file: !1297, line: 26, baseType: !783, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1296, file: !1297, line: 27, baseType: !783, size: 64, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1296, file: !1297, line: 28, baseType: !783, size: 64, offset: 832)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1296, file: !1297, line: 29, baseType: !783, size: 64, offset: 896)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1296, file: !1297, line: 30, baseType: !783, size: 64, offset: 960)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1296, file: !1297, line: 31, baseType: !783, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1296, file: !1297, line: 32, baseType: !783, size: 64, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1296, file: !1297, line: 33, baseType: !783, size: 64, offset: 1152)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1281, file: !1280, line: 63, baseType: !215, size: 32, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1281, file: !1280, line: 69, baseType: !250, size: 16, offset: 1056)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1281, file: !1280, line: 70, baseType: !1323, size: 16, offset: 1072)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !224, line: 18, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !226, line: 23, baseType: !472)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !38, line: 882, baseType: !186, size: 64, offset: 9024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1194, file: !38, line: 885, baseType: !281, size: 32, offset: 9088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1194, file: !38, line: 886, baseType: !1328, size: 64, offset: 9152)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1194, file: !38, line: 901, baseType: !590, size: 64, offset: 9216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1194, file: !38, line: 904, baseType: !258, size: 64, offset: 9280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1194, file: !38, line: 906, baseType: !1333, size: 64, offset: 9344)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1194, file: !38, line: 930, baseType: !215, size: 32, offset: 9408)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1194, file: !38, line: 933, baseType: !215, size: 32, offset: 9440)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1194, file: !38, line: 935, baseType: !1338, size: 64, offset: 9472)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1338, file: !68, line: 104, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1194, file: !38, line: 940, baseType: !296, size: 64, offset: 9536)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1194, file: !38, line: 942, baseType: !1345, size: 256, offset: 9600)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !157, line: 98, size: 256, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1345, file: !157, line: 99, baseType: !296, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1345, file: !157, line: 100, baseType: !190, size: 128, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1345, file: !157, line: 101, baseType: !1350, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !157, line: 21, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1191, file: !38, line: 986, baseType: !1356, offset: 10240)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, elements: !369)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1178, file: !38, line: 640, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1226, line: 297, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1226, line: 297, size: 64, elements: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1359, file: !1226, line: 297, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1231, line: 19, baseType: !186)
!1363 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !38, line: 646, baseType: !1364, size: 64, offset: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !38, line: 646, size: 64, elements: !1365)
!1365 = !{!1366, !1369}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1364, file: !38, line: 647, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !186)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1364, file: !38, line: 648, baseType: !1368, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1178, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1178, file: !38, line: 667, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1373, file: !38, line: 580, baseType: !442, size: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1178, file: !38, line: 670, baseType: !504, size: 8, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1178, file: !38, line: 681, baseType: !1378, size: 256, offset: 512)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !38, line: 678, size: 256, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1378, file: !38, line: 679, baseType: !434, size: 192, align: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1378, file: !38, line: 680, baseType: !186, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1178, file: !38, line: 689, baseType: !190, size: 128, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1178, file: !38, line: 691, baseType: !1384, size: 64, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1178, file: !38, line: 694, baseType: !1387, size: 64, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1171, line: 563, size: 1024, elements: !1390)
!1390 = !{!1391, !1395, !1396, !1400, !1404, !1408, !1409, !1413, !1417, !1421, !1422, !1423, !1427, !1431, !1437, !1441}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1389, file: !1171, line: 564, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1177}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1389, file: !1171, line: 569, baseType: !1392, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1389, file: !1171, line: 571, baseType: !1397, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!109, !1177, !186}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1389, file: !1171, line: 572, baseType: !1401, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!109, !1177}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1389, file: !1171, line: 578, baseType: !1405, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!109, !1177, !186, !186, !186}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1389, file: !1171, line: 580, baseType: !1165, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1389, file: !1171, line: 581, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1168, !1169, !7}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1389, file: !1171, line: 582, baseType: !1414, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1168, !1169, !186, !186}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1389, file: !1171, line: 584, baseType: !1418, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!186, !1177}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1389, file: !1171, line: 588, baseType: !1165, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1389, file: !1171, line: 591, baseType: !1165, size: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1389, file: !1171, line: 597, baseType: !1424, size: 64, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!109, !1177, !186, !183, !109, !109}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1389, file: !1171, line: 603, baseType: !1428, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!507, !1177}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1389, file: !1171, line: 613, baseType: !1432, size: 64, offset: 832)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!109, !1177, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1389, file: !1171, line: 625, baseType: !1438, size: 64, offset: 896)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1435, !1177, !186}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1389, file: !1171, line: 633, baseType: !1442, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1057, !1177, !186}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1178, file: !38, line: 697, baseType: !186, size: 64, offset: 1024)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1178, file: !38, line: 699, baseType: !258, size: 64, offset: 1088)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1178, file: !38, line: 700, baseType: !183, size: 64, offset: 1152)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1178, file: !38, line: 711, baseType: !296, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1178, file: !38, line: 717, baseType: !1435, size: 64, offset: 1280)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1178, file: !38, line: 722, baseType: !1451, offset: 1344)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1211)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1174, file: !1171, line: 515, baseType: !184, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1174, file: !1171, line: 516, baseType: !186, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1174, file: !1171, line: 517, baseType: !186, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1174, file: !1171, line: 518, baseType: !186, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1170, file: !1171, line: 520, baseType: !37, size: 32, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1170, file: !1171, line: 522, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1231, line: 22, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1231, line: 22, size: 64, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1460, file: !1231, line: 22, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1231, line: 15, baseType: !186)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1170, file: !1171, line: 524, baseType: !1465, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1226, line: 372, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 372, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1467, file: !1226, line: 372, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1231, line: 16, baseType: !186)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1171, line: 527, baseType: !1472, size: 64, offset: 512)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !1171, line: 527, size: 64, elements: !1473)
!1473 = !{!1474, !1480}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1472, file: !1171, line: 528, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1231, line: 21, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1231, line: 21, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1476, file: !1231, line: 21, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1231, line: 14, baseType: !186)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1472, file: !1171, line: 529, baseType: !1459, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1170, file: !1171, line: 534, baseType: !1057, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1170, file: !1171, line: 535, baseType: !1057, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1170, file: !1171, line: 541, baseType: !1484, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1170, file: !1171, line: 545, baseType: !1486, size: 64, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1170, file: !1171, line: 549, baseType: !1488, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1226, line: 520, baseType: !1057)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1158, file: !54, line: 100, baseType: !1490, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!109, !1107, !186, !186, !109}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1108, file: !54, line: 134, baseType: !183, size: 64, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1108, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !54, line: 136, baseType: !1496, size: 128, offset: 1088)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !54, line: 136, size: 128, elements: !1497)
!1497 = !{!1498, !1504}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1496, file: !54, line: 137, baseType: !1499, size: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1500, line: 6, size: 128, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1499, file: !1500, line: 7, baseType: !410, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1499, file: !1500, line: 8, baseType: !410, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !54, line: 138, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1496, file: !54, line: 138, elements: !1506)
!1506 = !{!1507, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1505, file: !54, line: 138, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1505, file: !54, line: 138, elements: !1211)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1505, file: !54, line: 138, baseType: !1510)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1499, elements: !369)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1104, file: !38, line: 147, baseType: !183, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1062, file: !38, line: 161, baseType: !271, size: 128, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !38, line: 164, baseType: !1514, size: 32, offset: 384)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !38, line: 164, size: 32, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1514, file: !38, line: 169, baseType: !215, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1514, file: !38, line: 177, baseType: !7, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1058, file: !38, line: 181, baseType: !215, size: 32, offset: 416)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1051, file: !14, line: 406, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!109, !258, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !1527)
!1527 = !{!1528, !1558, !1572}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !38, line: 295, baseType: !1529, size: 512)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !38, line: 295, size: 512, elements: !1530)
!1530 = !{!1531, !1557}
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !38, line: 296, baseType: !1532, size: 448)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !38, line: 296, size: 448, elements: !1533)
!1533 = !{!1534, !1535, !1544, !1545, !1546, !1555, !1556}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1532, file: !38, line: 298, baseType: !186, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !38, line: 299, baseType: !1536, size: 128, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !38, line: 299, size: 128, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1536, file: !38, line: 300, baseType: !190, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !38, line: 302, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !38, line: 302, size: 128, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1540, file: !38, line: 303, baseType: !183, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1540, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1532, file: !38, line: 310, baseType: !1030, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1532, file: !38, line: 311, baseType: !186, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !38, line: 312, baseType: !1547, size: 64, offset: 320)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !38, line: 312, size: 64, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1547, file: !38, line: 313, baseType: !183, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1547, file: !38, line: 314, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1552, file: !38, line: 256, baseType: !186, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1532, file: !38, line: 316, baseType: !215, size: 32, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1532, file: !38, line: 317, baseType: !215, size: 32, offset: 416)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1529, file: !38, line: 323, baseType: !1058, size: 512, align: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !38, line: 325, baseType: !1559, size: 512, offset: 512)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !38, line: 325, size: 512, elements: !1560)
!1560 = !{!1561, !1571}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !38, line: 326, baseType: !1562, size: 320)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !38, line: 326, size: 320, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1562, file: !38, line: 327, baseType: !186, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1562, file: !38, line: 328, baseType: !186, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1562, file: !38, line: 329, baseType: !186, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1562, file: !38, line: 331, baseType: !215, size: 32, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1562, file: !38, line: 332, baseType: !215, size: 32, offset: 224)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1562, file: !38, line: 333, baseType: !215, size: 32, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1562, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1559, file: !38, line: 339, baseType: !1058, size: 512, align: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !38, line: 341, baseType: !1573, size: 512, offset: 1024)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !38, line: 341, size: 512, elements: !1574)
!1574 = !{!1575, !1584, !1590}
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !38, line: 342, baseType: !1576, size: 384)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !38, line: 342, size: 384, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1576, file: !38, line: 343, baseType: !186, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1576, file: !38, line: 344, baseType: !186, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1576, file: !38, line: 346, baseType: !183, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1576, file: !38, line: 347, baseType: !183, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1576, file: !38, line: 348, baseType: !183, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1576, file: !38, line: 349, baseType: !183, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !38, line: 352, baseType: !1585, size: 256)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !38, line: 352, size: 256, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1585, file: !38, line: 353, baseType: !186, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1585, file: !38, line: 354, baseType: !186, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1585, file: !38, line: 356, baseType: !190, size: 128, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1573, file: !38, line: 359, baseType: !1058, size: 512, align: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1051, file: !14, line: 409, baseType: !1592, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!109, !1030, !1519}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1051, file: !14, line: 412, baseType: !1596, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!504, !1030, !1525}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1051, file: !14, line: 414, baseType: !1600, size: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1051, file: !14, line: 416, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!109, !258, !1030, !319, !7, !1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1051, file: !14, line: 419, baseType: !1612, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!109, !258, !1030, !319, !7, !7, !1057, !183}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1051, file: !14, line: 424, baseType: !1616, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1619, !1030, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !185, line: 131, baseType: !410)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1051, file: !14, line: 425, baseType: !1621, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1525, !825, !825}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1051, file: !14, line: 426, baseType: !1625, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!504, !1525, !184}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1051, file: !14, line: 427, baseType: !1629, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1525}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1051, file: !14, line: 428, baseType: !1633, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!822, !1636, !1658}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1645, !1646, !1647, !1648}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1637, file: !14, line: 374, baseType: !258, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1637, file: !14, line: 375, baseType: !319, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1637, file: !14, line: 376, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1636, !783}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1637, file: !14, line: 377, baseType: !183, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1637, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1637, file: !14, line: 379, baseType: !250, size: 16, offset: 288)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !14, line: 380, baseType: !1649, size: 64, offset: 320)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !14, line: 380, size: 64, elements: !1650)
!1650 = !{!1651, !1654}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1649, file: !14, line: 386, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1649, file: !14, line: 395, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!822, !183}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1051, file: !14, line: 433, baseType: !1661, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!109, !1030, !1525, !1525, !74}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1051, file: !14, line: 435, baseType: !1665, size: 64, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!109, !1525}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1051, file: !14, line: 436, baseType: !1669, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!504, !1525, !825, !825}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1051, file: !14, line: 438, baseType: !1673, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1525, !1676, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1051, file: !14, line: 439, baseType: !1678, size: 64, offset: 1024)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!109, !1030, !1057}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1051, file: !14, line: 442, baseType: !1682, size: 64, offset: 1088)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!109, !1685, !258, !1687}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1051, file: !14, line: 444, baseType: !1689, size: 64, offset: 1152)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !258}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1051, file: !14, line: 445, baseType: !1693, size: 64, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!109, !1636, !1658}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !14, line: 486, baseType: !186, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1031, file: !14, line: 487, baseType: !442, size: 320, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1031, file: !14, line: 488, baseType: !1699, size: 32, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1700, line: 8, baseType: !467)
!1700 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1031, file: !14, line: 489, baseType: !281, size: 32, offset: 1312)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1031, file: !14, line: 490, baseType: !190, size: 128, offset: 1344)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1031, file: !14, line: 491, baseType: !183, size: 64, offset: 1472)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1021, file: !990, line: 180, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!822, !258, !932, !1020, !517, !319, !825}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1021, file: !990, line: 182, baseType: !1705, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1021, file: !990, line: 184, baseType: !1710, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!109, !258, !932, !1020, !1177}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1009, file: !990, line: 90, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1009, file: !990, line: 91, baseType: !1716, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !980, file: !927, line: 120, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !950}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1724)
!1724 = !{!1725, !1726, !1730, !1734, !1740, !1744}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1723, file: !82, line: 40, baseType: !81, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1723, file: !82, line: 41, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!504}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1723, file: !82, line: 42, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!183}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1723, file: !82, line: 43, baseType: !1735, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1306, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1723, file: !82, line: 44, baseType: !1741, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1306}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1723, file: !82, line: 45, baseType: !700, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !980, file: !927, line: 121, baseType: !1746, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1306, !950}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !980, file: !927, line: 122, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !950, !1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !926, file: !927, line: 70, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1758, line: 190, size: 1152, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1859, !1860, !1861, !1862, !1863, !1866}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1757, file: !1758, line: 191, baseType: !215, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1757, file: !1758, line: 192, baseType: !215, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1757, file: !1758, line: 202, baseType: !1756, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !1758, line: 203, baseType: !507, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1757, file: !1758, line: 205, baseType: !434, size: 192, align: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1757, file: !1758, line: 207, baseType: !1306, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1757, file: !1758, line: 208, baseType: !7, size: 32, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !1758, line: 209, baseType: !1768, size: 256, offset: 512)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !1758, line: 209, size: 256, elements: !1769)
!1769 = !{!1770, !1779, !1783}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1768, file: !1758, line: 210, baseType: !1771, size: 256)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1758, line: 153, size: 256, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1778}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1771, file: !1758, line: 154, baseType: !186, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1771, file: !1758, line: 156, baseType: !1042, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1771, file: !1758, line: 162, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1758, line: 162, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1771, file: !1758, line: 167, baseType: !186, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1768, file: !1758, line: 211, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1758, line: 170, size: 64, elements: !1781)
!1781 = !{!1782}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1780, file: !1758, line: 171, baseType: !1756, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1768, file: !1758, line: 212, baseType: !1784, size: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1758, line: 174, size: 256, elements: !1785)
!1785 = !{!1786, !1854, !1857, !1858}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1784, file: !1758, line: 175, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1758, line: 271, size: 768, elements: !1790)
!1790 = !{!1791, !1814, !1818, !1822, !1827, !1831, !1835, !1839, !1840, !1841, !1842, !1850}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1789, file: !1758, line: 276, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!109, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1758, line: 251, size: 1216, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1796, file: !1758, line: 253, baseType: !1756, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1796, file: !1758, line: 254, baseType: !258, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1796, file: !1758, line: 255, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1803, line: 66, flags: DIFlagFwdDecl)
!1803 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1796, file: !1758, line: 256, baseType: !183, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1796, file: !1758, line: 259, baseType: !306, size: 256, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1796, file: !1758, line: 260, baseType: !306, size: 256, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1796, file: !1758, line: 261, baseType: !109, size: 32, offset: 768)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1796, file: !1758, line: 262, baseType: !190, size: 128, offset: 832)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1796, file: !1758, line: 263, baseType: !517, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1796, file: !1758, line: 265, baseType: !825, size: 64, offset: 1024)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1796, file: !1758, line: 266, baseType: !504, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1796, file: !1758, line: 267, baseType: !504, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1796, file: !1758, line: 268, baseType: !1387, size: 64, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1789, file: !1758, line: 277, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1795}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1789, file: !1758, line: 290, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!109, !1801, !183}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1789, file: !1758, line: 292, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!183, !1801, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1789, file: !1758, line: 293, baseType: !1828, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!183, !1801, !183, !1826}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1789, file: !1758, line: 294, baseType: !1832, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1801, !183}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1789, file: !1758, line: 296, baseType: !1836, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!822, !1795, !517, !825, !319}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1789, file: !1758, line: 306, baseType: !825, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1789, file: !1758, line: 313, baseType: !504, size: 8, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1789, file: !1758, line: 314, baseType: !1836, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1789, file: !1758, line: 317, baseType: !1843, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1846, !1795, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1847, line: 59, baseType: !7)
!1847 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1789, file: !1758, line: 320, baseType: !1851, size: 64, offset: 704)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!109, !1795, !1177}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1784, file: !1758, line: 176, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1758, line: 35, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1784, file: !1758, line: 177, baseType: !319, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1784, file: !1758, line: 178, baseType: !1756, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1757, file: !1758, line: 215, baseType: !183, size: 64, offset: 768)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1757, file: !1758, line: 221, baseType: !410, size: 64, offset: 832)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !1758, line: 223, baseType: !252, size: 16, offset: 896)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1757, file: !1758, line: 224, baseType: !672, size: 16, offset: 912)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1757, file: !1758, line: 225, baseType: !1864, size: 64, offset: 960)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1758, line: 36, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1757, file: !1758, line: 227, baseType: !271, size: 128, align: 64, offset: 1024)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !926, file: !927, line: 71, baseType: !1868, size: 32, offset: 448)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1869, line: 19, size: 32, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1868, file: !1869, line: 20, baseType: !332, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !926, file: !927, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !926, file: !927, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !926, file: !927, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !926, file: !927, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !926, file: !927, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !923, file: !6, line: 47, baseType: !913, size: 64, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !923, file: !6, line: 48, baseType: !932, size: 64, offset: 576)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !923, file: !6, line: 49, baseType: !1880, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !923, file: !6, line: 50, baseType: !1883, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !914, file: !6, line: 418, baseType: !1885, size: 64, offset: 1408)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1894, !1898, !1902, !1906}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1886, file: !6, line: 54, baseType: !997, size: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1886, file: !6, line: 55, baseType: !1890, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!822, !1885, !1893, !517}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1886, file: !6, line: 57, baseType: !1895, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!822, !1885, !1893, !507, !825}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1886, file: !6, line: 59, baseType: !1899, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !913, !507}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1886, file: !6, line: 60, baseType: !1903, size: 64, offset: 320)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!109, !913}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1886, file: !6, line: 61, baseType: !1907, size: 64, offset: 384)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !913}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !914, file: !6, line: 419, baseType: !507, size: 64, offset: 1472)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !914, file: !6, line: 420, baseType: !507, size: 64, offset: 1536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !914, file: !6, line: 421, baseType: !932, size: 64, offset: 1600)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !914, file: !6, line: 424, baseType: !1914, size: 64, offset: 1664)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !914, file: !6, line: 425, baseType: !1918, size: 64, offset: 1728)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !914, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !914, file: !6, line: 435, baseType: !306, size: 256, offset: 1856)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !914, file: !6, line: 437, baseType: !1923, size: 64, offset: 2112)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1925, line: 69, size: 320, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1926 = !{!1927, !1928, !1929, !1946, !1948, !1952, !1953}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1924, file: !1925, line: 70, baseType: !507, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1924, file: !1925, line: 71, baseType: !913, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1924, file: !1925, line: 72, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1925, line: 47, size: 256, elements: !1933)
!1933 = !{!1934, !1935, !1941, !1945}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !1925, line: 49, baseType: !7, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1932, file: !1925, line: 51, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!109, !507, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1932, file: !1925, line: 53, baseType: !1942, size: 64, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!109, !517, !1939}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1932, file: !1925, line: 55, baseType: !700, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1924, file: !1925, line: 73, baseType: !1947, size: 16, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1924, file: !1925, line: 74, baseType: !1949, size: 8, offset: 208)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !224, line: 16, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !226, line: 20, baseType: !1951)
!1951 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1924, file: !1925, line: 75, baseType: !223, size: 8, offset: 216)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !1925, line: 76, baseType: !1954, size: 64, offset: 256)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1924, file: !1925, line: 76, size: 64, elements: !1955)
!1955 = !{!1956, !1957, !1964}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1954, file: !1925, line: 77, baseType: !183, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1954, file: !1925, line: 78, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1925, line: 86, size: 128, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1960, file: !1925, line: 87, baseType: !7, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1960, file: !1925, line: 88, baseType: !517, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1954, file: !1925, line: 79, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1925, line: 92, size: 256, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1973, !1974}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1967, file: !1925, line: 94, baseType: !7, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1967, file: !1925, line: 95, baseType: !7, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1967, file: !1925, line: 96, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1967, file: !1925, line: 97, baseType: !1930, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1967, file: !1925, line: 98, baseType: !183, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !914, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !914, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !914, file: !6, line: 442, baseType: !1914, size: 64, offset: 2240)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !914, file: !6, line: 443, baseType: !1918, size: 64, offset: 2304)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !914, file: !6, line: 444, baseType: !504, size: 8, offset: 2368)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !914, file: !6, line: 451, baseType: !504, size: 8, offset: 2376)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !914, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !914, file: !6, line: 455, baseType: !1983, size: 64, offset: 2432)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1985, line: 23, size: 96, elements: !1986)
!1985 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1984, file: !1985, line: 24, baseType: !109, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1984, file: !1985, line: 24, baseType: !109, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1984, file: !1985, line: 24, baseType: !109, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !914, file: !6, line: 458, baseType: !1991, size: 64, offset: 2496)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!109}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !914, file: !6, line: 460, baseType: !1995, size: 4032, align: 512, offset: 2560)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1996, size: 4032, elements: !2012)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1996, file: !6, line: 363, baseType: !183, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1996, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1996, file: !6, line: 367, baseType: !2001, size: 448, offset: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2001, file: !6, line: 320, baseType: !913, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2001, file: !6, line: 321, baseType: !2005, size: 384, offset: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2006, line: 40, size: 384, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2007 = !{!2008}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2005, file: !2006, line: 41, baseType: !2009, size: 384, align: 64)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, align: 64, elements: !2010)
!2010 = !{!2011}
!2011 = !DISubrange(count: 2)
!2012 = !{!2013}
!2013 = !DISubrange(count: 7)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !914, file: !6, line: 463, baseType: !2015, size: 192, offset: 6592)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2016, line: 8, size: 192, elements: !2017)
!2016 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2017 = !{!2018, !2019, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2015, file: !2016, line: 10, baseType: !7, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2015, file: !2016, line: 11, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2015, file: !2016, line: 12, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2024, line: 59, size: 48, elements: !2025)
!2024 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2023, file: !2024, line: 60, baseType: !1323, size: 16)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2023, file: !2024, line: 61, baseType: !1323, size: 16, offset: 16)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2023, file: !2024, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2023, file: !2024, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2023, file: !2024, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2023, file: !2024, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !914, file: !6, line: 465, baseType: !186, size: 64, offset: 6784)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !914, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !914, file: !6, line: 470, baseType: !190, size: 128, offset: 6912)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !914, file: !6, line: 471, baseType: !2036, size: 64, offset: 7040)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2038, line: 33, size: 96, elements: !2039)
!2038 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2039 = !{!2040, !2041, !2042, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2037, file: !2038, line: 37, baseType: !109, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2037, file: !2038, line: 43, baseType: !109, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2037, file: !2038, line: 45, baseType: !252, size: 16, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2037, file: !2038, line: 47, baseType: !252, size: 16, offset: 80)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !914, file: !6, line: 476, baseType: !2045, size: 64, offset: 7104)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2047)
!2047 = !{!2048, !2064, !2065, !2066}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2046, file: !6, line: 379, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2051, line: 204, baseType: !2052)
!2051 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2051, line: 197, size: 192, elements: !2053)
!2053 = !{!2054, !2056, !2057, !2058, !2060, !2062}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2052, file: !2051, line: 198, baseType: !2055, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2051, line: 21, baseType: !468)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2052, file: !2051, line: 199, baseType: !227, size: 8, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2052, file: !2051, line: 200, baseType: !227, size: 8, offset: 40)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2052, file: !2051, line: 201, baseType: !2059, size: 16, offset: 48)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2051, line: 17, baseType: !251)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2052, file: !2051, line: 202, baseType: !2061, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2051, line: 16, baseType: !411)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2052, file: !2051, line: 203, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2051, line: 22, baseType: !411)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2046, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2046, file: !6, line: 381, baseType: !517, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2046, file: !6, line: 382, baseType: !517, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !914, file: !6, line: 477, baseType: !2046, size: 256, offset: 7168)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !914, file: !6, line: 480, baseType: !2069, size: 64, offset: 7424)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !914, file: !6, line: 483, baseType: !2072, size: 64, offset: 7488)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !914, file: !6, line: 488, baseType: !517, size: 64, offset: 7552)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !914, file: !6, line: 492, baseType: !183, size: 64, offset: 7616)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !914, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !914, file: !6, line: 495, baseType: !183, size: 64, offset: 7744)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !914, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !914, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !914, file: !6, line: 500, baseType: !2081, size: 64, offset: 7872)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2083, line: 45, baseType: !2084)
!2083 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !914, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !914, file: !6, line: 504, baseType: !2087, size: 64, offset: 8000)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2090, line: 96, size: 192, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2091 = !{!2092, !2093, !2147, !2150}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2089, file: !2090, line: 97, baseType: !7, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2089, file: !2090, line: 98, baseType: !2094, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2090, line: 24, size: 3072, elements: !2096)
!2096 = !{!2097, !2099, !2100, !2101, !2102, !2116, !2117, !2118, !2119, !2131, !2132, !2133, !2144, !2145, !2146}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2095, file: !2090, line: 26, baseType: !2098, size: 128)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !2010)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2095, file: !2090, line: 27, baseType: !2098, size: 128, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2095, file: !2090, line: 28, baseType: !109, size: 32, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !2090, line: 31, baseType: !281, size: 32, align: 512, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2095, file: !2090, line: 32, baseType: !2103, size: 960, offset: 576)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2104, line: 206, size: 960, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2105 = !{!2106, !2107, !2110, !2112, !2113, !2115}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2103, file: !2104, line: 207, baseType: !274, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2103, file: !2104, line: 208, baseType: !2108, size: 256, offset: 64)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 256, elements: !350)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2103, file: !2104, line: 209, baseType: !2111, size: 256, offset: 320)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 256, elements: !350)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2103, file: !2104, line: 213, baseType: !783, size: 64, offset: 576)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2103, file: !2104, line: 215, baseType: !2114, size: 256, offset: 640)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 256, elements: !350)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2104, line: 216, baseType: !223, size: 8, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2095, file: !2090, line: 33, baseType: !186, size: 64, offset: 1536)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2095, file: !2090, line: 34, baseType: !186, size: 64, offset: 1600)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2095, file: !2090, line: 35, baseType: !504, size: 8, offset: 1664)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2095, file: !2090, line: 36, baseType: !2120, size: 320, offset: 1728)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2121, line: 11, size: 320, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2122 = !{!2123, !2124, !2125, !2130}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2120, file: !2121, line: 16, baseType: !345, size: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2120, file: !2121, line: 17, baseType: !186, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2120, file: !2121, line: 18, baseType: !2126, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !2121, line: 19, baseType: !467, size: 32, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2095, file: !2090, line: 37, baseType: !1345, size: 256, offset: 2048)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2095, file: !2090, line: 38, baseType: !271, size: 128, align: 64, offset: 2304)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2095, file: !2090, line: 39, baseType: !2134, size: 64, offset: 2432)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2090, line: 49, size: 768, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2135, file: !2090, line: 50, baseType: !281, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2135, file: !2090, line: 51, baseType: !2111, size: 256, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2135, file: !2090, line: 53, baseType: !2111, size: 256, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2135, file: !2090, line: 54, baseType: !186, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2135, file: !2090, line: 55, baseType: !2134, size: 64, offset: 640)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2135, file: !2090, line: 56, baseType: !109, size: 32, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2135, file: !2090, line: 57, baseType: !109, size: 32, offset: 736)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2095, file: !2090, line: 40, baseType: !186, size: 64, offset: 2496)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2095, file: !2090, line: 42, baseType: !109, size: 32, offset: 2560)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2095, file: !2090, line: 43, baseType: !2088, size: 64, offset: 2624)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2089, file: !2090, line: 99, baseType: !2148, offset: 128)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2149, line: 211, elements: !1211)
!2149 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2089, file: !2090, line: 100, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2090, line: 63, size: 3008, elements: !2153)
!2153 = !{!2154, !2155, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2185}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2152, file: !2090, line: 64, baseType: !2134, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2152, file: !2090, line: 65, baseType: !2156, size: 192, offset: 64)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2134, size: 192, elements: !230)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2152, file: !2090, line: 67, baseType: !109, size: 32, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2152, file: !2090, line: 68, baseType: !306, size: 256, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2152, file: !2090, line: 69, baseType: !281, size: 32, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2152, file: !2090, line: 70, baseType: !306, size: 256, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2152, file: !2090, line: 71, baseType: !186, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2152, file: !2090, line: 72, baseType: !186, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2152, file: !2090, line: 73, baseType: !186, size: 64, offset: 1024)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2152, file: !2090, line: 74, baseType: !186, size: 64, offset: 1088)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2152, file: !2090, line: 75, baseType: !186, size: 64, offset: 1152)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2152, file: !2090, line: 76, baseType: !186, size: 64, offset: 1216)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2152, file: !2090, line: 77, baseType: !186, size: 64, offset: 1280)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2152, file: !2090, line: 78, baseType: !186, size: 64, offset: 1344)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2152, file: !2090, line: 79, baseType: !504, size: 8, offset: 1408)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2152, file: !2090, line: 80, baseType: !186, size: 64, offset: 1472)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2152, file: !2090, line: 81, baseType: !306, size: 256, offset: 1536)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2152, file: !2090, line: 82, baseType: !1142, size: 256, offset: 1792)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2152, file: !2090, line: 84, baseType: !215, size: 32, offset: 2048)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2152, file: !2090, line: 87, baseType: !186, size: 64, offset: 2112)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2152, file: !2090, line: 88, baseType: !186, size: 64, offset: 2176)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2152, file: !2090, line: 89, baseType: !2177, size: 704, offset: 2240)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !157, line: 111, size: 704, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2184}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2177, file: !157, line: 112, baseType: !1345, size: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2177, file: !157, line: 113, baseType: !2120, size: 320, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2177, file: !157, line: 116, baseType: !2182, size: 64, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !157, line: 18, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2177, file: !157, line: 117, baseType: !109, size: 32, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2152, file: !2090, line: 90, baseType: !2088, size: 64, offset: 2944)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !914, file: !6, line: 515, baseType: !2187, size: 64, offset: 8064)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2189, line: 117, size: 128, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2188, file: !2189, line: 118, baseType: !427, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2188, file: !2189, line: 119, baseType: !427, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2188, file: !2189, line: 120, baseType: !783, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !914, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !914, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !914, file: !6, line: 520, baseType: !2197, size: 64, offset: 8192)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !914, file: !6, line: 523, baseType: !2199, size: 64, offset: 8256)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !914, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !914, file: !6, line: 525, baseType: !2204, size: 64, offset: 8384)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !914, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !914, file: !6, line: 533, baseType: !183, size: 64, offset: 8512)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !914, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !914, file: !6, line: 535, baseType: !2211, size: 64, offset: 8640)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !914, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !914, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !914, file: !6, line: 540, baseType: !2215, size: 64, offset: 8768)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2217, line: 32, size: 64, elements: !2218)
!2217 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2216, file: !2217, line: 33, baseType: !427, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2216, file: !2217, line: 34, baseType: !427, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !914, file: !6, line: 563, baseType: !190, size: 128, offset: 8832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !914, file: !6, line: 565, baseType: !190, size: 128, offset: 8960)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !914, file: !6, line: 568, baseType: !2224, size: 64, offset: 9088)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !914, file: !6, line: 570, baseType: !215, size: 32, offset: 9152)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !14, line: 2382, baseType: !889, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !890, file: !14, line: 2383, baseType: !341, size: 64, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !890, file: !14, line: 2385, baseType: !2231, offset: 576)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2149, line: 206, elements: !1211)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !890, file: !14, line: 2386, baseType: !2231, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !890, file: !14, line: 2387, baseType: !2231, offset: 576)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !890, file: !14, line: 2388, baseType: !2235, offset: 576)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2231, elements: !230)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !890, file: !14, line: 2390, baseType: !2231, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !890, file: !14, line: 2391, baseType: !2231, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !890, file: !14, line: 2392, baseType: !2231, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !890, file: !14, line: 2393, baseType: !2231, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !881, file: !14, line: 1197, baseType: !2241, size: 64, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2243)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2244)
!2244 = !{!2245, !2249, !2253, !2254, !2258, !2262, !2266, !2267, !2268, !2272, !2276, !2280, !2281, !2282, !2288, !2292, !2293, !2297, !2298, !2299, !2300, !2304, !2308, !2355, !2370, !2371}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2243, file: !14, line: 2058, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!668, !880}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2243, file: !14, line: 2059, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !668}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2243, file: !14, line: 2060, baseType: !2250, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2243, file: !14, line: 2062, baseType: !2255, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !668, !109}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2243, file: !14, line: 2063, baseType: !2259, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!109, !668, !1519}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2243, file: !14, line: 2064, baseType: !2263, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!109, !668}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2243, file: !14, line: 2065, baseType: !2250, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2243, file: !14, line: 2066, baseType: !909, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2243, file: !14, line: 2067, baseType: !2269, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!109, !880, !109}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2243, file: !14, line: 2068, baseType: !2273, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!109, !880, !13}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2243, file: !14, line: 2069, baseType: !2277, size: 64, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!109, !880}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2243, file: !14, line: 2070, baseType: !2273, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2243, file: !14, line: 2071, baseType: !2277, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2243, file: !14, line: 2072, baseType: !2283, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!109, !628, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2243, file: !14, line: 2073, baseType: !2289, size: 64, offset: 896)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!109, !880, !2020, !517}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2243, file: !14, line: 2074, baseType: !909, size: 64, offset: 960)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2243, file: !14, line: 2076, baseType: !2294, size: 64, offset: 1024)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!109, !1801, !628}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2243, file: !14, line: 2077, baseType: !2294, size: 64, offset: 1088)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2243, file: !14, line: 2078, baseType: !2294, size: 64, offset: 1152)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2243, file: !14, line: 2079, baseType: !2294, size: 64, offset: 1216)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2243, file: !14, line: 2081, baseType: !2301, size: 64, offset: 1280)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!822, !880, !109, !517, !825, !319}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2243, file: !14, line: 2082, baseType: !2305, size: 64, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!822, !880, !109, !507, !825, !319}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2243, file: !14, line: 2083, baseType: !2309, size: 64, offset: 1408)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!2312, !668}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2340, !2341, !2342}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2314, file: !19, line: 297, baseType: !345, size: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2314, file: !19, line: 298, baseType: !190, size: 128, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2314, file: !19, line: 299, baseType: !190, size: 128, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2314, file: !19, line: 300, baseType: !190, size: 128, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2314, file: !19, line: 301, baseType: !306, size: 256, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2314, file: !19, line: 302, baseType: !281, size: 32, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2314, file: !19, line: 303, baseType: !215, size: 32, offset: 800)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2314, file: !19, line: 304, baseType: !880, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2314, file: !19, line: 305, baseType: !2325, size: 64, offset: 896)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !2326)
!2326 = !{!2327, !2339}
!2327 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !19, line: 69, baseType: !2328, size: 32)
!2328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2325, file: !19, line: 69, size: 32, elements: !2329)
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2328, file: !19, line: 70, baseType: !373, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2328, file: !19, line: 71, baseType: !391, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2328, file: !19, line: 72, baseType: !2333, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2334, line: 24, baseType: !2335)
!2334 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2334, line: 22, size: 32, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2335, file: !2334, line: 23, baseType: !2338, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2334, line: 20, baseType: !379)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2325, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2314, file: !19, line: 306, baseType: !319, size: 64, offset: 960)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2314, file: !19, line: 307, baseType: !186, size: 64, offset: 1024)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2314, file: !19, line: 308, baseType: !2343, size: 576, offset: 1088)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !2344)
!2344 = !{!2345, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2343, file: !19, line: 206, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !304)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2343, file: !19, line: 207, baseType: !2346, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2343, file: !19, line: 208, baseType: !2346, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2343, file: !19, line: 209, baseType: !2346, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2343, file: !19, line: 210, baseType: !2346, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2343, file: !19, line: 211, baseType: !2346, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2343, file: !19, line: 212, baseType: !2346, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2343, file: !19, line: 213, baseType: !458, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2343, file: !19, line: 214, baseType: !458, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2243, file: !14, line: 2085, baseType: !2356, size: 64, offset: 1472)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!783, !880, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2361, line: 15, size: 256, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2362 = !{!2363, !2364, !2365, !2366, !2367}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2360, file: !2361, line: 16, baseType: !184, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2360, file: !2361, line: 19, baseType: !109, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2360, file: !2361, line: 26, baseType: !186, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2360, file: !2361, line: 33, baseType: !186, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2360, file: !2361, line: 36, baseType: !2368, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2243, file: !14, line: 2087, baseType: !2356, size: 64, offset: 1536)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2243, file: !14, line: 2089, baseType: !909, size: 64, offset: 1600)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !881, file: !14, line: 1198, baseType: !2373, size: 64, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !2376)
!2376 = !{!2377, !2381, !2385, !2389, !2390, !2391, !2392, !2393, !2398, !2403, !2407}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2375, file: !19, line: 325, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!109, !2313}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2375, file: !19, line: 326, baseType: !2382, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!2313, !880, !109}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2375, file: !19, line: 327, baseType: !2386, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2313}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2375, file: !19, line: 328, baseType: !2378, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2375, file: !19, line: 329, baseType: !2378, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2375, file: !19, line: 330, baseType: !2378, size: 64, offset: 320)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2375, file: !19, line: 331, baseType: !2269, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2375, file: !19, line: 334, baseType: !2394, size: 64, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2397, !668}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2375, file: !19, line: 335, baseType: !2399, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!109, !668, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2375, file: !19, line: 337, baseType: !2404, size: 64, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!109, !668, !2397}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2375, file: !19, line: 339, baseType: !2408, size: 64, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!109, !880, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !881, file: !14, line: 1199, baseType: !2413, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !2416)
!2416 = !{!2417, !2421, !2422, !2426, !2427, !2428, !2443, !2466, !2470, !2471, !2494}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2415, file: !19, line: 431, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!109, !880, !109, !109, !791}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2415, file: !19, line: 432, baseType: !2269, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2415, file: !19, line: 433, baseType: !2423, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!109, !880, !7}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2415, file: !19, line: 434, baseType: !2423, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2415, file: !19, line: 435, baseType: !2269, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2415, file: !19, line: 436, baseType: !2429, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!109, !880, !109, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2433, file: !19, line: 418, baseType: !109, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2433, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2433, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2433, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2433, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2433, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2433, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2433, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2415, file: !19, line: 437, baseType: !2444, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!109, !880, !2325, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2448, file: !19, line: 346, baseType: !109, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2448, file: !19, line: 347, baseType: !410, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2448, file: !19, line: 348, baseType: !410, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2448, file: !19, line: 349, baseType: !410, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2448, file: !19, line: 350, baseType: !410, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2448, file: !19, line: 351, baseType: !410, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2448, file: !19, line: 352, baseType: !410, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2448, file: !19, line: 353, baseType: !302, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2448, file: !19, line: 355, baseType: !302, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2448, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2448, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2448, file: !19, line: 358, baseType: !410, size: 64, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2448, file: !19, line: 359, baseType: !410, size: 64, offset: 704)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2448, file: !19, line: 360, baseType: !410, size: 64, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2448, file: !19, line: 361, baseType: !302, size: 64, offset: 832)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2448, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2415, file: !19, line: 438, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!109, !880, !2411, !2447}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2415, file: !19, line: 440, baseType: !2444, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2415, file: !19, line: 441, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!109, !880, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2476, file: !19, line: 412, baseType: !7, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2476, file: !19, line: 413, baseType: !2480, size: 1344, offset: 64)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 1344, elements: !230)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2493}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2481, file: !19, line: 398, baseType: !7, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2481, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2481, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2481, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2481, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2481, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2481, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2481, file: !19, line: 406, baseType: !412, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2481, file: !19, line: 407, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !185, line: 132, baseType: !410)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2481, file: !19, line: 408, baseType: !2492, size: 64, offset: 384)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2415, file: !19, line: 442, baseType: !2423, size: 64, offset: 640)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !881, file: !14, line: 1200, baseType: !2496, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !881, file: !14, line: 1201, baseType: !186, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !881, file: !14, line: 1202, baseType: !186, size: 64, offset: 704)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !881, file: !14, line: 1203, baseType: !186, size: 64, offset: 768)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !881, file: !14, line: 1204, baseType: !628, size: 64, offset: 832)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !881, file: !14, line: 1205, baseType: !442, size: 320, offset: 896)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !881, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !881, file: !14, line: 1207, baseType: !215, size: 32, offset: 1248)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !881, file: !14, line: 1209, baseType: !183, size: 64, offset: 1280)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !881, file: !14, line: 1211, baseType: !2508, size: 64, offset: 1344)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !881, file: !14, line: 1223, baseType: !2513, size: 64, offset: 1408)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !645, line: 34, size: 64, elements: !2514)
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2513, file: !645, line: 35, baseType: !648, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !881, file: !14, line: 1224, baseType: !190, size: 128, offset: 1472)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !881, file: !14, line: 1225, baseType: !2518, size: 64, offset: 1600)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !881, file: !14, line: 1226, baseType: !2521, size: 64, offset: 1664)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !881, file: !14, line: 1227, baseType: !2524, size: 64, offset: 1728)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !881, file: !14, line: 1228, baseType: !2527, size: 64, offset: 1792)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !881, file: !14, line: 1229, baseType: !345, size: 128, offset: 1856)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !881, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !881, file: !14, line: 1231, baseType: !2532, size: 2496, offset: 2048)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2538, !2570}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !19, line: 522, baseType: !7, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2532, file: !19, line: 523, baseType: !442, size: 320, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2532, file: !19, line: 524, baseType: !2537, size: 192, offset: 384)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 192, elements: !230)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2532, file: !19, line: 525, baseType: !2539, size: 1728, offset: 576)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 1728, elements: !230)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !2541)
!2541 = !{!2542, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2540, file: !19, line: 223, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !2545)
!2545 = !{!2546, !2547, !2560, !2561}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2544, file: !19, line: 446, baseType: !109, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2544, file: !19, line: 447, baseType: !2548, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2550, file: !19, line: 313, baseType: !2269, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2550, file: !19, line: 314, baseType: !2269, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2550, file: !19, line: 315, baseType: !2269, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2550, file: !19, line: 316, baseType: !2269, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2550, file: !19, line: 317, baseType: !2378, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2550, file: !19, line: 318, baseType: !2378, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2550, file: !19, line: 319, baseType: !2378, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2550, file: !19, line: 320, baseType: !2408, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2544, file: !19, line: 448, baseType: !913, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2544, file: !19, line: 449, baseType: !2543, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2540, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2540, file: !19, line: 226, baseType: !190, size: 128, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2540, file: !19, line: 227, baseType: !186, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2540, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2540, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2540, file: !19, line: 230, baseType: !2346, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2540, file: !19, line: 231, baseType: !2346, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2540, file: !19, line: 232, baseType: !183, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2532, file: !19, line: 526, baseType: !2571, size: 192, offset: 2304)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2548, size: 192, elements: !230)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !881, file: !14, line: 1233, baseType: !2573, size: 2368, offset: 4544)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2574)
!2574 = !{!2575, !2576, !2577}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2573, file: !14, line: 1185, baseType: !252, size: 16)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2573, file: !14, line: 1186, baseType: !252, size: 16, offset: 16)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2573, file: !14, line: 1187, baseType: !2578, size: 2304, offset: 64)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 2304, elements: !230)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2580, line: 12, size: 768, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2581 = !{!2582, !2590, !2591, !3784, !3785}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2579, file: !2580, line: 13, baseType: !2583, size: 384)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2584, line: 17, size: 384, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2583, file: !2584, line: 18, baseType: !109, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2583, file: !2584, line: 19, baseType: !109, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2583, file: !2584, line: 20, baseType: !354, size: 192, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2583, file: !2584, line: 22, baseType: !271, size: 128, align: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2579, file: !2580, line: 14, baseType: !1972, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2579, file: !2580, line: 15, baseType: !2592, size: 64, offset: 448)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2593, line: 16, size: 64, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2592, file: !2593, line: 17, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1803, line: 746, size: 58368, elements: !2598)
!2598 = !{!2599, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2679, !2690, !2778, !2782, !2785, !2816, !2817, !2818, !2819, !2830, !2832, !2833, !2834, !2835, !2836, !2837, !2848, !2849, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2866, !2867, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2955, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !3003, !3009, !3010, !3011, !3012, !3013, !3017, !3020, !3027, !3032, !3035, !3038, !3041, !3044, !3182, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3220, !3221, !3222, !3231, !3239, !3240, !3241, !3242, !3243, !3248, !3249, !3250, !3253, !3254, !3257, !3260, !3263, !3271, !3274, !3275, !3361, !3362, !3363, !3364, !3365, !3371, !3372, !3373, !3374, !3377, !3378, !3381, !3384, !3385, !3388, !3389, !3390, !3393, !3394, !3395, !3396, !3397, !3398, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3430, !3433, !3439, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3451, !3523, !3525, !3526, !3527, !3528, !3529, !3530, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3559, !3560, !3561}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2597, file: !1803, line: 752, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2601, line: 56, size: 192, elements: !2602)
!2601 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !2601, line: 57, baseType: !186, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2600, file: !2601, line: 58, baseType: !186, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2600, file: !2601, line: 59, baseType: !467, size: 32, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2600, file: !2601, line: 61, baseType: !467, size: 32, offset: 160)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2597, file: !1803, line: 754, baseType: !7, size: 32, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2597, file: !1803, line: 767, baseType: !183, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2597, file: !1803, line: 768, baseType: !332, size: 32, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2597, file: !1803, line: 770, baseType: !7, size: 32, offset: 352)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2597, file: !1803, line: 771, baseType: !7, size: 32, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2597, file: !1803, line: 774, baseType: !109, size: 32, offset: 416)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2597, file: !1803, line: 775, baseType: !2614, size: 128, offset: 448)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2615, line: 58, size: 128, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2616 = !{!2617, !2618, !2623, !2624}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2614, file: !2615, line: 59, baseType: !265, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !2615, line: 60, baseType: !2619, size: 32, offset: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !2615, line: 60, size: 32, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2619, file: !2615, line: 61, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2619, file: !2615, line: 62, baseType: !215, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2614, file: !2615, line: 65, baseType: !250, size: 16, offset: 96)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2614, file: !2615, line: 65, baseType: !250, size: 16, offset: 112)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2597, file: !1803, line: 776, baseType: !7, size: 32, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2597, file: !1803, line: 777, baseType: !186, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2597, file: !1803, line: 778, baseType: !2596, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2597, file: !1803, line: 787, baseType: !109, size: 32, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2597, file: !1803, line: 788, baseType: !109, size: 32, offset: 800)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2597, file: !1803, line: 790, baseType: !109, size: 32, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2597, file: !1803, line: 792, baseType: !109, size: 32, offset: 864)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2597, file: !1803, line: 793, baseType: !109, size: 32, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2597, file: !1803, line: 794, baseType: !109, size: 32, offset: 928)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2597, file: !1803, line: 795, baseType: !7, size: 32, offset: 960)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2597, file: !1803, line: 797, baseType: !2636, size: 2048, offset: 1024)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1803, line: 551, size: 2048, elements: !2637)
!2637 = !{!2638, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2658, !2661, !2662, !2663}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2636, file: !1803, line: 553, baseType: !2639, size: 128)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1803, line: 411, size: 128, elements: !2640)
!2640 = !{!2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2639, file: !1803, line: 412, baseType: !186, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2639, file: !1803, line: 413, baseType: !467, size: 32, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2636, file: !1803, line: 554, baseType: !434, size: 192, align: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2636, file: !1803, line: 555, baseType: !410, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2636, file: !1803, line: 556, baseType: !410, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2636, file: !1803, line: 558, baseType: !190, size: 128, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2636, file: !1803, line: 559, baseType: !7, size: 32, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2636, file: !1803, line: 561, baseType: !410, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2636, file: !1803, line: 562, baseType: !410, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2636, file: !1803, line: 563, baseType: !410, size: 64, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2636, file: !1803, line: 564, baseType: !410, size: 64, offset: 832)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2636, file: !1803, line: 565, baseType: !302, size: 64, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2636, file: !1803, line: 566, baseType: !410, size: 64, offset: 960)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2636, file: !1803, line: 568, baseType: !410, size: 64, offset: 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2636, file: !1803, line: 571, baseType: !109, size: 32, offset: 1088)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2636, file: !1803, line: 572, baseType: !2657, size: 64, offset: 1152)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2636, file: !1803, line: 574, baseType: !2659, size: 64, offset: 1216)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1803, line: 49, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2636, file: !1803, line: 576, baseType: !2659, size: 64, offset: 1280)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2636, file: !1803, line: 578, baseType: !186, size: 64, offset: 1344)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2636, file: !1803, line: 588, baseType: !2664, size: 512, align: 512, offset: 1536)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1803, line: 497, size: 512, align: 512, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2664, file: !1803, line: 498, baseType: !410, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2664, file: !1803, line: 499, baseType: !410, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2664, file: !1803, line: 500, baseType: !410, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2664, file: !1803, line: 501, baseType: !467, size: 32, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2664, file: !1803, line: 502, baseType: !467, size: 32, offset: 224)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2664, file: !1803, line: 503, baseType: !186, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2664, file: !1803, line: 504, baseType: !186, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2664, file: !1803, line: 505, baseType: !186, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2664, file: !1803, line: 506, baseType: !2675, size: 64, align: 64, offset: 448)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1803, line: 445, size: 64, align: 64, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2675, file: !1803, line: 446, baseType: !7, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2675, file: !1803, line: 447, baseType: !7, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2597, file: !1803, line: 798, baseType: !2680, size: 384, offset: 3072)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1803, line: 592, size: 384, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2680, file: !1803, line: 593, baseType: !190, size: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2680, file: !1803, line: 594, baseType: !186, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2680, file: !1803, line: 595, baseType: !186, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2680, file: !1803, line: 596, baseType: !7, size: 32, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2680, file: !1803, line: 597, baseType: !252, size: 16, offset: 288)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2680, file: !1803, line: 598, baseType: !252, size: 16, offset: 304)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2680, file: !1803, line: 600, baseType: !2689, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2597, file: !1803, line: 799, baseType: !2691, size: 1792, offset: 3456)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1803, line: 610, size: 1792, elements: !2692)
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2775, !2776}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2691, file: !1803, line: 611, baseType: !434, size: 192, align: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2691, file: !1803, line: 618, baseType: !410, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2691, file: !1803, line: 619, baseType: !410, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2691, file: !1803, line: 620, baseType: !410, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2691, file: !1803, line: 621, baseType: !410, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2691, file: !1803, line: 622, baseType: !410, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2691, file: !1803, line: 629, baseType: !302, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2691, file: !1803, line: 630, baseType: !410, size: 64, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2691, file: !1803, line: 631, baseType: !7, size: 32, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2691, file: !1803, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2691, file: !1803, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2691, file: !1803, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2691, file: !1803, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2691, file: !1803, line: 662, baseType: !2707, size: 512, offset: 704)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !2708)
!2708 = !{!2709, !2717, !2718, !2723, !2771, !2772, !2773, !2774}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2707, file: !25, line: 119, baseType: !2710, size: 256)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2711, line: 9, size: 256, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2710, file: !2711, line: 10, baseType: !434, size: 192, align: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2710, file: !2711, line: 11, baseType: !2715, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2716, line: 29, baseType: !302)
!2716 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2707, file: !25, line: 120, baseType: !2715, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2707, file: !25, line: 121, baseType: !2719, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!24, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2707, file: !25, line: 122, baseType: !2724, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !2726)
!2726 = !{!2727, !2752, !2753, !2756, !2761, !2762, !2766, !2770}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2725, file: !25, line: 160, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2729, file: !25, line: 216, baseType: !311, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2729, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2729, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2729, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2729, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2729, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2729, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2729, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2729, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2729, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2729, file: !25, line: 227, baseType: !252, size: 16, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2729, file: !25, line: 228, baseType: !252, size: 16, offset: 208)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2729, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2729, file: !25, line: 235, baseType: !2715, size: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2729, file: !25, line: 236, baseType: !2722, size: 64, offset: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2729, file: !25, line: 237, baseType: !2715, size: 64, offset: 384)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2729, file: !25, line: 238, baseType: !2722, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2729, file: !25, line: 239, baseType: !2749, size: 4096, align: 512, offset: 512)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 4096, align: 512, elements: !2750)
!2750 = !{!2751}
!2751 = !DISubrange(count: 8)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2725, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2725, file: !25, line: 162, baseType: !2754, size: 32, offset: 96)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !185, line: 32, baseType: !2755)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !321, line: 96, baseType: !109)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2725, file: !25, line: 163, baseType: !2757, size: 32, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !635, line: 274, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !635, line: 274, size: 32, elements: !2759)
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2758, file: !635, line: 274, baseType: !639, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2725, file: !25, line: 164, baseType: !2722, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2725, file: !25, line: 165, baseType: !2763, size: 128, offset: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2711, line: 14, size: 128, elements: !2764)
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2763, file: !2711, line: 15, baseType: !1039, size: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2725, file: !25, line: 166, baseType: !2767, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!2715}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2725, file: !25, line: 167, baseType: !2715, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2707, file: !25, line: 123, baseType: !223, size: 8, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2707, file: !25, line: 124, baseType: !223, size: 8, offset: 456)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2707, file: !25, line: 125, baseType: !223, size: 8, offset: 464)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2707, file: !25, line: 126, baseType: !223, size: 8, offset: 472)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2691, file: !1803, line: 671, baseType: !2707, size: 512, offset: 1216)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2691, file: !1803, line: 679, baseType: !2777, size: 64, offset: 1728)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2597, file: !1803, line: 800, baseType: !2779, size: 64, offset: 5248)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1803, line: 800, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2597, file: !1803, line: 809, baseType: !2783, size: 64, offset: 5312)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1803, line: 70, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2597, file: !1803, line: 825, baseType: !2786, size: 2048, align: 512, offset: 5632)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1803, line: 509, size: 2048, align: 512, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2786, file: !1803, line: 511, baseType: !410, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2786, file: !1803, line: 512, baseType: !410, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2786, file: !1803, line: 513, baseType: !410, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2786, file: !1803, line: 514, baseType: !410, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2786, file: !1803, line: 515, baseType: !410, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2786, file: !1803, line: 516, baseType: !410, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2786, file: !1803, line: 518, baseType: !410, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2786, file: !1803, line: 519, baseType: !410, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2786, file: !1803, line: 520, baseType: !302, size: 64, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2786, file: !1803, line: 522, baseType: !410, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2786, file: !1803, line: 523, baseType: !410, size: 64, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2786, file: !1803, line: 524, baseType: !302, size: 64, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2786, file: !1803, line: 526, baseType: !302, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2786, file: !1803, line: 527, baseType: !410, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2786, file: !1803, line: 529, baseType: !410, size: 64, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2786, file: !1803, line: 530, baseType: !410, size: 64, offset: 960)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2786, file: !1803, line: 531, baseType: !410, size: 64, offset: 1024)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2786, file: !1803, line: 532, baseType: !410, size: 64, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2786, file: !1803, line: 533, baseType: !410, size: 64, offset: 1152)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2786, file: !1803, line: 535, baseType: !410, size: 64, offset: 1216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2786, file: !1803, line: 536, baseType: !410, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2786, file: !1803, line: 537, baseType: !410, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2786, file: !1803, line: 538, baseType: !410, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2786, file: !1803, line: 539, baseType: !410, size: 64, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2786, file: !1803, line: 540, baseType: !410, size: 64, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2786, file: !1803, line: 541, baseType: !410, size: 64, offset: 1600)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2786, file: !1803, line: 542, baseType: !410, size: 64, offset: 1664)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2786, file: !1803, line: 543, baseType: !410, size: 64, offset: 1728)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2597, file: !1803, line: 833, baseType: !7, size: 32, offset: 7680)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2597, file: !1803, line: 836, baseType: !7, size: 32, offset: 7712)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2597, file: !1803, line: 837, baseType: !109, size: 32, offset: 7744)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2597, file: !1803, line: 838, baseType: !2820, size: 64, offset: 7808)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2823, line: 19, baseType: !2824)
!2823 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2823, line: 19, size: 64, elements: !2825)
!2825 = !{!2826}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2824, file: !2823, line: 19, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, elements: !2828)
!2828 = !{!2829}
!2829 = !DISubrange(count: 1)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2597, file: !1803, line: 839, baseType: !2831, size: 64, offset: 7872)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2597, file: !1803, line: 840, baseType: !2822, size: 64, offset: 7936)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2597, file: !1803, line: 841, baseType: !183, size: 64, offset: 8000)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2597, file: !1803, line: 843, baseType: !252, size: 16, offset: 8064)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2597, file: !1803, line: 845, baseType: !252, size: 16, offset: 8080)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2597, file: !1803, line: 848, baseType: !109, size: 32, offset: 8096)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2597, file: !1803, line: 849, baseType: !2838, size: 32, offset: 8128)
!2838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1803, line: 718, size: 32, elements: !2839)
!2839 = !{!2840, !2847}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2838, file: !1803, line: 724, baseType: !2841, size: 32)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2838, file: !1803, line: 719, size: 32, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2841, file: !1803, line: 720, baseType: !223, size: 8)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2841, file: !1803, line: 721, baseType: !223, size: 8, offset: 8)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2841, file: !1803, line: 722, baseType: !223, size: 8, offset: 16)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2841, file: !1803, line: 723, baseType: !223, size: 8, offset: 24)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2838, file: !1803, line: 725, baseType: !467, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2597, file: !1803, line: 850, baseType: !190, size: 128, offset: 8192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2597, file: !1803, line: 851, baseType: !2850, size: 64, offset: 8320)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1803, line: 60, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2597, file: !1803, line: 855, baseType: !186, size: 64, offset: 8384)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2597, file: !1803, line: 856, baseType: !223, size: 8, offset: 8448)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2597, file: !1803, line: 857, baseType: !223, size: 8, offset: 8456)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2597, file: !1803, line: 858, baseType: !109, size: 32, offset: 8480)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2597, file: !1803, line: 859, baseType: !190, size: 128, offset: 8512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2597, file: !1803, line: 860, baseType: !109, size: 32, offset: 8640)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2597, file: !1803, line: 861, baseType: !190, size: 128, offset: 8704)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2597, file: !1803, line: 873, baseType: !2860, size: 256, offset: 8832)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1803, line: 376, size: 256, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2860, file: !1803, line: 381, baseType: !186, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2860, file: !1803, line: 384, baseType: !412, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2860, file: !1803, line: 389, baseType: !412, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2860, file: !1803, line: 392, baseType: !412, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2597, file: !1803, line: 875, baseType: !190, size: 128, offset: 9088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2597, file: !1803, line: 877, baseType: !2868, size: 320, offset: 9216)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2869, line: 86, size: 320, elements: !2870)
!2869 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2870 = !{!2871, !2872, !2873}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2868, file: !2869, line: 87, baseType: !109, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2868, file: !2869, line: 88, baseType: !190, size: 128, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2868, file: !2869, line: 89, baseType: !190, size: 128, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2597, file: !1803, line: 878, baseType: !434, size: 192, align: 64, offset: 9536)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2597, file: !1803, line: 881, baseType: !1190, size: 64, offset: 9728)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2597, file: !1803, line: 882, baseType: !1190, size: 64, offset: 9792)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2597, file: !1803, line: 884, baseType: !109, size: 32, offset: 9856)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2597, file: !1803, line: 885, baseType: !109, size: 32, offset: 9888)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2597, file: !1803, line: 886, baseType: !109, size: 32, offset: 9920)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2597, file: !1803, line: 888, baseType: !109, size: 32, offset: 9952)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2597, file: !1803, line: 890, baseType: !186, size: 64, offset: 9984)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2597, file: !1803, line: 893, baseType: !7, size: 32, offset: 10048)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2597, file: !1803, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2597, file: !1803, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2597, file: !1803, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2597, file: !1803, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2597, file: !1803, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2597, file: !1803, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2597, file: !1803, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2597, file: !1803, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2597, file: !1803, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2597, file: !1803, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2597, file: !1803, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2597, file: !1803, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2597, file: !1803, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2597, file: !1803, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2597, file: !1803, line: 969, baseType: !186, size: 64, offset: 10176)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2597, file: !1803, line: 971, baseType: !2899, size: 448, offset: 10240)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2900)
!2900 = !{!2901, !2902, !2907}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2899, file: !62, line: 26, baseType: !186, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2899, file: !62, line: 27, baseType: !2903, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!783, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2899, file: !62, line: 28, baseType: !2908, size: 320, offset: 128)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2899, file: !62, line: 28, size: 320, elements: !2909)
!2909 = !{!2910, !2920, !2945}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2908, file: !62, line: 37, baseType: !2911, size: 320)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !62, line: 30, size: 320, elements: !2912)
!2912 = !{!2913, !2915, !2916, !2917, !2918, !2919}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2911, file: !62, line: 31, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2911, file: !62, line: 32, baseType: !467, size: 32, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2911, file: !62, line: 33, baseType: !467, size: 32, offset: 96)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2911, file: !62, line: 34, baseType: !467, size: 32, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2911, file: !62, line: 35, baseType: !410, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2911, file: !62, line: 36, baseType: !2914, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2908, file: !62, line: 47, baseType: !2921, size: 192)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !62, line: 39, size: 192, elements: !2922)
!2922 = !{!2923, !2924, !2925, !2944}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2921, file: !62, line: 40, baseType: !2754, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2921, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2921, file: !62, line: 42, baseType: !2926, size: 64, offset: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2921, file: !62, line: 42, size: 64, elements: !2927)
!2927 = !{!2928, !2936}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2926, file: !62, line: 43, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2931, line: 7, size: 128, elements: !2932)
!2931 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2932 = !{!2933, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2930, file: !2931, line: 8, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !321, line: 93, baseType: !304)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2930, file: !2931, line: 9, baseType: !304, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2926, file: !62, line: 44, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2939, line: 7, size: 64, elements: !2940)
!2939 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2940 = !{!2941, !2943}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2938, file: !2939, line: 8, baseType: !2942, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2939, line: 5, baseType: !427)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2938, file: !2939, line: 9, baseType: !427, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2921, file: !62, line: 46, baseType: !410, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2908, file: !62, line: 55, baseType: !2946, size: 256)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2908, file: !62, line: 49, size: 256, elements: !2947)
!2947 = !{!2948, !2951, !2952, !2953, !2954}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2946, file: !62, line: 50, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2946, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2946, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2946, file: !62, line: 53, baseType: !186, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2946, file: !62, line: 54, baseType: !186, size: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2597, file: !1803, line: 973, baseType: !2956, size: 32, offset: 10688)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !185, line: 27, baseType: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !321, line: 28, baseType: !109)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2597, file: !1803, line: 974, baseType: !2956, size: 32, offset: 10720)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2597, file: !1803, line: 978, baseType: !186, size: 64, offset: 10752)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2597, file: !1803, line: 987, baseType: !2596, size: 64, offset: 10816)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2597, file: !1803, line: 990, baseType: !2596, size: 64, offset: 10880)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2597, file: !1803, line: 995, baseType: !190, size: 128, offset: 10944)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2597, file: !1803, line: 996, baseType: !190, size: 128, offset: 11072)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2597, file: !1803, line: 997, baseType: !2596, size: 64, offset: 11200)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2597, file: !1803, line: 1005, baseType: !190, size: 128, offset: 11264)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2597, file: !1803, line: 1006, baseType: !190, size: 128, offset: 11392)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2597, file: !1803, line: 1009, baseType: !328, size: 64, offset: 11520)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2597, file: !1803, line: 1010, baseType: !2969, size: 512, offset: 11584)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 512, elements: !350)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2597, file: !1803, line: 1011, baseType: !190, size: 128, offset: 12096)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2597, file: !1803, line: 1012, baseType: !190, size: 128, offset: 12224)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2597, file: !1803, line: 1014, baseType: !1883, size: 64, offset: 12352)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2597, file: !1803, line: 1017, baseType: !2020, size: 64, offset: 12416)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2597, file: !1803, line: 1020, baseType: !2020, size: 64, offset: 12480)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2597, file: !1803, line: 1023, baseType: !183, size: 64, offset: 12544)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2597, file: !1803, line: 1025, baseType: !410, size: 64, offset: 12608)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2597, file: !1803, line: 1026, baseType: !410, size: 64, offset: 12672)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2597, file: !1803, line: 1031, baseType: !410, size: 64, offset: 12736)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2597, file: !1803, line: 1032, baseType: !2980, size: 192, offset: 12800)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1803, line: 324, size: 192, elements: !2981)
!2981 = !{!2982, !2983, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2980, file: !1803, line: 326, baseType: !410, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2980, file: !1803, line: 327, baseType: !410, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2980, file: !1803, line: 328, baseType: !311, size: 32, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2597, file: !1803, line: 1041, baseType: !186, size: 64, offset: 12992)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2597, file: !1803, line: 1042, baseType: !186, size: 64, offset: 13056)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2597, file: !1803, line: 1045, baseType: !410, size: 64, offset: 13120)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2597, file: !1803, line: 1048, baseType: !410, size: 64, offset: 13184)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2597, file: !1803, line: 1051, baseType: !186, size: 64, offset: 13248)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2597, file: !1803, line: 1052, baseType: !186, size: 64, offset: 13312)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2597, file: !1803, line: 1055, baseType: !2992, size: 640, offset: 13376)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2993, line: 132, size: 640, elements: !2994)
!2993 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2994 = !{!2995, !3001, !3002}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2992, file: !2993, line: 133, baseType: !2996, size: 576)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2997, size: 576, elements: !230)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2993, line: 117, size: 192, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2997, file: !2993, line: 118, baseType: !410, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2997, file: !2993, line: 119, baseType: !2763, size: 128, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2992, file: !2993, line: 134, baseType: !7, size: 32, offset: 576)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2992, file: !2993, line: 135, baseType: !7, size: 32, offset: 608)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2597, file: !1803, line: 1058, baseType: !3004, size: 448, offset: 14016)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2993, line: 144, size: 448, elements: !3005)
!3005 = !{!3006, !3007, !3008}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3004, file: !2993, line: 145, baseType: !271, size: 128, align: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3004, file: !2993, line: 146, baseType: !306, size: 256, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3004, file: !2993, line: 147, baseType: !7, size: 32, offset: 384)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2597, file: !1803, line: 1064, baseType: !383, size: 64, offset: 14464)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2597, file: !1803, line: 1067, baseType: !383, size: 64, offset: 14528)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2597, file: !1803, line: 1070, baseType: !383, size: 64, offset: 14592)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2597, file: !1803, line: 1074, baseType: !419, size: 64, offset: 14656)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2597, file: !1803, line: 1084, baseType: !3014, size: 128, offset: 14720)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 128, elements: !3015)
!3015 = !{!3016}
!3016 = !DISubrange(count: 16)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2597, file: !1803, line: 1086, baseType: !3018, size: 64, offset: 14848)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1803, line: 55, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2597, file: !1803, line: 1089, baseType: !3021, size: 64, offset: 14912)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3022, line: 12, size: 64, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3021, file: !3022, line: 13, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3022, line: 8, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2597, file: !1803, line: 1090, baseType: !3028, size: 128, offset: 14976)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3029, line: 13, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3028, file: !3029, line: 14, baseType: !190, size: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2597, file: !1803, line: 1097, baseType: !3033, size: 64, offset: 15104)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1803, line: 50, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2597, file: !1803, line: 1100, baseType: !3036, size: 64, offset: 15168)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1803, line: 1100, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2597, file: !1803, line: 1103, baseType: !3039, size: 64, offset: 15232)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1803, line: 53, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2597, file: !1803, line: 1107, baseType: !3042, size: 64, offset: 15296)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1803, line: 56, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2597, file: !1803, line: 1110, baseType: !3045, size: 64, offset: 15360)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3047, line: 93, size: 8768, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3096, !3105, !3106, !3108, !3109, !3110, !3113, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3151, !3152, !3159, !3169, !3172, !3173, !3176, !3177, !3178, !3179, !3180, !3181}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3046, file: !3047, line: 94, baseType: !332, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3046, file: !3047, line: 95, baseType: !215, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3046, file: !3047, line: 96, baseType: !109, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3046, file: !3047, line: 97, baseType: !109, size: 32, offset: 96)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3046, file: !3047, line: 98, baseType: !190, size: 128, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3046, file: !3047, line: 100, baseType: !354, size: 192, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3046, file: !3047, line: 103, baseType: !2596, size: 64, offset: 448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3046, file: !3047, line: 106, baseType: !3057, size: 192, offset: 512)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !595, line: 32, size: 192, elements: !3058)
!3058 = !{!3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3057, file: !595, line: 33, baseType: !190, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3057, file: !595, line: 34, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3062, line: 25, baseType: !3063)
!3062 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3062, line: 23, size: 64, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3063, file: !3062, line: 24, baseType: !2827, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3046, file: !3047, line: 109, baseType: !341, size: 64, offset: 704)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3046, file: !3047, line: 112, baseType: !109, size: 32, offset: 768)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3046, file: !3047, line: 114, baseType: !109, size: 32, offset: 800)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3046, file: !3047, line: 115, baseType: !2596, size: 64, offset: 832)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3046, file: !3047, line: 118, baseType: !109, size: 32, offset: 896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3046, file: !3047, line: 119, baseType: !7, size: 32, offset: 928)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3046, file: !3047, line: 121, baseType: !3073, size: 64, offset: 960)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3047, line: 80, size: 448, elements: !3075)
!3075 = !{!3076, !3077, !3083}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3074, file: !3047, line: 81, baseType: !215, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3074, file: !3047, line: 82, baseType: !3078, size: 128, offset: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3047, line: 75, size: 128, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3078, file: !3047, line: 76, baseType: !2596, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3078, file: !3047, line: 77, baseType: !3082, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3074, file: !3047, line: 83, baseType: !1142, size: 256, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3046, file: !3047, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3046, file: !3047, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3046, file: !3047, line: 138, baseType: !7, size: 32, offset: 1056)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3046, file: !3047, line: 139, baseType: !190, size: 128, offset: 1088)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3046, file: !3047, line: 142, baseType: !2707, size: 512, offset: 1216)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3046, file: !3047, line: 143, baseType: !2715, size: 64, offset: 1728)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3046, file: !3047, line: 150, baseType: !3091, size: 256, offset: 1792)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3092, size: 256, elements: !2010)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3047, line: 38, size: 128, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3092, file: !3047, line: 39, baseType: !410, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3092, file: !3047, line: 40, baseType: !410, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3046, file: !3047, line: 156, baseType: !3097, size: 192, offset: 2048)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3047, line: 66, size: 192, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3097, file: !3047, line: 67, baseType: !3100, size: 192)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3047, line: 47, size: 192, elements: !3101)
!3101 = !{!3102, !3103, !3104}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3100, file: !3047, line: 48, baseType: !298, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3100, file: !3047, line: 49, baseType: !298, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3100, file: !3047, line: 50, baseType: !298, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3046, file: !3047, line: 160, baseType: !2992, size: 640, offset: 2240)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3046, file: !3047, line: 163, baseType: !3107, size: 256, offset: 2880)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 256, elements: !350)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3046, file: !3047, line: 169, baseType: !328, size: 64, offset: 3136)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3046, file: !3047, line: 172, baseType: !109, size: 32, offset: 3200)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3046, file: !3047, line: 174, baseType: !3111, size: 64, offset: 3264)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3047, line: 174, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3046, file: !3047, line: 185, baseType: !3114, size: 64, offset: 3328)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !635, line: 860, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 853, size: 64, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3115, file: !635, line: 858, baseType: !634, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3115, file: !635, line: 859, baseType: !281, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3046, file: !3047, line: 186, baseType: !410, size: 64, offset: 3392)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3046, file: !3047, line: 186, baseType: !410, size: 64, offset: 3456)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3046, file: !3047, line: 186, baseType: !410, size: 64, offset: 3520)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3046, file: !3047, line: 186, baseType: !410, size: 64, offset: 3584)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3046, file: !3047, line: 187, baseType: !410, size: 64, offset: 3648)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3046, file: !3047, line: 188, baseType: !410, size: 64, offset: 3712)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3046, file: !3047, line: 189, baseType: !2980, size: 192, offset: 3776)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3046, file: !3047, line: 190, baseType: !186, size: 64, offset: 3968)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3046, file: !3047, line: 190, baseType: !186, size: 64, offset: 4032)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3046, file: !3047, line: 190, baseType: !186, size: 64, offset: 4096)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3046, file: !3047, line: 190, baseType: !186, size: 64, offset: 4160)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3046, file: !3047, line: 191, baseType: !186, size: 64, offset: 4224)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3046, file: !3047, line: 191, baseType: !186, size: 64, offset: 4288)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3046, file: !3047, line: 191, baseType: !186, size: 64, offset: 4352)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3046, file: !3047, line: 191, baseType: !186, size: 64, offset: 4416)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3046, file: !3047, line: 192, baseType: !186, size: 64, offset: 4480)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3046, file: !3047, line: 192, baseType: !186, size: 64, offset: 4544)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3046, file: !3047, line: 192, baseType: !186, size: 64, offset: 4608)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3046, file: !3047, line: 192, baseType: !186, size: 64, offset: 4672)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3046, file: !3047, line: 193, baseType: !186, size: 64, offset: 4736)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3046, file: !3047, line: 193, baseType: !186, size: 64, offset: 4800)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3046, file: !3047, line: 194, baseType: !3141, size: 448, offset: 4864)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3142, line: 12, size: 448, elements: !3143)
!3142 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3141, file: !3142, line: 15, baseType: !410, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3141, file: !3142, line: 17, baseType: !410, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3141, file: !3142, line: 19, baseType: !410, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3141, file: !3142, line: 21, baseType: !410, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3141, file: !3142, line: 29, baseType: !410, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3141, file: !3142, line: 35, baseType: !410, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3141, file: !3142, line: 44, baseType: !410, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3046, file: !3047, line: 202, baseType: !412, size: 64, offset: 5312)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3046, file: !3047, line: 213, baseType: !3153, size: 2048, offset: 5376)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3154, size: 2048, elements: !3015)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3155, line: 43, size: 128, elements: !3156)
!3155 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3154, file: !3155, line: 44, baseType: !827, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3154, file: !3155, line: 45, baseType: !827, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3046, file: !3047, line: 216, baseType: !3160, size: 448, offset: 7424)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3047, line: 30, size: 448, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3160, file: !3047, line: 31, baseType: !109, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3160, file: !3047, line: 32, baseType: !783, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3160, file: !3047, line: 33, baseType: !186, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3160, file: !3047, line: 34, baseType: !410, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3160, file: !3047, line: 34, baseType: !410, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3160, file: !3047, line: 35, baseType: !186, size: 64, offset: 320)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3160, file: !3047, line: 35, baseType: !186, size: 64, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3046, file: !3047, line: 219, baseType: !3170, size: 64, offset: 7872)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3047, line: 219, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3046, file: !3047, line: 222, baseType: !7, size: 32, offset: 7936)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3046, file: !3047, line: 223, baseType: !3174, size: 64, offset: 8000)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3047, line: 223, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3046, file: !3047, line: 230, baseType: !504, size: 8, offset: 8064)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3046, file: !3047, line: 231, baseType: !472, size: 16, offset: 8080)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3046, file: !3047, line: 232, baseType: !472, size: 16, offset: 8096)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3046, file: !3047, line: 234, baseType: !1190, size: 64, offset: 8128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3046, file: !3047, line: 237, baseType: !306, size: 256, offset: 8192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3046, file: !3047, line: 243, baseType: !442, size: 320, offset: 8448)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2597, file: !1803, line: 1111, baseType: !3183, size: 64, offset: 15424)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3047, line: 20, size: 16640, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3184, file: !3047, line: 21, baseType: !281, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3184, file: !3047, line: 22, baseType: !332, size: 32, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3184, file: !3047, line: 23, baseType: !354, size: 192, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3184, file: !3047, line: 24, baseType: !3190, size: 16384, offset: 256)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3191, size: 16384, elements: !969)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !595, line: 51, size: 256, elements: !3192)
!3192 = !{!3193}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3191, file: !595, line: 52, baseType: !3194, size: 256)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !595, line: 37, size: 256, elements: !3195)
!3195 = !{!3196, !3203, !3204, !3208}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3194, file: !595, line: 39, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3198, line: 83, baseType: !3199)
!3198 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3198, line: 82, baseType: !3201)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !109}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3194, file: !595, line: 40, baseType: !186, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3194, file: !595, line: 46, baseType: !3205, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3198, line: 86, baseType: !3206)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3198, line: 85, baseType: !2225)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3194, file: !595, line: 48, baseType: !3061, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2597, file: !1803, line: 1112, baseType: !3061, size: 64, offset: 15488)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2597, file: !1803, line: 1113, baseType: !3061, size: 64, offset: 15552)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2597, file: !1803, line: 1115, baseType: !3061, size: 64, offset: 15616)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2597, file: !1803, line: 1116, baseType: !3057, size: 192, offset: 15680)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2597, file: !1803, line: 1117, baseType: !186, size: 64, offset: 15872)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2597, file: !1803, line: 1118, baseType: !825, size: 64, offset: 15936)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2597, file: !1803, line: 1119, baseType: !7, size: 32, offset: 16000)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2597, file: !1803, line: 1121, baseType: !274, size: 64, offset: 16064)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2597, file: !1803, line: 1125, baseType: !3218, size: 64, offset: 16128)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1803, line: 43, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2597, file: !1803, line: 1127, baseType: !373, size: 32, offset: 16192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2597, file: !1803, line: 1128, baseType: !7, size: 32, offset: 16224)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2597, file: !1803, line: 1130, baseType: !3223, size: 128, offset: 16256)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3224, line: 37, size: 128, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3223, file: !3224, line: 38, baseType: !109, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3223, file: !3224, line: 39, baseType: !215, size: 32, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3223, file: !3224, line: 40, baseType: !3229, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3224, line: 24, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2597, file: !1803, line: 1131, baseType: !3232, size: 256, offset: 16384)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3233, line: 12, size: 256, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3234 = !{!3235, !3236, !3237, !3238}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3232, file: !3233, line: 13, baseType: !517, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3232, file: !3233, line: 14, baseType: !186, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3232, file: !3233, line: 15, baseType: !186, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3232, file: !3233, line: 16, baseType: !504, size: 8, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2597, file: !1803, line: 1134, baseType: !410, size: 64, offset: 16640)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2597, file: !1803, line: 1135, baseType: !410, size: 64, offset: 16704)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2597, file: !1803, line: 1138, baseType: !281, size: 32, offset: 16768)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2597, file: !1803, line: 1141, baseType: !311, size: 32, offset: 16800)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2597, file: !1803, line: 1143, baseType: !3244, size: 64, offset: 16832)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1803, line: 735, size: 64, elements: !3245)
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3244, file: !1803, line: 736, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2597, file: !1803, line: 1147, baseType: !1039, size: 128, offset: 16896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2597, file: !1803, line: 1149, baseType: !2596, size: 64, offset: 17024)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2597, file: !1803, line: 1151, baseType: !3251, size: 64, offset: 17088)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1803, line: 1151, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2597, file: !1803, line: 1188, baseType: !183, size: 64, offset: 17152)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2597, file: !1803, line: 1191, baseType: !3255, size: 64, offset: 17216)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1803, line: 44, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2597, file: !1803, line: 1194, baseType: !3258, size: 64, offset: 17280)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1803, line: 45, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2597, file: !1803, line: 1197, baseType: !3261, size: 64, offset: 17344)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1803, line: 61, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2597, file: !1803, line: 1199, baseType: !3264, size: 64, offset: 17408)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3266, line: 99, size: 128, elements: !3267)
!3266 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3265, file: !3266, line: 100, baseType: !296, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3265, file: !3266, line: 101, baseType: !215, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3265, file: !3266, line: 103, baseType: !252, size: 16, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2597, file: !1803, line: 1202, baseType: !3272, size: 64, offset: 17472)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1803, line: 48, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2597, file: !1803, line: 1205, baseType: !186, size: 64, offset: 17536)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2597, file: !1803, line: 1206, baseType: !3276, size: 64, offset: 17600)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !595, line: 14, baseType: !3278)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !595, line: 12, size: 384, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !595, line: 13, baseType: !3281, size: 384)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3278, file: !595, line: 13, size: 384, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3281, file: !595, line: 13, baseType: !109, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3281, file: !595, line: 13, baseType: !109, size: 32, offset: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3281, file: !595, line: 13, baseType: !109, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3281, file: !595, line: 13, baseType: !3287, size: 256, offset: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3288, line: 37, size: 256, elements: !3289)
!3288 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3289 = !{!3290, !3295, !3308, !3314, !3323, !3350, !3355}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3287, file: !3288, line: 42, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 39, size: 64, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3291, file: !3288, line: 40, baseType: !2957, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3291, file: !3288, line: 41, baseType: !379, size: 32, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3287, file: !3288, line: 50, baseType: !3296, size: 192)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 45, size: 192, elements: !3297)
!3297 = !{!3298, !3300, !3301, !3307}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3296, file: !3288, line: 46, baseType: !3299, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !321, line: 95, baseType: !109)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3296, file: !3288, line: 47, baseType: !109, size: 32, offset: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3296, file: !3288, line: 48, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3288, line: 11, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3288, line: 8, size: 64, elements: !3304)
!3304 = !{!3305, !3306}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3303, file: !3288, line: 9, baseType: !109, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3303, file: !3288, line: 10, baseType: !183, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3296, file: !3288, line: 49, baseType: !109, size: 32, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3287, file: !3288, line: 57, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 53, size: 128, elements: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3309, file: !3288, line: 54, baseType: !2957, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3309, file: !3288, line: 55, baseType: !379, size: 32, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3309, file: !3288, line: 56, baseType: !3302, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3287, file: !3288, line: 66, baseType: !3315, size: 256)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 60, size: 256, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3322}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3315, file: !3288, line: 61, baseType: !2957, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3315, file: !3288, line: 62, baseType: !379, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3315, file: !3288, line: 63, baseType: !109, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3315, file: !3288, line: 64, baseType: !3321, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !321, line: 94, baseType: !824)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3315, file: !3288, line: 65, baseType: !3321, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3287, file: !3288, line: 105, baseType: !3324, size: 256)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 69, size: 256, elements: !3325)
!3325 = !{!3326, !3327}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3324, file: !3288, line: 70, baseType: !183, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !3324, file: !3288, line: 79, baseType: !3328, size: 192, offset: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3324, file: !3288, line: 79, size: 192, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3339, !3344}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3328, file: !3288, line: 81, baseType: !109, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3328, file: !3288, line: 86, baseType: !472, size: 16)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3328, file: !3288, line: 92, baseType: !3333, size: 192)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !3288, line: 88, size: 192, elements: !3334)
!3334 = !{!3335, !3337, !3338}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3333, file: !3288, line: 89, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !2750)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3333, file: !3288, line: 90, baseType: !183, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3333, file: !3288, line: 91, baseType: !183, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3328, file: !3288, line: 97, baseType: !3340, size: 96)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !3288, line: 94, size: 96, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3340, file: !3288, line: 95, baseType: !3336, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3340, file: !3288, line: 96, baseType: !468, size: 32, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3328, file: !3288, line: 103, baseType: !3345, size: 128)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !3288, line: 99, size: 128, elements: !3346)
!3346 = !{!3347, !3348, !3349}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3345, file: !3288, line: 100, baseType: !186, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3345, file: !3288, line: 101, baseType: !468, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3345, file: !3288, line: 102, baseType: !468, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3287, file: !3288, line: 111, baseType: !3351, size: 128)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 108, size: 128, elements: !3352)
!3352 = !{!3353, !3354}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3351, file: !3288, line: 109, baseType: !783, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3351, file: !3288, line: 110, baseType: !109, size: 32, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3287, file: !3288, line: 118, baseType: !3356, size: 128)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3288, line: 114, size: 128, elements: !3357)
!3357 = !{!3358, !3359, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3356, file: !3288, line: 115, baseType: !183, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3356, file: !3288, line: 116, baseType: !109, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3356, file: !3288, line: 117, baseType: !7, size: 32, offset: 96)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2597, file: !1803, line: 1208, baseType: !3141, size: 448, offset: 17664)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2597, file: !1803, line: 1215, baseType: !410, size: 64, offset: 18112)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2597, file: !1803, line: 1217, baseType: !410, size: 64, offset: 18176)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2597, file: !1803, line: 1219, baseType: !410, size: 64, offset: 18240)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2597, file: !1803, line: 1223, baseType: !3366, size: 64, offset: 18304)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3367, line: 99, baseType: !3368)
!3367 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3367, line: 99, size: 64, elements: !3369)
!3369 = !{!3370}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3368, file: !3367, line: 99, baseType: !2827, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2597, file: !1803, line: 1225, baseType: !634, size: 32, offset: 18368)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2597, file: !1803, line: 1226, baseType: !109, size: 32, offset: 18400)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2597, file: !1803, line: 1227, baseType: !109, size: 32, offset: 18432)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2597, file: !1803, line: 1231, baseType: !3375, size: 64, offset: 18496)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1803, line: 1231, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2597, file: !1803, line: 1233, baseType: !190, size: 128, offset: 18560)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2597, file: !1803, line: 1240, baseType: !3379, size: 64, offset: 18688)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1803, line: 62, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2597, file: !1803, line: 1242, baseType: !3382, size: 64, offset: 18752)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1803, line: 1242, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2597, file: !1803, line: 1244, baseType: !190, size: 128, offset: 18816)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2597, file: !1803, line: 1245, baseType: !3386, size: 64, offset: 18944)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1803, line: 51, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2597, file: !1803, line: 1246, baseType: !306, size: 256, offset: 19008)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2597, file: !1803, line: 1247, baseType: !7, size: 32, offset: 19264)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2597, file: !1803, line: 1250, baseType: !3391, size: 64, offset: 19328)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1803, line: 57, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2597, file: !1803, line: 1251, baseType: !306, size: 256, offset: 19392)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2597, file: !1803, line: 1252, baseType: !190, size: 128, offset: 19648)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2597, file: !1803, line: 1259, baseType: !1435, size: 64, offset: 19776)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2597, file: !1803, line: 1260, baseType: !472, size: 16, offset: 19840)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2597, file: !1803, line: 1261, baseType: !472, size: 16, offset: 19856)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2597, file: !1803, line: 1314, baseType: !3399, size: 64, offset: 19904)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3401, line: 62, size: 256, align: 256, elements: !3402)
!3401 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3400, file: !3401, line: 75, baseType: !468, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3400, file: !3401, line: 90, baseType: !468, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3400, file: !3401, line: 112, baseType: !411, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3400, file: !3401, line: 132, baseType: !468, size: 32, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3400, file: !3401, line: 140, baseType: !468, size: 32, offset: 160)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3400, file: !3401, line: 149, baseType: !468, size: 32, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3400, file: !3401, line: 154, baseType: !3410, offset: 224)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, elements: !369)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2597, file: !1803, line: 1315, baseType: !467, size: 32, offset: 19968)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2597, file: !1803, line: 1316, baseType: !467, size: 32, offset: 20000)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2597, file: !1803, line: 1321, baseType: !186, size: 64, offset: 20032)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2597, file: !1803, line: 1325, baseType: !109, size: 32, offset: 20096)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2597, file: !1803, line: 1326, baseType: !109, size: 32, offset: 20128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2597, file: !1803, line: 1327, baseType: !109, size: 32, offset: 20160)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2597, file: !1803, line: 1328, baseType: !109, size: 32, offset: 20192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2597, file: !1803, line: 1329, baseType: !271, size: 128, align: 64, offset: 20224)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2597, file: !1803, line: 1332, baseType: !3420, size: 128, offset: 20352)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3421, line: 51, size: 128, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3422 = !{!3423, !3428, !3429}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3420, file: !3421, line: 60, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3425, line: 7, size: 64, elements: !3426)
!3425 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3424, file: !3425, line: 12, baseType: !2824, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3420, file: !3421, line: 63, baseType: !504, size: 8, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3420, file: !3421, line: 70, baseType: !504, size: 8, offset: 72)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2597, file: !1803, line: 1335, baseType: !3431, size: 64, offset: 20480)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1803, line: 59, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2597, file: !1803, line: 1337, baseType: !3434, size: 128, offset: 20544)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3421, line: 39, size: 128, elements: !3435)
!3435 = !{!3436, !3437, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3434, file: !3421, line: 40, baseType: !1057, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3434, file: !3421, line: 42, baseType: !468, size: 32, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3434, file: !3421, line: 43, baseType: !468, size: 32, offset: 96)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2597, file: !1803, line: 1340, baseType: !3440, size: 64, offset: 20672)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1803, line: 69, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2597, file: !1803, line: 1351, baseType: !109, size: 32, offset: 20736)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2597, file: !1803, line: 1352, baseType: !109, size: 32, offset: 20768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2597, file: !1803, line: 1354, baseType: !186, size: 64, offset: 20800)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2597, file: !1803, line: 1364, baseType: !410, size: 64, offset: 20864)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2597, file: !1803, line: 1365, baseType: !410, size: 64, offset: 20928)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2597, file: !1803, line: 1412, baseType: !186, size: 64, offset: 20992)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2597, file: !1803, line: 1453, baseType: !3449, size: 64, offset: 21056)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1803, line: 1453, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2597, file: !1803, line: 1457, baseType: !3452, size: 64, offset: 21120)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3454)
!3454 = !{!3455, !3456, !3475, !3478, !3479, !3512, !3522}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3453, file: !68, line: 62, baseType: !67, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !68, line: 64, baseType: !3457, size: 192, offset: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3453, file: !68, line: 64, size: 192, elements: !3458)
!3458 = !{!3459, !3470}
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !68, line: 65, baseType: !3460, size: 192)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !68, line: 65, size: 192, elements: !3461)
!3461 = !{!3462, !3469}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3460, file: !68, line: 66, baseType: !3463, size: 128)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3464, line: 50, size: 128, elements: !3465)
!3464 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3465 = !{!3466, !3467, !3468}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3463, file: !3464, line: 52, baseType: !186, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3463, file: !3464, line: 54, baseType: !7, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3463, file: !3464, line: 55, baseType: !7, size: 32, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3460, file: !68, line: 67, baseType: !186, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !68, line: 70, baseType: !3471, size: 192)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !68, line: 70, size: 192, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3471, file: !68, line: 71, baseType: !271, size: 128, align: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3471, file: !68, line: 72, baseType: !186, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3453, file: !68, line: 76, baseType: !3476, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3453, file: !68, line: 77, baseType: !186, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3453, file: !68, line: 79, baseType: !3480, size: 64, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3464, line: 25, size: 256, elements: !3482)
!3482 = !{!3483, !3489, !3493}
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3464, line: 26, baseType: !3484, size: 128)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !3464, line: 26, size: 128, elements: !3485)
!3485 = !{!3486, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3484, file: !3464, line: 27, baseType: !3487, size: 128)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !3015)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3484, file: !3464, line: 28, baseType: !3487, size: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3481, file: !3464, line: 31, baseType: !3490, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3492)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3464, line: 23, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3464, line: 33, baseType: !3494, size: 64, offset: 192)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !3464, line: 33, size: 64, elements: !3495)
!3495 = !{!3496, !3502, !3507}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3494, file: !3464, line: 38, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3464, line: 34, size: 64, elements: !3498)
!3498 = !{!3499, !3500, !3501}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3497, file: !3464, line: 35, baseType: !427, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3497, file: !3464, line: 36, baseType: !223, size: 8, offset: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3497, file: !3464, line: 37, baseType: !223, size: 8, offset: 40)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3494, file: !3464, line: 42, baseType: !3503, size: 16)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3464, line: 39, size: 16, elements: !3504)
!3504 = !{!3505, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3503, file: !3464, line: 40, baseType: !223, size: 8)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3503, file: !3464, line: 41, baseType: !223, size: 8, offset: 8)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3494, file: !3464, line: 46, baseType: !3508, size: 16)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3464, line: 43, size: 16, elements: !3509)
!3509 = !{!3510, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3508, file: !3464, line: 44, baseType: !223, size: 8)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3508, file: !3464, line: 45, baseType: !223, size: 8, offset: 8)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3453, file: !68, line: 81, baseType: !3513, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3514, file: !68, line: 86, baseType: !3476, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3514, file: !68, line: 87, baseType: !186, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3514, file: !68, line: 88, baseType: !186, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3514, file: !68, line: 89, baseType: !186, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3514, file: !68, line: 90, baseType: !504, size: 8, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3514, file: !68, line: 92, baseType: !3513, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3453, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2597, file: !1803, line: 1463, baseType: !3524, offset: 21184)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1803, line: 739, elements: !1211)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2597, file: !1803, line: 1470, baseType: !271, size: 128, align: 64, offset: 21184)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2597, file: !1803, line: 1471, baseType: !332, size: 32, offset: 21312)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2597, file: !1803, line: 1472, baseType: !109, size: 32, offset: 21344)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2597, file: !1803, line: 1474, baseType: !2596, size: 64, offset: 21376)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2597, file: !1803, line: 1475, baseType: !2120, size: 320, offset: 21440)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2597, file: !1803, line: 1478, baseType: !3531, size: 64, offset: 21760)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3533, line: 49, size: 512, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3544}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3532, file: !3533, line: 50, baseType: !3531, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3532, file: !3533, line: 51, baseType: !183, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3532, file: !3533, line: 52, baseType: !186, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3532, file: !3533, line: 53, baseType: !186, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3532, file: !3533, line: 54, baseType: !1609, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3532, file: !3533, line: 56, baseType: !7, size: 32, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3532, file: !3533, line: 58, baseType: !7, size: 32, offset: 352)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3532, file: !3533, line: 59, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !185, line: 159, baseType: !410)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3532, file: !3533, line: 60, baseType: !1306, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2597, file: !1803, line: 1482, baseType: !332, size: 32, offset: 21824)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2597, file: !1803, line: 1489, baseType: !183, size: 64, offset: 21888)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2597, file: !1803, line: 1504, baseType: !183, size: 64, offset: 21952)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2597, file: !1803, line: 1505, baseType: !411, size: 64, offset: 22016)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2597, file: !1803, line: 1506, baseType: !410, size: 64, offset: 22080)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2597, file: !1803, line: 1507, baseType: !411, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2597, file: !1803, line: 1508, baseType: !411, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2597, file: !1803, line: 1509, baseType: !411, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2597, file: !1803, line: 1510, baseType: !271, size: 128, align: 64, offset: 22208)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2597, file: !1803, line: 1511, baseType: !109, size: 32, offset: 22336)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2597, file: !1803, line: 1515, baseType: !3556, size: 64, offset: 22400)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !266, line: 56, size: 64, elements: !3557)
!3557 = !{!3558}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3556, file: !266, line: 57, baseType: !269, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2597, file: !1803, line: 1518, baseType: !3556, size: 64, offset: 22464)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2597, file: !1803, line: 1528, baseType: !271, size: 128, align: 64, offset: 22528)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2597, file: !1803, line: 1552, baseType: !3562, size: 35328, offset: 23040)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3563, line: 430, size: 35328, elements: !3564)
!3563 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3564 = !{!3565, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3594, !3595, !3596, !3597, !3598, !3599, !3602, !3603, !3604, !3605}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3562, file: !3563, line: 432, baseType: !3566, size: 192)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3567, size: 192, elements: !230)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3568, line: 16, size: 64, elements: !3569)
!3568 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3567, file: !3568, line: 17, baseType: !250, size: 16)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3567, file: !3568, line: 18, baseType: !250, size: 16, offset: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3567, file: !3568, line: 19, baseType: !250, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3567, file: !3568, line: 19, baseType: !250, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3567, file: !3568, line: 19, baseType: !250, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3567, file: !3568, line: 19, baseType: !250, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3567, file: !3568, line: 19, baseType: !250, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3567, file: !3568, line: 20, baseType: !250, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3567, file: !3568, line: 20, baseType: !250, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3567, file: !3568, line: 20, baseType: !250, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3567, file: !3568, line: 20, baseType: !250, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3567, file: !3568, line: 20, baseType: !250, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3567, file: !3568, line: 20, baseType: !250, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3562, file: !3563, line: 436, baseType: !186, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3562, file: !3563, line: 440, baseType: !252, size: 16, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3562, file: !3563, line: 441, baseType: !252, size: 16, offset: 272)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3562, file: !3563, line: 442, baseType: !252, size: 16, offset: 288)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3562, file: !3563, line: 443, baseType: !252, size: 16, offset: 304)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3562, file: !3563, line: 447, baseType: !186, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3562, file: !3563, line: 448, baseType: !186, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3562, file: !3563, line: 459, baseType: !3591, size: 256, offset: 448)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3592, size: 256, elements: !350)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3563, line: 428, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3562, file: !3563, line: 461, baseType: !186, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3562, file: !3563, line: 463, baseType: !186, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3562, file: !3563, line: 465, baseType: !186, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3562, file: !3563, line: 466, baseType: !186, size: 64, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3562, file: !3563, line: 467, baseType: !186, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3562, file: !3563, line: 473, baseType: !3600, size: 64, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3563, line: 10, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3562, file: !3563, line: 480, baseType: !186, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3562, file: !3563, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3562, file: !3563, line: 491, baseType: !467, size: 32, offset: 1184)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3562, file: !3563, line: 501, baseType: !3606, size: 33792, offset: 1536)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3607, line: 448, size: 33792, elements: !3608)
!3607 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3608 = !{!3609, !3610, !3611, !3775, !3776, !3782, !3783}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3606, file: !3607, line: 461, baseType: !7, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3606, file: !3607, line: 468, baseType: !186, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3606, file: !3607, line: 476, baseType: !3612, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3607, line: 356, size: 33280, align: 512, elements: !3614)
!3614 = !{!3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3613, file: !3607, line: 358, baseType: !7, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3613, file: !3607, line: 361, baseType: !7, size: 32, offset: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3613, file: !3607, line: 364, baseType: !410, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3613, file: !3607, line: 367, baseType: !410, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3613, file: !3607, line: 370, baseType: !410, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3613, file: !3607, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3613, file: !3607, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3613, file: !3607, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3613, file: !3607, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3613, file: !3607, line: 397, baseType: !3625, size: 32768, offset: 512)
!3625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3607, line: 348, size: 32768, elements: !3626)
!3626 = !{!3627, !3642, !3681, !3758, !3771}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3625, file: !3607, line: 349, baseType: !3628, size: 896)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3607, line: 12, size: 896, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3641}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3628, file: !3607, line: 13, baseType: !467, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3628, file: !3607, line: 14, baseType: !467, size: 32, offset: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3628, file: !3607, line: 15, baseType: !467, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3628, file: !3607, line: 16, baseType: !467, size: 32, offset: 96)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3628, file: !3607, line: 17, baseType: !467, size: 32, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3628, file: !3607, line: 18, baseType: !467, size: 32, offset: 160)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3628, file: !3607, line: 19, baseType: !467, size: 32, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3628, file: !3607, line: 22, baseType: !3638, size: 640, offset: 224)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 640, elements: !3639)
!3639 = !{!3640}
!3640 = !DISubrange(count: 20)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3628, file: !3607, line: 25, baseType: !467, size: 32, offset: 864)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3625, file: !3607, line: 350, baseType: !3643, size: 4096, align: 128)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3607, line: 34, size: 4096, align: 128, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3664, !3665, !3666, !3670, !3672, !3676}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3643, file: !3607, line: 35, baseType: !250, size: 16)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3643, file: !3607, line: 36, baseType: !250, size: 16, offset: 16)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3643, file: !3607, line: 37, baseType: !250, size: 16, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3643, file: !3607, line: 38, baseType: !250, size: 16, offset: 48)
!3649 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !3607, line: 39, baseType: !3650, size: 128, offset: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !3607, line: 39, size: 128, elements: !3651)
!3651 = !{!3652, !3657}
!3652 = !DIDerivedType(tag: DW_TAG_member, scope: !3650, file: !3607, line: 40, baseType: !3653, size: 128)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3650, file: !3607, line: 40, size: 128, elements: !3654)
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3653, file: !3607, line: 41, baseType: !410, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3653, file: !3607, line: 42, baseType: !410, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3650, file: !3607, line: 44, baseType: !3658, size: 128)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3650, file: !3607, line: 44, size: 128, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3658, file: !3607, line: 45, baseType: !467, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3658, file: !3607, line: 46, baseType: !467, size: 32, offset: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3658, file: !3607, line: 47, baseType: !467, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3658, file: !3607, line: 48, baseType: !467, size: 32, offset: 96)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3643, file: !3607, line: 51, baseType: !467, size: 32, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3643, file: !3607, line: 52, baseType: !467, size: 32, offset: 224)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3643, file: !3607, line: 55, baseType: !3667, size: 1024, offset: 256)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 1024, elements: !3668)
!3668 = !{!3669}
!3669 = !DISubrange(count: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3643, file: !3607, line: 58, baseType: !3671, size: 2048, offset: 1280)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 2048, elements: !969)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3643, file: !3607, line: 60, baseType: !3673, size: 384, offset: 3328)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 384, elements: !3674)
!3674 = !{!3675}
!3675 = !DISubrange(count: 12)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !3607, line: 62, baseType: !3677, size: 384, offset: 3712)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !3607, line: 62, size: 384, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3677, file: !3607, line: 63, baseType: !3673, size: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3677, file: !3607, line: 64, baseType: !3673, size: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3625, file: !3607, line: 351, baseType: !3682, size: 1088)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3607, line: 79, size: 1088, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3757}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3682, file: !3607, line: 80, baseType: !467, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3682, file: !3607, line: 81, baseType: !467, size: 32, offset: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3682, file: !3607, line: 82, baseType: !467, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3682, file: !3607, line: 83, baseType: !467, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3682, file: !3607, line: 84, baseType: !467, size: 32, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3682, file: !3607, line: 85, baseType: !467, size: 32, offset: 160)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3682, file: !3607, line: 86, baseType: !467, size: 32, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3682, file: !3607, line: 88, baseType: !3638, size: 640, offset: 224)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3682, file: !3607, line: 89, baseType: !223, size: 8, offset: 864)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3682, file: !3607, line: 90, baseType: !223, size: 8, offset: 872)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3682, file: !3607, line: 91, baseType: !223, size: 8, offset: 880)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3682, file: !3607, line: 92, baseType: !223, size: 8, offset: 888)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3682, file: !3607, line: 93, baseType: !223, size: 8, offset: 896)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3682, file: !3607, line: 94, baseType: !223, size: 8, offset: 904)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3682, file: !3607, line: 95, baseType: !3699, size: 64, offset: 960)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3701, line: 11, size: 128, elements: !3702)
!3701 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3702 = !{!3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3700, file: !3701, line: 12, baseType: !783, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3700, file: !3701, line: 13, baseType: !3705, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3707, line: 103, size: 1344, elements: !3708)
!3707 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3737, !3738, !3739}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3706, file: !3707, line: 109, baseType: !186, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3706, file: !3707, line: 110, baseType: !186, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3706, file: !3707, line: 111, baseType: !186, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3706, file: !3707, line: 112, baseType: !186, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3706, file: !3707, line: 113, baseType: !186, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3706, file: !3707, line: 114, baseType: !186, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3706, file: !3707, line: 117, baseType: !186, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3706, file: !3707, line: 118, baseType: !186, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3706, file: !3707, line: 119, baseType: !186, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3706, file: !3707, line: 120, baseType: !186, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3706, file: !3707, line: 121, baseType: !186, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3706, file: !3707, line: 122, baseType: !186, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3706, file: !3707, line: 123, baseType: !186, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3706, file: !3707, line: 124, baseType: !186, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3706, file: !3707, line: 125, baseType: !186, size: 64, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3706, file: !3707, line: 139, baseType: !186, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3706, file: !3707, line: 142, baseType: !186, size: 64, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !3707, line: 144, baseType: !3727, size: 64, offset: 1088)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !3707, line: 144, size: 64, elements: !3728)
!3728 = !{!3729, !3730, !3731}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3727, file: !3707, line: 146, baseType: !250, size: 16)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3727, file: !3707, line: 148, baseType: !410, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3727, file: !3707, line: 150, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3707, line: 59, size: 64, elements: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3732, file: !3707, line: 61, baseType: !410, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3732, file: !3707, line: 63, baseType: !410, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3732, file: !3707, line: 65, baseType: !410, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3706, file: !3707, line: 153, baseType: !186, size: 64, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3706, file: !3707, line: 154, baseType: !186, size: 64, offset: 1216)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !3707, line: 156, baseType: !3740, size: 64, offset: 1280)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !3707, line: 156, size: 64, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3740, file: !3707, line: 158, baseType: !250, size: 16)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3740, file: !3707, line: 160, baseType: !410, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3740, file: !3707, line: 162, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3707, line: 69, size: 64, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3745, file: !3707, line: 71, baseType: !410, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3745, file: !3707, line: 73, baseType: !410, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3745, file: !3707, line: 75, baseType: !410, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3745, file: !3707, line: 77, baseType: !410, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3745, file: !3707, line: 80, baseType: !410, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3745, file: !3707, line: 83, baseType: !410, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3745, file: !3707, line: 86, baseType: !410, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3745, file: !3707, line: 88, baseType: !410, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3745, file: !3707, line: 93, baseType: !410, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3745, file: !3707, line: 100, baseType: !410, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3682, file: !3607, line: 96, baseType: !467, size: 32, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3625, file: !3607, line: 352, baseType: !3759, size: 4608, align: 512)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3607, line: 333, size: 4608, align: 512, elements: !3760)
!3760 = !{!3761, !3762, !3769}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3759, file: !3607, line: 334, baseType: !3643, size: 4096, align: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3759, file: !3607, line: 335, baseType: !3763, size: 512, offset: 4096)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3607, line: 312, size: 512, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3763, file: !3607, line: 313, baseType: !410, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3763, file: !3607, line: 314, baseType: !410, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3763, file: !3607, line: 315, baseType: !3768, size: 384, offset: 128)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !491)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3759, file: !3607, line: 336, baseType: !3770, offset: 4608)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !369)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3625, file: !3607, line: 353, baseType: !3772, size: 32768)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 32768, elements: !3773)
!3773 = !{!3774}
!3774 = !DISubrange(count: 4096)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3606, file: !3607, line: 484, baseType: !3612, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3606, file: !3607, line: 491, baseType: !3777, size: 128, offset: 256)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3607, line: 404, size: 128, elements: !3778)
!3778 = !{!3779, !3780, !3781}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3777, file: !3607, line: 424, baseType: !410, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3777, file: !3607, line: 432, baseType: !7, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3777, file: !3607, line: 440, baseType: !7, size: 32, offset: 96)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3606, file: !3607, line: 498, baseType: !3777, size: 128, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3606, file: !3607, line: 508, baseType: !3613, size: 33280, align: 512, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2579, file: !2580, line: 16, baseType: !354, size: 192, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2579, file: !2580, line: 17, baseType: !215, size: 32, offset: 704)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !881, file: !14, line: 1240, baseType: !183, size: 64, offset: 6912)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !881, file: !14, line: 1243, baseType: !467, size: 32, offset: 6976)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !881, file: !14, line: 1245, baseType: !458, size: 64, offset: 7040)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !881, file: !14, line: 1246, baseType: !458, size: 64, offset: 7104)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !881, file: !14, line: 1248, baseType: !468, size: 32, offset: 7168)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !881, file: !14, line: 1249, baseType: !3792, size: 64, offset: 7232)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !881, file: !14, line: 1252, baseType: !3795, size: 256, offset: 7296)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 256, elements: !3668)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !881, file: !14, line: 1253, baseType: !3797, size: 128, offset: 7552)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3798, line: 21, baseType: !3799)
!3798 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3798, line: 19, size: 128, elements: !3800)
!3800 = !{!3801}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3799, file: !3798, line: 20, baseType: !3802, size: 128)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !3015)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !881, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !881, file: !14, line: 1261, baseType: !306, size: 256, offset: 7744)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !881, file: !14, line: 1267, baseType: !507, size: 64, offset: 8000)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !881, file: !14, line: 1269, baseType: !3807, size: 64, offset: 8064)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !630, line: 128, size: 1024, align: 512, elements: !3810)
!3810 = !{!3811, !3815, !3816, !3823, !3829, !3833, !3837, !3841, !3842, !3846, !3850, !3855, !3859}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3809, file: !630, line: 129, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!109, !628, !7}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3809, file: !630, line: 130, baseType: !3812, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3809, file: !630, line: 131, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !3820, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3809, file: !630, line: 132, baseType: !3824, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!109, !3820, !7, !507, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3809, file: !630, line: 134, baseType: !3830, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!109, !3820}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3809, file: !630, line: 135, baseType: !3834, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!109, !628}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3809, file: !630, line: 136, baseType: !3838, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !628}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3809, file: !630, line: 137, baseType: !3838, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3809, file: !630, line: 138, baseType: !3843, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !628, !668}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3809, file: !630, line: 139, baseType: !3847, size: 64, offset: 576)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!517, !628, !517, !109}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3809, file: !630, line: 140, baseType: !3851, size: 64, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!623, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3809, file: !630, line: 141, baseType: !3856, size: 64, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!109, !791, !504}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3809, file: !630, line: 142, baseType: !3860, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!628, !628, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !881, file: !14, line: 1271, baseType: !3866, size: 448, offset: 8128)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2361, line: 63, size: 448, elements: !3867)
!3867 = !{!3868, !3873, !3874, !3875, !3876, !3877, !3878}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3866, file: !2361, line: 64, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!186, !3872, !2359}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3866, file: !2361, line: 66, baseType: !3869, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3866, file: !2361, line: 69, baseType: !783, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3866, file: !2361, line: 70, baseType: !109, size: 32, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3866, file: !2361, line: 71, baseType: !7, size: 32, offset: 224)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3866, file: !2361, line: 74, baseType: !190, size: 128, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3866, file: !2361, line: 85, baseType: !3879, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !881, file: !14, line: 1274, baseType: !296, size: 64, offset: 8576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !881, file: !14, line: 1280, baseType: !296, size: 64, offset: 8640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !881, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !881, file: !14, line: 1286, baseType: !1699, size: 32, offset: 8736)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !881, file: !14, line: 1289, baseType: !2182, size: 64, offset: 8768)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !881, file: !14, line: 1290, baseType: !341, size: 64, offset: 8832)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !881, file: !14, line: 1297, baseType: !590, size: 64, offset: 8896)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !881, file: !14, line: 1304, baseType: !3888, size: 64, offset: 8960)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3889, line: 49, size: 64, elements: !3890)
!3889 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3890 = !{!3891}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3888, file: !3889, line: 50, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3889, line: 41, size: 512, align: 512, elements: !3894)
!3894 = !{!3895, !3896, !3901}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3893, file: !3889, line: 43, baseType: !281, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3893, file: !3889, line: 45, baseType: !3897, size: 192, offset: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3889, line: 29, size: 192, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3897, file: !3889, line: 30, baseType: !190, size: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3897, file: !3889, line: 32, baseType: !783, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3893, file: !3889, line: 46, baseType: !783, size: 64, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !881, file: !14, line: 1305, baseType: !3888, size: 64, offset: 9024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !881, file: !14, line: 1306, baseType: !271, size: 128, align: 64, offset: 9088)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !881, file: !14, line: 1307, baseType: !1345, size: 256, offset: 9216)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !881, file: !14, line: 1309, baseType: !306, size: 256, offset: 9472)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !881, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !881, file: !14, line: 1317, baseType: !281, size: 32, align: 512, offset: 10240)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !881, file: !14, line: 1318, baseType: !190, size: 128, offset: 10304)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !881, file: !14, line: 1320, baseType: !281, size: 32, offset: 10432)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !881, file: !14, line: 1321, baseType: !190, size: 128, offset: 10496)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !669, file: !14, line: 656, baseType: !1030, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !669, file: !14, line: 659, baseType: !183, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !669, file: !14, line: 663, baseType: !186, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !14, line: 671, baseType: !3915, size: 32, offset: 704)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !14, line: 671, size: 32, elements: !3916)
!3916 = !{!3917, !3919}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3915, file: !14, line: 672, baseType: !3918, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3915, file: !14, line: 673, baseType: !7, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !669, file: !14, line: 675, baseType: !743, size: 32, offset: 736)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !669, file: !14, line: 676, baseType: !319, size: 64, offset: 768)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !669, file: !14, line: 677, baseType: !779, size: 128, offset: 832)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !669, file: !14, line: 678, baseType: !779, size: 128, offset: 960)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !669, file: !14, line: 679, baseType: !779, size: 128, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !669, file: !14, line: 680, baseType: !281, size: 32, offset: 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !669, file: !14, line: 681, baseType: !252, size: 16, offset: 1248)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !669, file: !14, line: 682, baseType: !223, size: 8, offset: 1264)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !669, file: !14, line: 683, baseType: !223, size: 8, offset: 1272)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !669, file: !14, line: 684, baseType: !2492, size: 64, offset: 1280)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !669, file: !14, line: 691, baseType: !186, size: 64, offset: 1344)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !669, file: !14, line: 692, baseType: !442, size: 320, offset: 1408)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !669, file: !14, line: 694, baseType: !186, size: 64, offset: 1728)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !669, file: !14, line: 695, baseType: !186, size: 64, offset: 1792)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !669, file: !14, line: 697, baseType: !345, size: 128, offset: 1856)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !669, file: !14, line: 698, baseType: !190, size: 128, offset: 1984)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !669, file: !14, line: 707, baseType: !190, size: 128, offset: 2112)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !669, file: !14, line: 708, baseType: !190, size: 128, offset: 2240)
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !14, line: 709, baseType: !3939, size: 128, offset: 2368)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !14, line: 709, size: 128, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3939, file: !14, line: 710, baseType: !341, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3939, file: !14, line: 711, baseType: !271, size: 128, align: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !669, file: !14, line: 713, baseType: !298, size: 64, offset: 2496)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !669, file: !14, line: 714, baseType: !298, size: 64, offset: 2560)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !669, file: !14, line: 715, baseType: !215, size: 32, offset: 2624)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !669, file: !14, line: 716, baseType: !215, size: 32, offset: 2656)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !669, file: !14, line: 717, baseType: !215, size: 32, offset: 2688)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !669, file: !14, line: 719, baseType: !215, size: 32, offset: 2720)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !14, line: 721, baseType: !3950, size: 64, offset: 2752)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !14, line: 721, size: 64, elements: !3951)
!3951 = !{!3952, !4076}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3950, file: !14, line: 722, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3955)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3956)
!3956 = !{!3957, !3958, !3962, !3966, !3970, !3971, !3972, !3978, !3991, !3995, !3999, !4000, !4004, !4005, !4009, !4014, !4015, !4019, !4023, !4029, !4030, !4034, !4035, !4039, !4043, !4044, !4049, !4053, !4057, !4061, !4065, !4066, !4072}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3955, file: !14, line: 1915, baseType: !913, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3955, file: !14, line: 1916, baseType: !3959, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!319, !258, !319, !109}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3955, file: !14, line: 1917, baseType: !3963, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!822, !258, !517, !825, !1826}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3955, file: !14, line: 1918, baseType: !3967, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!822, !258, !507, !825, !1826}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3955, file: !14, line: 1919, baseType: !1633, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3955, file: !14, line: 1920, baseType: !1633, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3955, file: !14, line: 1921, baseType: !3973, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!109, !1636, !3976, !7}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3955, file: !14, line: 1923, baseType: !3979, size: 64, offset: 448)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!109, !258, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3984)
!3984 = !{!3985, !3990}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3983, file: !14, line: 1859, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3987)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!504, !3982, !507, !109, !319, !410, !7}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3983, file: !14, line: 1860, baseType: !319, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3955, file: !14, line: 1924, baseType: !3992, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!1846, !258, !1848}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3955, file: !14, line: 1925, baseType: !3996, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!783, !258, !7, !186}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3955, file: !14, line: 1926, baseType: !3996, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3955, file: !14, line: 1927, baseType: !4001, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!109, !258, !1177}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3955, file: !14, line: 1928, baseType: !186, size: 64, offset: 768)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3955, file: !14, line: 1929, baseType: !4006, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !668, !258}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3955, file: !14, line: 1930, baseType: !4010, size: 64, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!109, !258, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !183)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3955, file: !14, line: 1931, baseType: !4006, size: 64, offset: 960)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3955, file: !14, line: 1932, baseType: !4016, size: 64, offset: 1024)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!109, !258, !319, !319, !109}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3955, file: !14, line: 1933, baseType: !4020, size: 64, offset: 1088)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!109, !109, !258, !109}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3955, file: !14, line: 1934, baseType: !4024, size: 64, offset: 1152)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!109, !258, !109, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3955, file: !14, line: 1935, baseType: !1215, size: 64, offset: 1216)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3955, file: !14, line: 1936, baseType: !4031, size: 64, offset: 1280)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!109, !109}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3955, file: !14, line: 1937, baseType: !4024, size: 64, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3955, file: !14, line: 1938, baseType: !4036, size: 64, offset: 1408)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!822, !3431, !258, !1826, !825, !7}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3955, file: !14, line: 1939, baseType: !4040, size: 64, offset: 1472)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!822, !258, !1826, !3431, !825, !7}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3955, file: !14, line: 1940, baseType: !1689, size: 64, offset: 1536)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3955, file: !14, line: 1941, baseType: !4045, size: 64, offset: 1600)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!109, !258, !109, !4048, !1610}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3955, file: !14, line: 1942, baseType: !4050, size: 64, offset: 1664)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!783, !258, !109, !319, !319}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3955, file: !14, line: 1944, baseType: !4054, size: 64, offset: 1728)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !1801, !258}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3955, file: !14, line: 1948, baseType: !4058, size: 64, offset: 1792)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!822, !258, !319, !258, !319, !825, !7}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3955, file: !14, line: 1950, baseType: !4062, size: 64, offset: 1856)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!319, !258, !319, !258, !319, !319, !7}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3955, file: !14, line: 1953, baseType: !4016, size: 64, offset: 1920)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3955, file: !14, line: 1954, baseType: !4067, size: 64, offset: 1984)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!109, !4070, !7}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3955, file: !14, line: 1955, baseType: !4073, size: 64, offset: 2048)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!109, !4070, !3976, !7}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3950, file: !14, line: 723, baseType: !2250, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !669, file: !14, line: 725, baseType: !4078, size: 64, offset: 2816)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !669, file: !14, line: 726, baseType: !1031, size: 1536, align: 64, offset: 2880)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !669, file: !14, line: 727, baseType: !190, size: 128, offset: 4416)
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !14, line: 728, baseType: !4083, size: 64, offset: 4544)
!4083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !14, line: 728, size: 64, elements: !4084)
!4084 = !{!4085, !4086, !4089, !4090}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4083, file: !14, line: 729, baseType: !3431, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4083, file: !14, line: 730, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4083, file: !14, line: 731, baseType: !517, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4083, file: !14, line: 732, baseType: !7, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !669, file: !14, line: 735, baseType: !468, size: 32, offset: 4608)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !669, file: !14, line: 738, baseType: !468, size: 32, offset: 4640)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !669, file: !14, line: 739, baseType: !3792, size: 64, offset: 4672)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !669, file: !14, line: 750, baseType: !183, size: 64, offset: 4736)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !629, file: !630, line: 91, baseType: !4096, size: 256, offset: 448)
!4096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !3668)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !629, file: !630, line: 94, baseType: !4098, size: 64, offset: 704)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4099, line: 25, size: 64, elements: !4100)
!4099 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4100 = !{!4101}
!4101 = !DIDerivedType(tag: DW_TAG_member, scope: !4098, file: !4099, line: 26, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4098, file: !4099, line: 26, size: 64, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4102, file: !4099, line: 28, baseType: !411, size: 64, align: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4102, file: !4099, line: 30, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4102, file: !4099, line: 30, size: 64, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4106, file: !4099, line: 31, baseType: !281, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4106, file: !4099, line: 32, baseType: !109, size: 32, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !629, file: !630, line: 95, baseType: !3807, size: 64, offset: 768)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !629, file: !630, line: 96, baseType: !880, size: 64, offset: 832)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !629, file: !630, line: 97, baseType: !186, size: 64, offset: 896)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !629, file: !630, line: 98, baseType: !183, size: 64, offset: 960)
!4114 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !630, line: 100, baseType: !4115, size: 128, offset: 1024)
!4115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !630, line: 100, size: 128, elements: !4116)
!4116 = !{!4117, !4118}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4115, file: !630, line: 101, baseType: !190, size: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4115, file: !630, line: 102, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !629, file: !630, line: 104, baseType: !190, size: 128, offset: 1152)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !629, file: !630, line: 105, baseType: !190, size: 128, offset: 1280)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !629, file: !630, line: 113, baseType: !4123, size: 128, offset: 1408)
!4123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !630, line: 109, size: 128, elements: !4124)
!4124 = !{!4125, !4126, !4127}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4123, file: !630, line: 110, baseType: !345, size: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4123, file: !630, line: 111, baseType: !644, size: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4123, file: !630, line: 112, baseType: !271, size: 128, align: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !624, file: !625, line: 72, baseType: !880, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !624, file: !625, line: 73, baseType: !109, size: 32, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !624, file: !625, line: 74, baseType: !708, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !619, file: !620, line: 10, baseType: !628, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !259, file: !14, line: 1015, baseType: !668, size: 64, offset: 1344)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !259, file: !14, line: 1016, baseType: !3953, size: 64, offset: 1408)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !259, file: !14, line: 1018, baseType: !410, size: 64, offset: 1472)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !259, file: !14, line: 1020, baseType: !183, size: 64, offset: 1536)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !259, file: !14, line: 1023, baseType: !183, size: 64, offset: 1600)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !259, file: !14, line: 1027, baseType: !4138, size: 64, offset: 1664)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !259, file: !14, line: 1029, baseType: !1030, size: 64, offset: 1728)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !259, file: !14, line: 1030, baseType: !1699, size: 32, offset: 1792)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !259, file: !14, line: 1031, baseType: !1699, size: 32, offset: 1824)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !199, file: !14, line: 1089, baseType: !271, size: 128, align: 64, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !195, file: !3, line: 162, baseType: !109, size: 32, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !195, file: !3, line: 163, baseType: !109, size: 32, offset: 96)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !195, file: !3, line: 164, baseType: !109, size: 32, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !195, file: !3, line: 165, baseType: !190, size: 128, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!4149 = !{!0, !4150, !4152, !4154, !4156, !4158, !4160, !4165, !4167, !4169}
!4150 = !DIGlobalVariableExpression(var: !4151, expr: !DIExpression())
!4151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pci_quirk_lookup_id295", scope: !2, file: !3, line: 125, type: !183, isLocal: true, isDefinition: true)
!4152 = !DIGlobalVariableExpression(var: !4153, expr: !DIExpression())
!4153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pci_quirk_lookup296", scope: !2, file: !3, line: 147, type: !183, isLocal: true, isDefinition: true)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_fasync_helper297", scope: !2, file: !3, line: 216, type: !183, isLocal: true, isDefinition: true)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_kill_fasync298", scope: !2, file: !3, line: 231, type: !183, isLocal: true, isDefinition: true)
!4158 = !DIGlobalVariableExpression(var: !4159, expr: !DIExpression())
!4159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_fasync_free299", scope: !2, file: !3, line: 241, type: !183, isLocal: true, isDefinition: true)
!4160 = !DIGlobalVariableExpression(var: !4161, expr: !DIExpression())
!4161 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !4162, isLocal: true, isDefinition: true)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 168, elements: !4163)
!4163 = !{!4164}
!4164 = !DISubrange(count: 21)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "snd_fasync_lock", scope: !2, file: !3, line: 168, type: !281, isLocal: true, isDefinition: true)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "snd_fasync_list", scope: !2, file: !3, line: 169, type: !190, isLocal: true, isDefinition: true)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "snd_fasync_work", scope: !2, file: !3, line: 187, type: !1345, isLocal: true, isDefinition: true)
!4171 = !{i32 7, !"Dwarf Version", i32 5}
!4172 = !{i32 2, !"Debug Info Version", i32 3}
!4173 = !{i32 1, !"wchar_size", i32 2}
!4174 = !{i32 8, !"cf-protection-branch", i32 1}
!4175 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4176 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4177 = !{i32 1, !"Code Model", i32 2}
!4178 = !{i32 1, !"override-stack-alignment", i32 8}
!4179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4180 = distinct !DISubprogram(name: "release_and_free_resource", scope: !3, file: !3, line: 30, type: !4181, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4196)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4185, line: 21, size: 512, elements: !4186)
!4185 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4186 = !{!4187, !4189, !4190, !4191, !4192, !4193, !4194, !4195}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4184, file: !4185, line: 22, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !185, line: 164, baseType: !3543)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4184, file: !4185, line: 23, baseType: !4188, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4184, file: !4185, line: 24, baseType: !507, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4184, file: !4185, line: 25, baseType: !186, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4184, file: !4185, line: 26, baseType: !186, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4184, file: !4185, line: 27, baseType: !4183, size: 64, offset: 320)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4184, file: !4185, line: 27, baseType: !4183, size: 64, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4184, file: !4185, line: 27, baseType: !4183, size: 64, offset: 448)
!4196 = !{!4197}
!4197 = !DILocalVariable(name: "res", arg: 1, scope: !4180, file: !3, line: 30, type: !4183)
!4198 = !DILocation(line: 30, column: 49, scope: !4180)
!4199 = !DILocation(line: 32, column: 6, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 32, column: 6)
!4201 = !DILocation(line: 32, column: 6, scope: !4180)
!4202 = !DILocation(line: 33, column: 20, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 32, column: 11)
!4204 = !DILocation(line: 33, column: 3, scope: !4203)
!4205 = !DILocation(line: 34, column: 9, scope: !4203)
!4206 = !DILocation(line: 34, column: 3, scope: !4203)
!4207 = !DILocation(line: 35, column: 2, scope: !4203)
!4208 = !DILocation(line: 36, column: 1, scope: !4180)
!4209 = !DISubprogram(name: "release_resource", scope: !4185, file: !4185, line: 197, type: !4210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!109, !4183}
!4212 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !4213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !1306}
!4215 = distinct !DISubprogram(name: "snd_pci_quirk_lookup_id", scope: !3, file: !3, line: 111, type: !4216, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4227)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!4218, !250, !250, !4218}
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pci_quirk", file: !4221, line: 454, size: 96, elements: !4222)
!4221 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4220, file: !4221, line: 455, baseType: !252, size: 16)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4220, file: !4221, line: 456, baseType: !252, size: 16, offset: 16)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_mask", scope: !4220, file: !4221, line: 457, baseType: !252, size: 16, offset: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4220, file: !4221, line: 458, baseType: !109, size: 32, offset: 64)
!4227 = !{!4228, !4229, !4230, !4231}
!4228 = !DILocalVariable(name: "vendor", arg: 1, scope: !4215, file: !3, line: 111, type: !250)
!4229 = !DILocalVariable(name: "device", arg: 2, scope: !4215, file: !3, line: 111, type: !250)
!4230 = !DILocalVariable(name: "list", arg: 3, scope: !4215, file: !3, line: 112, type: !4218)
!4231 = !DILocalVariable(name: "q", scope: !4215, file: !3, line: 114, type: !4218)
!4232 = !DILocation(line: 111, column: 29, scope: !4215)
!4233 = !DILocation(line: 111, column: 41, scope: !4215)
!4234 = !DILocation(line: 112, column: 32, scope: !4215)
!4235 = !DILocation(line: 114, column: 2, scope: !4215)
!4236 = !DILocation(line: 114, column: 30, scope: !4215)
!4237 = !DILocation(line: 116, column: 11, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 116, column: 2)
!4239 = !DILocation(line: 116, column: 9, scope: !4238)
!4240 = !DILocation(line: 116, column: 7, scope: !4238)
!4241 = !DILocation(line: 116, column: 17, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 116, column: 2)
!4243 = !DILocation(line: 116, column: 20, scope: !4242)
!4244 = !DILocation(line: 116, column: 30, scope: !4242)
!4245 = !DILocation(line: 116, column: 33, scope: !4242)
!4246 = !DILocation(line: 116, column: 36, scope: !4242)
!4247 = !DILocation(line: 116, column: 2, scope: !4238)
!4248 = !DILocation(line: 117, column: 7, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 117, column: 7)
!4250 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 116, column: 52)
!4251 = !DILocation(line: 117, column: 10, scope: !4249)
!4252 = !DILocation(line: 117, column: 23, scope: !4249)
!4253 = !DILocation(line: 117, column: 20, scope: !4249)
!4254 = !DILocation(line: 117, column: 7, scope: !4250)
!4255 = !DILocation(line: 118, column: 4, scope: !4249)
!4256 = !DILocation(line: 119, column: 8, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 119, column: 7)
!4258 = !DILocation(line: 119, column: 11, scope: !4257)
!4259 = !DILocation(line: 119, column: 21, scope: !4257)
!4260 = !DILocation(line: 120, column: 8, scope: !4257)
!4261 = !DILocation(line: 120, column: 17, scope: !4257)
!4262 = !DILocation(line: 120, column: 20, scope: !4257)
!4263 = !DILocation(line: 120, column: 15, scope: !4257)
!4264 = !DILocation(line: 120, column: 39, scope: !4257)
!4265 = !DILocation(line: 120, column: 42, scope: !4257)
!4266 = !DILocation(line: 120, column: 36, scope: !4257)
!4267 = !DILocation(line: 119, column: 7, scope: !4250)
!4268 = !DILocation(line: 121, column: 11, scope: !4257)
!4269 = !DILocation(line: 121, column: 4, scope: !4257)
!4270 = !DILocation(line: 122, column: 2, scope: !4250)
!4271 = !DILocation(line: 116, column: 48, scope: !4242)
!4272 = !DILocation(line: 116, column: 2, scope: !4242)
!4273 = distinct !{!4273, !4247, !4274, !4275, !4276}
!4274 = !DILocation(line: 122, column: 2, scope: !4238)
!4275 = !{!"llvm.loop.mustprogress"}
!4276 = !{!"llvm.loop.unroll.disable"}
!4277 = !DILocation(line: 123, column: 2, scope: !4215)
!4278 = !DILocation(line: 124, column: 1, scope: !4215)
!4279 = distinct !DISubprogram(name: "snd_pci_quirk_lookup", scope: !3, file: !3, line: 139, type: !4280, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5036)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!4218, !4282, !4218}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4284, line: 322, size: 16640, elements: !4285)
!4284 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4285 = !{!4286, !4287, !4811, !4812, !4813, !4814, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4920, !4921, !4922, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4999, !5000, !5001, !5003, !5004, !5006, !5007, !5008, !5009, !5015, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4283, file: !4284, line: 323, baseType: !190, size: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4283, file: !4284, line: 324, baseType: !4288, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4284, line: 647, size: 8256, elements: !4290)
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4296, !4297, !4299, !4300, !4301, !4325, !4326, !4329, !4330, !4331, !4332, !4333, !4337, !4338, !4340, !4806, !4807, !4808, !4809, !4810}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4289, file: !4284, line: 648, baseType: !190, size: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4289, file: !4284, line: 649, baseType: !4288, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4289, file: !4284, line: 650, baseType: !190, size: 128, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4289, file: !4284, line: 651, baseType: !190, size: 128, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4289, file: !4284, line: 652, baseType: !4282, size: 64, offset: 448)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4289, file: !4284, line: 653, baseType: !190, size: 128, offset: 512)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4289, file: !4284, line: 655, baseType: !4298, size: 256, offset: 640)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4183, size: 256, elements: !350)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4289, file: !4284, line: 656, baseType: !190, size: 128, offset: 896)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4289, file: !4284, line: 657, baseType: !4184, size: 512, offset: 1024)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4289, file: !4284, line: 659, baseType: !4302, size: 64, offset: 1536)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4284, line: 773, size: 320, elements: !4304)
!4304 = !{!4305, !4309, !4313, !4317, !4321}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4303, file: !4284, line: 774, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!109, !4288}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4303, file: !4284, line: 775, baseType: !4310, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !4288}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4303, file: !4284, line: 776, baseType: !4314, size: 64, offset: 128)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!183, !4288, !7, !109}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4303, file: !4284, line: 777, baseType: !4318, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!109, !4288, !7, !109, !109, !2914}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4303, file: !4284, line: 778, baseType: !4322, size: 64, offset: 256)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!109, !4288, !7, !109, !109, !467}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4289, file: !4284, line: 660, baseType: !183, size: 64, offset: 1600)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4289, file: !4284, line: 661, baseType: !4327, size: 64, offset: 1664)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4221, line: 114, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4289, file: !4284, line: 663, baseType: !227, size: 8, offset: 1728)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4289, file: !4284, line: 664, baseType: !227, size: 8, offset: 1736)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4289, file: !4284, line: 665, baseType: !227, size: 8, offset: 1744)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4289, file: !4284, line: 666, baseType: !227, size: 8, offset: 1752)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4289, file: !4284, line: 671, baseType: !4334, size: 384, offset: 1760)
!4334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 384, elements: !4335)
!4335 = !{!4336}
!4336 = !DISubrange(count: 48)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4289, file: !4284, line: 673, baseType: !252, size: 16, offset: 2144)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4289, file: !4284, line: 674, baseType: !4339, size: 16, offset: 2160)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4284, line: 255, baseType: !252)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4289, file: !4284, line: 675, baseType: !4341, size: 64, offset: 2176)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4349, !4350, !4403, !4488, !4489, !4490, !4491, !4492, !4499, !4591, !4604, !4614, !4618, !4620, !4621, !4622, !4626, !4633, !4634, !4637, !4640, !4644, !4748, !4749, !4750, !4751, !4752, !4753, !4783, !4784, !4785, !4788, !4791, !4800, !4801, !4802, !4803, !4804, !4805}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4342, file: !94, line: 706, baseType: !926, size: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4342, file: !94, line: 707, baseType: !4341, size: 64, offset: 512)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4342, file: !94, line: 709, baseType: !4347, size: 64, offset: 576)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4342, file: !94, line: 711, baseType: !507, size: 64, offset: 640)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4342, file: !94, line: 712, baseType: !4351, size: 64, offset: 704)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4354)
!4354 = !{!4355, !4356, !4357, !4363, !4368, !4372}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4353, file: !94, line: 90, baseType: !507, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4353, file: !94, line: 91, baseType: !1006, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4353, file: !94, line: 92, baseType: !4358, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!109, !4361, !962}
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4342)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4353, file: !94, line: 93, baseType: !4364, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!517, !4361, !4367, !1753, !1754}
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4353, file: !94, line: 95, baseType: !4369, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{null, !4341}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4353, file: !94, line: 97, baseType: !4373, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4375)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4376)
!4376 = !{!4377, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4375, file: !101, line: 287, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!109, !4341}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4375, file: !101, line: 288, baseType: !4369, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4375, file: !101, line: 289, baseType: !4378, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4375, file: !101, line: 290, baseType: !4378, size: 64, offset: 192)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4375, file: !101, line: 291, baseType: !4378, size: 64, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4375, file: !101, line: 292, baseType: !4378, size: 64, offset: 320)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4375, file: !101, line: 293, baseType: !4378, size: 64, offset: 384)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4375, file: !101, line: 294, baseType: !4378, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4375, file: !101, line: 295, baseType: !4378, size: 64, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4375, file: !101, line: 296, baseType: !4378, size: 64, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4375, file: !101, line: 297, baseType: !4378, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4375, file: !101, line: 298, baseType: !4378, size: 64, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4375, file: !101, line: 299, baseType: !4378, size: 64, offset: 768)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4375, file: !101, line: 300, baseType: !4378, size: 64, offset: 832)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4375, file: !101, line: 301, baseType: !4378, size: 64, offset: 896)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4375, file: !101, line: 302, baseType: !4378, size: 64, offset: 960)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4375, file: !101, line: 303, baseType: !4378, size: 64, offset: 1024)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4375, file: !101, line: 304, baseType: !4378, size: 64, offset: 1088)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4375, file: !101, line: 305, baseType: !4378, size: 64, offset: 1152)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4375, file: !101, line: 306, baseType: !4378, size: 64, offset: 1216)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4375, file: !101, line: 307, baseType: !4378, size: 64, offset: 1280)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4375, file: !101, line: 308, baseType: !4378, size: 64, offset: 1344)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4375, file: !101, line: 309, baseType: !4378, size: 64, offset: 1408)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4342, file: !94, line: 714, baseType: !4404, size: 64, offset: 768)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4406)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4407, line: 80, size: 1344, elements: !4408)
!4407 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4408 = !{!4409, !4410, !4411, !4412, !4413, !4414, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4487}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4406, file: !4407, line: 81, baseType: !507, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4406, file: !4407, line: 82, baseType: !507, size: 64, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4406, file: !4407, line: 83, baseType: !1006, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4406, file: !4407, line: 84, baseType: !1006, size: 64, offset: 192)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4406, file: !4407, line: 85, baseType: !1006, size: 64, offset: 256)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4406, file: !4407, line: 87, baseType: !4415, size: 64, offset: 320)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!109, !4341, !4418}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426, !4427, !4440, !4450, !4451, !4452, !4453, !4454, !4462, !4463, !4464, !4465, !4466, !4467}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4419, file: !88, line: 97, baseType: !507, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4419, file: !88, line: 98, baseType: !4404, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4419, file: !88, line: 100, baseType: !913, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4419, file: !88, line: 101, baseType: !507, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4419, file: !88, line: 103, baseType: !504, size: 8, offset: 256)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4419, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4419, file: !88, line: 106, baseType: !4428, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4430)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4431, line: 282, size: 1600, elements: !4432)
!4431 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4432 = !{!4433, !4434, !4435, !4439}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4430, file: !4431, line: 283, baseType: !3795, size: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4430, file: !4431, line: 284, baseType: !3795, size: 256, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4430, file: !4431, line: 285, baseType: !4436, size: 1024, offset: 512)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 1024, elements: !4437)
!4437 = !{!4438}
!4438 = !DISubrange(count: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4430, file: !4431, line: 286, baseType: !1306, size: 64, offset: 1536)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4419, file: !88, line: 107, baseType: !4441, size: 64, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4443)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4431, line: 217, size: 256, elements: !4444)
!4444 = !{!4445, !4446, !4448, !4449}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4443, file: !4431, line: 218, baseType: !3802, size: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4443, file: !4431, line: 219, baseType: !4447, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4431, line: 15, baseType: !186)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4443, file: !4431, line: 220, baseType: !468, size: 32, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4443, file: !4431, line: 221, baseType: !468, size: 32, offset: 224)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4419, file: !88, line: 109, baseType: !4378, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4419, file: !88, line: 110, baseType: !4369, size: 64, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4419, file: !88, line: 111, baseType: !4378, size: 64, offset: 576)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4419, file: !88, line: 112, baseType: !4369, size: 64, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4419, file: !88, line: 113, baseType: !4455, size: 64, offset: 704)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!109, !4341, !4458}
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4460)
!4460 = !{!4461}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4459, file: !101, line: 59, baseType: !109, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4419, file: !88, line: 114, baseType: !4378, size: 64, offset: 768)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4419, file: !88, line: 115, baseType: !1006, size: 64, offset: 832)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4419, file: !88, line: 116, baseType: !1006, size: 64, offset: 896)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4419, file: !88, line: 118, baseType: !4373, size: 64, offset: 960)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4419, file: !88, line: 119, baseType: !4369, size: 64, offset: 1024)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4419, file: !88, line: 121, baseType: !4468, size: 64, offset: 1088)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4406, file: !4407, line: 88, baseType: !4358, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4406, file: !4407, line: 89, baseType: !4378, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4406, file: !4407, line: 90, baseType: !4369, size: 64, offset: 512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4406, file: !4407, line: 91, baseType: !4369, size: 64, offset: 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4406, file: !4407, line: 92, baseType: !4369, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4406, file: !4407, line: 94, baseType: !4378, size: 64, offset: 704)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4406, file: !4407, line: 95, baseType: !4378, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4406, file: !4407, line: 97, baseType: !4455, size: 64, offset: 832)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4406, file: !4407, line: 98, baseType: !4378, size: 64, offset: 896)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4406, file: !4407, line: 100, baseType: !4378, size: 64, offset: 960)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4406, file: !4407, line: 102, baseType: !4378, size: 64, offset: 1024)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4406, file: !4407, line: 103, baseType: !4369, size: 64, offset: 1088)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4406, file: !4407, line: 105, baseType: !4373, size: 64, offset: 1152)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4406, file: !4407, line: 107, baseType: !4484, size: 64, offset: 1216)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4486)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4407, line: 107, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4406, file: !4407, line: 109, baseType: !504, size: 8, offset: 1280)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4342, file: !94, line: 715, baseType: !4418, size: 64, offset: 832)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4342, file: !94, line: 717, baseType: !183, size: 64, offset: 896)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4342, file: !94, line: 719, baseType: !183, size: 64, offset: 960)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4342, file: !94, line: 721, baseType: !306, size: 256, offset: 1024)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4342, file: !94, line: 725, baseType: !4493, size: 448, offset: 1280)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4498}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4493, file: !94, line: 518, baseType: !190, size: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4493, file: !94, line: 519, baseType: !190, size: 128, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4493, file: !94, line: 520, baseType: !190, size: 128, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4493, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4342, file: !94, line: 726, baseType: !4500, size: 2496, offset: 1728)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4501)
!4501 = !{!4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4584, !4588}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4500, file: !101, line: 664, baseType: !4458, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4500, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4500, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4500, file: !101, line: 667, baseType: !504, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4500, file: !101, line: 668, baseType: !504, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4500, file: !101, line: 669, baseType: !504, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4500, file: !101, line: 670, baseType: !504, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4500, file: !101, line: 671, baseType: !504, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4500, file: !101, line: 672, baseType: !504, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4500, file: !101, line: 673, baseType: !504, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4500, file: !101, line: 674, baseType: !504, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4500, file: !101, line: 675, baseType: !467, size: 32, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4500, file: !101, line: 676, baseType: !281, size: 32, offset: 96)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4500, file: !101, line: 678, baseType: !190, size: 128, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4500, file: !101, line: 679, baseType: !1142, size: 256, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4500, file: !101, line: 680, baseType: !4518, size: 64, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4520, line: 43, size: 1536, elements: !4521)
!4520 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4519, file: !4520, line: 44, baseType: !507, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4519, file: !4520, line: 45, baseType: !109, size: 32, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4519, file: !4520, line: 46, baseType: !190, size: 128, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4519, file: !4520, line: 47, baseType: !281, size: 32, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4519, file: !4520, line: 48, baseType: !4527, size: 64, offset: 320)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4519, file: !4520, line: 49, baseType: !2120, size: 320, offset: 384)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4519, file: !4520, line: 50, baseType: !186, size: 64, offset: 704)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4519, file: !4520, line: 51, baseType: !2715, size: 64, offset: 768)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4519, file: !4520, line: 52, baseType: !2715, size: 64, offset: 832)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4519, file: !4520, line: 53, baseType: !2715, size: 64, offset: 896)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4519, file: !4520, line: 54, baseType: !2715, size: 64, offset: 960)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4519, file: !4520, line: 55, baseType: !2715, size: 64, offset: 1024)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4519, file: !4520, line: 56, baseType: !186, size: 64, offset: 1088)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4519, file: !4520, line: 57, baseType: !186, size: 64, offset: 1152)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4519, file: !4520, line: 58, baseType: !186, size: 64, offset: 1216)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4519, file: !4520, line: 59, baseType: !186, size: 64, offset: 1280)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4519, file: !4520, line: 60, baseType: !186, size: 64, offset: 1344)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4519, file: !4520, line: 61, baseType: !4341, size: 64, offset: 1408)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4519, file: !4520, line: 62, baseType: !504, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4519, file: !4520, line: 63, baseType: !504, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4500, file: !101, line: 681, baseType: !504, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4500, file: !101, line: 682, baseType: !504, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4500, file: !101, line: 683, baseType: !504, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4500, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4500, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4500, file: !101, line: 690, baseType: !2707, size: 512, offset: 640)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4500, file: !101, line: 691, baseType: !410, size: 64, offset: 1152)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4500, file: !101, line: 692, baseType: !1345, size: 256, offset: 1216)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4500, file: !101, line: 693, baseType: !354, size: 192, offset: 1472)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4500, file: !101, line: 694, baseType: !4527, size: 64, offset: 1664)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4500, file: !101, line: 695, baseType: !215, size: 32, offset: 1728)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4500, file: !101, line: 696, baseType: !215, size: 32, offset: 1760)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4500, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4500, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4500, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4500, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4500, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4500, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4500, file: !101, line: 703, baseType: !504, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4500, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4500, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4500, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4500, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4500, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4500, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4500, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4500, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4500, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4500, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4500, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4500, file: !101, line: 715, baseType: !410, size: 64, offset: 2048)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4500, file: !101, line: 716, baseType: !410, size: 64, offset: 2112)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4500, file: !101, line: 717, baseType: !410, size: 64, offset: 2176)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4500, file: !101, line: 718, baseType: !410, size: 64, offset: 2240)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4500, file: !101, line: 720, baseType: !4579, size: 64, offset: 2304)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4581)
!4581 = !{!4582, !4583}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4580, file: !101, line: 633, baseType: !281, size: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4580, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4500, file: !101, line: 721, baseType: !4585, size: 64, offset: 2368)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !4341, !427}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4500, file: !101, line: 722, baseType: !4589, size: 64, offset: 2432)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4342, file: !94, line: 727, baseType: !4592, size: 64, offset: 4224)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4594)
!4594 = !{!4595, !4596, !4597, !4601, !4602, !4603}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4593, file: !101, line: 743, baseType: !4375, size: 1472)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4593, file: !101, line: 744, baseType: !4378, size: 64, offset: 1472)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4593, file: !101, line: 745, baseType: !4598, size: 64, offset: 1536)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !4341, !504}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4593, file: !101, line: 746, baseType: !4378, size: 64, offset: 1600)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4593, file: !101, line: 747, baseType: !4369, size: 64, offset: 1664)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4593, file: !101, line: 748, baseType: !4369, size: 64, offset: 1728)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4342, file: !94, line: 736, baseType: !4605, size: 128, offset: 4288)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4606)
!4606 = !{!4607, !4611}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4605, file: !94, line: 531, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4610, line: 13, flags: DIFlagFwdDecl)
!4610 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4605, file: !94, line: 532, baseType: !4612, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4342, file: !94, line: 738, baseType: !4615, size: 64, offset: 4416)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4617)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4342, file: !94, line: 740, baseType: !4619, size: 64, offset: 4480)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4342, file: !94, line: 741, baseType: !410, size: 64, offset: 4544)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4342, file: !94, line: 746, baseType: !410, size: 64, offset: 4608)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4342, file: !94, line: 747, baseType: !4623, size: 64, offset: 4672)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4625)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4342, file: !94, line: 749, baseType: !4627, size: 64, offset: 4736)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4629)
!4629 = !{!4630, !4631, !4632}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4628, file: !94, line: 433, baseType: !7, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4628, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4628, file: !94, line: 435, baseType: !186, size: 64, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4342, file: !94, line: 751, baseType: !190, size: 128, offset: 4800)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4342, file: !94, line: 762, baseType: !4635, size: 64, offset: 4928)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4342, file: !94, line: 770, baseType: !4638, offset: 4992)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4639, line: 5, elements: !1211)
!4639 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4342, file: !94, line: 772, baseType: !4641, size: 64, offset: 4992)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4643, line: 18, flags: DIFlagFwdDecl)
!4643 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4342, file: !94, line: 773, baseType: !4645, size: 64, offset: 5056)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4647, line: 41, size: 512, elements: !4648)
!4647 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4648 = !{!4649, !4650, !4744, !4745, !4746, !4747}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4646, file: !4647, line: 42, baseType: !4645, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4646, file: !4647, line: 43, baseType: !4651, size: 64, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4653)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4647, line: 125, size: 1408, elements: !4654)
!4654 = !{!4655, !4659, !4663, !4669, !4673, !4674, !4679, !4683, !4687, !4691, !4695, !4696, !4700, !4704, !4708, !4719, !4720, !4721, !4722, !4732, !4736, !4740}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4653, file: !4647, line: 126, baseType: !4656, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!4645, !4645}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4653, file: !4647, line: 127, baseType: !4660, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4645}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4653, file: !4647, line: 128, baseType: !4664, size: 64, offset: 128)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!504, !4667}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4646)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4653, file: !4647, line: 129, baseType: !4670, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!1306, !4667, !4361}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4653, file: !4647, line: 131, baseType: !4664, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4653, file: !4647, line: 133, baseType: !4675, size: 64, offset: 320)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4678, !4667}
!4678 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4647, line: 132, flags: DIFlagFwdDecl)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4653, file: !4647, line: 134, baseType: !4680, size: 64, offset: 384)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!504, !4667, !507}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4653, file: !4647, line: 136, baseType: !4684, size: 64, offset: 448)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!109, !4667, !507, !7, !183, !825}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4653, file: !4647, line: 141, baseType: !4688, size: 64, offset: 512)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!109, !4667, !507, !2197, !825}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4653, file: !4647, line: 144, baseType: !4692, size: 64, offset: 576)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!507, !4667}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4653, file: !4647, line: 145, baseType: !4692, size: 64, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4653, file: !4647, line: 146, baseType: !4697, size: 64, offset: 704)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!4645, !4667}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4653, file: !4647, line: 148, baseType: !4701, size: 64, offset: 768)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!4645, !4667, !4645}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4653, file: !4647, line: 151, baseType: !4705, size: 64, offset: 832)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!4645, !4667, !507}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4653, file: !4647, line: 153, baseType: !4709, size: 64, offset: 896)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!109, !4667, !507, !507, !7, !7, !4712}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4647, line: 94, size: 640, elements: !4714)
!4714 = !{!4715, !4716, !4717}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4713, file: !4647, line: 95, baseType: !4645, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4713, file: !4647, line: 96, baseType: !7, size: 32, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4713, file: !4647, line: 97, baseType: !4718, size: 512, offset: 128)
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !2750)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4653, file: !4647, line: 158, baseType: !4701, size: 64, offset: 960)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4653, file: !4647, line: 161, baseType: !4697, size: 64, offset: 1024)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4653, file: !4647, line: 163, baseType: !4656, size: 64, offset: 1088)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4653, file: !4647, line: 164, baseType: !4723, size: 64, offset: 1152)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!109, !4667, !4726}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4647, line: 73, size: 128, elements: !4728)
!4728 = !{!4729, !4730, !4731}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4727, file: !4647, line: 74, baseType: !7, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4727, file: !4647, line: 75, baseType: !7, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4727, file: !4647, line: 76, baseType: !4667, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4653, file: !4647, line: 166, baseType: !4733, size: 64, offset: 1216)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!183, !4645, !109}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4653, file: !4647, line: 167, baseType: !4737, size: 64, offset: 1280)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!109, !4667, !7}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4653, file: !4647, line: 168, baseType: !4741, size: 64, offset: 1344)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!109, !4645}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4646, file: !4647, line: 44, baseType: !4341, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4646, file: !4647, line: 45, baseType: !190, size: 128, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4646, file: !4647, line: 46, baseType: !190, size: 128, offset: 320)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4646, file: !4647, line: 47, baseType: !223, size: 8, offset: 448)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4342, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4342, file: !94, line: 778, baseType: !743, size: 32, offset: 5152)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4342, file: !94, line: 779, baseType: !467, size: 32, offset: 5184)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4342, file: !94, line: 781, baseType: !281, size: 32, offset: 5216)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4342, file: !94, line: 782, baseType: !190, size: 128, offset: 5248)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4342, file: !94, line: 784, baseType: !4754, size: 64, offset: 5376)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4756)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4757, line: 52, size: 768, elements: !4758)
!4757 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4758 = !{!4759, !4760, !4761, !4762, !4763, !4767, !4771, !4772, !4773, !4774, !4778, !4782}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4756, file: !4757, line: 53, baseType: !507, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4756, file: !4757, line: 55, baseType: !1006, size: 64, offset: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4756, file: !4757, line: 56, baseType: !1006, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4756, file: !4757, line: 58, baseType: !4358, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4756, file: !4757, line: 59, baseType: !4764, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!517, !4361, !4367}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4756, file: !4757, line: 61, baseType: !4768, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4754}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4756, file: !4757, line: 62, baseType: !4369, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4756, file: !4757, line: 64, baseType: !4378, size: 64, offset: 448)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4756, file: !4757, line: 66, baseType: !1721, size: 64, offset: 512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4756, file: !4757, line: 67, baseType: !4775, size: 64, offset: 576)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!1306, !4361}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4756, file: !4757, line: 69, baseType: !4779, size: 64, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4361, !1753, !1754}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4756, file: !4757, line: 71, baseType: !4373, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4342, file: !94, line: 785, baseType: !1006, size: 64, offset: 5440)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4342, file: !94, line: 787, baseType: !4369, size: 64, offset: 5504)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4342, file: !94, line: 788, baseType: !4786, size: 64, offset: 5568)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4342, file: !94, line: 789, baseType: !4789, size: 64, offset: 5632)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4342, file: !94, line: 791, baseType: !4792, size: 64, offset: 5696)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4799}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4793, file: !94, line: 598, baseType: !116, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4793, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4793, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4793, file: !94, line: 601, baseType: !504, size: 8, offset: 96)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4793, file: !94, line: 602, baseType: !504, size: 8, offset: 104)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4342, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4342, file: !94, line: 795, baseType: !504, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4342, file: !94, line: 796, baseType: !504, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4342, file: !94, line: 797, baseType: !504, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4342, file: !94, line: 798, baseType: !504, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4342, file: !94, line: 799, baseType: !504, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4289, file: !4284, line: 676, baseType: !4342, size: 5824, offset: 2240)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4289, file: !4284, line: 677, baseType: !1020, size: 64, offset: 8064)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4289, file: !4284, line: 678, baseType: !1020, size: 64, offset: 8128)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4289, file: !4284, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4289, file: !4284, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4283, file: !4284, line: 325, baseType: !4288, size: 64, offset: 192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4283, file: !4284, line: 327, baseType: !183, size: 64, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4283, file: !4284, line: 328, baseType: !4327, size: 64, offset: 320)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4283, file: !4284, line: 329, baseType: !4815, size: 64, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4284, line: 76, size: 832, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4823, !4824}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4816, file: !4284, line: 77, baseType: !4288, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4816, file: !4284, line: 78, baseType: !190, size: 128, offset: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4816, file: !4284, line: 79, baseType: !4821, size: 64, offset: 192)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4284, line: 79, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4816, file: !4284, line: 80, baseType: !227, size: 8, offset: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4816, file: !4284, line: 81, baseType: !926, size: 512, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4283, file: !4284, line: 331, baseType: !7, size: 32, offset: 448)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4283, file: !4284, line: 332, baseType: !252, size: 16, offset: 480)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4283, file: !4284, line: 333, baseType: !252, size: 16, offset: 496)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4283, file: !4284, line: 334, baseType: !252, size: 16, offset: 512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4283, file: !4284, line: 335, baseType: !252, size: 16, offset: 528)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4283, file: !4284, line: 336, baseType: !7, size: 32, offset: 544)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4283, file: !4284, line: 337, baseType: !223, size: 8, offset: 576)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4283, file: !4284, line: 338, baseType: !223, size: 8, offset: 584)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4283, file: !4284, line: 344, baseType: !4834, size: 64, offset: 640)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4284, line: 319, flags: DIFlagFwdDecl)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4283, file: !4284, line: 345, baseType: !4282, size: 64, offset: 704)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4283, file: !4284, line: 347, baseType: !467, size: 32, offset: 768)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4283, file: !4284, line: 348, baseType: !223, size: 8, offset: 800)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4283, file: !4284, line: 349, baseType: !223, size: 8, offset: 808)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4283, file: !4284, line: 350, baseType: !223, size: 8, offset: 816)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4283, file: !4284, line: 351, baseType: !223, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4283, file: !4284, line: 352, baseType: !223, size: 8, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4283, file: !4284, line: 353, baseType: !223, size: 8, offset: 840)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4283, file: !4284, line: 354, baseType: !250, size: 16, offset: 848)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4283, file: !4284, line: 355, baseType: !2211, size: 64, offset: 896)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4283, file: !4284, line: 357, baseType: !4847, size: 64, offset: 960)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4284, line: 918, size: 2368, elements: !4849)
!4849 = !{!4850, !4851, !4852, !4865, !4869, !4873, !4877, !4881, !4882, !4886, !4887, !4891, !4911, !4912, !4913, !4914, !4919}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4848, file: !4284, line: 919, baseType: !190, size: 128)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4848, file: !4284, line: 920, baseType: !507, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4848, file: !4284, line: 921, baseType: !4853, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4855)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4431, line: 44, size: 320, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4855, file: !4431, line: 45, baseType: !468, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4855, file: !4431, line: 45, baseType: !468, size: 32, offset: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4855, file: !4431, line: 46, baseType: !468, size: 32, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4855, file: !4431, line: 46, baseType: !468, size: 32, offset: 96)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4855, file: !4431, line: 47, baseType: !468, size: 32, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4855, file: !4431, line: 47, baseType: !468, size: 32, offset: 160)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4855, file: !4431, line: 48, baseType: !4447, size: 64, offset: 192)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4855, file: !4431, line: 49, baseType: !468, size: 32, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4848, file: !4284, line: 922, baseType: !4866, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!109, !4282, !4853}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4848, file: !4284, line: 923, baseType: !4870, size: 64, offset: 320)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !4282}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4848, file: !4284, line: 924, baseType: !4874, size: 64, offset: 384)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!109, !4282, !4458}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4848, file: !4284, line: 925, baseType: !4878, size: 64, offset: 448)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!109, !4282}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4848, file: !4284, line: 926, baseType: !4870, size: 64, offset: 512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4848, file: !4284, line: 927, baseType: !4883, size: 64, offset: 576)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!109, !4282, !109}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4848, file: !4284, line: 928, baseType: !4883, size: 64, offset: 640)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4848, file: !4284, line: 929, baseType: !4888, size: 64, offset: 704)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!467, !4282}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4848, file: !4284, line: 930, baseType: !4892, size: 64, offset: 768)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4894)
!4894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4284, line: 837, size: 448, elements: !4895)
!4895 = !{!4896, !4902, !4906, !4907, !4908, !4909, !4910}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4894, file: !4284, line: 839, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!4900, !4282, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4284, line: 814, baseType: !7)
!4901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4284, line: 196, baseType: !7)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4894, file: !4284, line: 843, baseType: !4903, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!4900, !4282}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4894, file: !4284, line: 846, baseType: !4903, size: 64, offset: 128)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4894, file: !4284, line: 849, baseType: !4870, size: 64, offset: 192)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4894, file: !4284, line: 850, baseType: !4870, size: 64, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4894, file: !4284, line: 853, baseType: !4870, size: 64, offset: 320)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4894, file: !4284, line: 856, baseType: !4870, size: 64, offset: 384)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4848, file: !4284, line: 931, baseType: !1006, size: 64, offset: 832)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4848, file: !4284, line: 932, baseType: !1006, size: 64, offset: 896)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4848, file: !4284, line: 933, baseType: !4419, size: 1152, offset: 960)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4848, file: !4284, line: 934, baseType: !4915, size: 192, offset: 2112)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4284, line: 801, size: 192, elements: !4916)
!4916 = !{!4917, !4918}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4915, file: !4284, line: 802, baseType: !281, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4915, file: !4284, line: 803, baseType: !190, size: 128, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4848, file: !4284, line: 935, baseType: !504, size: 8, offset: 2304)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4283, file: !4284, line: 358, baseType: !410, size: 64, offset: 1024)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4283, file: !4284, line: 364, baseType: !4628, size: 128, offset: 1088)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4283, file: !4284, line: 366, baseType: !4923, size: 32, offset: 1216)
!4923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4284, line: 171, baseType: !109)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4283, file: !4284, line: 369, baseType: !223, size: 8, offset: 1248)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4283, file: !4284, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4283, file: !4284, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4283, file: !4284, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4283, file: !4284, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4283, file: !4284, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4283, file: !4284, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4283, file: !4284, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4283, file: !4284, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4283, file: !4284, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4283, file: !4284, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4283, file: !4284, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4283, file: !4284, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4283, file: !4284, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4283, file: !4284, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4283, file: !4284, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4283, file: !4284, line: 390, baseType: !7, size: 32, offset: 1280)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4283, file: !4284, line: 391, baseType: !7, size: 32, offset: 1312)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4283, file: !4284, line: 394, baseType: !4943, size: 64, offset: 1344)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4284, line: 316, flags: DIFlagFwdDecl)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4283, file: !4284, line: 395, baseType: !250, size: 16, offset: 1408)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4283, file: !4284, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4283, file: !4284, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4283, file: !4284, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4283, file: !4284, line: 402, baseType: !4901, size: 32, offset: 1440)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4283, file: !4284, line: 403, baseType: !4342, size: 5824, offset: 1472)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4283, file: !4284, line: 405, baseType: !109, size: 32, offset: 7296)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4283, file: !4284, line: 411, baseType: !7, size: 32, offset: 7328)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4283, file: !4284, line: 412, baseType: !4954, size: 5632, offset: 7360)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4184, size: 5632, elements: !4955)
!4955 = !{!4956}
!4956 = !DISubrange(count: 11)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4283, file: !4284, line: 413, baseType: !4184, size: 512, offset: 12992)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4283, file: !4284, line: 415, baseType: !504, size: 8, offset: 13504)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4283, file: !4284, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4283, file: !4284, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4283, file: !4284, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4283, file: !4284, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4283, file: !4284, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4283, file: !4284, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4283, file: !4284, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4283, file: !4284, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4283, file: !4284, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4283, file: !4284, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4283, file: !4284, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4283, file: !4284, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4283, file: !4284, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4283, file: !4284, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4283, file: !4284, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4283, file: !4284, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4283, file: !4284, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4283, file: !4284, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4283, file: !4284, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4283, file: !4284, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4283, file: !4284, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4283, file: !4284, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4283, file: !4284, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4283, file: !4284, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4283, file: !4284, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4283, file: !4284, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4283, file: !4284, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4283, file: !4284, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4283, file: !4284, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4283, file: !4284, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4283, file: !4284, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4283, file: !4284, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4283, file: !4284, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4283, file: !4284, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4283, file: !4284, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4283, file: !4284, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4283, file: !4284, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4283, file: !4284, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4283, file: !4284, line: 468, baseType: !4998, size: 16, offset: 13552)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4284, line: 222, baseType: !252)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4283, file: !4284, line: 469, baseType: !215, size: 32, offset: 13568)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4283, file: !4284, line: 471, baseType: !281, size: 32, offset: 13600)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4283, file: !4284, line: 472, baseType: !5002, size: 512, offset: 13632)
!5002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 512, elements: !3015)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4283, file: !4284, line: 473, baseType: !341, size: 64, offset: 14144)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4283, file: !4284, line: 474, baseType: !5005, size: 704, offset: 14208)
!5005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 704, elements: !4955)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4283, file: !4284, line: 475, baseType: !5005, size: 704, offset: 14912)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4283, file: !4284, line: 487, baseType: !183, size: 64, offset: 15616)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4283, file: !4284, line: 488, baseType: !311, size: 32, offset: 15680)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4283, file: !4284, line: 490, baseType: !5010, size: 320, offset: 15744)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4284, line: 309, size: 320, elements: !5011)
!5011 = !{!5012, !5013, !5014}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5010, file: !4284, line: 310, baseType: !306, size: 256)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5010, file: !4284, line: 311, baseType: !7, size: 32, offset: 256)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5010, file: !4284, line: 312, baseType: !223, size: 8, offset: 288)
!5015 = !DIDerivedType(tag: DW_TAG_member, scope: !4283, file: !4284, line: 497, baseType: !5016, size: 64, offset: 16064)
!5016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4283, file: !4284, line: 497, size: 64, elements: !5017)
!5017 = !{!5018, !5021}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5016, file: !4284, line: 498, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4284, line: 317, flags: DIFlagFwdDecl)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5016, file: !4284, line: 499, baseType: !4282, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4283, file: !4284, line: 501, baseType: !250, size: 16, offset: 16128)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4283, file: !4284, line: 502, baseType: !223, size: 8, offset: 16144)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4283, file: !4284, line: 505, baseType: !250, size: 16, offset: 16160)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4283, file: !4284, line: 506, baseType: !467, size: 32, offset: 16192)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4283, file: !4284, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4283, file: !4284, line: 510, baseType: !250, size: 16, offset: 16240)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4283, file: !4284, line: 511, baseType: !250, size: 16, offset: 16256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4283, file: !4284, line: 519, baseType: !250, size: 16, offset: 16272)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4283, file: !4284, line: 520, baseType: !3543, size: 64, offset: 16320)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4283, file: !4284, line: 521, baseType: !825, size: 64, offset: 16384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4283, file: !4284, line: 526, baseType: !507, size: 64, offset: 16448)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4283, file: !4284, line: 528, baseType: !186, size: 64, offset: 16512)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4283, file: !4284, line: 531, baseType: !5035, size: 56, offset: 16576)
!5035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 56, elements: !2012)
!5036 = !{!5037, !5038}
!5037 = !DILocalVariable(name: "pci", arg: 1, scope: !4279, file: !3, line: 139, type: !4282)
!5038 = !DILocalVariable(name: "list", arg: 2, scope: !4279, file: !3, line: 139, type: !4218)
!5039 = !DILocation(line: 139, column: 38, scope: !4279)
!5040 = !DILocation(line: 139, column: 71, scope: !4279)
!5041 = !DILocation(line: 141, column: 7, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 141, column: 6)
!5043 = !DILocation(line: 141, column: 6, scope: !4279)
!5044 = !DILocation(line: 142, column: 3, scope: !5042)
!5045 = !DILocation(line: 143, column: 33, scope: !4279)
!5046 = !DILocation(line: 143, column: 38, scope: !4279)
!5047 = !DILocation(line: 144, column: 12, scope: !4279)
!5048 = !DILocation(line: 144, column: 17, scope: !4279)
!5049 = !DILocation(line: 145, column: 12, scope: !4279)
!5050 = !DILocation(line: 143, column: 9, scope: !4279)
!5051 = !DILocation(line: 143, column: 2, scope: !4279)
!5052 = !DILocation(line: 146, column: 1, scope: !4279)
!5053 = distinct !DISubprogram(name: "snd_fasync_helper", scope: !3, file: !3, line: 189, type: !5054, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5057)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!109, !109, !258, !109, !5056}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!5057 = !{!5058, !5059, !5060, !5061, !5062}
!5058 = !DILocalVariable(name: "fd", arg: 1, scope: !5053, file: !3, line: 189, type: !109)
!5059 = !DILocalVariable(name: "file", arg: 2, scope: !5053, file: !3, line: 189, type: !258)
!5060 = !DILocalVariable(name: "on", arg: 3, scope: !5053, file: !3, line: 189, type: !109)
!5061 = !DILocalVariable(name: "fasyncp", arg: 4, scope: !5053, file: !3, line: 190, type: !5056)
!5062 = !DILocalVariable(name: "fasync", scope: !5053, file: !3, line: 192, type: !194)
!5063 = !DILocation(line: 189, column: 27, scope: !5053)
!5064 = !DILocation(line: 189, column: 44, scope: !5053)
!5065 = !DILocation(line: 189, column: 54, scope: !5053)
!5066 = !DILocation(line: 190, column: 29, scope: !5053)
!5067 = !DILocation(line: 192, column: 2, scope: !5053)
!5068 = !DILocation(line: 192, column: 21, scope: !5053)
!5069 = !DILocation(line: 194, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 194, column: 6)
!5071 = !DILocation(line: 194, column: 6, scope: !5053)
!5072 = !DILocation(line: 195, column: 12, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 194, column: 10)
!5074 = !DILocation(line: 195, column: 10, scope: !5073)
!5075 = !DILocation(line: 196, column: 8, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 196, column: 7)
!5077 = !DILocation(line: 196, column: 7, scope: !5073)
!5078 = !DILocation(line: 197, column: 4, scope: !5076)
!5079 = !DILocation(line: 198, column: 19, scope: !5073)
!5080 = !DILocation(line: 198, column: 27, scope: !5073)
!5081 = !DILocation(line: 198, column: 3, scope: !5073)
!5082 = !DILocation(line: 199, column: 2, scope: !5073)
!5083 = !DILocation(line: 201, column: 2, scope: !5053)
!5084 = !DILocation(line: 202, column: 7, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 202, column: 6)
!5086 = !DILocation(line: 202, column: 6, scope: !5085)
!5087 = !DILocation(line: 202, column: 6, scope: !5053)
!5088 = !DILocation(line: 203, column: 9, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 202, column: 16)
!5090 = !DILocation(line: 203, column: 3, scope: !5089)
!5091 = !DILocation(line: 204, column: 13, scope: !5089)
!5092 = !DILocation(line: 204, column: 12, scope: !5089)
!5093 = !DILocation(line: 204, column: 10, scope: !5089)
!5094 = !DILocation(line: 205, column: 2, scope: !5089)
!5095 = !DILocation(line: 206, column: 8, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 206, column: 7)
!5097 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 205, column: 9)
!5098 = !DILocation(line: 206, column: 7, scope: !5097)
!5099 = !DILocation(line: 207, column: 4, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 206, column: 16)
!5101 = !DILocation(line: 208, column: 4, scope: !5100)
!5102 = !DILocation(line: 210, column: 14, scope: !5097)
!5103 = !DILocation(line: 210, column: 4, scope: !5097)
!5104 = !DILocation(line: 210, column: 12, scope: !5097)
!5105 = !DILocation(line: 212, column: 15, scope: !5053)
!5106 = !DILocation(line: 212, column: 2, scope: !5053)
!5107 = !DILocation(line: 212, column: 10, scope: !5053)
!5108 = !DILocation(line: 212, column: 13, scope: !5053)
!5109 = !DILocation(line: 213, column: 2, scope: !5053)
!5110 = !DILocation(line: 214, column: 23, scope: !5053)
!5111 = !DILocation(line: 214, column: 27, scope: !5053)
!5112 = !DILocation(line: 214, column: 33, scope: !5053)
!5113 = !DILocation(line: 214, column: 38, scope: !5053)
!5114 = !DILocation(line: 214, column: 46, scope: !5053)
!5115 = !DILocation(line: 214, column: 9, scope: !5053)
!5116 = !DILocation(line: 214, column: 2, scope: !5053)
!5117 = !DILocation(line: 215, column: 1, scope: !5053)
!5118 = distinct !DISubprogram(name: "kzalloc", scope: !147, file: !147, line: 719, type: !5119, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5121)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!183, !825, !184}
!5121 = !{!5122, !5123}
!5122 = !DILocalVariable(name: "size", arg: 1, scope: !5118, file: !147, line: 719, type: !825)
!5123 = !DILocalVariable(name: "flags", arg: 2, scope: !5118, file: !147, line: 719, type: !184)
!5124 = !DILocation(line: 719, column: 52, scope: !5118)
!5125 = !DILocation(line: 719, column: 64, scope: !5118)
!5126 = !DILocation(line: 721, column: 17, scope: !5118)
!5127 = !DILocation(line: 721, column: 23, scope: !5118)
!5128 = !DILocation(line: 721, column: 29, scope: !5118)
!5129 = !DILocation(line: 721, column: 9, scope: !5118)
!5130 = !DILocation(line: 721, column: 2, scope: !5118)
!5131 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5132, file: !5132, line: 35, type: !5133, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5135)
!5132 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{null, !189}
!5135 = !{!5136}
!5136 = !DILocalVariable(name: "list", arg: 1, scope: !5131, file: !5132, line: 35, type: !189)
!5137 = !DILocation(line: 35, column: 53, scope: !5131)
!5138 = !DILocation(line: 37, column: 2, scope: !5131)
!5139 = !DILocation(line: 37, column: 2, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5131, file: !5132, line: 37, column: 2)
!5141 = !DILocation(line: 37, column: 2, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5140, file: !5132, line: 37, column: 2)
!5143 = !DILocation(line: 37, column: 2, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !5132, line: 37, column: 2)
!5145 = !DILocation(line: 38, column: 2, scope: !5131)
!5146 = !DILocation(line: 38, column: 2, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5131, file: !5132, line: 38, column: 2)
!5148 = !DILocation(line: 38, column: 2, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5147, file: !5132, line: 38, column: 2)
!5150 = !DILocation(line: 38, column: 2, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !5132, line: 38, column: 2)
!5152 = !DILocation(line: 39, column: 1, scope: !5131)
!5153 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5154, file: !5154, line: 374, type: !5155, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5154 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5155 = !DISubroutineType(types: !5156)
!5156 = !{null, !1486}
!5157 = !{!5158}
!5158 = !DILocalVariable(name: "lock", arg: 1, scope: !5153, file: !5154, line: 374, type: !1486)
!5159 = !DILocation(line: 374, column: 55, scope: !5153)
!5160 = !DILocation(line: 376, column: 2, scope: !5153)
!5161 = !DILocation(line: 377, column: 1, scope: !5153)
!5162 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5154, file: !5154, line: 399, type: !5155, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5163)
!5163 = !{!5164}
!5164 = !DILocalVariable(name: "lock", arg: 1, scope: !5162, file: !5154, line: 399, type: !1486)
!5165 = !DILocation(line: 399, column: 57, scope: !5162)
!5166 = !DILocation(line: 401, column: 2, scope: !5162)
!5167 = !DILocation(line: 402, column: 1, scope: !5162)
!5168 = !DISubprogram(name: "fasync_helper", scope: !14, file: !14, line: 1095, type: !5169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!109, !109, !258, !109, !5171}
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!5172 = distinct !DISubprogram(name: "snd_kill_fasync", scope: !3, file: !3, line: 218, type: !5173, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5175)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{null, !194, !109, !109}
!5175 = !{!5176, !5177, !5178, !5179, !5180, !5184}
!5176 = !DILocalVariable(name: "fasync", arg: 1, scope: !5172, file: !3, line: 218, type: !194)
!5177 = !DILocalVariable(name: "signal", arg: 2, scope: !5172, file: !3, line: 218, type: !109)
!5178 = !DILocalVariable(name: "poll", arg: 3, scope: !5172, file: !3, line: 218, type: !109)
!5179 = !DILocalVariable(name: "flags", scope: !5172, file: !3, line: 220, type: !186)
!5180 = !DILocalVariable(name: "__dummy", scope: !5181, file: !3, line: 224, type: !186)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 224, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 224, column: 2)
!5183 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 224, column: 2)
!5184 = !DILocalVariable(name: "__dummy2", scope: !5181, file: !3, line: 224, type: !186)
!5185 = !DILocation(line: 218, column: 41, scope: !5172)
!5186 = !DILocation(line: 218, column: 53, scope: !5172)
!5187 = !DILocation(line: 218, column: 65, scope: !5172)
!5188 = !DILocation(line: 220, column: 2, scope: !5172)
!5189 = !DILocation(line: 220, column: 16, scope: !5172)
!5190 = !DILocation(line: 222, column: 7, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 222, column: 6)
!5192 = !DILocation(line: 222, column: 14, scope: !5191)
!5193 = !DILocation(line: 222, column: 18, scope: !5191)
!5194 = !DILocation(line: 222, column: 26, scope: !5191)
!5195 = !DILocation(line: 222, column: 6, scope: !5172)
!5196 = !DILocation(line: 223, column: 3, scope: !5191)
!5197 = !DILocation(line: 224, column: 2, scope: !5172)
!5198 = !DILocation(line: 224, column: 2, scope: !5183)
!5199 = !DILocation(line: 224, column: 2, scope: !5181)
!5200 = !DILocation(line: 224, column: 2, scope: !5182)
!5201 = !DILocation(line: 225, column: 19, scope: !5172)
!5202 = !DILocation(line: 225, column: 2, scope: !5172)
!5203 = !DILocation(line: 225, column: 10, scope: !5172)
!5204 = !DILocation(line: 225, column: 17, scope: !5172)
!5205 = !DILocation(line: 226, column: 17, scope: !5172)
!5206 = !DILocation(line: 226, column: 2, scope: !5172)
!5207 = !DILocation(line: 226, column: 10, scope: !5172)
!5208 = !DILocation(line: 226, column: 15, scope: !5172)
!5209 = !DILocation(line: 227, column: 13, scope: !5172)
!5210 = !DILocation(line: 227, column: 21, scope: !5172)
!5211 = !DILocation(line: 227, column: 2, scope: !5172)
!5212 = !DILocation(line: 228, column: 2, scope: !5172)
!5213 = !DILocation(line: 229, column: 43, scope: !5172)
!5214 = !DILocation(line: 229, column: 2, scope: !5172)
!5215 = !DILocation(line: 230, column: 1, scope: !5172)
!5216 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5217, file: !5217, line: 32, type: !5218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5217 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!186, !5220}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!5221 = distinct !DISubprogram(name: "spinlock_check", scope: !5154, file: !5154, line: 324, type: !5222, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5224)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!5220, !1486}
!5224 = !{!5225}
!5225 = !DILocalVariable(name: "lock", arg: 1, scope: !5221, file: !5154, line: 324, type: !1486)
!5226 = !DILocation(line: 324, column: 67, scope: !5221)
!5227 = !DILocation(line: 326, column: 10, scope: !5221)
!5228 = !DILocation(line: 326, column: 16, scope: !5221)
!5229 = !DILocation(line: 326, column: 2, scope: !5221)
!5230 = distinct !DISubprogram(name: "list_move", scope: !5132, file: !5132, line: 296, type: !5231, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5233)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !189, !189}
!5233 = !{!5234, !5235}
!5234 = !DILocalVariable(name: "list", arg: 1, scope: !5230, file: !5132, line: 296, type: !189)
!5235 = !DILocalVariable(name: "head", arg: 2, scope: !5230, file: !5132, line: 296, type: !189)
!5236 = !DILocation(line: 296, column: 48, scope: !5230)
!5237 = !DILocation(line: 296, column: 72, scope: !5230)
!5238 = !DILocation(line: 298, column: 19, scope: !5230)
!5239 = !DILocation(line: 298, column: 2, scope: !5230)
!5240 = !DILocation(line: 299, column: 11, scope: !5230)
!5241 = !DILocation(line: 299, column: 17, scope: !5230)
!5242 = !DILocation(line: 299, column: 2, scope: !5230)
!5243 = !DILocation(line: 300, column: 1, scope: !5230)
!5244 = distinct !DISubprogram(name: "schedule_work", scope: !157, file: !157, line: 621, type: !5245, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!504, !1354}
!5247 = !{!5248}
!5248 = !DILocalVariable(name: "work", arg: 1, scope: !5244, file: !157, line: 621, type: !1354)
!5249 = !DILocation(line: 621, column: 54, scope: !5244)
!5250 = !DILocation(line: 623, column: 20, scope: !5244)
!5251 = !DILocation(line: 623, column: 31, scope: !5244)
!5252 = !DILocation(line: 623, column: 9, scope: !5244)
!5253 = !DILocation(line: 623, column: 2, scope: !5244)
!5254 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5154, file: !5154, line: 404, type: !5255, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{null, !1486, !186}
!5257 = !{!5258, !5259, !5260, !5263}
!5258 = !DILocalVariable(name: "lock", arg: 1, scope: !5254, file: !5154, line: 404, type: !1486)
!5259 = !DILocalVariable(name: "flags", arg: 2, scope: !5254, file: !5154, line: 404, type: !186)
!5260 = !DILocalVariable(name: "__dummy", scope: !5261, file: !5154, line: 406, type: !186)
!5261 = distinct !DILexicalBlock(scope: !5262, file: !5154, line: 406, column: 2)
!5262 = distinct !DILexicalBlock(scope: !5254, file: !5154, line: 406, column: 2)
!5263 = !DILocalVariable(name: "__dummy2", scope: !5261, file: !5154, line: 406, type: !186)
!5264 = !DILocation(line: 404, column: 64, scope: !5254)
!5265 = !DILocation(line: 404, column: 84, scope: !5254)
!5266 = !DILocation(line: 406, column: 2, scope: !5254)
!5267 = !DILocation(line: 406, column: 2, scope: !5261)
!5268 = !DILocation(line: 406, column: 2, scope: !5262)
!5269 = !DILocation(line: 407, column: 1, scope: !5254)
!5270 = distinct !DISubprogram(name: "snd_fasync_free", scope: !3, file: !3, line: 233, type: !5271, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !194}
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "fasync", arg: 1, scope: !5270, file: !3, line: 233, type: !194)
!5275 = !DILocation(line: 233, column: 41, scope: !5270)
!5276 = !DILocation(line: 235, column: 7, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 235, column: 6)
!5278 = !DILocation(line: 235, column: 6, scope: !5270)
!5279 = !DILocation(line: 236, column: 3, scope: !5277)
!5280 = !DILocation(line: 237, column: 2, scope: !5270)
!5281 = !DILocation(line: 237, column: 10, scope: !5270)
!5282 = !DILocation(line: 237, column: 13, scope: !5270)
!5283 = !DILocation(line: 238, column: 2, scope: !5270)
!5284 = !DILocation(line: 239, column: 8, scope: !5270)
!5285 = !DILocation(line: 239, column: 2, scope: !5270)
!5286 = !DILocation(line: 240, column: 1, scope: !5270)
!5287 = !DISubprogram(name: "flush_work", scope: !157, file: !157, line: 513, type: !5245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5288 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !5119, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5289 = !{!5290, !5291, !5292}
!5290 = !DILocalVariable(name: "size", arg: 1, scope: !5288, file: !147, line: 591, type: !825)
!5291 = !DILocalVariable(name: "flags", arg: 2, scope: !5288, file: !147, line: 591, type: !184)
!5292 = !DILocalVariable(name: "index", scope: !5293, file: !147, line: 594, type: !7)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !147, line: 593, column: 42)
!5294 = distinct !DILexicalBlock(scope: !5288, file: !147, line: 593, column: 6)
!5295 = !DILocation(line: 591, column: 61, scope: !5288)
!5296 = !DILocation(line: 591, column: 73, scope: !5288)
!5297 = !DILocation(line: 593, column: 27, scope: !5294)
!5298 = !DILocation(line: 593, column: 6, scope: !5294)
!5299 = !DILocation(line: 593, column: 33, scope: !5294)
!5300 = !DILocation(line: 593, column: 36, scope: !5294)
!5301 = !DILocation(line: 593, column: 6, scope: !5288)
!5302 = !DILocation(line: 594, column: 3, scope: !5293)
!5303 = !DILocation(line: 594, column: 16, scope: !5293)
!5304 = !DILocation(line: 596, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5293, file: !147, line: 596, column: 7)
!5306 = !DILocation(line: 596, column: 12, scope: !5305)
!5307 = !DILocation(line: 596, column: 7, scope: !5293)
!5308 = !DILocation(line: 597, column: 25, scope: !5305)
!5309 = !DILocation(line: 597, column: 31, scope: !5305)
!5310 = !DILocation(line: 597, column: 11, scope: !5305)
!5311 = !DILocation(line: 597, column: 4, scope: !5305)
!5312 = !DILocation(line: 599, column: 11, scope: !5293)
!5313 = !DILocation(line: 599, column: 9, scope: !5293)
!5314 = !DILocation(line: 601, column: 33, scope: !5293)
!5315 = !DILocation(line: 601, column: 40, scope: !5293)
!5316 = !DILocation(line: 601, column: 20, scope: !5293)
!5317 = !DILocation(line: 601, column: 5, scope: !5293)
!5318 = !DILocation(line: 601, column: 51, scope: !5293)
!5319 = !DILocation(line: 602, column: 5, scope: !5293)
!5320 = !DILocation(line: 602, column: 12, scope: !5293)
!5321 = !DILocation(line: 600, column: 10, scope: !5293)
!5322 = !DILocation(line: 600, column: 3, scope: !5293)
!5323 = !DILocation(line: 603, column: 2, scope: !5294)
!5324 = !DILocation(line: 604, column: 19, scope: !5288)
!5325 = !DILocation(line: 604, column: 25, scope: !5288)
!5326 = !DILocation(line: 604, column: 9, scope: !5288)
!5327 = !DILocation(line: 604, column: 2, scope: !5288)
!5328 = !DILocation(line: 605, column: 1, scope: !5288)
!5329 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !5119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5330 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !5331, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!7, !825, !504}
!5333 = !{!5334, !5335}
!5334 = !DILocalVariable(name: "size", arg: 1, scope: !5330, file: !147, line: 444, type: !825)
!5335 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5330, file: !147, line: 445, type: !504)
!5336 = !DILocation(line: 444, column: 60, scope: !5330)
!5337 = !DILocation(line: 445, column: 16, scope: !5330)
!5338 = !DILocation(line: 447, column: 7, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 447, column: 6)
!5340 = !DILocation(line: 447, column: 6, scope: !5330)
!5341 = !DILocation(line: 448, column: 3, scope: !5339)
!5342 = !DILocation(line: 450, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 450, column: 6)
!5344 = !DILocation(line: 450, column: 11, scope: !5343)
!5345 = !DILocation(line: 450, column: 6, scope: !5330)
!5346 = !DILocation(line: 451, column: 3, scope: !5343)
!5347 = !DILocation(line: 453, column: 32, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 453, column: 6)
!5349 = !DILocation(line: 453, column: 37, scope: !5348)
!5350 = !DILocation(line: 453, column: 42, scope: !5348)
!5351 = !DILocation(line: 453, column: 45, scope: !5348)
!5352 = !DILocation(line: 453, column: 50, scope: !5348)
!5353 = !DILocation(line: 453, column: 6, scope: !5330)
!5354 = !DILocation(line: 454, column: 3, scope: !5348)
!5355 = !DILocation(line: 455, column: 32, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 455, column: 6)
!5357 = !DILocation(line: 455, column: 37, scope: !5356)
!5358 = !DILocation(line: 455, column: 43, scope: !5356)
!5359 = !DILocation(line: 455, column: 46, scope: !5356)
!5360 = !DILocation(line: 455, column: 51, scope: !5356)
!5361 = !DILocation(line: 455, column: 6, scope: !5330)
!5362 = !DILocation(line: 456, column: 3, scope: !5356)
!5363 = !DILocation(line: 457, column: 6, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 457, column: 6)
!5365 = !DILocation(line: 457, column: 11, scope: !5364)
!5366 = !DILocation(line: 457, column: 6, scope: !5330)
!5367 = !DILocation(line: 457, column: 26, scope: !5364)
!5368 = !DILocation(line: 458, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 458, column: 6)
!5370 = !DILocation(line: 458, column: 11, scope: !5369)
!5371 = !DILocation(line: 458, column: 6, scope: !5330)
!5372 = !DILocation(line: 458, column: 26, scope: !5369)
!5373 = !DILocation(line: 459, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 459, column: 6)
!5375 = !DILocation(line: 459, column: 11, scope: !5374)
!5376 = !DILocation(line: 459, column: 6, scope: !5330)
!5377 = !DILocation(line: 459, column: 26, scope: !5374)
!5378 = !DILocation(line: 460, column: 6, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 460, column: 6)
!5380 = !DILocation(line: 460, column: 11, scope: !5379)
!5381 = !DILocation(line: 460, column: 6, scope: !5330)
!5382 = !DILocation(line: 460, column: 26, scope: !5379)
!5383 = !DILocation(line: 461, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 461, column: 6)
!5385 = !DILocation(line: 461, column: 11, scope: !5384)
!5386 = !DILocation(line: 461, column: 6, scope: !5330)
!5387 = !DILocation(line: 461, column: 26, scope: !5384)
!5388 = !DILocation(line: 462, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 462, column: 6)
!5390 = !DILocation(line: 462, column: 11, scope: !5389)
!5391 = !DILocation(line: 462, column: 6, scope: !5330)
!5392 = !DILocation(line: 462, column: 26, scope: !5389)
!5393 = !DILocation(line: 463, column: 6, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 463, column: 6)
!5395 = !DILocation(line: 463, column: 11, scope: !5394)
!5396 = !DILocation(line: 463, column: 6, scope: !5330)
!5397 = !DILocation(line: 463, column: 26, scope: !5394)
!5398 = !DILocation(line: 464, column: 6, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 464, column: 6)
!5400 = !DILocation(line: 464, column: 11, scope: !5399)
!5401 = !DILocation(line: 464, column: 6, scope: !5330)
!5402 = !DILocation(line: 464, column: 26, scope: !5399)
!5403 = !DILocation(line: 465, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 465, column: 6)
!5405 = !DILocation(line: 465, column: 11, scope: !5404)
!5406 = !DILocation(line: 465, column: 6, scope: !5330)
!5407 = !DILocation(line: 465, column: 26, scope: !5404)
!5408 = !DILocation(line: 466, column: 6, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 466, column: 6)
!5410 = !DILocation(line: 466, column: 11, scope: !5409)
!5411 = !DILocation(line: 466, column: 6, scope: !5330)
!5412 = !DILocation(line: 466, column: 26, scope: !5409)
!5413 = !DILocation(line: 467, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 467, column: 6)
!5415 = !DILocation(line: 467, column: 11, scope: !5414)
!5416 = !DILocation(line: 467, column: 6, scope: !5330)
!5417 = !DILocation(line: 467, column: 26, scope: !5414)
!5418 = !DILocation(line: 468, column: 6, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 468, column: 6)
!5420 = !DILocation(line: 468, column: 11, scope: !5419)
!5421 = !DILocation(line: 468, column: 6, scope: !5330)
!5422 = !DILocation(line: 468, column: 26, scope: !5419)
!5423 = !DILocation(line: 469, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 469, column: 6)
!5425 = !DILocation(line: 469, column: 11, scope: !5424)
!5426 = !DILocation(line: 469, column: 6, scope: !5330)
!5427 = !DILocation(line: 469, column: 26, scope: !5424)
!5428 = !DILocation(line: 470, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 470, column: 6)
!5430 = !DILocation(line: 470, column: 11, scope: !5429)
!5431 = !DILocation(line: 470, column: 6, scope: !5330)
!5432 = !DILocation(line: 470, column: 26, scope: !5429)
!5433 = !DILocation(line: 471, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 471, column: 6)
!5435 = !DILocation(line: 471, column: 11, scope: !5434)
!5436 = !DILocation(line: 471, column: 6, scope: !5330)
!5437 = !DILocation(line: 471, column: 26, scope: !5434)
!5438 = !DILocation(line: 472, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 472, column: 6)
!5440 = !DILocation(line: 472, column: 11, scope: !5439)
!5441 = !DILocation(line: 472, column: 6, scope: !5330)
!5442 = !DILocation(line: 472, column: 26, scope: !5439)
!5443 = !DILocation(line: 473, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 473, column: 6)
!5445 = !DILocation(line: 473, column: 11, scope: !5444)
!5446 = !DILocation(line: 473, column: 6, scope: !5330)
!5447 = !DILocation(line: 473, column: 26, scope: !5444)
!5448 = !DILocation(line: 474, column: 6, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 474, column: 6)
!5450 = !DILocation(line: 474, column: 11, scope: !5449)
!5451 = !DILocation(line: 474, column: 6, scope: !5330)
!5452 = !DILocation(line: 474, column: 27, scope: !5449)
!5453 = !DILocation(line: 475, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 475, column: 6)
!5455 = !DILocation(line: 475, column: 11, scope: !5454)
!5456 = !DILocation(line: 475, column: 6, scope: !5330)
!5457 = !DILocation(line: 475, column: 32, scope: !5454)
!5458 = !DILocation(line: 477, column: 50, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5330, file: !147, line: 477, column: 6)
!5460 = !{i8 0, i8 2}
!5461 = !DILocation(line: 477, column: 6, scope: !5330)
!5462 = !DILocation(line: 478, column: 3, scope: !5459)
!5463 = !DILocation(line: 478, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !147, line: 478, column: 3)
!5465 = distinct !DILexicalBlock(scope: !5459, file: !147, line: 478, column: 3)
!5466 = !{i32 -2143541774}
!5467 = !DILocation(line: 478, column: 3, scope: !5465)
!5468 = !DILocation(line: 480, column: 3, scope: !5459)
!5469 = !DILocation(line: 480, column: 3, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5459, file: !147, line: 480, column: 3)
!5471 = !DILocation(line: 480, column: 3, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5470, file: !147, line: 480, column: 3)
!5473 = !DILocation(line: 480, column: 3, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5470, file: !147, line: 480, column: 3)
!5475 = !{i64 2151425725, i64 2151425754, i64 2151425800, i64 2151425858, i64 2151425912, i64 2151425966, i64 2151426021, i64 2151426052}
!5476 = !DILocation(line: 483, column: 2, scope: !5330)
!5477 = !DILocation(line: 484, column: 1, scope: !5330)
!5478 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !5479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!183, !5481, !184, !825}
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5483, line: 11, flags: DIFlagFwdDecl)
!5483 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5484 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !5485, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!146, !184, !186}
!5487 = !{!5488, !5489}
!5488 = !DILocalVariable(name: "flags", arg: 1, scope: !5484, file: !147, line: 401, type: !184)
!5489 = !DILocalVariable(name: "caller", arg: 2, scope: !5484, file: !147, line: 401, type: !186)
!5490 = !DILocation(line: 401, column: 67, scope: !5484)
!5491 = !DILocation(line: 401, column: 88, scope: !5484)
!5492 = !DILocation(line: 407, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5484, file: !147, line: 407, column: 6)
!5494 = !DILocation(line: 407, column: 6, scope: !5484)
!5495 = !DILocation(line: 413, column: 3, scope: !5493)
!5496 = !DILocation(line: 423, column: 38, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5484, file: !147, line: 423, column: 6)
!5498 = !DILocation(line: 423, column: 44, scope: !5497)
!5499 = !DILocation(line: 423, column: 6, scope: !5484)
!5500 = !DILocation(line: 424, column: 3, scope: !5497)
!5501 = !DILocation(line: 426, column: 3, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5484, file: !147, line: 425, column: 6)
!5503 = !DILocation(line: 429, column: 1, scope: !5484)
!5504 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !5119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5505 = !DISubprogram(name: "__compiletime_assert_117", scope: !147, file: !147, line: 478, type: !2225, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5506 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5217, file: !5217, line: 29, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !5220}
!5509 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5217, file: !5217, line: 41, type: !5507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5510 = distinct !DISubprogram(name: "__list_del_entry", scope: !5132, file: !5132, line: 213, type: !5133, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5511)
!5511 = !{!5512}
!5512 = !DILocalVariable(name: "entry", arg: 1, scope: !5510, file: !5132, line: 213, type: !189)
!5513 = !DILocation(line: 213, column: 55, scope: !5510)
!5514 = !DILocation(line: 215, column: 30, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !5132, line: 215, column: 6)
!5516 = !DILocation(line: 215, column: 7, scope: !5515)
!5517 = !DILocation(line: 215, column: 6, scope: !5510)
!5518 = !DILocation(line: 216, column: 3, scope: !5515)
!5519 = !DILocation(line: 218, column: 13, scope: !5510)
!5520 = !DILocation(line: 218, column: 20, scope: !5510)
!5521 = !DILocation(line: 218, column: 26, scope: !5510)
!5522 = !DILocation(line: 218, column: 33, scope: !5510)
!5523 = !DILocation(line: 218, column: 2, scope: !5510)
!5524 = !DILocation(line: 219, column: 1, scope: !5510)
!5525 = distinct !DISubprogram(name: "list_add", scope: !5132, file: !5132, line: 167, type: !5231, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5526)
!5526 = !{!5527, !5528}
!5527 = !DILocalVariable(name: "new", arg: 1, scope: !5525, file: !5132, line: 167, type: !189)
!5528 = !DILocalVariable(name: "head", arg: 2, scope: !5525, file: !5132, line: 167, type: !189)
!5529 = !DILocation(line: 167, column: 47, scope: !5525)
!5530 = !DILocation(line: 167, column: 70, scope: !5525)
!5531 = !DILocation(line: 169, column: 13, scope: !5525)
!5532 = !DILocation(line: 169, column: 18, scope: !5525)
!5533 = !DILocation(line: 169, column: 24, scope: !5525)
!5534 = !DILocation(line: 169, column: 30, scope: !5525)
!5535 = !DILocation(line: 169, column: 2, scope: !5525)
!5536 = !DILocation(line: 170, column: 1, scope: !5525)
!5537 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5132, file: !5132, line: 134, type: !5538, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!504, !189}
!5540 = !{!5541}
!5541 = !DILocalVariable(name: "entry", arg: 1, scope: !5537, file: !5132, line: 134, type: !189)
!5542 = !DILocation(line: 134, column: 61, scope: !5537)
!5543 = !DILocation(line: 136, column: 2, scope: !5537)
!5544 = distinct !DISubprogram(name: "__list_del", scope: !5132, file: !5132, line: 193, type: !5231, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5545)
!5545 = !{!5546, !5547}
!5546 = !DILocalVariable(name: "prev", arg: 1, scope: !5544, file: !5132, line: 193, type: !189)
!5547 = !DILocalVariable(name: "next", arg: 2, scope: !5544, file: !5132, line: 193, type: !189)
!5548 = !DILocation(line: 193, column: 50, scope: !5544)
!5549 = !DILocation(line: 193, column: 75, scope: !5544)
!5550 = !DILocation(line: 195, column: 15, scope: !5544)
!5551 = !DILocation(line: 195, column: 2, scope: !5544)
!5552 = !DILocation(line: 195, column: 8, scope: !5544)
!5553 = !DILocation(line: 195, column: 13, scope: !5544)
!5554 = !DILocation(line: 196, column: 2, scope: !5544)
!5555 = !DILocation(line: 196, column: 2, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5544, file: !5132, line: 196, column: 2)
!5557 = !DILocation(line: 196, column: 2, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5556, file: !5132, line: 196, column: 2)
!5559 = !DILocation(line: 196, column: 2, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5556, file: !5132, line: 196, column: 2)
!5561 = !DILocation(line: 197, column: 1, scope: !5544)
!5562 = distinct !DISubprogram(name: "__list_add", scope: !5132, file: !5132, line: 146, type: !5563, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5565)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{null, !189, !189, !189}
!5565 = !{!5566, !5567, !5568}
!5566 = !DILocalVariable(name: "new", arg: 1, scope: !5562, file: !5132, line: 146, type: !189)
!5567 = !DILocalVariable(name: "prev", arg: 2, scope: !5562, file: !5132, line: 147, type: !189)
!5568 = !DILocalVariable(name: "next", arg: 3, scope: !5562, file: !5132, line: 148, type: !189)
!5569 = !DILocation(line: 146, column: 49, scope: !5562)
!5570 = !DILocation(line: 147, column: 28, scope: !5562)
!5571 = !DILocation(line: 148, column: 28, scope: !5562)
!5572 = !DILocation(line: 150, column: 24, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5562, file: !5132, line: 150, column: 6)
!5574 = !DILocation(line: 150, column: 29, scope: !5573)
!5575 = !DILocation(line: 150, column: 35, scope: !5573)
!5576 = !DILocation(line: 150, column: 7, scope: !5573)
!5577 = !DILocation(line: 150, column: 6, scope: !5562)
!5578 = !DILocation(line: 151, column: 3, scope: !5573)
!5579 = !DILocation(line: 153, column: 15, scope: !5562)
!5580 = !DILocation(line: 153, column: 2, scope: !5562)
!5581 = !DILocation(line: 153, column: 8, scope: !5562)
!5582 = !DILocation(line: 153, column: 13, scope: !5562)
!5583 = !DILocation(line: 154, column: 14, scope: !5562)
!5584 = !DILocation(line: 154, column: 2, scope: !5562)
!5585 = !DILocation(line: 154, column: 7, scope: !5562)
!5586 = !DILocation(line: 154, column: 12, scope: !5562)
!5587 = !DILocation(line: 155, column: 14, scope: !5562)
!5588 = !DILocation(line: 155, column: 2, scope: !5562)
!5589 = !DILocation(line: 155, column: 7, scope: !5562)
!5590 = !DILocation(line: 155, column: 12, scope: !5562)
!5591 = !DILocation(line: 156, column: 2, scope: !5562)
!5592 = !DILocation(line: 156, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5562, file: !5132, line: 156, column: 2)
!5594 = !DILocation(line: 156, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5593, file: !5132, line: 156, column: 2)
!5596 = !DILocation(line: 156, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !5132, line: 156, column: 2)
!5598 = !DILocation(line: 157, column: 1, scope: !5562)
!5599 = distinct !DISubprogram(name: "__list_add_valid", scope: !5132, file: !5132, line: 128, type: !5600, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5602)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!504, !189, !189, !189}
!5602 = !{!5603, !5604, !5605}
!5603 = !DILocalVariable(name: "new", arg: 1, scope: !5599, file: !5132, line: 128, type: !189)
!5604 = !DILocalVariable(name: "prev", arg: 2, scope: !5599, file: !5132, line: 129, type: !189)
!5605 = !DILocalVariable(name: "next", arg: 3, scope: !5599, file: !5132, line: 130, type: !189)
!5606 = !DILocation(line: 128, column: 55, scope: !5599)
!5607 = !DILocation(line: 129, column: 23, scope: !5599)
!5608 = !DILocation(line: 130, column: 23, scope: !5599)
!5609 = !DILocation(line: 132, column: 2, scope: !5599)
!5610 = distinct !DISubprogram(name: "queue_work", scope: !157, file: !157, line: 559, type: !5611, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5613)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!504, !2182, !1354}
!5613 = !{!5614, !5615}
!5614 = !DILocalVariable(name: "wq", arg: 1, scope: !5610, file: !157, line: 559, type: !2182)
!5615 = !DILocalVariable(name: "work", arg: 2, scope: !5610, file: !157, line: 560, type: !1354)
!5616 = !DILocation(line: 559, column: 56, scope: !5610)
!5617 = !DILocation(line: 560, column: 30, scope: !5610)
!5618 = !DILocation(line: 562, column: 41, scope: !5610)
!5619 = !DILocation(line: 562, column: 45, scope: !5610)
!5620 = !DILocation(line: 562, column: 9, scope: !5610)
!5621 = !DILocation(line: 562, column: 2, scope: !5610)
!5622 = !DISubprogram(name: "queue_work_on", scope: !157, file: !157, line: 496, type: !5623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!504, !109, !2182, !1354}
!5625 = distinct !DISubprogram(name: "snd_fasync_work_fn", scope: !3, file: !3, line: 171, type: !1352, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5626)
!5626 = !{!5627, !5628, !5629}
!5627 = !DILocalVariable(name: "work", arg: 1, scope: !5625, file: !3, line: 171, type: !1354)
!5628 = !DILocalVariable(name: "fasync", scope: !5625, file: !3, line: 173, type: !194)
!5629 = !DILocalVariable(name: "__mptr", scope: !5630, file: !3, line: 177, type: !183)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 177, column: 12)
!5631 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 176, column: 40)
!5632 = !DILocation(line: 171, column: 52, scope: !5625)
!5633 = !DILocation(line: 173, column: 2, scope: !5625)
!5634 = !DILocation(line: 173, column: 21, scope: !5625)
!5635 = !DILocation(line: 175, column: 2, scope: !5625)
!5636 = !DILocation(line: 176, column: 2, scope: !5625)
!5637 = !DILocation(line: 176, column: 10, scope: !5625)
!5638 = !DILocation(line: 176, column: 9, scope: !5625)
!5639 = !DILocation(line: 177, column: 12, scope: !5630)
!5640 = !DILocation(line: 177, column: 12, scope: !5631)
!5641 = !DILocation(line: 177, column: 10, scope: !5631)
!5642 = !DILocation(line: 178, column: 18, scope: !5631)
!5643 = !DILocation(line: 178, column: 26, scope: !5631)
!5644 = !DILocation(line: 178, column: 3, scope: !5631)
!5645 = !DILocation(line: 179, column: 3, scope: !5631)
!5646 = !DILocation(line: 180, column: 7, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 180, column: 7)
!5648 = !DILocation(line: 180, column: 15, scope: !5647)
!5649 = !DILocation(line: 180, column: 7, scope: !5631)
!5650 = !DILocation(line: 181, column: 17, scope: !5647)
!5651 = !DILocation(line: 181, column: 25, scope: !5647)
!5652 = !DILocation(line: 181, column: 33, scope: !5647)
!5653 = !DILocation(line: 181, column: 41, scope: !5647)
!5654 = !DILocation(line: 181, column: 49, scope: !5647)
!5655 = !DILocation(line: 181, column: 57, scope: !5647)
!5656 = !DILocation(line: 181, column: 4, scope: !5647)
!5657 = !DILocation(line: 182, column: 3, scope: !5631)
!5658 = distinct !{!5658, !5636, !5659, !4275, !4276}
!5659 = !DILocation(line: 183, column: 2, scope: !5625)
!5660 = !DILocation(line: 184, column: 2, scope: !5625)
!5661 = !DILocation(line: 185, column: 1, scope: !5625)
!5662 = distinct !DISubprogram(name: "list_empty", scope: !5132, file: !5132, line: 371, type: !5663, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5667)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!109, !5665}
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!5667 = !{!5668}
!5668 = !DILocalVariable(name: "head", arg: 1, scope: !5662, file: !5132, line: 371, type: !5665)
!5669 = !DILocation(line: 371, column: 54, scope: !5662)
!5670 = !DILocation(line: 373, column: 9, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5662, file: !5132, line: 373, column: 9)
!5672 = !DILocation(line: 373, column: 9, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5671, file: !5132, line: 373, column: 9)
!5674 = !DILocation(line: 373, column: 34, scope: !5662)
!5675 = !DILocation(line: 373, column: 31, scope: !5662)
!5676 = !DILocation(line: 373, column: 2, scope: !5662)
!5677 = distinct !DISubprogram(name: "list_del_init", scope: !5132, file: !5132, line: 285, type: !5133, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5678)
!5678 = !{!5679}
!5679 = !DILocalVariable(name: "entry", arg: 1, scope: !5677, file: !5132, line: 285, type: !189)
!5680 = !DILocation(line: 285, column: 52, scope: !5677)
!5681 = !DILocation(line: 287, column: 19, scope: !5677)
!5682 = !DILocation(line: 287, column: 2, scope: !5677)
!5683 = !DILocation(line: 288, column: 17, scope: !5677)
!5684 = !DILocation(line: 288, column: 2, scope: !5677)
!5685 = !DILocation(line: 289, column: 1, scope: !5677)
!5686 = !DISubprogram(name: "kill_fasync", scope: !14, file: !14, line: 1102, type: !5687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{null, !5171, !109, !109}
!5689 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5217, file: !5217, line: 43, type: !5690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{null, !5220, !186}
