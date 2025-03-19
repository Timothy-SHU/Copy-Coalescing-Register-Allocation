; ModuleID = 'sound/core/jack.c'
source_filename = "sound/core/jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_jack_add_new_kctl: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_jack_add_new_kctl ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_jack_new: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_jack_new ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_jack_set_parent: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_jack_set_parent ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_jack_set_key: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_jack_set_key ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_jack_report: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_jack_report ; .previous"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, %struct.mutex, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_jack_kctl = type { ptr, %struct.list_head, i32, ptr, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.18, i64, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.18 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.19, %struct.qspinlock }
%union.anon.19 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__UNIQUE_ID___addressable_snd_jack_add_new_kctl295 = internal global ptr @snd_jack_add_new_kctl, section ".discard.addressable", align 8, !dbg !0
@snd_jack_new.ops = internal constant %struct.snd_device_ops { ptr @snd_jack_dev_free, ptr @snd_jack_dev_register, ptr @snd_jack_dev_disconnect }, align 8, !dbg !5043
@snd_jack_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5082
@.str = private unnamed_addr constant [22 x i8] c"&jack->input_dev_lock\00", align 1, !dbg !5084
@.str.1 = private unnamed_addr constant [5 x i8] c"ALSA\00", align 1, !dbg !5089
@jack_switch_types = internal constant [6 x i32] [i32 2, i32 4, i32 6, i32 7, i32 8, i32 13], align 16, !dbg !5114
@__UNIQUE_ID___addressable_snd_jack_new296 = internal global ptr @snd_jack_new, section ".discard.addressable", align 8, !dbg !5094
@.str.2 = private unnamed_addr constant [18 x i8] c"sound/core/jack.c\00", align 1, !dbg !5096
@__UNIQUE_ID___addressable_snd_jack_set_parent298 = internal global ptr @snd_jack_set_parent, section ".discard.addressable", align 8, !dbg !5101
@__UNIQUE_ID___addressable_snd_jack_set_key299 = internal global ptr @snd_jack_set_key, section ".discard.addressable", align 8, !dbg !5103
@__UNIQUE_ID___addressable_snd_jack_report300 = internal global ptr @snd_jack_report, section ".discard.addressable", align 8, !dbg !5105
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1, !dbg !5107
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5109
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_snd_jack_add_new_kctl295, ptr @__UNIQUE_ID___addressable_snd_jack_new296, ptr @__UNIQUE_ID___addressable_snd_jack_set_parent298, ptr @__UNIQUE_ID___addressable_snd_jack_set_key299, ptr @__UNIQUE_ID___addressable_snd_jack_report300], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_jack_add_new_kctl(ptr noundef %jack, ptr noundef %name, i32 noundef %mask) #0 align 16 !dbg !5126 {
entry:
  %retval = alloca i32, align 4
  %jack.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %jack_kctl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !5130, metadata !DIExpression()), !dbg !5134
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5131, metadata !DIExpression()), !dbg !5135
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5132, metadata !DIExpression()), !dbg !5136
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack_kctl) #13, !dbg !5137
  call void @llvm.dbg.declare(metadata ptr %jack_kctl, metadata !5133, metadata !DIExpression()), !dbg !5138
  %0 = load ptr, ptr %jack.addr, align 8, !dbg !5139
  %card = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 1, !dbg !5140
  %1 = load ptr, ptr %card, align 8, !dbg !5140
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5141
  %3 = load i32, ptr %mask.addr, align 4, !dbg !5142
  %call = call ptr @snd_jack_kctl_new(ptr noundef %1, ptr noundef %2, i32 noundef %3) #14, !dbg !5143
  store ptr %call, ptr %jack_kctl, align 8, !dbg !5144
  %4 = load ptr, ptr %jack_kctl, align 8, !dbg !5145
  %tobool = icmp ne ptr %4, null, !dbg !5145
  br i1 %tobool, label %if.end, label %if.then, !dbg !5147

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5148

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %jack.addr, align 8, !dbg !5149
  %6 = load ptr, ptr %jack_kctl, align 8, !dbg !5150
  call void @snd_jack_kctl_add(ptr noundef %5, ptr noundef %6) #14, !dbg !5151
  store i32 0, ptr %retval, align 4, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5152

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack_kctl) #13, !dbg !5153
  %7 = load i32, ptr %retval, align 4, !dbg !5153
  ret i32 %7, !dbg !5153
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_jack_kctl_new(ptr noundef %card, ptr noundef %name, i32 noundef %mask) #0 align 16 !dbg !5154 {
entry:
  %retval = alloca ptr, align 8
  %card.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %kctl = alloca ptr, align 8
  %jack_kctl = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5158, metadata !DIExpression()), !dbg !5165
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5159, metadata !DIExpression()), !dbg !5166
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5160, metadata !DIExpression()), !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctl) #13, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %kctl, metadata !5161, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack_kctl) #13, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %jack_kctl, metadata !5162, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5163, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5174
  %1 = load ptr, ptr %card.addr, align 8, !dbg !5175
  %call = call ptr @snd_kctl_jack_new(ptr noundef %0, ptr noundef %1) #14, !dbg !5176
  store ptr %call, ptr %kctl, align 8, !dbg !5177
  %2 = load ptr, ptr %kctl, align 8, !dbg !5178
  %tobool = icmp ne ptr %2, null, !dbg !5178
  br i1 %tobool, label %if.end, label %if.then, !dbg !5180

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5181

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5182
  %4 = load ptr, ptr %kctl, align 8, !dbg !5183
  %call1 = call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %4) #14, !dbg !5184
  store i32 %call1, ptr %err, align 4, !dbg !5185
  %5 = load i32, ptr %err, align 4, !dbg !5186
  %cmp = icmp slt i32 %5, 0, !dbg !5188
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5189

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

if.end3:                                          ; preds = %if.end
  %call4 = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #15, !dbg !5191
  store ptr %call4, ptr %jack_kctl, align 8, !dbg !5192
  %6 = load ptr, ptr %jack_kctl, align 8, !dbg !5193
  %tobool5 = icmp ne ptr %6, null, !dbg !5193
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5195

if.then6:                                         ; preds = %if.end3
  br label %error, !dbg !5196

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %kctl, align 8, !dbg !5197
  %8 = load ptr, ptr %jack_kctl, align 8, !dbg !5198
  %kctl8 = getelementptr inbounds %struct.snd_jack_kctl, ptr %8, i32 0, i32 0, !dbg !5199
  store ptr %7, ptr %kctl8, align 8, !dbg !5200
  %9 = load i32, ptr %mask.addr, align 4, !dbg !5201
  %10 = load ptr, ptr %jack_kctl, align 8, !dbg !5202
  %mask_bits = getelementptr inbounds %struct.snd_jack_kctl, ptr %10, i32 0, i32 2, !dbg !5203
  store i32 %9, ptr %mask_bits, align 8, !dbg !5204
  %11 = load ptr, ptr %jack_kctl, align 8, !dbg !5205
  %12 = load ptr, ptr %kctl, align 8, !dbg !5206
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 8, !dbg !5207
  store ptr %11, ptr %private_data, align 8, !dbg !5208
  %13 = load ptr, ptr %kctl, align 8, !dbg !5209
  %private_free = getelementptr inbounds %struct.snd_kcontrol, ptr %13, i32 0, i32 9, !dbg !5210
  store ptr @snd_jack_kctl_private_free, ptr %private_free, align 8, !dbg !5211
  %14 = load ptr, ptr %jack_kctl, align 8, !dbg !5212
  store ptr %14, ptr %retval, align 8, !dbg !5213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5213

error:                                            ; preds = %if.then6
  call void @llvm.dbg.label(metadata !5164), !dbg !5214
  %15 = load ptr, ptr %kctl, align 8, !dbg !5215
  call void @snd_ctl_free_one(ptr noundef %15) #14, !dbg !5216
  store ptr null, ptr %retval, align 8, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

cleanup:                                          ; preds = %error, %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack_kctl) #13, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctl) #13, !dbg !5218
  %16 = load ptr, ptr %retval, align 8, !dbg !5218
  ret ptr %16, !dbg !5218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_jack_kctl_add(ptr noundef %jack, ptr noundef %jack_kctl) #0 align 16 !dbg !5219 {
entry:
  %jack.addr = alloca ptr, align 8
  %jack_kctl.addr = alloca ptr, align 8
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !5223, metadata !DIExpression()), !dbg !5225
  store ptr %jack_kctl, ptr %jack_kctl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack_kctl.addr, metadata !5224, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %jack.addr, align 8, !dbg !5227
  %1 = load ptr, ptr %jack_kctl.addr, align 8, !dbg !5228
  %jack1 = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 3, !dbg !5229
  store ptr %0, ptr %jack1, align 8, !dbg !5230
  %2 = load ptr, ptr %jack_kctl.addr, align 8, !dbg !5231
  %list = getelementptr inbounds %struct.snd_jack_kctl, ptr %2, i32 0, i32 1, !dbg !5232
  %3 = load ptr, ptr %jack.addr, align 8, !dbg !5233
  %kctl_list = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 0, !dbg !5234
  call void @list_add_tail(ptr noundef %list, ptr noundef %kctl_list) #14, !dbg !5235
  %4 = load ptr, ptr %jack.addr, align 8, !dbg !5236
  %5 = load ptr, ptr %jack_kctl.addr, align 8, !dbg !5237
  %call = call i32 @snd_jack_debugfs_add_inject_node(ptr noundef %4, ptr noundef %5) #14, !dbg !5238
  ret void, !dbg !5239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_jack_new(ptr noundef %card, ptr noundef %id, i32 noundef %type, ptr noundef %jjack, i1 noundef zeroext %initial_kctl, i1 noundef zeroext %phantom_jack) #0 align 16 !dbg !5045 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %jjack.addr = alloca ptr, align 8
  %initial_kctl.addr = alloca i8, align 1
  %phantom_jack.addr = alloca i8, align 1
  %jack = alloca ptr, align 8
  %jack_kctl = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5050, metadata !DIExpression()), !dbg !5240
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5051, metadata !DIExpression()), !dbg !5241
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5052, metadata !DIExpression()), !dbg !5242
  store ptr %jjack, ptr %jjack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jjack.addr, metadata !5053, metadata !DIExpression()), !dbg !5243
  %frombool = zext i1 %initial_kctl to i8
  store i8 %frombool, ptr %initial_kctl.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %initial_kctl.addr, metadata !5054, metadata !DIExpression()), !dbg !5244
  %frombool1 = zext i1 %phantom_jack to i8
  store i8 %frombool1, ptr %phantom_jack.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %phantom_jack.addr, metadata !5055, metadata !DIExpression()), !dbg !5245
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack) #13, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %jack, metadata !5056, metadata !DIExpression()), !dbg !5247
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack_kctl) #13, !dbg !5248
  call void @llvm.dbg.declare(metadata ptr %jack_kctl, metadata !5057, metadata !DIExpression()), !dbg !5249
  store ptr null, ptr %jack_kctl, align 8, !dbg !5249
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5250
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5058, metadata !DIExpression()), !dbg !5251
  %0 = load i8, ptr %initial_kctl.addr, align 1, !dbg !5252, !range !5254, !noundef !764
  %tobool = trunc i8 %0 to i1, !dbg !5252
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5255

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %card.addr, align 8, !dbg !5256
  %2 = load ptr, ptr %id.addr, align 8, !dbg !5258
  %3 = load i32, ptr %type.addr, align 4, !dbg !5259
  %call = call ptr @snd_jack_kctl_new(ptr noundef %1, ptr noundef %2, i32 noundef %3) #14, !dbg !5260
  store ptr %call, ptr %jack_kctl, align 8, !dbg !5261
  %4 = load ptr, ptr %jack_kctl, align 8, !dbg !5262
  %tobool2 = icmp ne ptr %4, null, !dbg !5262
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5264

if.then3:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !5265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !5265

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !5266

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call noalias ptr @kzalloc(i64 noundef 224, i32 noundef 3264) #15, !dbg !5267
  store ptr %call5, ptr %jack, align 8, !dbg !5268
  %5 = load ptr, ptr %jack, align 8, !dbg !5269
  %cmp = icmp eq ptr %5, null, !dbg !5271
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5272

if.then6:                                         ; preds = %if.end4
  store i32 -12, ptr %retval, align 4, !dbg !5273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !5273

if.end7:                                          ; preds = %if.end4
  %6 = load ptr, ptr %id.addr, align 8, !dbg !5274
  %call8 = call noalias ptr @kstrdup(ptr noundef %6, i32 noundef 3264) #14, !dbg !5275
  %7 = load ptr, ptr %jack, align 8, !dbg !5276
  %id9 = getelementptr inbounds %struct.snd_jack, ptr %7, i32 0, i32 2, !dbg !5277
  store ptr %call8, ptr %id9, align 8, !dbg !5278
  %8 = load ptr, ptr %jack, align 8, !dbg !5279
  %id10 = getelementptr inbounds %struct.snd_jack, ptr %8, i32 0, i32 2, !dbg !5281
  %9 = load ptr, ptr %id10, align 8, !dbg !5281
  %cmp11 = icmp eq ptr %9, null, !dbg !5282
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5283

if.then12:                                        ; preds = %if.end7
  %10 = load ptr, ptr %jack, align 8, !dbg !5284
  call void @kfree(ptr noundef %10) #14, !dbg !5286
  store i32 -12, ptr %retval, align 4, !dbg !5287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !5287

if.end13:                                         ; preds = %if.end7
  br label %do.body, !dbg !5288

do.body:                                          ; preds = %if.end13
  %11 = load ptr, ptr %jack, align 8, !dbg !5289
  %input_dev_lock = getelementptr inbounds %struct.snd_jack, ptr %11, i32 0, i32 4, !dbg !5289
  call void @__mutex_init(ptr noundef %input_dev_lock, ptr noundef @.str, ptr noundef @snd_jack_new.__key) #14, !dbg !5289
  br label %do.cond, !dbg !5289

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5289

do.end:                                           ; preds = %do.cond
  %12 = load i8, ptr %phantom_jack.addr, align 1, !dbg !5291, !range !5254, !noundef !764
  %tobool14 = trunc i8 %12 to i1, !dbg !5291
  br i1 %tobool14, label %if.end28, label %if.then15, !dbg !5292

if.then15:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5293
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5059, metadata !DIExpression()), !dbg !5294
  %call16 = call ptr @input_allocate_device() #14, !dbg !5295
  %13 = load ptr, ptr %jack, align 8, !dbg !5296
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %13, i32 0, i32 3, !dbg !5297
  store ptr %call16, ptr %input_dev, align 8, !dbg !5298
  %14 = load ptr, ptr %jack, align 8, !dbg !5299
  %input_dev17 = getelementptr inbounds %struct.snd_jack, ptr %14, i32 0, i32 3, !dbg !5301
  %15 = load ptr, ptr %input_dev17, align 8, !dbg !5301
  %cmp18 = icmp eq ptr %15, null, !dbg !5302
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5303

if.then19:                                        ; preds = %if.then15
  store i32 -12, ptr %err, align 4, !dbg !5304
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5306

if.end20:                                         ; preds = %if.then15
  %16 = load ptr, ptr %jack, align 8, !dbg !5307
  %input_dev21 = getelementptr inbounds %struct.snd_jack, ptr %16, i32 0, i32 3, !dbg !5308
  %17 = load ptr, ptr %input_dev21, align 8, !dbg !5308
  %phys = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 1, !dbg !5309
  store ptr @.str.1, ptr %phys, align 8, !dbg !5310
  %18 = load i32, ptr %type.addr, align 4, !dbg !5311
  %19 = load ptr, ptr %jack, align 8, !dbg !5312
  %type22 = getelementptr inbounds %struct.snd_jack, ptr %19, i32 0, i32 6, !dbg !5313
  store i32 %18, ptr %type22, align 4, !dbg !5314
  store i32 0, ptr %i, align 4, !dbg !5315
  br label %for.cond, !dbg !5317

for.cond:                                         ; preds = %for.inc, %if.end20
  %20 = load i32, ptr %i, align 4, !dbg !5318
  %cmp23 = icmp slt i32 %20, 6, !dbg !5320
  br i1 %cmp23, label %for.body, label %for.end, !dbg !5321

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %type.addr, align 4, !dbg !5322
  %22 = load i32, ptr %i, align 4, !dbg !5324
  %shl = shl i32 1, %22, !dbg !5325
  %and = and i32 %21, %shl, !dbg !5326
  %tobool24 = icmp ne i32 %and, 0, !dbg !5326
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5327

if.then25:                                        ; preds = %for.body
  %23 = load ptr, ptr %jack, align 8, !dbg !5328
  %input_dev26 = getelementptr inbounds %struct.snd_jack, ptr %23, i32 0, i32 3, !dbg !5329
  %24 = load ptr, ptr %input_dev26, align 8, !dbg !5329
  %25 = load i32, ptr %i, align 4, !dbg !5330
  %idxprom = sext i32 %25 to i64, !dbg !5331
  %arrayidx = getelementptr [6 x i32], ptr @jack_switch_types, i64 0, i64 %idxprom, !dbg !5331
  %26 = load i32, ptr %arrayidx, align 4, !dbg !5331
  call void @input_set_capability(ptr noundef %24, i32 noundef 5, i32 noundef %26) #14, !dbg !5332
  br label %if.end27, !dbg !5332

if.end27:                                         ; preds = %if.then25, %for.body
  br label %for.inc, !dbg !5333

for.inc:                                          ; preds = %if.end27
  %27 = load i32, ptr %i, align 4, !dbg !5334
  %inc = add i32 %27, 1, !dbg !5334
  store i32 %inc, ptr %i, align 4, !dbg !5334
  br label %for.cond, !dbg !5335, !llvm.loop !5336

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5340
  br label %cleanup, !dbg !5340

cleanup:                                          ; preds = %if.then19, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5340
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 0, label %cleanup.cont
    i32 4, label %fail_input
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28, !dbg !5341

if.end28:                                         ; preds = %cleanup.cont, %do.end
  %28 = load ptr, ptr %card.addr, align 8, !dbg !5342
  %29 = load ptr, ptr %jack, align 8, !dbg !5343
  %call29 = call i32 @snd_device_new(ptr noundef %28, i32 noundef 10, ptr noundef %29, ptr noundef @snd_jack_new.ops) #14, !dbg !5344
  store i32 %call29, ptr %err, align 4, !dbg !5345
  %30 = load i32, ptr %err, align 4, !dbg !5346
  %cmp30 = icmp slt i32 %30, 0, !dbg !5348
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5349

if.then31:                                        ; preds = %if.end28
  br label %fail_input, !dbg !5350

if.end32:                                         ; preds = %if.end28
  %31 = load ptr, ptr %card.addr, align 8, !dbg !5351
  %32 = load ptr, ptr %jack, align 8, !dbg !5352
  %card33 = getelementptr inbounds %struct.snd_jack, ptr %32, i32 0, i32 1, !dbg !5353
  store ptr %31, ptr %card33, align 8, !dbg !5354
  %33 = load ptr, ptr %jack, align 8, !dbg !5355
  %kctl_list = getelementptr inbounds %struct.snd_jack, ptr %33, i32 0, i32 0, !dbg !5356
  call void @INIT_LIST_HEAD(ptr noundef %kctl_list) #14, !dbg !5357
  %34 = load i8, ptr %initial_kctl.addr, align 1, !dbg !5358, !range !5254, !noundef !764
  %tobool34 = trunc i8 %34 to i1, !dbg !5358
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5360

if.then35:                                        ; preds = %if.end32
  %35 = load ptr, ptr %jack, align 8, !dbg !5361
  %36 = load ptr, ptr %jack_kctl, align 8, !dbg !5362
  call void @snd_jack_kctl_add(ptr noundef %35, ptr noundef %36) #14, !dbg !5363
  br label %if.end36, !dbg !5363

if.end36:                                         ; preds = %if.then35, %if.end32
  %37 = load ptr, ptr %jack, align 8, !dbg !5364
  %38 = load ptr, ptr %jjack.addr, align 8, !dbg !5365
  store ptr %37, ptr %38, align 8, !dbg !5366
  store i32 0, ptr %retval, align 4, !dbg !5367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !5367

fail_input:                                       ; preds = %cleanup, %if.then31
  call void @llvm.dbg.label(metadata !5062), !dbg !5368
  %39 = load ptr, ptr %jack, align 8, !dbg !5369
  %input_dev37 = getelementptr inbounds %struct.snd_jack, ptr %39, i32 0, i32 3, !dbg !5370
  %40 = load ptr, ptr %input_dev37, align 8, !dbg !5370
  call void @input_free_device(ptr noundef %40) #14, !dbg !5371
  %41 = load ptr, ptr %jack, align 8, !dbg !5372
  %id38 = getelementptr inbounds %struct.snd_jack, ptr %41, i32 0, i32 2, !dbg !5373
  %42 = load ptr, ptr %id38, align 8, !dbg !5373
  call void @kfree(ptr noundef %42) #14, !dbg !5374
  %43 = load ptr, ptr %jack, align 8, !dbg !5375
  call void @kfree(ptr noundef %43) #14, !dbg !5376
  %44 = load i32, ptr %err, align 4, !dbg !5377
  store i32 %44, ptr %retval, align 4, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !5378

cleanup39:                                        ; preds = %fail_input, %if.end36, %cleanup, %if.then12, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack_kctl) #13, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack) #13, !dbg !5379
  %45 = load i32, ptr %retval, align 4, !dbg !5379
  ret i32 %45, !dbg !5379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_jack_dev_free(ptr noundef %device) #0 align 16 !dbg !5380 {
entry:
  %device.addr = alloca ptr, align 8
  %jack = alloca ptr, align 8
  %card = alloca ptr, align 8
  %jack_kctl = alloca ptr, align 8
  %tmp_jack_kctl = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5382, metadata !DIExpression()), !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack) #13, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %jack, metadata !5383, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %device.addr, align 8, !dbg !5398
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !5399
  %1 = load ptr, ptr %device_data, align 8, !dbg !5399
  store ptr %1, ptr %jack, align 8, !dbg !5397
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #13, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5384, metadata !DIExpression()), !dbg !5401
  %2 = load ptr, ptr %device.addr, align 8, !dbg !5402
  %card1 = getelementptr inbounds %struct.snd_device, ptr %2, i32 0, i32 1, !dbg !5403
  %3 = load ptr, ptr %card1, align 8, !dbg !5403
  store ptr %3, ptr %card, align 8, !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack_kctl) #13, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %jack_kctl, metadata !5385, metadata !DIExpression()), !dbg !5405
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_jack_kctl) #13, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %tmp_jack_kctl, metadata !5386, metadata !DIExpression()), !dbg !5406
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5387, metadata !DIExpression()), !dbg !5407
  %4 = load ptr, ptr %jack, align 8, !dbg !5407
  %kctl_list = getelementptr inbounds %struct.snd_jack, ptr %4, i32 0, i32 0, !dbg !5407
  %next = getelementptr inbounds %struct.list_head, ptr %kctl_list, i32 0, i32 0, !dbg !5407
  %5 = load ptr, ptr %next, align 8, !dbg !5407
  store ptr %5, ptr %__mptr, align 8, !dbg !5407
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5407
  %add.ptr = getelementptr i8, ptr %6, i64 -8, !dbg !5407
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5408
  %7 = load ptr, ptr %tmp, align 8, !dbg !5407
  store ptr %7, ptr %jack_kctl, align 8, !dbg !5408
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #13, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5390, metadata !DIExpression()), !dbg !5409
  %8 = load ptr, ptr %jack_kctl, align 8, !dbg !5409
  %list = getelementptr inbounds %struct.snd_jack_kctl, ptr %8, i32 0, i32 1, !dbg !5409
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5409
  %9 = load ptr, ptr %next3, align 8, !dbg !5409
  store ptr %9, ptr %__mptr2, align 8, !dbg !5409
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !5409
  %add.ptr5 = getelementptr i8, ptr %10, i64 -8, !dbg !5409
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #13, !dbg !5408
  %11 = load ptr, ptr %tmp4, align 8, !dbg !5409
  store ptr %11, ptr %tmp_jack_kctl, align 8, !dbg !5408
  br label %for.cond, !dbg !5408

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load ptr, ptr %jack_kctl, align 8, !dbg !5410
  %list6 = getelementptr inbounds %struct.snd_jack_kctl, ptr %12, i32 0, i32 1, !dbg !5410
  %13 = load ptr, ptr %jack, align 8, !dbg !5410
  %kctl_list7 = getelementptr inbounds %struct.snd_jack, ptr %13, i32 0, i32 0, !dbg !5410
  %cmp = icmp eq ptr %list6, %kctl_list7, !dbg !5410
  %lnot = xor i1 %cmp, true, !dbg !5410
  br i1 %lnot, label %for.body, label %for.end, !dbg !5408

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %jack_kctl, align 8, !dbg !5411
  %list8 = getelementptr inbounds %struct.snd_jack_kctl, ptr %14, i32 0, i32 1, !dbg !5413
  call void @list_del_init(ptr noundef %list8) #14, !dbg !5414
  %15 = load ptr, ptr %card, align 8, !dbg !5415
  %16 = load ptr, ptr %jack_kctl, align 8, !dbg !5416
  %kctl = getelementptr inbounds %struct.snd_jack_kctl, ptr %16, i32 0, i32 0, !dbg !5417
  %17 = load ptr, ptr %kctl, align 8, !dbg !5417
  %call = call i32 @snd_ctl_remove(ptr noundef %15, ptr noundef %17) #14, !dbg !5418
  br label %for.inc, !dbg !5419

for.inc:                                          ; preds = %for.body
  %18 = load ptr, ptr %tmp_jack_kctl, align 8, !dbg !5410
  store ptr %18, ptr %jack_kctl, align 8, !dbg !5410
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #13, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !5392, metadata !DIExpression()), !dbg !5420
  %19 = load ptr, ptr %tmp_jack_kctl, align 8, !dbg !5420
  %list10 = getelementptr inbounds %struct.snd_jack_kctl, ptr %19, i32 0, i32 1, !dbg !5420
  %next11 = getelementptr inbounds %struct.list_head, ptr %list10, i32 0, i32 0, !dbg !5420
  %20 = load ptr, ptr %next11, align 8, !dbg !5420
  store ptr %20, ptr %__mptr9, align 8, !dbg !5420
  %21 = load ptr, ptr %__mptr9, align 8, !dbg !5420
  %add.ptr13 = getelementptr i8, ptr %21, i64 -8, !dbg !5420
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #13, !dbg !5410
  %22 = load ptr, ptr %tmp12, align 8, !dbg !5420
  store ptr %22, ptr %tmp_jack_kctl, align 8, !dbg !5410
  br label %for.cond, !dbg !5410, !llvm.loop !5421

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %jack, align 8, !dbg !5423
  %private_free = getelementptr inbounds %struct.snd_jack, ptr %23, i32 0, i32 11, !dbg !5425
  %24 = load ptr, ptr %private_free, align 8, !dbg !5425
  %tobool = icmp ne ptr %24, null, !dbg !5423
  br i1 %tobool, label %if.then, label %if.end, !dbg !5426

if.then:                                          ; preds = %for.end
  %25 = load ptr, ptr %jack, align 8, !dbg !5427
  %private_free14 = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 11, !dbg !5428
  %26 = load ptr, ptr %private_free14, align 8, !dbg !5428
  %27 = load ptr, ptr %jack, align 8, !dbg !5429
  call void %26(ptr noundef %27) #14, !dbg !5427
  br label %if.end, !dbg !5427

if.end:                                           ; preds = %if.then, %for.end
  %28 = load ptr, ptr %device.addr, align 8, !dbg !5430
  %call15 = call i32 @snd_jack_dev_disconnect(ptr noundef %28) #14, !dbg !5431
  %29 = load ptr, ptr %jack, align 8, !dbg !5432
  %id = getelementptr inbounds %struct.snd_jack, ptr %29, i32 0, i32 2, !dbg !5433
  %30 = load ptr, ptr %id, align 8, !dbg !5433
  call void @kfree(ptr noundef %30) #14, !dbg !5434
  %31 = load ptr, ptr %jack, align 8, !dbg !5435
  call void @kfree(ptr noundef %31) #14, !dbg !5436
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_jack_kctl) #13, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack_kctl) #13, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #13, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack) #13, !dbg !5437
  ret i32 0, !dbg !5438
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_jack_dev_register(ptr noundef %device) #0 align 16 !dbg !5439 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %jack = alloca ptr, align 8
  %card = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %__UNIQUE_ID_guard294 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %testbit = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5441, metadata !DIExpression()), !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack) #13, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %jack, metadata !5442, metadata !DIExpression()), !dbg !5455
  %0 = load ptr, ptr %device.addr, align 8, !dbg !5456
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !5457
  %1 = load ptr, ptr %device_data, align 8, !dbg !5457
  store ptr %1, ptr %jack, align 8, !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #13, !dbg !5458
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5443, metadata !DIExpression()), !dbg !5459
  %2 = load ptr, ptr %device.addr, align 8, !dbg !5460
  %card1 = getelementptr inbounds %struct.snd_device, ptr %2, i32 0, i32 1, !dbg !5461
  %3 = load ptr, ptr %card1, align 8, !dbg !5461
  store ptr %3, ptr %card, align 8, !dbg !5459
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5444, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5445, metadata !DIExpression()), !dbg !5464
  %4 = load ptr, ptr %jack, align 8, !dbg !5465
  %name = getelementptr inbounds %struct.snd_jack, ptr %4, i32 0, i32 7, !dbg !5466
  %arraydecay = getelementptr inbounds [100 x i8], ptr %name, i64 0, i64 0, !dbg !5465
  %5 = load ptr, ptr %card, align 8, !dbg !5467
  %shortname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 3, !dbg !5468
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %shortname, i64 0, i64 0, !dbg !5467
  %6 = load ptr, ptr %jack, align 8, !dbg !5469
  %id = getelementptr inbounds %struct.snd_jack, ptr %6, i32 0, i32 2, !dbg !5470
  %7 = load ptr, ptr %id, align 8, !dbg !5470
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 100, ptr noundef @.str.3, ptr noundef %arraydecay2, ptr noundef %7) #14, !dbg !5471
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_guard294) #13, !dbg !5472
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_guard294, metadata !5446, metadata !DIExpression()), !dbg !5472
  %8 = load ptr, ptr %jack, align 8, !dbg !5473
  %input_dev_lock = getelementptr inbounds %struct.snd_jack, ptr %8, i32 0, i32 4, !dbg !5474
  %call3 = call ptr @class_mutex_constructor(ptr noundef %input_dev_lock) #14, !dbg !5472
  store ptr %call3, ptr %__UNIQUE_ID_guard294, align 8, !dbg !5472
  %9 = load ptr, ptr %jack, align 8, !dbg !5475
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %9, i32 0, i32 3, !dbg !5477
  %10 = load ptr, ptr %input_dev, align 8, !dbg !5477
  %tobool = icmp ne ptr %10, null, !dbg !5475
  br i1 %tobool, label %if.end, label %if.then, !dbg !5478

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !5479

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %jack, align 8, !dbg !5480
  %name4 = getelementptr inbounds %struct.snd_jack, ptr %11, i32 0, i32 7, !dbg !5481
  %arraydecay5 = getelementptr inbounds [100 x i8], ptr %name4, i64 0, i64 0, !dbg !5480
  %12 = load ptr, ptr %jack, align 8, !dbg !5482
  %input_dev6 = getelementptr inbounds %struct.snd_jack, ptr %12, i32 0, i32 3, !dbg !5483
  %13 = load ptr, ptr %input_dev6, align 8, !dbg !5483
  %name7 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 0, !dbg !5484
  store ptr %arraydecay5, ptr %name7, align 8, !dbg !5485
  %14 = load ptr, ptr %jack, align 8, !dbg !5486
  %input_dev8 = getelementptr inbounds %struct.snd_jack, ptr %14, i32 0, i32 3, !dbg !5488
  %15 = load ptr, ptr %input_dev8, align 8, !dbg !5488
  %dev = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 40, !dbg !5489
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5490
  %16 = load ptr, ptr %parent, align 8, !dbg !5490
  %tobool9 = icmp ne ptr %16, null, !dbg !5486
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !5491

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %card, align 8, !dbg !5492
  %call11 = call ptr @snd_card_get_device_link(ptr noundef %17) #14, !dbg !5493
  %18 = load ptr, ptr %jack, align 8, !dbg !5494
  %input_dev12 = getelementptr inbounds %struct.snd_jack, ptr %18, i32 0, i32 3, !dbg !5495
  %19 = load ptr, ptr %input_dev12, align 8, !dbg !5495
  %dev13 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 40, !dbg !5496
  %parent14 = getelementptr inbounds %struct.device, ptr %dev13, i32 0, i32 1, !dbg !5497
  store ptr %call11, ptr %parent14, align 8, !dbg !5498
  br label %if.end15, !dbg !5494

if.end15:                                         ; preds = %if.then10, %if.end
  store i32 0, ptr %i, align 4, !dbg !5499
  br label %for.cond, !dbg !5500

for.cond:                                         ; preds = %for.inc, %if.end15
  %20 = load i32, ptr %i, align 4, !dbg !5501
  %conv = sext i32 %20 to i64, !dbg !5501
  %cmp = icmp ult i64 %conv, 6, !dbg !5502
  br i1 %cmp, label %for.body, label %for.end, !dbg !5503

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %testbit) #13, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %testbit, metadata !5449, metadata !DIExpression()), !dbg !5505
  %21 = load i32, ptr %i, align 4, !dbg !5506
  %shr = ashr i32 16384, %21, !dbg !5507
  store i32 %shr, ptr %testbit, align 4, !dbg !5505
  %22 = load ptr, ptr %jack, align 8, !dbg !5508
  %type = getelementptr inbounds %struct.snd_jack, ptr %22, i32 0, i32 6, !dbg !5510
  %23 = load i32, ptr %type, align 4, !dbg !5510
  %24 = load i32, ptr %testbit, align 4, !dbg !5511
  %and = and i32 %23, %24, !dbg !5512
  %tobool17 = icmp ne i32 %and, 0, !dbg !5512
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5513

if.then18:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5514

if.end19:                                         ; preds = %for.body
  %25 = load ptr, ptr %jack, align 8, !dbg !5515
  %key = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 8, !dbg !5517
  %26 = load i32, ptr %i, align 4, !dbg !5518
  %idxprom = sext i32 %26 to i64, !dbg !5515
  %arrayidx = getelementptr [6 x i32], ptr %key, i64 0, i64 %idxprom, !dbg !5515
  %27 = load i32, ptr %arrayidx, align 4, !dbg !5515
  %tobool20 = icmp ne i32 %27, 0, !dbg !5515
  br i1 %tobool20, label %if.end25, label %if.then21, !dbg !5519

if.then21:                                        ; preds = %if.end19
  %28 = load i32, ptr %i, align 4, !dbg !5520
  %add = add i32 256, %28, !dbg !5521
  %29 = load ptr, ptr %jack, align 8, !dbg !5522
  %key22 = getelementptr inbounds %struct.snd_jack, ptr %29, i32 0, i32 8, !dbg !5523
  %30 = load i32, ptr %i, align 4, !dbg !5524
  %idxprom23 = sext i32 %30 to i64, !dbg !5522
  %arrayidx24 = getelementptr [6 x i32], ptr %key22, i64 0, i64 %idxprom23, !dbg !5522
  store i32 %add, ptr %arrayidx24, align 4, !dbg !5525
  br label %if.end25, !dbg !5522

if.end25:                                         ; preds = %if.then21, %if.end19
  %31 = load ptr, ptr %jack, align 8, !dbg !5526
  %input_dev26 = getelementptr inbounds %struct.snd_jack, ptr %31, i32 0, i32 3, !dbg !5527
  %32 = load ptr, ptr %input_dev26, align 8, !dbg !5527
  %33 = load ptr, ptr %jack, align 8, !dbg !5528
  %key27 = getelementptr inbounds %struct.snd_jack, ptr %33, i32 0, i32 8, !dbg !5529
  %34 = load i32, ptr %i, align 4, !dbg !5530
  %idxprom28 = sext i32 %34 to i64, !dbg !5528
  %arrayidx29 = getelementptr [6 x i32], ptr %key27, i64 0, i64 %idxprom28, !dbg !5528
  %35 = load i32, ptr %arrayidx29, align 4, !dbg !5528
  call void @input_set_capability(ptr noundef %32, i32 noundef 1, i32 noundef %35) #14, !dbg !5531
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5532
  br label %cleanup, !dbg !5532

cleanup:                                          ; preds = %if.end25, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %testbit) #13, !dbg !5532
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5533

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load i32, ptr %i, align 4, !dbg !5534
  %inc = add i32 %36, 1, !dbg !5534
  store i32 %inc, ptr %i, align 4, !dbg !5534
  br label %for.cond, !dbg !5535, !llvm.loop !5536

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %jack, align 8, !dbg !5538
  %input_dev30 = getelementptr inbounds %struct.snd_jack, ptr %37, i32 0, i32 3, !dbg !5539
  %38 = load ptr, ptr %input_dev30, align 8, !dbg !5539
  %call31 = call i32 @input_register_device(ptr noundef %38) #14, !dbg !5540
  store i32 %call31, ptr %err, align 4, !dbg !5541
  %39 = load i32, ptr %err, align 4, !dbg !5542
  %cmp32 = icmp eq i32 %39, 0, !dbg !5544
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5545

if.then34:                                        ; preds = %for.end
  %40 = load ptr, ptr %jack, align 8, !dbg !5546
  %registered = getelementptr inbounds %struct.snd_jack, ptr %40, i32 0, i32 5, !dbg !5547
  store i32 1, ptr %registered, align 8, !dbg !5548
  br label %if.end35, !dbg !5546

if.end35:                                         ; preds = %if.then34, %for.end
  %41 = load i32, ptr %err, align 4, !dbg !5549
  store i32 %41, ptr %retval, align 4, !dbg !5550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !5550

cleanup36:                                        ; preds = %if.end35, %if.then
  call void @class_mutex_destructor(ptr noundef %__UNIQUE_ID_guard294) #14, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_guard294) #13, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #13, !dbg !5551
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack) #13, !dbg !5551
  %42 = load i32, ptr %retval, align 4, !dbg !5551
  ret i32 %42, !dbg !5551

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_jack_dev_disconnect(ptr noundef %device) #0 align 16 !dbg !5552 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %jack = alloca ptr, align 8
  %__UNIQUE_ID_guard293 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5554, metadata !DIExpression()), !dbg !5557
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack) #13, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %jack, metadata !5555, metadata !DIExpression()), !dbg !5559
  %0 = load ptr, ptr %device.addr, align 8, !dbg !5560
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !5561
  %1 = load ptr, ptr %device_data, align 8, !dbg !5561
  store ptr %1, ptr %jack, align 8, !dbg !5559
  %2 = load ptr, ptr %jack, align 8, !dbg !5562
  call void @snd_jack_remove_debugfs(ptr noundef %2) #14, !dbg !5563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_guard293) #13, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_guard293, metadata !5556, metadata !DIExpression()), !dbg !5564
  %3 = load ptr, ptr %jack, align 8, !dbg !5565
  %input_dev_lock = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 4, !dbg !5566
  %call = call ptr @class_mutex_constructor(ptr noundef %input_dev_lock) #14, !dbg !5564
  store ptr %call, ptr %__UNIQUE_ID_guard293, align 8, !dbg !5564
  %4 = load ptr, ptr %jack, align 8, !dbg !5567
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %4, i32 0, i32 3, !dbg !5569
  %5 = load ptr, ptr %input_dev, align 8, !dbg !5569
  %tobool = icmp ne ptr %5, null, !dbg !5567
  br i1 %tobool, label %if.end, label %if.then, !dbg !5570

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5571

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %jack, align 8, !dbg !5572
  %registered = getelementptr inbounds %struct.snd_jack, ptr %6, i32 0, i32 5, !dbg !5574
  %7 = load i32, ptr %registered, align 8, !dbg !5574
  %tobool1 = icmp ne i32 %7, 0, !dbg !5572
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5575

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %jack, align 8, !dbg !5576
  %input_dev3 = getelementptr inbounds %struct.snd_jack, ptr %8, i32 0, i32 3, !dbg !5577
  %9 = load ptr, ptr %input_dev3, align 8, !dbg !5577
  call void @input_unregister_device(ptr noundef %9) #14, !dbg !5578
  br label %if.end5, !dbg !5578

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %jack, align 8, !dbg !5579
  %input_dev4 = getelementptr inbounds %struct.snd_jack, ptr %10, i32 0, i32 3, !dbg !5580
  %11 = load ptr, ptr %input_dev4, align 8, !dbg !5580
  call void @input_free_device(ptr noundef %11) #14, !dbg !5581
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %12 = load ptr, ptr %jack, align 8, !dbg !5582
  %input_dev6 = getelementptr inbounds %struct.snd_jack, ptr %12, i32 0, i32 3, !dbg !5583
  store ptr null, ptr %input_dev6, align 8, !dbg !5584
  store i32 0, ptr %retval, align 4, !dbg !5585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5585

cleanup:                                          ; preds = %if.end5, %if.then
  call void @class_mutex_destructor(ptr noundef %__UNIQUE_ID_guard293) #14, !dbg !5586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_guard293) #13, !dbg !5586
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack) #13, !dbg !5586
  %13 = load i32, ptr %retval, align 4, !dbg !5586
  ret i32 %13, !dbg !5586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5587 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5591, metadata !DIExpression()), !dbg !5593
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5592, metadata !DIExpression()), !dbg !5594
  %0 = load i64, ptr %size.addr, align 8, !dbg !5595
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5596
  %or = or i32 %1, 256, !dbg !5597
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !5598
  ret ptr %call, !dbg !5599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5600 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5604 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5607 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5611 dso_local ptr @input_allocate_device() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5614 dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5617 dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5620 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  br label %do.body, !dbg !5627

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5628

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5630

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5628

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5632
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5632
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5632
  store volatile ptr %0, ptr %next, align 8, !dbg !5632
  br label %do.end3, !dbg !5632

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5628

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5634

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5635

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5637

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5635

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5639
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5639
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5639
  store volatile ptr %2, ptr %prev, align 8, !dbg !5639
  br label %do.end9, !dbg !5639

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5635

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5641
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5642 dso_local void @input_free_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_jack_set_parent(ptr noundef %jack, ptr noundef %parent) #0 align 16 !dbg !5643 {
entry:
  %jack.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID_guard297 = alloca ptr, align 8
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !5647, metadata !DIExpression()), !dbg !5655
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5648, metadata !DIExpression()), !dbg !5656
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5649, metadata !DIExpression()), !dbg !5657
  %0 = load ptr, ptr %jack.addr, align 8, !dbg !5657
  %registered = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 5, !dbg !5657
  %1 = load i32, ptr %registered, align 8, !dbg !5657
  %tobool = icmp ne i32 %1, 0, !dbg !5657
  %lnot = xor i1 %tobool, true, !dbg !5657
  %lnot1 = xor i1 %lnot, true, !dbg !5657
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5657
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5657
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5658
  %tobool2 = icmp ne i32 %2, 0, !dbg !5658
  %lnot3 = xor i1 %tobool2, true, !dbg !5658
  %lnot5 = xor i1 %lnot3, true, !dbg !5658
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5658
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5658
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5658
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5658
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5657

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5658

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5651, metadata !DIExpression()), !dbg !5659
  store i32 2305, ptr %__flags, align 4, !dbg !5659
  br label %do.body8, !dbg !5659

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5660

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5660

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5659

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5662
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 589, i32 %3, i64 12) #13, !dbg !5662, !srcloc !5664
  br label %do.cond10, !dbg !5662

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5662

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5659

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5665

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5665

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5658
  br label %do.cond15, !dbg !5659

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5659

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5659

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5657
  %tobool17 = icmp ne i32 %4, 0, !dbg !5657
  %lnot18 = xor i1 %tobool17, true, !dbg !5657
  %lnot20 = xor i1 %lnot18, true, !dbg !5657
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5657
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5657
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5657
  store i64 %expval23, ptr %tmp, align 8, !dbg !5658
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5667
  %5 = load i64, ptr %tmp, align 8, !dbg !5657
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_guard297) #13, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_guard297, metadata !5654, metadata !DIExpression()), !dbg !5668
  %6 = load ptr, ptr %jack.addr, align 8, !dbg !5669
  %input_dev_lock = getelementptr inbounds %struct.snd_jack, ptr %6, i32 0, i32 4, !dbg !5670
  %call = call ptr @class_mutex_constructor(ptr noundef %input_dev_lock) #14, !dbg !5668
  store ptr %call, ptr %__UNIQUE_ID_guard297, align 8, !dbg !5668
  %7 = load ptr, ptr %jack.addr, align 8, !dbg !5671
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %7, i32 0, i32 3, !dbg !5673
  %8 = load ptr, ptr %input_dev, align 8, !dbg !5673
  %tobool24 = icmp ne ptr %8, null, !dbg !5671
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !5674

if.then25:                                        ; preds = %if.end
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !5675
  %10 = load ptr, ptr %jack.addr, align 8, !dbg !5676
  %input_dev26 = getelementptr inbounds %struct.snd_jack, ptr %10, i32 0, i32 3, !dbg !5677
  %11 = load ptr, ptr %input_dev26, align 8, !dbg !5677
  %dev = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, !dbg !5678
  %parent27 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5679
  store ptr %9, ptr %parent27, align 8, !dbg !5680
  br label %if.end28, !dbg !5676

if.end28:                                         ; preds = %if.then25, %if.end
  call void @class_mutex_destructor(ptr noundef %__UNIQUE_ID_guard297) #14, !dbg !5681
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_guard297) #13, !dbg !5681
  ret void, !dbg !5681
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_mutex_constructor(ptr noundef %_T) #5 align 16 !dbg !5682 {
entry:
  %_T.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_T, ptr %_T.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_T.addr, metadata !5686, metadata !DIExpression()), !dbg !5688
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #13, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5687, metadata !DIExpression()), !dbg !5688
  %0 = load ptr, ptr %_T.addr, align 8, !dbg !5689
  call void @mutex_lock(ptr noundef %0) #14, !dbg !5689
  %1 = load ptr, ptr %_T.addr, align 8, !dbg !5689
  store ptr %1, ptr %tmp, align 8, !dbg !5689
  %2 = load ptr, ptr %tmp, align 8, !dbg !5689
  store ptr %2, ptr %t, align 8, !dbg !5688
  %3 = load ptr, ptr %t, align 8, !dbg !5688
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #13, !dbg !5688
  ret ptr %3, !dbg !5688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @class_mutex_destructor(ptr noundef %p) #5 align 16 !dbg !5691 {
entry:
  %p.addr = alloca ptr, align 8
  %_T = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5696, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %_T) #13, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %_T, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5698
  %1 = load ptr, ptr %0, align 8, !dbg !5698
  store ptr %1, ptr %_T, align 8, !dbg !5698
  %2 = load ptr, ptr %_T, align 8, !dbg !5699
  %tobool = icmp ne ptr %2, null, !dbg !5699
  br i1 %tobool, label %if.then, label %if.end, !dbg !5698

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %_T, align 8, !dbg !5701
  call void @mutex_unlock(ptr noundef %3) #14, !dbg !5701
  br label %if.end, !dbg !5701

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %_T) #13, !dbg !5698
  ret void, !dbg !5698
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_jack_set_key(ptr noundef %jack, i32 noundef %type, i32 noundef %keytype) #0 align 16 !dbg !5703 {
entry:
  %retval = alloca i32, align 4
  %jack.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %keytype.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !5707, metadata !DIExpression()), !dbg !5716
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5708, metadata !DIExpression()), !dbg !5717
  store i32 %keytype, ptr %keytype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keytype.addr, metadata !5709, metadata !DIExpression()), !dbg !5718
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #13, !dbg !5719
  call void @llvm.dbg.declare(metadata ptr %key, metadata !5710, metadata !DIExpression()), !dbg !5720
  %call = call i32 @fls(i32 noundef 16384) #14, !dbg !5721
  %0 = load i32, ptr %type.addr, align 4, !dbg !5722
  %call1 = call i32 @fls(i32 noundef %0) #14, !dbg !5723
  %sub = sub i32 %call, %call1, !dbg !5724
  store i32 %sub, ptr %key, align 4, !dbg !5720
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5711, metadata !DIExpression()), !dbg !5725
  %1 = load ptr, ptr %jack.addr, align 8, !dbg !5725
  %registered = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 5, !dbg !5725
  %2 = load i32, ptr %registered, align 8, !dbg !5725
  %tobool = icmp ne i32 %2, 0, !dbg !5725
  %lnot = xor i1 %tobool, true, !dbg !5725
  %lnot2 = xor i1 %lnot, true, !dbg !5725
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5725
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5725
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5726
  %tobool3 = icmp ne i32 %3, 0, !dbg !5726
  %lnot4 = xor i1 %tobool3, true, !dbg !5726
  %lnot6 = xor i1 %lnot4, true, !dbg !5726
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5726
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5726
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5726
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5726
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5725

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5726

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5713, metadata !DIExpression()), !dbg !5727
  store i32 2305, ptr %__flags, align 4, !dbg !5727
  br label %do.body9, !dbg !5727

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5728

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5728

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5727

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5730
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 626, i32 %4, i64 12) #13, !dbg !5730, !srcloc !5732
  br label %do.cond11, !dbg !5730

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5730

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5727

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5733

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5733

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5726
  br label %do.cond16, !dbg !5727

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5727

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5727

if.end:                                           ; preds = %do.end17, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5725
  %tobool18 = icmp ne i32 %5, 0, !dbg !5725
  %lnot19 = xor i1 %tobool18, true, !dbg !5725
  %lnot21 = xor i1 %lnot19, true, !dbg !5725
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5725
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5725
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5725
  store i64 %expval24, ptr %tmp, align 8, !dbg !5726
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5735
  %6 = load i64, ptr %tmp, align 8, !dbg !5725
  %7 = load i32, ptr %keytype.addr, align 4, !dbg !5736
  %tobool25 = icmp ne i32 %7, 0, !dbg !5736
  br i1 %tobool25, label %lor.lhs.false, label %if.then28, !dbg !5738

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, ptr %key, align 4, !dbg !5739
  %conv26 = sext i32 %8 to i64, !dbg !5739
  %cmp = icmp uge i64 %conv26, 6, !dbg !5740
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !5741

if.then28:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5742

if.end29:                                         ; preds = %lor.lhs.false
  %9 = load i32, ptr %type.addr, align 4, !dbg !5743
  %10 = load ptr, ptr %jack.addr, align 8, !dbg !5744
  %type30 = getelementptr inbounds %struct.snd_jack, ptr %10, i32 0, i32 6, !dbg !5745
  %11 = load i32, ptr %type30, align 4, !dbg !5746
  %or = or i32 %11, %9, !dbg !5746
  store i32 %or, ptr %type30, align 4, !dbg !5746
  %12 = load i32, ptr %keytype.addr, align 4, !dbg !5747
  %13 = load ptr, ptr %jack.addr, align 8, !dbg !5748
  %key31 = getelementptr inbounds %struct.snd_jack, ptr %13, i32 0, i32 8, !dbg !5749
  %14 = load i32, ptr %key, align 4, !dbg !5750
  %idxprom = sext i32 %14 to i64, !dbg !5748
  %arrayidx = getelementptr [6 x i32], ptr %key31, i64 0, i64 %idxprom, !dbg !5748
  store i32 %12, ptr %arrayidx, align 4, !dbg !5751
  store i32 0, ptr %retval, align 4, !dbg !5752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5752

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #13, !dbg !5753
  %15 = load i32, ptr %retval, align 4, !dbg !5753
  ret i32 %15, !dbg !5753
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #7 align 16 !dbg !5754 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5759, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5760, metadata !DIExpression()), !dbg !5763
  %0 = load i32, ptr %x.addr, align 4, !dbg !5764
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #16, !dbg !5765, !srcloc !5766
  store i32 %1, ptr %r, align 4, !dbg !5765
  %2 = load i32, ptr %r, align 4, !dbg !5767
  %add = add i32 %2, 1, !dbg !5768
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13, !dbg !5769
  ret i32 %add, !dbg !5770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_jack_report(ptr noundef %jack, i32 noundef %status) #0 align 16 !dbg !5771 {
entry:
  %jack.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %jack_kctl = alloca ptr, align 8
  %mask_bits = alloca i32, align 4
  %idev = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %testbit = alloca i32, align 4
  %testbit33 = alloca i32, align 4
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !5775, metadata !DIExpression()), !dbg !5795
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5776, metadata !DIExpression()), !dbg !5796
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack_kctl) #13, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %jack_kctl, metadata !5777, metadata !DIExpression()), !dbg !5798
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_bits) #13, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %mask_bits, metadata !5778, metadata !DIExpression()), !dbg !5800
  store i32 0, ptr %mask_bits, align 4, !dbg !5800
  call void @llvm.lifetime.start.p0(i64 8, ptr %idev) #13, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %idev, metadata !5779, metadata !DIExpression()), !dbg !5802
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5780, metadata !DIExpression()), !dbg !5804
  %0 = load ptr, ptr %jack.addr, align 8, !dbg !5805
  %tobool = icmp ne ptr %0, null, !dbg !5805
  br i1 %tobool, label %if.end, label %if.then, !dbg !5807

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5808

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4, !dbg !5809
  %2 = load ptr, ptr %jack.addr, align 8, !dbg !5810
  %hw_status_cache = getelementptr inbounds %struct.snd_jack, ptr %2, i32 0, i32 9, !dbg !5811
  store i32 %1, ptr %hw_status_cache, align 4, !dbg !5812
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5781, metadata !DIExpression()), !dbg !5813
  %3 = load ptr, ptr %jack.addr, align 8, !dbg !5813
  %kctl_list = getelementptr inbounds %struct.snd_jack, ptr %3, i32 0, i32 0, !dbg !5813
  %next = getelementptr inbounds %struct.list_head, ptr %kctl_list, i32 0, i32 0, !dbg !5813
  %4 = load ptr, ptr %next, align 8, !dbg !5813
  store ptr %4, ptr %__mptr, align 8, !dbg !5813
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5813
  %add.ptr = getelementptr i8, ptr %5, i64 -8, !dbg !5813
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5813
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5814
  %6 = load ptr, ptr %tmp, align 8, !dbg !5813
  store ptr %6, ptr %jack_kctl, align 8, !dbg !5814
  br label %for.cond, !dbg !5814

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %jack_kctl, align 8, !dbg !5815
  %list = getelementptr inbounds %struct.snd_jack_kctl, ptr %7, i32 0, i32 1, !dbg !5815
  %8 = load ptr, ptr %jack.addr, align 8, !dbg !5815
  %kctl_list1 = getelementptr inbounds %struct.snd_jack, ptr %8, i32 0, i32 0, !dbg !5815
  %cmp = icmp eq ptr %list, %kctl_list1, !dbg !5815
  %lnot = xor i1 %cmp, true, !dbg !5815
  br i1 %lnot, label %for.body, label %for.end, !dbg !5814

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %jack_kctl, align 8, !dbg !5816
  %sw_inject_enable = getelementptr inbounds %struct.snd_jack_kctl, ptr %9, i32 0, i32 4, !dbg !5818
  %10 = load i8, ptr %sw_inject_enable, align 8, !dbg !5818, !range !5254, !noundef !764
  %tobool2 = trunc i8 %10 to i1, !dbg !5818
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !5819

if.then3:                                         ; preds = %for.body
  %11 = load ptr, ptr %jack_kctl, align 8, !dbg !5820
  %mask_bits4 = getelementptr inbounds %struct.snd_jack_kctl, ptr %11, i32 0, i32 2, !dbg !5821
  %12 = load i32, ptr %mask_bits4, align 8, !dbg !5821
  %13 = load i32, ptr %mask_bits, align 4, !dbg !5822
  %or = or i32 %13, %12, !dbg !5822
  store i32 %or, ptr %mask_bits, align 4, !dbg !5822
  br label %if.end7, !dbg !5823

if.else:                                          ; preds = %for.body
  %14 = load ptr, ptr %jack.addr, align 8, !dbg !5824
  %card = getelementptr inbounds %struct.snd_jack, ptr %14, i32 0, i32 1, !dbg !5825
  %15 = load ptr, ptr %card, align 8, !dbg !5825
  %16 = load ptr, ptr %jack_kctl, align 8, !dbg !5826
  %kctl = getelementptr inbounds %struct.snd_jack_kctl, ptr %16, i32 0, i32 0, !dbg !5827
  %17 = load ptr, ptr %kctl, align 8, !dbg !5827
  %18 = load i32, ptr %status.addr, align 4, !dbg !5828
  %19 = load ptr, ptr %jack_kctl, align 8, !dbg !5829
  %mask_bits5 = getelementptr inbounds %struct.snd_jack_kctl, ptr %19, i32 0, i32 2, !dbg !5830
  %20 = load i32, ptr %mask_bits5, align 8, !dbg !5830
  %and = and i32 %18, %20, !dbg !5831
  %tobool6 = icmp ne i32 %and, 0, !dbg !5828
  call void @snd_kctl_jack_report(ptr noundef %15, ptr noundef %17, i1 noundef zeroext %tobool6) #14, !dbg !5832
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !5818

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #13, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5784, metadata !DIExpression()), !dbg !5833
  %21 = load ptr, ptr %jack_kctl, align 8, !dbg !5833
  %list9 = getelementptr inbounds %struct.snd_jack_kctl, ptr %21, i32 0, i32 1, !dbg !5833
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !5833
  %22 = load ptr, ptr %next10, align 8, !dbg !5833
  store ptr %22, ptr %__mptr8, align 8, !dbg !5833
  %23 = load ptr, ptr %__mptr8, align 8, !dbg !5833
  %add.ptr12 = getelementptr i8, ptr %23, i64 -8, !dbg !5833
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !5833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #13, !dbg !5815
  %24 = load ptr, ptr %tmp11, align 8, !dbg !5833
  store ptr %24, ptr %jack_kctl, align 8, !dbg !5815
  br label %for.cond, !dbg !5815, !llvm.loop !5834

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %jack.addr, align 8, !dbg !5836
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %25, i32 0, i32 3, !dbg !5837
  %26 = load ptr, ptr %input_dev, align 8, !dbg !5837
  %call = call ptr @input_get_device(ptr noundef %26) #14, !dbg !5838
  store ptr %call, ptr %idev, align 8, !dbg !5839
  %27 = load ptr, ptr %idev, align 8, !dbg !5840
  %tobool13 = icmp ne ptr %27, null, !dbg !5840
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5842

if.then14:                                        ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5843

if.end15:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !5844
  br label %for.cond16, !dbg !5845

for.cond16:                                       ; preds = %for.inc26, %if.end15
  %28 = load i32, ptr %i, align 4, !dbg !5846
  %conv = sext i32 %28 to i64, !dbg !5846
  %cmp17 = icmp ult i64 %conv, 6, !dbg !5847
  br i1 %cmp17, label %for.body19, label %for.end27, !dbg !5848

for.body19:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %testbit) #13, !dbg !5849
  call void @llvm.dbg.declare(metadata ptr %testbit, metadata !5787, metadata !DIExpression()), !dbg !5850
  %29 = load i32, ptr %i, align 4, !dbg !5851
  %shr = ashr i32 16384, %29, !dbg !5852
  %30 = load i32, ptr %mask_bits, align 4, !dbg !5853
  %not = xor i32 %30, -1, !dbg !5854
  %and20 = and i32 %shr, %not, !dbg !5855
  store i32 %and20, ptr %testbit, align 4, !dbg !5850
  %31 = load ptr, ptr %jack.addr, align 8, !dbg !5856
  %type = getelementptr inbounds %struct.snd_jack, ptr %31, i32 0, i32 6, !dbg !5858
  %32 = load i32, ptr %type, align 4, !dbg !5858
  %33 = load i32, ptr %testbit, align 4, !dbg !5859
  %and21 = and i32 %32, %33, !dbg !5860
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5860
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5861

if.then23:                                        ; preds = %for.body19
  %34 = load ptr, ptr %idev, align 8, !dbg !5862
  %35 = load ptr, ptr %jack.addr, align 8, !dbg !5863
  %key = getelementptr inbounds %struct.snd_jack, ptr %35, i32 0, i32 8, !dbg !5864
  %36 = load i32, ptr %i, align 4, !dbg !5865
  %idxprom = sext i32 %36 to i64, !dbg !5863
  %arrayidx = getelementptr [6 x i32], ptr %key, i64 0, i64 %idxprom, !dbg !5863
  %37 = load i32, ptr %arrayidx, align 4, !dbg !5863
  %38 = load i32, ptr %status.addr, align 4, !dbg !5866
  %39 = load i32, ptr %testbit, align 4, !dbg !5867
  %and24 = and i32 %38, %39, !dbg !5868
  call void @input_report_key(ptr noundef %34, i32 noundef %37, i32 noundef %and24) #14, !dbg !5869
  br label %if.end25, !dbg !5869

if.end25:                                         ; preds = %if.then23, %for.body19
  call void @llvm.lifetime.end.p0(i64 4, ptr %testbit) #13, !dbg !5870
  br label %for.inc26, !dbg !5871

for.inc26:                                        ; preds = %if.end25
  %40 = load i32, ptr %i, align 4, !dbg !5872
  %inc = add i32 %40, 1, !dbg !5872
  store i32 %inc, ptr %i, align 4, !dbg !5872
  br label %for.cond16, !dbg !5873, !llvm.loop !5874

for.end27:                                        ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !dbg !5876
  br label %for.cond28, !dbg !5877

for.cond28:                                       ; preds = %for.inc44, %for.end27
  %41 = load i32, ptr %i, align 4, !dbg !5878
  %conv29 = sext i32 %41 to i64, !dbg !5878
  %cmp30 = icmp ult i64 %conv29, 6, !dbg !5879
  br i1 %cmp30, label %for.body32, label %for.end46, !dbg !5880

for.body32:                                       ; preds = %for.cond28
  call void @llvm.lifetime.start.p0(i64 4, ptr %testbit33) #13, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %testbit33, metadata !5791, metadata !DIExpression()), !dbg !5882
  %42 = load i32, ptr %i, align 4, !dbg !5883
  %shl = shl i32 1, %42, !dbg !5884
  %43 = load i32, ptr %mask_bits, align 4, !dbg !5885
  %not34 = xor i32 %43, -1, !dbg !5886
  %and35 = and i32 %shl, %not34, !dbg !5887
  store i32 %and35, ptr %testbit33, align 4, !dbg !5882
  %44 = load ptr, ptr %jack.addr, align 8, !dbg !5888
  %type36 = getelementptr inbounds %struct.snd_jack, ptr %44, i32 0, i32 6, !dbg !5890
  %45 = load i32, ptr %type36, align 4, !dbg !5890
  %46 = load i32, ptr %testbit33, align 4, !dbg !5891
  %and37 = and i32 %45, %46, !dbg !5892
  %tobool38 = icmp ne i32 %and37, 0, !dbg !5892
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !5893

if.then39:                                        ; preds = %for.body32
  %47 = load ptr, ptr %idev, align 8, !dbg !5894
  %48 = load i32, ptr %i, align 4, !dbg !5895
  %idxprom40 = sext i32 %48 to i64, !dbg !5896
  %arrayidx41 = getelementptr [6 x i32], ptr @jack_switch_types, i64 0, i64 %idxprom40, !dbg !5896
  %49 = load i32, ptr %arrayidx41, align 4, !dbg !5896
  %50 = load i32, ptr %status.addr, align 4, !dbg !5897
  %51 = load i32, ptr %testbit33, align 4, !dbg !5898
  %and42 = and i32 %50, %51, !dbg !5899
  call void @input_report_switch(ptr noundef %47, i32 noundef %49, i32 noundef %and42) #14, !dbg !5900
  br label %if.end43, !dbg !5900

if.end43:                                         ; preds = %if.then39, %for.body32
  call void @llvm.lifetime.end.p0(i64 4, ptr %testbit33) #13, !dbg !5901
  br label %for.inc44, !dbg !5902

for.inc44:                                        ; preds = %if.end43
  %52 = load i32, ptr %i, align 4, !dbg !5903
  %inc45 = add i32 %52, 1, !dbg !5903
  store i32 %inc45, ptr %i, align 4, !dbg !5903
  br label %for.cond28, !dbg !5904, !llvm.loop !5905

for.end46:                                        ; preds = %for.cond28
  %53 = load ptr, ptr %idev, align 8, !dbg !5907
  call void @input_sync(ptr noundef %53) #14, !dbg !5908
  %54 = load ptr, ptr %idev, align 8, !dbg !5909
  call void @input_put_device(ptr noundef %54) #14, !dbg !5910
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5911
  br label %cleanup, !dbg !5911

cleanup:                                          ; preds = %for.end46, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %idev) #13, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_bits) #13, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack_kctl) #13, !dbg !5911
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5911

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5912 dso_local void @snd_kctl_jack_report(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @input_get_device(ptr noundef %dev) #5 align 16 !dbg !5915 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5919, metadata !DIExpression()), !dbg !5922
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5923
  %tobool = icmp ne ptr %0, null, !dbg !5923
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5923

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5920, metadata !DIExpression()), !dbg !5924
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5924
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, !dbg !5924
  %call = call ptr @get_device(ptr noundef %dev1) #14, !dbg !5924
  store ptr %call, ptr %__mptr, align 8, !dbg !5924
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5924
  %add.ptr = getelementptr i8, ptr %2, i64 -544, !dbg !5924
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5925
  %3 = load ptr, ptr %tmp, align 8, !dbg !5924
  br label %cond.end, !dbg !5923

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5923

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !5923
  ret ptr %cond, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #5 align 16 !dbg !5927 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5931, metadata !DIExpression()), !dbg !5934
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5932, metadata !DIExpression()), !dbg !5935
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5933, metadata !DIExpression()), !dbg !5936
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5937
  %1 = load i32, ptr %code.addr, align 4, !dbg !5938
  %2 = load i32, ptr %value.addr, align 4, !dbg !5939
  %tobool = icmp ne i32 %2, 0, !dbg !5940
  %lnot = xor i1 %tobool, true, !dbg !5940
  %lnot1 = xor i1 %lnot, true, !dbg !5941
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5941
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #14, !dbg !5942
  ret void, !dbg !5943
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_switch(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #5 align 16 !dbg !5944 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5946, metadata !DIExpression()), !dbg !5949
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5947, metadata !DIExpression()), !dbg !5950
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5948, metadata !DIExpression()), !dbg !5951
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5952
  %1 = load i32, ptr %code.addr, align 4, !dbg !5953
  %2 = load i32, ptr %value.addr, align 4, !dbg !5954
  %tobool = icmp ne i32 %2, 0, !dbg !5955
  %lnot = xor i1 %tobool, true, !dbg !5955
  %lnot1 = xor i1 %lnot, true, !dbg !5956
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5956
  call void @input_event(ptr noundef %0, i32 noundef 5, i32 noundef %1, i32 noundef %lnot.ext) #14, !dbg !5957
  ret void, !dbg !5958
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #5 align 16 !dbg !5959 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5963
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14, !dbg !5964
  ret void, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_put_device(ptr noundef %dev) #5 align 16 !dbg !5966 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5970
  %tobool = icmp ne ptr %0, null, !dbg !5970
  br i1 %tobool, label %if.then, label %if.end, !dbg !5972

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5973
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, !dbg !5974
  call void @put_device(ptr noundef %dev1) #14, !dbg !5975
  br label %if.end, !dbg !5975

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5976
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5977 dso_local ptr @snd_kctl_jack_new(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_jack_kctl_private_free(ptr noundef %kctl) #0 align 16 !dbg !5983 {
entry:
  %kctl.addr = alloca ptr, align 8
  %jack_kctl = alloca ptr, align 8
  store ptr %kctl, ptr %kctl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kctl.addr, metadata !5985, metadata !DIExpression()), !dbg !5987
  call void @llvm.lifetime.start.p0(i64 8, ptr %jack_kctl) #13, !dbg !5988
  call void @llvm.dbg.declare(metadata ptr %jack_kctl, metadata !5986, metadata !DIExpression()), !dbg !5989
  %0 = load ptr, ptr %kctl.addr, align 8, !dbg !5990
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8, !dbg !5991
  %1 = load ptr, ptr %private_data, align 8, !dbg !5991
  store ptr %1, ptr %jack_kctl, align 8, !dbg !5992
  %2 = load ptr, ptr %jack_kctl, align 8, !dbg !5993
  %tobool = icmp ne ptr %2, null, !dbg !5993
  br i1 %tobool, label %if.then, label %if.end, !dbg !5995

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %jack_kctl, align 8, !dbg !5996
  %list = getelementptr inbounds %struct.snd_jack_kctl, ptr %3, i32 0, i32 1, !dbg !5998
  call void @list_del(ptr noundef %list) #14, !dbg !5999
  %4 = load ptr, ptr %jack_kctl, align 8, !dbg !6000
  call void @kfree(ptr noundef %4) #14, !dbg !6001
  br label %if.end, !dbg !6002

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %jack_kctl) #13, !dbg !6003
  ret void, !dbg !6003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6004 dso_local void @snd_ctl_free_one(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !6005 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6009
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !6010
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6011
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6012
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6013
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6014
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6015
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6016
  ret void, !dbg !6017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6018 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6022
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #14, !dbg !6024
  br i1 %call, label %if.end, label %if.then, !dbg !6025

if.then:                                          ; preds = %entry
  br label %return, !dbg !6026

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6027
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6028
  %2 = load ptr, ptr %prev, align 8, !dbg !6028
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6029
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6030
  %4 = load ptr, ptr %next, align 8, !dbg !6030
  call void @__list_del(ptr noundef %2, ptr noundef %4) #14, !dbg !6031
  br label %return, !dbg !6032

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6033 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  ret i1 true, !dbg !6039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6040 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6044, metadata !DIExpression()), !dbg !6046
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6045, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6048
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6049
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6050
  store ptr %0, ptr %prev1, align 8, !dbg !6051
  br label %do.body, !dbg !6052

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6053

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6055

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6053

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6057
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6057
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6057
  store volatile ptr %2, ptr %next4, align 8, !dbg !6057
  br label %do.end5, !dbg !6057

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6053

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6060 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6062, metadata !DIExpression()), !dbg !6064
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6066
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6067
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6068
  %2 = load ptr, ptr %prev, align 8, !dbg !6068
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6069
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #14, !dbg !6070
  ret void, !dbg !6071
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_jack_debugfs_add_inject_node(ptr noundef %jack, ptr noundef %jack_kctl) #0 align 16 !dbg !6072 {
entry:
  %jack.addr = alloca ptr, align 8
  %jack_kctl.addr = alloca ptr, align 8
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !6076, metadata !DIExpression()), !dbg !6078
  store ptr %jack_kctl, ptr %jack_kctl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack_kctl.addr, metadata !6077, metadata !DIExpression()), !dbg !6079
  ret i32 0, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6081 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6085, metadata !DIExpression()), !dbg !6088
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6086, metadata !DIExpression()), !dbg !6089
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6087, metadata !DIExpression()), !dbg !6090
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6091
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6093
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6094
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !dbg !6095
  br i1 %call, label %if.end, label %if.then, !dbg !6096

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6097

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6098
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6099
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6100
  store ptr %3, ptr %prev1, align 8, !dbg !6101
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6102
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6103
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6104
  store ptr %5, ptr %next2, align 8, !dbg !6105
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6106
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6107
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6108
  store ptr %7, ptr %prev3, align 8, !dbg !6109
  br label %do.body, !dbg !6110

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6111

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6113

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6111

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6115
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6115
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6115
  store volatile ptr %9, ptr %next6, align 8, !dbg !6115
  br label %do.end7, !dbg !6115

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6111

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6117
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6118 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6122, metadata !DIExpression()), !dbg !6125
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6123, metadata !DIExpression()), !dbg !6126
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6124, metadata !DIExpression()), !dbg !6127
  ret i1 true, !dbg !6128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #5 align 16 !dbg !6129 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6131, metadata !DIExpression()), !dbg !6132
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6133
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !6134
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6135
  call void @INIT_LIST_HEAD(ptr noundef %1) #14, !dbg !6136
  ret void, !dbg !6137
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6138 dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6139 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_card_get_device_link(ptr noundef %card) #5 align 16 !dbg !6143 {
entry:
  %card.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %card.addr, align 8, !dbg !6149
  %tobool = icmp ne ptr %0, null, !dbg !6149
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6149

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %card.addr, align 8, !dbg !6150
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 31, !dbg !6151
  br label %cond.end, !dbg !6149

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %card_dev, %cond.true ], [ null, %cond.false ], !dbg !6149
  ret ptr %cond, !dbg !6152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6153 dso_local i32 @input_register_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_jack_remove_debugfs(ptr noundef %jack) #0 align 16 !dbg !6154 {
entry:
  %jack.addr = alloca ptr, align 8
  store ptr %jack, ptr %jack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jack.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  ret void, !dbg !6158
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6159 dso_local void @input_unregister_device(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6160 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6162, metadata !DIExpression()), !dbg !6167
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6163, metadata !DIExpression()), !dbg !6168
  %0 = load i64, ptr %size.addr, align 8, !dbg !6169
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6170
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6171

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6172
  %tobool = icmp ne i64 %2, 0, !dbg !6172
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6173

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6164, metadata !DIExpression()), !dbg !6175
  %3 = load i64, ptr %size.addr, align 8, !dbg !6176
  %cmp = icmp ugt i64 %3, 8192, !dbg !6178
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6179

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6180
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6181
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !6182
  store ptr %call, ptr %retval, align 8, !dbg !6183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6183

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6184
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !6184
  store i32 %call2, ptr %index, align 4, !dbg !6185
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6186
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6187
  %9 = ptrtoint ptr %8 to i64, !dbg !6187
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !6188
  %idxprom = zext i32 %call3 to i64, !dbg !6189
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6189
  %10 = load i32, ptr %index, align 4, !dbg !6190
  %idxprom4 = zext i32 %10 to i64, !dbg !6189
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6189
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6189
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6191
  %13 = load i64, ptr %size.addr, align 8, !dbg !6192
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6193
  store ptr %call6, ptr %retval, align 8, !dbg !6194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6194

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !6195
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6196
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6197
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !6198
  store ptr %call8, ptr %retval, align 8, !dbg !6199
  br label %return, !dbg !6199

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6200
  ret ptr %16, !dbg !6200
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6201 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6202 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6206, metadata !DIExpression()), !dbg !6208
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6207, metadata !DIExpression()), !dbg !6209
  %0 = load i64, ptr %size.addr, align 8, !dbg !6210
  %tobool = icmp ne i64 %0, 0, !dbg !6210
  br i1 %tobool, label %if.end, label %if.then, !dbg !6212

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6213
  br label %return, !dbg !6213

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6214
  %cmp = icmp ule i64 %1, 8, !dbg !6216
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6217

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6218
  br label %return, !dbg !6218

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6219
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6221
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6222

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6223
  %cmp4 = icmp ule i64 %3, 96, !dbg !6224
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6225

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6226
  br label %return, !dbg !6226

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6227
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6229
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6230

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6231
  %cmp9 = icmp ule i64 %5, 192, !dbg !6232
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6233

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6234
  br label %return, !dbg !6234

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6235
  %cmp12 = icmp ule i64 %6, 8, !dbg !6237
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6238

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6239
  br label %return, !dbg !6239

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6240
  %cmp15 = icmp ule i64 %7, 16, !dbg !6242
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6243

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6244
  br label %return, !dbg !6244

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6245
  %cmp18 = icmp ule i64 %8, 32, !dbg !6247
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6248

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6249
  br label %return, !dbg !6249

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6250
  %cmp21 = icmp ule i64 %9, 64, !dbg !6252
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6253

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6254
  br label %return, !dbg !6254

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6255
  %cmp24 = icmp ule i64 %10, 128, !dbg !6257
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6258

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6259
  br label %return, !dbg !6259

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6260
  %cmp27 = icmp ule i64 %11, 256, !dbg !6262
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6263

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6264
  br label %return, !dbg !6264

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6265
  %cmp30 = icmp ule i64 %12, 512, !dbg !6267
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6268

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6269
  br label %return, !dbg !6269

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6270
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6272
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6273

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6274
  br label %return, !dbg !6274

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6275
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6277
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6278

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6280
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6282
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6283

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6284
  br label %return, !dbg !6284

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6285
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6287
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6288

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6289
  br label %return, !dbg !6289

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6290
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6292
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6293

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6294
  br label %return, !dbg !6294

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6295
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6297
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6298

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6299
  br label %return, !dbg !6299

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6300
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6302
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6303

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6304
  br label %return, !dbg !6304

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6305
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6307
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6308

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6309
  br label %return, !dbg !6309

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6310
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6312
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6313

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6314
  br label %return, !dbg !6314

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6315
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6317
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6318

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6319
  br label %return, !dbg !6319

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6320
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6322
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6323

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6324
  br label %return, !dbg !6324

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6325
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6327
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6328

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6329
  br label %return, !dbg !6329

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6330, !range !5254, !noundef !764
  %tobool69 = trunc i8 %25 to i1, !dbg !6330
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6332

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6333

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #18, !dbg !6334, !srcloc !6337
  unreachable, !dbg !6334

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6338

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6339

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6340

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6342

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6340

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #13, !dbg !6344, !srcloc !6346
  br label %do.end75, !dbg !6344

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6340

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6347
  br label %return, !dbg !6347

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6348
  ret i32 %26, !dbg !6348
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6349 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6355 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6359, metadata !DIExpression()), !dbg !6361
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6360, metadata !DIExpression()), !dbg !6362
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6363
  %and = and i32 %0, 17, !dbg !6363
  %cmp = icmp eq i32 %and, 0, !dbg !6363
  %lnot = xor i1 %cmp, true, !dbg !6363
  %lnot1 = xor i1 %lnot, true, !dbg !6363
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6363
  %conv = sext i32 %lnot.ext to i64, !dbg !6363
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6363
  %tobool = icmp ne i64 %expval, 0, !dbg !6363
  br i1 %tobool, label %if.then, label %if.end, !dbg !6365

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6367
  %and2 = and i32 %1, 1, !dbg !6369
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6369
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6370

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6371
  br label %return, !dbg !6371

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6372
  br label %return, !dbg !6372

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6374
  ret i32 %2, !dbg !6374
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6375 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6376 dso_local void @__compiletime_assert_263() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6377 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6380 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6381 dso_local ptr @get_device(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6384 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6387 dso_local void @put_device(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!llvm.ident = !{!5125}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_jack_add_new_kctl295", scope: !2, file: !3, line: 480, type: !194, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.jack.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22jack\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/jack.ll sound/core/jack.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !193, globals: !5042, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/jack.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5201beb4f9f1a1c096d50d2302a62da7")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !161, !178, !183}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_state", file: !142, line: 53, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "SNDRV_DEV_BUILD", value: 0)
!145 = !DIEnumerator(name: "SNDRV_DEV_REGISTERED", value: 1)
!146 = !DIEnumerator(name: "SNDRV_DEV_DISCONNECTED", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_type", file: !142, line: 38, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!149 = !DIEnumerator(name: "SNDRV_DEV_LOWLEVEL", value: 0)
!150 = !DIEnumerator(name: "SNDRV_DEV_INFO", value: 1)
!151 = !DIEnumerator(name: "SNDRV_DEV_BUS", value: 2)
!152 = !DIEnumerator(name: "SNDRV_DEV_CODEC", value: 3)
!153 = !DIEnumerator(name: "SNDRV_DEV_PCM", value: 4)
!154 = !DIEnumerator(name: "SNDRV_DEV_COMPRESS", value: 5)
!155 = !DIEnumerator(name: "SNDRV_DEV_RAWMIDI", value: 6)
!156 = !DIEnumerator(name: "SNDRV_DEV_TIMER", value: 7)
!157 = !DIEnumerator(name: "SNDRV_DEV_SEQUENCER", value: 8)
!158 = !DIEnumerator(name: "SNDRV_DEV_HWDEP", value: 9)
!159 = !DIEnumerator(name: "SNDRV_DEV_JACK", value: 10)
!160 = !DIEnumerator(name: "SNDRV_DEV_CONTROL", value: 11)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_jack_types", file: !162, line: 37, baseType: !7, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/sound/jack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44890b5a180099ef2b0f873b9e705095")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!164 = !DIEnumerator(name: "SND_JACK_HEADPHONE", value: 1)
!165 = !DIEnumerator(name: "SND_JACK_MICROPHONE", value: 2)
!166 = !DIEnumerator(name: "SND_JACK_HEADSET", value: 3)
!167 = !DIEnumerator(name: "SND_JACK_LINEOUT", value: 4)
!168 = !DIEnumerator(name: "SND_JACK_MECHANICAL", value: 8)
!169 = !DIEnumerator(name: "SND_JACK_VIDEOOUT", value: 16)
!170 = !DIEnumerator(name: "SND_JACK_AVOUT", value: 20)
!171 = !DIEnumerator(name: "SND_JACK_LINEIN", value: 32)
!172 = !DIEnumerator(name: "SND_JACK_BTN_0", value: 16384)
!173 = !DIEnumerator(name: "SND_JACK_BTN_1", value: 8192)
!174 = !DIEnumerator(name: "SND_JACK_BTN_2", value: 4096)
!175 = !DIEnumerator(name: "SND_JACK_BTN_3", value: 2048)
!176 = !DIEnumerator(name: "SND_JACK_BTN_4", value: 1024)
!177 = !DIEnumerator(name: "SND_JACK_BTN_5", value: 512)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 10, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "false", value: 0)
!182 = !DIEnumerator(name: "true", value: 1)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !184, line: 364, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!185 = !{!186, !187, !188, !189, !190, !191, !192}
!186 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!187 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!188 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!189 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!190 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!191 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!192 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!193 = !{!194, !195, !109, !197, !5040, !356, !4749}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !196, line: 154, baseType: !7)
!196 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_jack_kctl", file: !3, line: 18, size: 384, elements: !199)
!199 = !{!200, !4739, !4740, !4741, !5039}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kctl", scope: !198, file: !3, line: 19, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol", file: !203, line: 70, size: 1152, elements: !204)
!203 = !DIFile(filename: "./include/sound/control.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f703a7092b118ff56838453fb210fcb6")
!204 = !{!205, !211, !226, !227, !281, !341, !344, !355, !357, !358, !362}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !202, file: !203, line: 71, baseType: !206, size: 128)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !196, line: 190, size: 128, elements: !207)
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !196, line: 191, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !196, line: 191, baseType: !209, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !202, file: !203, line: 72, baseType: !212, size: 512, offset: 128)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_elem_id", file: !213, line: 1098, size: 512, elements: !214)
!213 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!214 = !{!215, !216, !218, !219, !220, !225}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "numid", scope: !212, file: !213, line: 1099, baseType: !7, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !212, file: !213, line: 1100, baseType: !217, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_ctl_elem_iface_t", file: !213, line: 1062, baseType: !109)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !212, file: !213, line: 1101, baseType: !7, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !212, file: !213, line: 1102, baseType: !7, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !213, line: 1103, baseType: !221, size: 352, offset: 128)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 352, elements: !223)
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !{!224}
!224 = !DISubrange(count: 44)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !212, file: !213, line: 1104, baseType: !7, size: 32, offset: 480)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !202, file: !203, line: 73, baseType: !7, size: 32, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !202, file: !203, line: 74, baseType: !228, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_info_t", file: !203, line: 17, baseType: !230)
!230 = !DISubroutineType(types: !231)
!231 = !{!109, !201, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_elem_info", file: !213, line: 1116, size: 2176, elements: !234)
!234 = !{!235, !236, !238, !239, !240, !243, !279}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !233, file: !213, line: 1117, baseType: !212, size: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !213, line: 1118, baseType: !237, size: 32, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_ctl_elem_type_t", file: !213, line: 1052, baseType: !109)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !233, file: !213, line: 1119, baseType: !7, size: 32, offset: 544)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !233, file: !213, line: 1120, baseType: !7, size: 32, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !233, file: !213, line: 1121, baseType: !241, size: 32, offset: 608)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !242, line: 28, baseType: !109)
!242 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !233, file: !213, line: 1141, baseType: !244, size: 1024, offset: 640)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !213, line: 1122, size: 1024, elements: !245)
!245 = !{!246, !253, !260, !275}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !244, file: !213, line: 1127, baseType: !247, size: 192)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !213, line: 1123, size: 192, elements: !248)
!248 = !{!249, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !247, file: !213, line: 1124, baseType: !250, size: 64)
!250 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !247, file: !213, line: 1125, baseType: !250, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !247, file: !213, line: 1126, baseType: !250, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "integer64", scope: !244, file: !213, line: 1132, baseType: !254, size: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !213, line: 1128, size: 192, elements: !255)
!255 = !{!256, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !254, file: !213, line: 1129, baseType: !257, size: 64)
!257 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !254, file: !213, line: 1130, baseType: !257, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !254, file: !213, line: 1131, baseType: !257, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !244, file: !213, line: 1139, baseType: !261, size: 704)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !213, line: 1133, size: 704, elements: !262)
!262 = !{!263, !264, !265, !270, !274}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !261, file: !213, line: 1134, baseType: !7, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !261, file: !213, line: 1135, baseType: !7, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !213, line: 1136, baseType: !266, size: 512, offset: 64)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 512, elements: !268)
!267 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !{!269}
!269 = !DISubrange(count: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "names_ptr", scope: !261, file: !213, line: 1137, baseType: !271, size: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !272, line: 31, baseType: !273)
!272 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!273 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "names_length", scope: !261, file: !213, line: 1138, baseType: !7, size: 32, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !244, file: !213, line: 1140, baseType: !276, size: 1024)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !233, file: !213, line: 1142, baseType: !280, size: 512, offset: 1664)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 512, elements: !268)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !202, file: !203, line: 75, baseType: !282, size: 64, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_get_t", file: !203, line: 18, baseType: !284)
!284 = !DISubroutineType(types: !285)
!285 = !{!109, !201, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_elem_value", file: !213, line: 1145, size: 9792, elements: !288)
!288 = !{!289, !290, !291, !340}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !287, file: !213, line: 1146, baseType: !212, size: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "indirect", scope: !287, file: !213, line: 1147, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !213, line: 1166, baseType: !292, size: 8192, offset: 576)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !213, line: 1148, size: 8192, elements: !293)
!293 = !{!294, !301, !308, !315, !324}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !292, file: !213, line: 1152, baseType: !295, size: 8192)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !213, line: 1149, size: 8192, elements: !296)
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !213, line: 1150, baseType: !298, size: 8192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 8192, elements: !277)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value_ptr", scope: !295, file: !213, line: 1151, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "integer64", scope: !292, file: !213, line: 1156, baseType: !302, size: 4096)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !213, line: 1153, size: 4096, elements: !303)
!303 = !{!304, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !213, line: 1154, baseType: !305, size: 4096)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 4096, elements: !268)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value_ptr", scope: !302, file: !213, line: 1155, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !292, file: !213, line: 1160, baseType: !309, size: 4096)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !213, line: 1157, size: 4096, elements: !310)
!310 = !{!311, !313}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !309, file: !213, line: 1158, baseType: !312, size: 4096)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4096, elements: !277)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "item_ptr", scope: !309, file: !213, line: 1159, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !292, file: !213, line: 1164, baseType: !316, size: 4096)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !213, line: 1161, size: 4096, elements: !317)
!317 = !{!318, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !316, file: !213, line: 1162, baseType: !319, size: 4096)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 4096, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !316, file: !213, line: 1163, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "iec958", scope: !292, file: !213, line: 1165, baseType: !325, size: 1408)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_aes_iec958", file: !213, line: 45, size: 1408, elements: !326)
!326 = !{!327, !331, !335, !336}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !325, file: !213, line: 46, baseType: !328, size: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 192, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 24)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !325, file: !213, line: 47, baseType: !332, size: 1176, offset: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1176, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 147)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !325, file: !213, line: 48, baseType: !222, size: 8, offset: 1368)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dig_subframe", scope: !325, file: !213, line: 49, baseType: !337, size: 32, offset: 1376)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 32, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 4)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !287, file: !213, line: 1167, baseType: !276, size: 1024, offset: 8768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !202, file: !203, line: 76, baseType: !342, size: 64, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_put_t", file: !203, line: 19, baseType: !284)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tlv", scope: !202, file: !203, line: 80, baseType: !345, size: 64, offset: 896)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 77, size: 64, elements: !346)
!346 = !{!347, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !345, file: !203, line: 78, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kcontrol_tlv_rw_t", file: !203, line: 20, baseType: !350)
!350 = !DISubroutineType(types: !351)
!351 = !{!109, !201, !109, !7, !314}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !345, file: !203, line: 79, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private_value", scope: !202, file: !203, line: 81, baseType: !356, size: 64, offset: 960)
!356 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !202, file: !203, line: 82, baseType: !194, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !202, file: !203, line: 83, baseType: !359, size: 64, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !201}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vd", scope: !202, file: !203, line: 84, baseType: !363, offset: 1152)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !974)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol_volatile", file: !203, line: 65, size: 128, elements: !365)
!365 = !{!366, !4738}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !364, file: !203, line: 66, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_file", file: !203, line: 105, size: 832, elements: !369)
!369 = !{!370, !371, !4728, !4729, !4731, !4732, !4733, !4736, !4737}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !368, file: !203, line: 106, baseType: !206, size: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !368, file: !203, line: 107, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !142, line: 80, size: 12288, elements: !374)
!374 = !{!375, !376, !380, !381, !385, !389, !390, !391, !393, !4322, !4323, !4327, !4328, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4703, !4706, !4707, !4710, !4711, !4712, !4713, !4714, !4715, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !373, file: !142, line: 81, baseType: !109, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !373, file: !142, line: 84, baseType: !377, size: 128, offset: 32)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !373, file: !142, line: 85, baseType: !377, size: 128, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !373, file: !142, line: 86, baseType: !382, size: 256, offset: 288)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !373, file: !142, line: 87, baseType: !386, size: 640, offset: 544)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 640, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 80)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !373, file: !142, line: 88, baseType: !382, size: 256, offset: 1184)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !373, file: !142, line: 89, baseType: !386, size: 640, offset: 1440)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !373, file: !142, line: 90, baseType: !392, size: 1024, offset: 2080)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 1024, elements: !277)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !373, file: !142, line: 92, baseType: !394, size: 64, offset: 3136)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !396)
!396 = !{!397, !398, !399, !403, !3998, !4024, !4025, !4026, !4027, !4031, !4034, !4035, !4036, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4103, !4107, !4125, !4142, !4143, !4144, !4145, !4154, !4177, !4178, !4181, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4195, !4196, !4282, !4290, !4291, !4292, !4294, !4298, !4299, !4303, !4304, !4305, !4306, !4308, !4309, !4310, !4317, !4318, !4319, !4321}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !395, file: !6, line: 403, baseType: !5, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !395, file: !6, line: 406, baseType: !206, size: 128, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !6, line: 409, baseType: !400, size: 448, offset: 192)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 448, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 56)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !395, file: !6, line: 417, baseType: !404, size: 768, offset: 640)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !405)
!405 = !{!406, !3992, !3993, !3994, !3997}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !404, file: !6, line: 46, baseType: !407, size: 512)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !408, line: 64, size: 512, elements: !409)
!408 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!409 = !{!410, !413, !414, !416, !501, !3891, !3982, !3987, !3988, !3989, !3990, !3991}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !408, line: 65, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !407, file: !408, line: 66, baseType: !206, size: 128, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !407, file: !408, line: 67, baseType: !415, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !407, file: !408, line: 68, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !408, line: 168, size: 768, elements: !419)
!419 = !{!420, !421, !462, !463}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !418, file: !408, line: 169, baseType: !206, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !418, file: !408, line: 170, baseType: !422, size: 32, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !423, line: 29, baseType: !424)
!423 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !423, line: 17, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !423, line: 18, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !423, line: 18, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !427, file: !423, line: 19, baseType: !430, size: 32)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !431, line: 14, size: 32, elements: !432)
!431 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !430, file: !431, line: 15, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !435, line: 44, baseType: !436)
!435 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !435, line: 14, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !435, line: 15, baseType: !439, size: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !435, line: 15, size: 32, elements: !440)
!440 = !{!441, !446, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !435, line: 16, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !196, line: 174, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 172, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !443, file: !196, line: 173, baseType: !109, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !435, line: 24, baseType: !447, size: 16)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !435, line: 24, size: 16, elements: !448)
!448 = !{!449, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !447, file: !435, line: 25, baseType: !450, size: 8)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !451, line: 17, baseType: !452)
!451 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !272, line: 21, baseType: !222)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !447, file: !435, line: 26, baseType: !450, size: 8, offset: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !435, line: 28, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !435, line: 28, size: 32, elements: !456)
!456 = !{!457, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !455, file: !435, line: 29, baseType: !458, size: 16)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !451, line: 19, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !272, line: 24, baseType: !460)
!460 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !455, file: !435, line: 30, baseType: !458, size: 16, offset: 16)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !418, file: !408, line: 171, baseType: !407, size: 512, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !418, file: !408, line: 172, baseType: !464, size: 64, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !408, line: 133, size: 192, elements: !467)
!467 = !{!468, !475, !480}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !466, file: !408, line: 134, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!109, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !408, line: 135, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!411, !473}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !466, file: !408, line: 136, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!109, !473, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !408, line: 125, size: 20736, elements: !487)
!487 = !{!488, !493, !495, !496, !500}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !486, file: !408, line: 126, baseType: !489, size: 192)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 192, elements: !491)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!491 = !{!492}
!492 = !DISubrange(count: 3)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !486, file: !408, line: 127, baseType: !494, size: 4096, offset: 192)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 4096, elements: !268)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !486, file: !408, line: 128, baseType: !109, size: 32, offset: 4288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !486, file: !408, line: 129, baseType: !497, size: 16384, offset: 4320)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 16384, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 2048)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !486, file: !408, line: 130, baseType: !109, size: 32, offset: 20704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !407, file: !408, line: 69, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !408, line: 116, size: 384, elements: !505)
!505 = !{!506, !510, !536, !3853, !3881, !3885}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !504, file: !408, line: 117, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !415}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !504, file: !408, line: 118, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !514, line: 254, size: 128, elements: !515)
!514 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!515 = !{!516, !529}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !513, file: !514, line: 255, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !415, !523, !490}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !196, line: 66, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !242, line: 73, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !242, line: 15, baseType: !250)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !514, line: 30, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !514, line: 31, baseType: !411, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !524, file: !514, line: 32, baseType: !528, size: 16, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !196, line: 24, baseType: !460)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !513, file: !514, line: 256, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!520, !415, !523, !411, !533}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 61, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !242, line: 72, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !242, line: 16, baseType: !356)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !504, file: !408, line: 119, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !514, line: 84, size: 320, elements: !541)
!541 = !{!542, !543, !547, !3849, !3851}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !514, line: 85, baseType: !411, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !540, file: !514, line: 86, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!528, !415, !523, !109}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !540, file: !514, line: 88, baseType: !548, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!528, !415, !551, !109}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !514, line: 175, size: 512, elements: !553)
!553 = !{!554, !555, !556, !557, !3840, !3844, !3845}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !552, file: !514, line: 176, baseType: !524, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !552, file: !514, line: 177, baseType: !533, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !552, file: !514, line: 178, baseType: !194, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !552, file: !514, line: 179, baseType: !558, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !563)
!563 = !{!564, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3834, !3835, !3836, !3837, !3838, !3839}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !562, file: !14, line: 473, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !567)
!567 = !{!568, !569, !570, !578, !579, !586, !587, !590, !591, !3613, !3614, !3615, !3616, !3617, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3656, !3659, !3660, !3661, !3670, !3671, !3672, !3673}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !566, file: !14, line: 642, baseType: !528, size: 16)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !566, file: !14, line: 643, baseType: !460, size: 16, offset: 16)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !566, file: !14, line: 644, baseType: !571, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !572, line: 23, baseType: !573)
!572 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 21, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !573, file: !572, line: 22, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !196, line: 37, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !242, line: 49, baseType: !7)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !566, file: !14, line: 645, baseType: !206, size: 128, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !566, file: !14, line: 646, baseType: !580, size: 32, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !572, line: 28, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 26, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !581, file: !572, line: 27, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !196, line: 38, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !242, line: 50, baseType: !7)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !566, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !566, file: !14, line: 650, baseType: !588, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !566, file: !14, line: 651, baseType: !588, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !566, file: !14, line: 654, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !595)
!595 = !{!596, !3438, !3451, !3455, !3459, !3463, !3467, !3471, !3475, !3479, !3483, !3484, !3488, !3492, !3529, !3558, !3562, !3568, !3572, !3576, !3580, !3584, !3588, !3594, !3598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !594, file: !14, line: 1967, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!600, !565, !600, !7}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !602, line: 82, size: 1536, elements: !603)
!602 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!603 = !{!604, !605, !615, !623, !624, !642, !643, !645, !658, !3421, !3422, !3423, !3424, !3430, !3431, !3432}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !601, file: !602, line: 84, baseType: !7, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !601, file: !602, line: 85, baseType: !606, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !607, line: 275, baseType: !608)
!607 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !607, line: 275, size: 32, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !608, file: !607, line: 275, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !607, line: 69, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !607, line: 64, size: 32, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !612, file: !607, line: 65, baseType: !7, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !601, file: !602, line: 86, baseType: !616, size: 128, offset: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !617, line: 38, size: 128, elements: !618)
!617 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!618 = !{!619, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !617, line: 39, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !616, file: !617, line: 39, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !601, file: !602, line: 87, baseType: !600, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !601, file: !602, line: 88, baseType: !625, size: 128, offset: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !602, line: 49, size: 128, elements: !626)
!626 = !{!627, !639}
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !602, line: 50, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !602, line: 50, size: 64, elements: !629)
!629 = !{!630, !637}
!630 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !602, line: 51, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !628, file: !602, line: 51, size: 64, elements: !632)
!632 = !{!633, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !631, file: !602, line: 52, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !451, line: 21, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !272, line: 27, baseType: !7)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !631, file: !602, line: 52, baseType: !634, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !628, file: !602, line: 54, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !451, line: 23, baseType: !271)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !625, file: !602, line: 56, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !601, file: !602, line: 89, baseType: !565, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !601, file: !602, line: 91, baseType: !644, size: 256, offset: 448)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !383)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !601, file: !602, line: 94, baseType: !646, size: 64, offset: 704)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !647, line: 25, size: 64, elements: !648)
!647 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 26, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 26, size: 64, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !650, file: !647, line: 28, baseType: !271, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !647, line: 30, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !650, file: !647, line: 30, size: 64, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !647, line: 31, baseType: !422, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !654, file: !647, line: 32, baseType: !109, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !601, file: !602, line: 95, baseType: !659, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !602, line: 128, size: 1024, align: 512, elements: !662)
!662 = !{!663, !667, !668, !675, !681, !685, !689, !693, !694, !698, !702, !3411, !3415}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !661, file: !602, line: 129, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!109, !600, !7}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !661, file: !602, line: 130, baseType: !664, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !661, file: !602, line: 131, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!109, !672, !674}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !661, file: !602, line: 132, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!109, !672, !7, !411, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !661, file: !602, line: 134, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!109, !672}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !661, file: !602, line: 135, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!109, !600}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !661, file: !602, line: 136, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !600}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !661, file: !602, line: 137, baseType: !690, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !661, file: !602, line: 138, baseType: !695, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !600, !565}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !661, file: !602, line: 139, baseType: !699, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!490, !600, !490, !109}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !661, file: !602, line: 140, baseType: !703, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!706, !3410}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !708, line: 70, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!709 = !{!710, !711, !3406, !3407}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !707, file: !708, line: 71, baseType: !600, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !707, file: !708, line: 72, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !714)
!714 = !{!715, !716, !719, !720, !721, !724, !773, !1919, !1959, !2044, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2061, !2065, !2066, !2069, !2072, !2075, !2078, !2079, !2080, !2121, !3338, !3339, !3340, !3341, !3342, !3343, !3346, !3347, !3354, !3355, !3356, !3357, !3358, !3373, !3374, !3375, !3376, !3377, !3380, !3381, !3382, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !713, file: !14, line: 1191, baseType: !206, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !713, file: !14, line: 1192, baseType: !717, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !196, line: 21, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !196, line: 18, baseType: !634)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !713, file: !14, line: 1193, baseType: !222, size: 8, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !713, file: !14, line: 1194, baseType: !356, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !713, file: !14, line: 1195, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !196, line: 52, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !242, line: 88, baseType: !257)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !713, file: !14, line: 1196, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !727)
!727 = !{!728, !729, !730, !737, !741, !745, !749, !750, !751, !761, !765, !766, !767, !769, !770, !771, !772}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !726, file: !14, line: 2367, baseType: !411, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !726, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !726, file: !14, line: 2376, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!109, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !736, line: 32, flags: DIFlagFwdDecl)
!736 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !726, file: !14, line: 2377, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !726, file: !14, line: 2378, baseType: !742, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!600, !725, !109, !411, !194}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !726, file: !14, line: 2380, baseType: !746, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !712}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !726, file: !14, line: 2381, baseType: !394, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !14, line: 2382, baseType: !725, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !726, file: !14, line: 2383, baseType: !752, size: 64, offset: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !196, line: 194, size: 64, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !752, file: !196, line: 195, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !196, line: 198, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !196, line: 199, baseType: !755, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !756, file: !196, line: 199, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !726, file: !14, line: 2385, baseType: !762, offset: 576)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !763, line: 206, elements: !764)
!763 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!764 = !{}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !726, file: !14, line: 2386, baseType: !762, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !726, file: !14, line: 2387, baseType: !762, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !726, file: !14, line: 2388, baseType: !768, offset: 576)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, elements: !491)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !726, file: !14, line: 2390, baseType: !762, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !726, file: !14, line: 2391, baseType: !762, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !726, file: !14, line: 2392, baseType: !762, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !726, file: !14, line: 2393, baseType: !762, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !713, file: !14, line: 1197, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !777)
!777 = !{!778, !782, !786, !787, !791, !797, !801, !802, !803, !807, !811, !815, !816, !817, !823, !828, !829, !1844, !1845, !1846, !1847, !1851, !1855, !1902, !1917, !1918}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !776, file: !14, line: 2058, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!565, !712}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !776, file: !14, line: 2059, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !565}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !776, file: !14, line: 2060, baseType: !783, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !776, file: !14, line: 2062, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !565, !109}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !776, file: !14, line: 2063, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!109, !565, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !776, file: !14, line: 2064, baseType: !798, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!109, !565}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !776, file: !14, line: 2065, baseType: !783, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !776, file: !14, line: 2066, baseType: !746, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !776, file: !14, line: 2067, baseType: !804, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!109, !712, !109}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !776, file: !14, line: 2068, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!109, !712, !13}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !776, file: !14, line: 2069, baseType: !812, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!109, !712}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !776, file: !14, line: 2070, baseType: !808, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !776, file: !14, line: 2071, baseType: !812, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !776, file: !14, line: 2072, baseType: !818, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!109, !600, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !776, file: !14, line: 2073, baseType: !824, size: 64, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!109, !712, !827, !490}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !776, file: !14, line: 2074, baseType: !746, size: 64, offset: 960)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !776, file: !14, line: 2076, baseType: !830, size: 64, offset: 1024)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!109, !833, !600}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !835, line: 17, size: 960, elements: !836)
!835 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !865, !887, !888, !1843}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !834, file: !835, line: 18, baseType: !490, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !834, file: !835, line: 19, baseType: !533, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !834, file: !835, line: 20, baseType: !533, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !834, file: !835, line: 21, baseType: !533, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !834, file: !835, line: 22, baseType: !533, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !834, file: !835, line: 23, baseType: !722, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !834, file: !835, line: 24, baseType: !722, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !834, file: !835, line: 25, baseType: !845, size: 256, offset: 448)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !846, line: 66, size: 256, elements: !847)
!846 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!847 = !{!848, !857, !859, !864}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !846, line: 67, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !850, line: 13, baseType: !851)
!850 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !196, line: 181, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 179, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !852, file: !196, line: 180, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !451, line: 22, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !272, line: 30, baseType: !257)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !846, line: 68, baseType: !858, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !431, line: 23, baseType: !430)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !845, file: !846, line: 70, baseType: !860, size: 32, offset: 96)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !861, line: 15, size: 32, elements: !862)
!861 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !860, file: !861, line: 20, baseType: !442, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !845, file: !846, line: 72, baseType: !206, size: 128, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !834, file: !835, line: 26, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !835, line: 32, size: 256, elements: !869)
!869 = !{!870, !875, !879, !883}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !868, file: !835, line: 33, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!194, !833, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !868, file: !835, line: 34, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !833, !194}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !835, line: 35, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!194, !833, !194, !874}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !868, file: !835, line: 36, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!109, !833, !194}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !834, file: !835, line: 27, baseType: !109, size: 32, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !834, file: !835, line: 28, baseType: !889, size: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !892)
!892 = !{!893, !912, !913, !915, !916, !917, !918, !919, !980, !1192, !1201, !1207, !1208, !1833, !1834, !1835, !1836, !1838, !1839, !1842}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !14, line: 995, baseType: !894, size: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !14, line: 995, size: 128, elements: !895)
!895 = !{!896, !902, !911}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !894, file: !14, line: 996, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !898, line: 60, size: 64, elements: !899)
!898 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !898, line: 61, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !894, file: !14, line: 997, baseType: !903, size: 128, align: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !196, line: 232, size: 128, align: 64, elements: !904)
!904 = !{!905, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !196, line: 233, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !903, file: !196, line: 234, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !906}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !894, file: !14, line: 998, baseType: !7, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !891, file: !14, line: 1005, baseType: !422, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !891, file: !14, line: 1006, baseType: !914, size: 32, offset: 160)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !196, line: 156, baseType: !7)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !891, file: !14, line: 1007, baseType: !849, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !891, file: !14, line: 1008, baseType: !845, size: 256, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !891, file: !14, line: 1009, baseType: !722, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !891, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !891, file: !14, line: 1011, baseType: !920, size: 256, offset: 640)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !921)
!921 = !{!922, !943, !976, !977, !978, !979}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !920, file: !14, line: 949, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !924, line: 34, baseType: !925)
!924 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 25, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !925, file: !924, line: 26, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !929, line: 27, baseType: !930)
!929 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !929, line: 13, size: 64, elements: !931)
!931 = !{!932, !942}
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !929, line: 14, baseType: !933, size: 32)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !929, line: 14, size: 32, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !933, file: !929, line: 15, baseType: !442, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !929, line: 16, baseType: !937, size: 32)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !929, line: 16, size: 32, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !937, file: !929, line: 18, baseType: !450, size: 8)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !937, file: !929, line: 19, baseType: !941, size: 24, offset: 8)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 24, elements: !491)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !930, file: !929, line: 26, baseType: !434, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !920, file: !14, line: 950, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !946)
!946 = !{!947, !953, !954, !955, !957, !958, !965, !966}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !945, file: !19, line: 61, baseType: !948, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !949, line: 113, baseType: !950)
!949 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !949, line: 111, size: 32, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !950, file: !949, line: 112, baseType: !442, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !945, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !19, line: 63, baseType: !422, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !945, file: !19, line: 65, baseType: !956, size: 256, offset: 128)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 256, elements: !338)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !945, file: !19, line: 66, baseType: !752, size: 64, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !945, file: !19, line: 68, baseType: !959, size: 192, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !960, line: 41, baseType: !961)
!960 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !960, line: 37, size: 192, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !960, line: 38, baseType: !422, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !961, file: !960, line: 39, baseType: !206, size: 128, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !945, file: !19, line: 69, baseType: !903, size: 128, align: 64, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !945, file: !19, line: 70, baseType: !967, offset: 768)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, elements: !974)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !968, file: !19, line: 55, baseType: !109, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !968, file: !19, line: 56, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!974 = !{!975}
!975 = !DISubrange(count: -1)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !920, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !920, file: !14, line: 952, baseType: !571, size: 32, offset: 160)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !920, file: !14, line: 952, baseType: !571, size: 32, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !920, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !891, file: !14, line: 1012, baseType: !981, size: 64, offset: 896)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !984, line: 110, size: 1472, elements: !985)
!984 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !1002, !1003, !1004, !1005, !1006, !1007, !1137, !1138, !1139, !1140, !1141, !1172, !1175, !1179, !1187}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !983, file: !984, line: 111, baseType: !849, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !983, file: !984, line: 112, baseType: !571, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !983, file: !984, line: 113, baseType: !580, size: 32, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !983, file: !984, line: 114, baseType: !571, size: 32, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !983, file: !984, line: 115, baseType: !580, size: 32, offset: 160)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !983, file: !984, line: 116, baseType: !571, size: 32, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !983, file: !984, line: 117, baseType: !580, size: 32, offset: 224)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !983, file: !984, line: 118, baseType: !571, size: 32, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !983, file: !984, line: 119, baseType: !580, size: 32, offset: 288)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !983, file: !984, line: 120, baseType: !7, size: 32, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !983, file: !984, line: 121, baseType: !997, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !998, line: 24, baseType: !999)
!998 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 24, size: 64, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !999, file: !998, line: 24, baseType: !638, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !983, file: !984, line: 122, baseType: !997, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !983, file: !984, line: 123, baseType: !997, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !983, file: !984, line: 124, baseType: !997, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !983, file: !984, line: 125, baseType: !997, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !983, file: !984, line: 127, baseType: !222, size: 8, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !983, file: !984, line: 129, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1010, line: 195, size: 1728, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1011 = !{!1012, !1013, !1018, !1030, !1039, !1042, !1043, !1050, !1051, !1052, !1053, !1056, !1057, !1058, !1060, !1061, !1101, !1122}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1009, file: !1010, line: 196, baseType: !948, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1009, file: !1010, line: 197, baseType: !1014, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1010, line: 28, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !196, line: 104, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !451, line: 20, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !272, line: 26, baseType: !109)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 198, baseType: !1019, size: 192, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 198, size: 192, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1019, file: !1010, line: 199, baseType: !206, size: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1019, file: !1010, line: 200, baseType: !1023, size: 192, align: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1024, line: 5, size: 192, align: 64, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1025 = !{!1026, !1027, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1023, file: !1024, line: 6, baseType: !356, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1023, file: !1024, line: 7, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1023, file: !1024, line: 8, baseType: !1028, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1009, file: !1010, line: 205, baseType: !1031, size: 320, offset: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1032, line: 48, size: 320, elements: !1033)
!1032 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1031, file: !1032, line: 49, baseType: !849, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1031, file: !1032, line: 55, baseType: !849, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1031, file: !1032, line: 57, baseType: !860, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1031, file: !1032, line: 59, baseType: !858, size: 32, offset: 160)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1031, file: !1032, line: 60, baseType: !206, size: 128, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1009, file: !1010, line: 206, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1010, line: 206, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1009, file: !1010, line: 207, baseType: !194, size: 64, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 208, baseType: !1044, size: 64, offset: 704)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 208, size: 64, elements: !1045)
!1045 = !{!1046, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1044, file: !1010, line: 209, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1048, line: 8, baseType: !856)
!1048 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1044, file: !1010, line: 210, baseType: !1047, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1009, file: !1010, line: 212, baseType: !1047, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1009, file: !1010, line: 213, baseType: !571, size: 32, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1009, file: !1010, line: 214, baseType: !580, size: 32, offset: 864)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1009, file: !1010, line: 215, baseType: !1054, size: 32, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1010, line: 31, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !196, line: 110, baseType: !634)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1009, file: !1010, line: 216, baseType: !460, size: 16, offset: 928)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1009, file: !1010, line: 217, baseType: !460, size: 16, offset: 944)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1009, file: !1010, line: 221, baseType: !1059, size: 16, offset: 960)
!1059 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !1010, line: 228, baseType: !356, size: 64, offset: 1024)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 245, baseType: !1062, size: 320, offset: 1088)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 245, size: 320, elements: !1063)
!1063 = !{!1064, !1093}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1062, file: !1010, line: 246, baseType: !1065, size: 320)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1010, line: 114, size: 320, elements: !1066)
!1066 = !{!1067, !1068, !1080, !1083, !1092}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1065, file: !1010, line: 116, baseType: !356, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !1010, line: 117, baseType: !1069, size: 64, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !1010, line: 117, size: 64, elements: !1070)
!1070 = !{!1071, !1079}
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !1010, line: 118, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !1010, line: 118, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1072, file: !1010, line: 120, baseType: !458, size: 16)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1072, file: !1010, line: 121, baseType: !1076, size: 48, offset: 16)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 48, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 6)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1069, file: !1010, line: 127, baseType: !356, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1065, file: !1010, line: 129, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1010, line: 102, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1065, file: !1010, line: 130, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1010, line: 108, size: 192, elements: !1086)
!1086 = !{!1087, !1088, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1085, file: !1010, line: 109, baseType: !903, size: 128, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1085, file: !1010, line: 110, baseType: !948, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1085, file: !1010, line: 111, baseType: !1090, size: 8, offset: 160)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !196, line: 35, baseType: !1091)
!1091 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1065, file: !1010, line: 131, baseType: !411, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1010, line: 247, baseType: !1094, size: 320)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !1010, line: 247, size: 320, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1094, file: !1010, line: 248, baseType: !356, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1094, file: !1010, line: 249, baseType: !356, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1094, file: !1010, line: 250, baseType: !1081, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1094, file: !1010, line: 251, baseType: !1084, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1094, file: !1010, line: 252, baseType: !490, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !1010, line: 260, baseType: !1102, size: 256, offset: 1408)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1010, line: 260, size: 256, elements: !1103)
!1103 = !{!1104, !1110}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1102, file: !1010, line: 261, baseType: !1105, size: 256)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1010, line: 134, size: 256, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1105, file: !1010, line: 135, baseType: !194, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1105, file: !1010, line: 136, baseType: !1109, size: 256)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !338)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !1010, line: 262, baseType: !1111, size: 256)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1010, line: 262, size: 256, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1111, file: !1010, line: 264, baseType: !206, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1111, file: !1010, line: 265, baseType: !1115, size: 128, offset: 128)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1116, line: 22, size: 128, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1117 = !{!1118, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1115, file: !1116, line: 23, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1116, line: 23, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1115, file: !1116, line: 24, baseType: !356, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1009, file: !1010, line: 280, baseType: !1123, size: 64, offset: 1664)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1010, line: 176, size: 192, elements: !1125)
!1125 = !{!1126, !1135, !1136}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1124, file: !1010, line: 177, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1010, line: 171, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!109, !1008, !1131, !1133, !1008}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1124, file: !1010, line: 178, baseType: !1008, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1124, file: !1010, line: 179, baseType: !1081, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !983, file: !984, line: 130, baseType: !1008, size: 64, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !983, file: !984, line: 131, baseType: !1008, size: 64, offset: 896)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !983, file: !984, line: 132, baseType: !1008, size: 64, offset: 960)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !983, file: !984, line: 135, baseType: !194, size: 64, offset: 1024)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !983, file: !984, line: 137, baseType: !1142, size: 64, offset: 1088)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1144, line: 14, size: 1088, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1145 = !{!1146, !1147, !1156, !1157, !1158, !1159, !1160, !1161}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1143, file: !1144, line: 15, baseType: !948, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1143, file: !1144, line: 17, baseType: !1148, size: 320, offset: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1149, line: 22, size: 320, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1148, file: !1149, line: 23, baseType: !858, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1148, file: !1149, line: 24, baseType: !855, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1148, file: !1149, line: 26, baseType: !206, size: 128, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1148, file: !1149, line: 28, baseType: !1155, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1143, file: !1144, line: 19, baseType: !356, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1143, file: !1144, line: 20, baseType: !849, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1143, file: !1144, line: 23, baseType: !756, size: 128, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1143, file: !1144, line: 24, baseType: !571, size: 32, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1143, file: !1144, line: 29, baseType: !849, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1143, file: !1144, line: 36, baseType: !1162, size: 320, offset: 768)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1163, line: 15, size: 320, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1162, file: !1163, line: 16, baseType: !858, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1162, file: !1163, line: 18, baseType: !109, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1162, file: !1163, line: 19, baseType: !109, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1162, file: !1163, line: 20, baseType: !109, size: 32, offset: 96)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1162, file: !1163, line: 21, baseType: !109, size: 32, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1162, file: !1163, line: 22, baseType: !356, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1162, file: !1163, line: 23, baseType: !356, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !983, file: !984, line: 138, baseType: !1173, size: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !572, line: 18, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !983, file: !984, line: 139, baseType: !1176, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1178, line: 16, flags: DIFlagFwdDecl)
!1178 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !983, file: !984, line: 140, baseType: !1180, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !984, line: 25, size: 64, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1181, file: !984, line: 26, baseType: !442, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1181, file: !984, line: 27, baseType: !109, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1181, file: !984, line: 28, baseType: !1186, offset: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, elements: !974)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !984, line: 142, baseType: !1188, size: 128, offset: 1344)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !983, file: !984, line: 142, size: 128, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1188, file: !984, line: 143, baseType: !109, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1188, file: !984, line: 144, baseType: !903, size: 128, align: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !891, file: !14, line: 1013, baseType: !1193, size: 256, offset: 960)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1193, file: !14, line: 971, baseType: !356, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1193, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1193, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1193, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1193, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1193, file: !14, line: 976, baseType: !722, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !891, file: !14, line: 1014, baseType: !1202, size: 128, offset: 1216)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1203, line: 8, size: 128, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1202, file: !1203, line: 9, baseType: !706, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1202, file: !1203, line: 10, baseType: !600, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !891, file: !14, line: 1015, baseType: !565, size: 64, offset: 1344)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !891, file: !14, line: 1016, baseType: !1209, size: 64, offset: 1408)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1212)
!1212 = !{!1213, !1214, !1219, !1223, !1227, !1255, !1256, !1262, !1275, !1283, !1287, !1288, !1755, !1756, !1760, !1765, !1766, !1770, !1774, !1780, !1781, !1785, !1786, !1792, !1796, !1800, !1806, !1810, !1814, !1818, !1822, !1823, !1829}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1211, file: !14, line: 1915, baseType: !394, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1211, file: !14, line: 1916, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!722, !1218, !722, !109}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1211, file: !14, line: 1917, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!520, !1218, !490, !533, !874}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1211, file: !14, line: 1918, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!520, !1218, !411, !533, !874}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1211, file: !14, line: 1919, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!520, !1231, !1253}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1240, !1241, !1242, !1243}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1232, file: !14, line: 374, baseType: !1218, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1232, file: !14, line: 375, baseType: !722, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1232, file: !14, line: 376, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1231, !250}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1232, file: !14, line: 377, baseType: !194, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1232, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1232, file: !14, line: 379, baseType: !458, size: 16, offset: 288)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !14, line: 380, baseType: !1244, size: 64, offset: 320)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !14, line: 380, size: 64, elements: !1245)
!1245 = !{!1246, !1249}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1244, file: !14, line: 386, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1244, file: !14, line: 395, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!520, !194}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1211, file: !14, line: 1920, baseType: !1228, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1211, file: !14, line: 1921, baseType: !1257, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!109, !1231, !1260, !7}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1211, file: !14, line: 1923, baseType: !1263, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!109, !1218, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1268)
!1268 = !{!1269, !1274}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1267, file: !14, line: 1859, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1090, !1266, !411, !109, !722, !638, !7}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1267, file: !14, line: 1860, baseType: !722, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1211, file: !14, line: 1924, baseType: !1276, size: 64, offset: 512)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1279, !1218, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1280, line: 59, baseType: !7)
!1280 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !736, line: 31, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1211, file: !14, line: 1925, baseType: !1284, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!250, !1218, !7, !356}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1211, file: !14, line: 1926, baseType: !1284, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1211, file: !14, line: 1927, baseType: !1289, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!109, !1218, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1294)
!1294 = !{!1295, !1304, !1472, !1478, !1485, !1486, !1491, !1492, !1497, !1498, !1501, !1748, !1749, !1750, !1751, !1752, !1753}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !27, line: 628, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !27, line: 628, size: 128, elements: !1297)
!1297 = !{!1298, !1303}
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !27, line: 629, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !27, line: 629, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1299, file: !27, line: 631, baseType: !356, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1299, file: !27, line: 632, baseType: !356, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1296, file: !27, line: 635, baseType: !903, size: 128, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1293, file: !27, line: 639, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1307)
!1307 = !{!1308, !1470}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !27, line: 734, baseType: !1309, size: 10240)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !27, line: 734, size: 10240, elements: !1310)
!1310 = !{!1311, !1315, !1328, !1332, !1333, !1334, !1335, !1336, !1337, !1346, !1347, !1348, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1387, !1389, !1392, !1439, !1440, !1441, !1444, !1445, !1446, !1449, !1450, !1451, !1457, !1458}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !27, line: 739, baseType: !1312, size: 512, align: 512)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1309, file: !27, line: 739, size: 512, align: 512, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1312, file: !27, line: 747, baseType: !442, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1309, file: !27, line: 750, baseType: !1316, size: 128, offset: 512)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1317, line: 218, size: 128, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1318 = !{!1319, !1326, !1327}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1317, line: 219, baseType: !1320, size: 32)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1317, line: 219, size: 32, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1320, file: !1317, line: 220, baseType: !422, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1320, file: !1317, line: 221, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1317, line: 197, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 197, elements: !764)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1316, file: !1317, line: 223, baseType: !7, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1316, file: !1317, line: 224, baseType: !194, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1309, file: !27, line: 752, baseType: !1329, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!356, !1218, !356, !356, !356, !356}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1309, file: !27, line: 756, baseType: !356, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1309, file: !27, line: 757, baseType: !356, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1309, file: !27, line: 760, baseType: !356, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1309, file: !27, line: 761, baseType: !356, size: 64, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1309, file: !27, line: 763, baseType: !356, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1309, file: !27, line: 764, baseType: !1338, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1340, line: 299, baseType: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 299, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1341, file: !1340, line: 299, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1345, line: 18, baseType: !356)
!1345 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1309, file: !27, line: 773, baseType: !442, size: 32, offset: 1088)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1309, file: !27, line: 785, baseType: !442, size: 32, offset: 1120)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1309, file: !27, line: 795, baseType: !1349, size: 64, offset: 1152)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1350, file: !27, line: 727, baseType: !638, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1350, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1309, file: !27, line: 801, baseType: !356, size: 64, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1309, file: !27, line: 804, baseType: !849, size: 64, offset: 1280)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1309, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1309, file: !27, line: 808, baseType: !422, size: 32, offset: 1376)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1309, file: !27, line: 823, baseType: !1031, size: 320, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1309, file: !27, line: 825, baseType: !206, size: 128, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1309, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1309, file: !27, line: 849, baseType: !356, size: 64, offset: 1920)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1309, file: !27, line: 850, baseType: !356, size: 64, offset: 1984)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1309, file: !27, line: 852, baseType: !356, size: 64, offset: 2048)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1309, file: !27, line: 853, baseType: !356, size: 64, offset: 2112)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1309, file: !27, line: 854, baseType: !851, size: 64, offset: 2176)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1309, file: !27, line: 855, baseType: !356, size: 64, offset: 2240)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1309, file: !27, line: 856, baseType: !356, size: 64, offset: 2304)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1309, file: !27, line: 857, baseType: !356, size: 64, offset: 2368)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1309, file: !27, line: 858, baseType: !356, size: 64, offset: 2432)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1309, file: !27, line: 865, baseType: !611, size: 32, offset: 2496)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1309, file: !27, line: 867, baseType: !422, size: 32, offset: 2528)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1309, file: !27, line: 869, baseType: !356, size: 64, offset: 2560)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1309, file: !27, line: 869, baseType: !356, size: 64, offset: 2624)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1309, file: !27, line: 869, baseType: !356, size: 64, offset: 2688)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1309, file: !27, line: 869, baseType: !356, size: 64, offset: 2752)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1309, file: !27, line: 870, baseType: !356, size: 64, offset: 2816)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1309, file: !27, line: 870, baseType: !356, size: 64, offset: 2880)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1309, file: !27, line: 870, baseType: !356, size: 64, offset: 2944)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1309, file: !27, line: 871, baseType: !356, size: 64, offset: 3008)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1309, file: !27, line: 871, baseType: !356, size: 64, offset: 3072)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1309, file: !27, line: 871, baseType: !356, size: 64, offset: 3136)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1309, file: !27, line: 871, baseType: !356, size: 64, offset: 3200)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1309, file: !27, line: 873, baseType: !1384, size: 3328, offset: 3264)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 3328, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 52)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1309, file: !27, line: 875, baseType: !1388, size: 1280, offset: 6592)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1148, size: 1280, elements: !338)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1309, file: !27, line: 877, baseType: !1390, size: 64, offset: 7872)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1309, file: !27, line: 880, baseType: !1393, size: 1088, offset: 7936)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1394, line: 72, baseType: !1395)
!1394 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1394, line: 23, size: 1088, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1404, !1405, !1406, !1407, !1434, !1435, !1436}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1395, file: !1394, line: 28, baseType: !638, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1395, file: !1394, line: 38, baseType: !851, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1395, file: !1394, line: 40, baseType: !356, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1395, file: !1394, line: 43, baseType: !1031, size: 320, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1395, file: !1394, line: 44, baseType: !1402, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1394, line: 44, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !1394, line: 48, baseType: !356, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !1394, line: 59, baseType: !845, size: 256, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1395, file: !1394, line: 60, baseType: !194, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1395, file: !1394, line: 61, baseType: !1408, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1411, line: 13, size: 1216, elements: !1412)
!1411 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1410, file: !1411, line: 14, baseType: !194, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1410, file: !1411, line: 15, baseType: !356, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1410, file: !1411, line: 17, baseType: !356, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1410, file: !1411, line: 17, baseType: !356, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1410, file: !1411, line: 18, baseType: !356, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1410, file: !1411, line: 18, baseType: !356, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1410, file: !1411, line: 19, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1410, file: !1411, line: 21, baseType: !250, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1410, file: !1411, line: 23, baseType: !250, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1410, file: !1411, line: 24, baseType: !250, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1410, file: !1411, line: 25, baseType: !250, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1410, file: !1411, line: 26, baseType: !250, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1410, file: !1411, line: 27, baseType: !250, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1410, file: !1411, line: 28, baseType: !250, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1410, file: !1411, line: 29, baseType: !250, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1410, file: !1411, line: 30, baseType: !250, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1410, file: !1411, line: 31, baseType: !250, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1410, file: !1411, line: 32, baseType: !250, size: 64, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1410, file: !1411, line: 33, baseType: !250, size: 64, offset: 1152)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1395, file: !1394, line: 63, baseType: !442, size: 32, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1395, file: !1394, line: 69, baseType: !458, size: 16, offset: 1056)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1395, file: !1394, line: 70, baseType: !1437, size: 16, offset: 1072)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !451, line: 18, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !272, line: 23, baseType: !1059)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !27, line: 882, baseType: !356, size: 64, offset: 9024)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1309, file: !27, line: 885, baseType: !422, size: 32, offset: 9088)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1309, file: !27, line: 886, baseType: !1442, size: 64, offset: 9152)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1309, file: !27, line: 901, baseType: !1173, size: 64, offset: 9216)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1309, file: !27, line: 904, baseType: !1218, size: 64, offset: 9280)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1309, file: !27, line: 906, baseType: !1447, size: 64, offset: 9344)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1309, file: !27, line: 930, baseType: !442, size: 32, offset: 9408)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1309, file: !27, line: 933, baseType: !442, size: 32, offset: 9440)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1309, file: !27, line: 935, baseType: !1452, size: 64, offset: 9472)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1452, file: !68, line: 104, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1309, file: !27, line: 940, baseType: !849, size: 64, offset: 9536)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1309, file: !27, line: 942, baseType: !1459, size: 256, offset: 9600)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1460, line: 98, size: 256, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1459, file: !1460, line: 99, baseType: !849, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1459, file: !1460, line: 100, baseType: !206, size: 128, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1459, file: !1460, line: 101, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1460, line: 21, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1306, file: !27, line: 986, baseType: !1471, offset: 10240)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, elements: !974)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1293, file: !27, line: 640, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1340, line: 297, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1340, line: 297, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1474, file: !1340, line: 297, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1345, line: 19, baseType: !356)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1293, file: !27, line: 646, baseType: !1479, size: 64, offset: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !27, line: 646, size: 64, elements: !1480)
!1480 = !{!1481, !1484}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1479, file: !27, line: 647, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !356)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1479, file: !27, line: 648, baseType: !1483, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1293, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1293, file: !27, line: 667, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !27, line: 580, baseType: !1031, size: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1293, file: !27, line: 670, baseType: !1090, size: 8, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1293, file: !27, line: 681, baseType: !1493, size: 256, offset: 512)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1293, file: !27, line: 678, size: 256, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1493, file: !27, line: 679, baseType: !1023, size: 192, align: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1493, file: !27, line: 680, baseType: !356, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1293, file: !27, line: 689, baseType: !206, size: 128, offset: 768)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1293, file: !27, line: 691, baseType: !1499, size: 64, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1293, file: !27, line: 694, baseType: !1502, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1505, line: 563, size: 1024, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1506 = !{!1507, !1511, !1512, !1516, !1520, !1524, !1711, !1715, !1719, !1723, !1724, !1725, !1729, !1733, !1740, !1744}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1504, file: !1505, line: 564, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1292}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1504, file: !1505, line: 569, baseType: !1508, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1504, file: !1505, line: 571, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!109, !1292, !356}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1504, file: !1505, line: 572, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!109, !1292}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1504, file: !1505, line: 578, baseType: !1521, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!109, !1292, !356, !356, !356}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1504, file: !1505, line: 580, baseType: !1525, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1505, line: 512, size: 896, elements: !1531)
!1531 = !{!1532, !1540, !1541, !1548, !1555, !1565, !1704, !1705, !1707, !1709}
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1505, line: 513, baseType: !1533, size: 320)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !1505, line: 513, size: 320, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1533, file: !1505, line: 514, baseType: !1292, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1533, file: !1505, line: 515, baseType: !195, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1533, file: !1505, line: 516, baseType: !356, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1533, file: !1505, line: 517, baseType: !356, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1533, file: !1505, line: 518, baseType: !356, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1505, line: 520, baseType: !26, size: 32, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1530, file: !1505, line: 522, baseType: !1542, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1345, line: 22, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 22, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1544, file: !1345, line: 22, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1345, line: 15, baseType: !356)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1530, file: !1505, line: 524, baseType: !1549, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1340, line: 372, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1340, line: 372, size: 64, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1551, file: !1340, line: 372, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1345, line: 16, baseType: !356)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1505, line: 527, baseType: !1556, size: 64, offset: 512)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1505, line: 527, size: 64, elements: !1557)
!1557 = !{!1558, !1564}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1556, file: !1505, line: 528, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1345, line: 21, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 21, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1560, file: !1345, line: 21, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1345, line: 14, baseType: !356)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1556, file: !1505, line: 529, baseType: !1543, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1530, file: !1505, line: 534, baseType: !1566, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1568)
!1568 = !{!1569, !1570, !1698, !1703}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !27, line: 75, baseType: !356, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !27, line: 83, baseType: !1571, size: 320, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !27, line: 83, size: 320, elements: !1572)
!1572 = !{!1573, !1594, !1608, !1612, !1697}
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !27, line: 84, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 84, size: 320, elements: !1575)
!1575 = !{!1576, !1587, !1588, !1593}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !27, line: 90, baseType: !1577, size: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !27, line: 90, size: 128, elements: !1578)
!1578 = !{!1579, !1580, !1585, !1586}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1577, file: !27, line: 91, baseType: !206, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !27, line: 94, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1577, file: !27, line: 94, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1581, file: !27, line: 96, baseType: !194, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1581, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1577, file: !27, line: 102, baseType: !206, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1577, file: !27, line: 103, baseType: !206, size: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1574, file: !27, line: 106, baseType: !561, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !27, line: 107, baseType: !1589, size: 64, offset: 192)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !27, line: 107, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1589, file: !27, line: 108, baseType: !356, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1589, file: !27, line: 109, baseType: !356, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1574, file: !27, line: 117, baseType: !356, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !27, line: 119, baseType: !1595, size: 320)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 119, size: 320, elements: !1596)
!1596 = !{!1597, !1598, !1601, !1602, !1603}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1595, file: !27, line: 124, baseType: !356, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1595, file: !27, line: 125, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1595, file: !27, line: 126, baseType: !356, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1595, file: !27, line: 127, baseType: !356, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !27, line: 128, baseType: !1604, size: 64, offset: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !27, line: 128, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1604, file: !27, line: 133, baseType: !356, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1604, file: !27, line: 138, baseType: !849, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !27, line: 141, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 141, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1609, file: !27, line: 142, baseType: !356, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !27, line: 144, baseType: !1613, size: 128)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 144, size: 128, elements: !1614)
!1614 = !{!1615, !1696}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1613, file: !27, line: 146, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1618)
!1618 = !{!1619, !1629, !1650, !1661, !1662, !1663, !1664, !1678, !1679, !1680}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1617, file: !43, line: 127, baseType: !1620, size: 384)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1621)
!1621 = !{!1622, !1623, !1625, !1626, !1627, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1620, file: !43, line: 22, baseType: !356, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1620, file: !43, line: 23, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1620, file: !43, line: 24, baseType: !1624, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1620, file: !43, line: 25, baseType: !356, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1620, file: !43, line: 26, baseType: !356, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1620, file: !43, line: 27, baseType: !356, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1617, file: !43, line: 128, baseType: !1630, size: 128, offset: 384)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1631, line: 105, size: 128, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1630, file: !1631, line: 110, baseType: !356, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1630, file: !1631, line: 118, baseType: !1635, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1631, line: 95, size: 448, elements: !1637)
!1637 = !{!1638, !1639, !1645, !1646, !1647, !1648, !1649}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1636, file: !1631, line: 96, baseType: !849, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1636, file: !1631, line: 97, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1631, line: 60, baseType: !1642)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1636, file: !1631, line: 98, baseType: !1640, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1636, file: !1631, line: 99, baseType: !1090, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1636, file: !1631, line: 100, baseType: !1090, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1636, file: !1631, line: 101, baseType: !903, size: 128, align: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1636, file: !1631, line: 102, baseType: !1644, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1617, file: !43, line: 129, baseType: !1651, size: 256, offset: 512)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1652, line: 26, size: 256, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1651, file: !1652, line: 27, baseType: !7, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1651, file: !1652, line: 28, baseType: !1656, size: 192, offset: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1657, line: 43, size: 192, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1656, file: !1657, line: 44, baseType: !858, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1656, file: !1657, line: 45, baseType: !206, size: 128, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1617, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1617, file: !43, line: 132, baseType: !356, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1617, file: !43, line: 133, baseType: !1665, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1668)
!1668 = !{!1669, !1673, !1674}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1667, file: !43, line: 83, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1566}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1667, file: !43, line: 89, baseType: !1525, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1667, file: !43, line: 100, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!109, !1616, !356, !356, !109}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1617, file: !43, line: 134, baseType: !194, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1617, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !43, line: 136, baseType: !1681, size: 128, offset: 1088)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !43, line: 136, size: 128, elements: !1682)
!1682 = !{!1683, !1689}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1681, file: !43, line: 137, baseType: !1684, size: 128)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1685, line: 6, size: 128, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1684, file: !1685, line: 7, baseType: !638, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1684, file: !1685, line: 8, baseType: !638, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !43, line: 138, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !43, line: 138, elements: !1691)
!1691 = !{!1692, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1690, file: !43, line: 138, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !43, line: 138, elements: !764)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1690, file: !43, line: 138, baseType: !1695)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1684, elements: !974)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1613, file: !27, line: 147, baseType: !194, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1571, file: !27, line: 161, baseType: !903, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !27, line: 164, baseType: !1699, size: 32, offset: 384)
!1699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !27, line: 164, size: 32, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1699, file: !27, line: 169, baseType: !442, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1699, file: !27, line: 177, baseType: !7, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1567, file: !27, line: 181, baseType: !442, size: 32, offset: 416)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1530, file: !1505, line: 535, baseType: !1566, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1530, file: !1505, line: 541, baseType: !1706, size: 64, offset: 704)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1530, file: !1505, line: 545, baseType: !1708, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1530, file: !1505, line: 549, baseType: !1710, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1340, line: 520, baseType: !1566)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1504, file: !1505, line: 581, baseType: !1712, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!1528, !1529, !7}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1504, file: !1505, line: 582, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!1528, !1529, !356, !356}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1504, file: !1505, line: 584, baseType: !1720, size: 64, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!356, !1292}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1504, file: !1505, line: 588, baseType: !1525, size: 64, offset: 576)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1504, file: !1505, line: 591, baseType: !1525, size: 64, offset: 640)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1504, file: !1505, line: 597, baseType: !1726, size: 64, offset: 704)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!109, !1292, !356, !194, !109, !109}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1504, file: !1505, line: 603, baseType: !1730, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!411, !1292}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1504, file: !1505, line: 613, baseType: !1734, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!109, !1292, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1739, line: 54, flags: DIFlagFwdDecl)
!1739 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1504, file: !1505, line: 625, baseType: !1741, size: 64, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1737, !1292, !356}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1504, file: !1505, line: 633, baseType: !1745, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1566, !1292, !356}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1293, file: !27, line: 697, baseType: !356, size: 64, offset: 1024)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1293, file: !27, line: 699, baseType: !1218, size: 64, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1293, file: !27, line: 700, baseType: !194, size: 64, offset: 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1293, file: !27, line: 711, baseType: !849, size: 64, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1293, file: !27, line: 717, baseType: !1737, size: 64, offset: 1280)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1293, file: !27, line: 722, baseType: !1754, offset: 1344)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !764)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1211, file: !14, line: 1928, baseType: !356, size: 64, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1211, file: !14, line: 1929, baseType: !1757, size: 64, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!109, !565, !1218}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1211, file: !14, line: 1930, baseType: !1761, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!109, !1218, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !194)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1211, file: !14, line: 1931, baseType: !1757, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1211, file: !14, line: 1932, baseType: !1767, size: 64, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!109, !1218, !722, !722, !109}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1211, file: !14, line: 1933, baseType: !1771, size: 64, offset: 1088)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!109, !109, !1218, !109}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !14, line: 1934, baseType: !1775, size: 64, offset: 1152)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!109, !1218, !109, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1211, file: !14, line: 1935, baseType: !1329, size: 64, offset: 1216)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1211, file: !14, line: 1936, baseType: !1782, size: 64, offset: 1280)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!109, !109}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1211, file: !14, line: 1937, baseType: !1775, size: 64, offset: 1344)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1211, file: !14, line: 1938, baseType: !1787, size: 64, offset: 1408)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!520, !1790, !1218, !874, !533, !7}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1739, line: 59, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1211, file: !14, line: 1939, baseType: !1793, size: 64, offset: 1472)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!520, !1218, !874, !1790, !533, !7}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1211, file: !14, line: 1940, baseType: !1797, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1218}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1211, file: !14, line: 1941, baseType: !1801, size: 64, offset: 1600)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!109, !1218, !109, !1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1211, file: !14, line: 1942, baseType: !1807, size: 64, offset: 1664)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!250, !1218, !109, !722, !722}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1211, file: !14, line: 1944, baseType: !1811, size: 64, offset: 1728)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !833, !1218}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1211, file: !14, line: 1948, baseType: !1815, size: 64, offset: 1792)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!520, !1218, !722, !1218, !722, !533, !7}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1211, file: !14, line: 1950, baseType: !1819, size: 64, offset: 1856)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!722, !1218, !722, !1218, !722, !722, !7}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1211, file: !14, line: 1953, baseType: !1767, size: 64, offset: 1920)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1211, file: !14, line: 1954, baseType: !1824, size: 64, offset: 1984)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!109, !1827, !7}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1211, file: !14, line: 1955, baseType: !1830, size: 64, offset: 2048)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!109, !1827, !1260, !7}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !891, file: !14, line: 1018, baseType: !638, size: 64, offset: 1472)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !891, file: !14, line: 1020, baseType: !194, size: 64, offset: 1536)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !891, file: !14, line: 1023, baseType: !194, size: 64, offset: 1600)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !891, file: !14, line: 1027, baseType: !1837, size: 64, offset: 1664)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !891, file: !14, line: 1029, baseType: !561, size: 64, offset: 1728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !891, file: !14, line: 1030, baseType: !1840, size: 32, offset: 1792)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1841, line: 8, baseType: !634)
!1841 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !891, file: !14, line: 1031, baseType: !1840, size: 32, offset: 1824)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !834, file: !835, line: 29, baseType: !194, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !776, file: !14, line: 2077, baseType: !830, size: 64, offset: 1088)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !776, file: !14, line: 2078, baseType: !830, size: 64, offset: 1152)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !776, file: !14, line: 2079, baseType: !830, size: 64, offset: 1216)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !776, file: !14, line: 2081, baseType: !1848, size: 64, offset: 1280)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!520, !712, !109, !490, !533, !722}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !776, file: !14, line: 2082, baseType: !1852, size: 64, offset: 1344)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!520, !712, !109, !411, !533, !722}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !776, file: !14, line: 2083, baseType: !1856, size: 64, offset: 1408)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1859, !565}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1887, !1888, !1889}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1861, file: !51, line: 297, baseType: !756, size: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1861, file: !51, line: 298, baseType: !206, size: 128, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1861, file: !51, line: 299, baseType: !206, size: 128, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1861, file: !51, line: 300, baseType: !206, size: 128, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1861, file: !51, line: 301, baseType: !845, size: 256, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1861, file: !51, line: 302, baseType: !422, size: 32, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1861, file: !51, line: 303, baseType: !442, size: 32, offset: 800)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1861, file: !51, line: 304, baseType: !712, size: 64, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1861, file: !51, line: 305, baseType: !1872, size: 64, offset: 896)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1873)
!1873 = !{!1874, !1886}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !51, line: 69, baseType: !1875, size: 32)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !51, line: 69, size: 32, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1875, file: !51, line: 70, baseType: !571, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1875, file: !51, line: 71, baseType: !580, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1875, file: !51, line: 72, baseType: !1880, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1881, line: 24, baseType: !1882)
!1881 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 22, size: 32, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1882, file: !1881, line: 23, baseType: !1885, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1881, line: 20, baseType: !577)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1872, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1861, file: !51, line: 306, baseType: !722, size: 64, offset: 960)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1861, file: !51, line: 307, baseType: !356, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1861, file: !51, line: 308, baseType: !1890, size: 576, offset: 1088)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1891)
!1891 = !{!1892, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1890, file: !51, line: 206, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !257)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1890, file: !51, line: 207, baseType: !1893, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1890, file: !51, line: 208, baseType: !1893, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1890, file: !51, line: 209, baseType: !1893, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1890, file: !51, line: 210, baseType: !1893, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1890, file: !51, line: 211, baseType: !1893, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1890, file: !51, line: 212, baseType: !1893, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1890, file: !51, line: 213, baseType: !1047, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1890, file: !51, line: 214, baseType: !1047, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !776, file: !14, line: 2085, baseType: !1903, size: 64, offset: 1472)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!250, !712, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1908, line: 15, size: 256, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1909 = !{!1910, !1911, !1912, !1913, !1914}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1907, file: !1908, line: 16, baseType: !195, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1907, file: !1908, line: 19, baseType: !109, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1907, file: !1908, line: 26, baseType: !356, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1907, file: !1908, line: 33, baseType: !356, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1907, file: !1908, line: 36, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !776, file: !14, line: 2087, baseType: !1903, size: 64, offset: 1536)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !776, file: !14, line: 2089, baseType: !746, size: 64, offset: 1600)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !713, file: !14, line: 1198, baseType: !1920, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1923)
!1923 = !{!1924, !1928, !1932, !1936, !1937, !1938, !1939, !1940, !1945, !1950, !1954}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1922, file: !51, line: 325, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!109, !1860}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1922, file: !51, line: 326, baseType: !1929, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1860, !712, !109}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1922, file: !51, line: 327, baseType: !1933, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !1860}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1922, file: !51, line: 328, baseType: !1925, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1922, file: !51, line: 329, baseType: !1925, size: 64, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1922, file: !51, line: 330, baseType: !1925, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1922, file: !51, line: 331, baseType: !804, size: 64, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1922, file: !51, line: 334, baseType: !1941, size: 64, offset: 448)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1944, !565}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1922, file: !51, line: 335, baseType: !1946, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!109, !565, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1922, file: !51, line: 337, baseType: !1951, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!109, !565, !1944}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1922, file: !51, line: 339, baseType: !1955, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!109, !712, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !713, file: !14, line: 1199, baseType: !1960, size: 64, offset: 512)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1963)
!1963 = !{!1964, !1970, !1971, !1975, !1976, !1977, !1992, !2015, !2019, !2020, !2043}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1962, file: !51, line: 431, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!109, !712, !109, !109, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1962, file: !51, line: 432, baseType: !804, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1962, file: !51, line: 433, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!109, !712, !7}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1962, file: !51, line: 434, baseType: !1972, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1962, file: !51, line: 435, baseType: !804, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1962, file: !51, line: 436, baseType: !1978, size: 64, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!109, !712, !109, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1982, file: !51, line: 418, baseType: !109, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1982, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1982, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1982, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1982, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1982, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1982, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1982, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1962, file: !51, line: 437, baseType: !1993, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!109, !712, !1872, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1997, file: !51, line: 346, baseType: !109, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1997, file: !51, line: 347, baseType: !638, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1997, file: !51, line: 348, baseType: !638, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1997, file: !51, line: 349, baseType: !638, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1997, file: !51, line: 350, baseType: !638, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1997, file: !51, line: 351, baseType: !638, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1997, file: !51, line: 352, baseType: !638, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1997, file: !51, line: 353, baseType: !855, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1997, file: !51, line: 355, baseType: !855, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1997, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1997, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1997, file: !51, line: 358, baseType: !638, size: 64, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1997, file: !51, line: 359, baseType: !638, size: 64, offset: 704)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1997, file: !51, line: 360, baseType: !638, size: 64, offset: 768)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1997, file: !51, line: 361, baseType: !855, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1997, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1962, file: !51, line: 438, baseType: !2016, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!109, !712, !1958, !1996}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1962, file: !51, line: 440, baseType: !1993, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1962, file: !51, line: 441, baseType: !2021, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!109, !712, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2025, file: !51, line: 412, baseType: !7, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2025, file: !51, line: 413, baseType: !2029, size: 1344, offset: 64)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2030, size: 1344, elements: !491)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2042}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !51, line: 398, baseType: !7, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2030, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2030, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2030, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2030, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2030, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2030, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2030, file: !51, line: 406, baseType: !273, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2030, file: !51, line: 407, baseType: !2041, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !196, line: 132, baseType: !638)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2030, file: !51, line: 408, baseType: !2041, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1962, file: !51, line: 442, baseType: !1972, size: 64, offset: 640)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !713, file: !14, line: 1200, baseType: !2045, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !713, file: !14, line: 1201, baseType: !356, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !713, file: !14, line: 1202, baseType: !356, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !713, file: !14, line: 1203, baseType: !356, size: 64, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !713, file: !14, line: 1204, baseType: !600, size: 64, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !713, file: !14, line: 1205, baseType: !1031, size: 320, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !713, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !713, file: !14, line: 1207, baseType: !442, size: 32, offset: 1248)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !713, file: !14, line: 1209, baseType: !194, size: 64, offset: 1280)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !713, file: !14, line: 1211, baseType: !2057, size: 64, offset: 1344)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !713, file: !14, line: 1223, baseType: !2062, size: 64, offset: 1408)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !617, line: 34, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2062, file: !617, line: 35, baseType: !620, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !713, file: !14, line: 1224, baseType: !206, size: 128, offset: 1472)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !713, file: !14, line: 1225, baseType: !2067, size: 64, offset: 1600)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !713, file: !14, line: 1226, baseType: !2070, size: 64, offset: 1664)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !713, file: !14, line: 1227, baseType: !2073, size: 64, offset: 1728)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !713, file: !14, line: 1228, baseType: !2076, size: 64, offset: 1792)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !713, file: !14, line: 1229, baseType: !756, size: 128, offset: 1856)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !713, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !713, file: !14, line: 1231, baseType: !2081, size: 2496, offset: 2048)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2087, !2119}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2081, file: !51, line: 522, baseType: !7, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2081, file: !51, line: 523, baseType: !1031, size: 320, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2081, file: !51, line: 524, baseType: !2086, size: 192, offset: 384)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 192, elements: !491)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2081, file: !51, line: 525, baseType: !2088, size: 1728, offset: 576)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 1728, elements: !491)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2090)
!2090 = !{!2091, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2089, file: !51, line: 223, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2094)
!2094 = !{!2095, !2096, !2109, !2110}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2093, file: !51, line: 446, baseType: !109, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2093, file: !51, line: 447, baseType: !2097, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2099, file: !51, line: 313, baseType: !804, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2099, file: !51, line: 314, baseType: !804, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2099, file: !51, line: 315, baseType: !804, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2099, file: !51, line: 316, baseType: !804, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2099, file: !51, line: 317, baseType: !1925, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2099, file: !51, line: 318, baseType: !1925, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2099, file: !51, line: 319, baseType: !1925, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2099, file: !51, line: 320, baseType: !1955, size: 64, offset: 448)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2093, file: !51, line: 448, baseType: !394, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2093, file: !51, line: 449, baseType: !2092, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2089, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2089, file: !51, line: 226, baseType: !206, size: 128, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2089, file: !51, line: 227, baseType: !356, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2089, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2089, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2089, file: !51, line: 230, baseType: !1893, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2089, file: !51, line: 231, baseType: !1893, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2089, file: !51, line: 232, baseType: !194, size: 64, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2081, file: !51, line: 526, baseType: !2120, size: 192, offset: 2304)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2097, size: 192, elements: !491)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !713, file: !14, line: 1233, baseType: !2122, size: 2368, offset: 4544)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2122, file: !14, line: 1185, baseType: !460, size: 16)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2122, file: !14, line: 1186, baseType: !460, size: 16, offset: 16)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2122, file: !14, line: 1187, baseType: !2127, size: 2304, offset: 64)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, size: 2304, elements: !491)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2129, line: 12, size: 768, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2130 = !{!2131, !2139, !2140, !3336, !3337}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2128, file: !2129, line: 13, baseType: !2132, size: 384)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2133, line: 17, size: 384, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2132, file: !2133, line: 18, baseType: !109, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2132, file: !2133, line: 19, baseType: !109, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2132, file: !2133, line: 20, baseType: !959, size: 192, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2132, file: !2133, line: 22, baseType: !903, size: 128, align: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2128, file: !2129, line: 14, baseType: !314, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2128, file: !2129, line: 15, baseType: !2141, size: 64, offset: 448)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2142, line: 16, size: 64, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2141, file: !2142, line: 17, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1739, line: 746, size: 58368, elements: !2147)
!2147 = !{!2148, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2228, !2239, !2334, !2338, !2341, !2372, !2373, !2374, !2375, !2386, !2388, !2389, !2390, !2391, !2392, !2393, !2404, !2405, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2422, !2423, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2511, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2525, !2526, !2527, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2559, !2565, !2566, !2567, !2568, !2569, !2570, !2573, !2580, !2585, !2588, !2591, !2594, !2597, !2737, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2777, !2778, !2779, !2788, !2796, !2797, !2798, !2799, !2800, !2805, !2806, !2807, !2810, !2811, !2814, !2817, !2820, !2828, !2831, !2832, !2918, !2919, !2920, !2921, !2922, !2928, !2929, !2930, !2931, !2934, !2935, !2938, !2941, !2942, !2945, !2946, !2947, !2950, !2951, !2952, !2953, !2954, !2955, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2987, !2988, !2994, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3006, !3078, !3080, !3081, !3082, !3083, !3084, !3096, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3113, !3114, !3115}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2146, file: !1739, line: 752, baseType: !2149, size: 192)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2150, line: 56, size: 192, elements: !2151)
!2150 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2151 = !{!2152, !2153, !2154, !2155}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2149, file: !2150, line: 57, baseType: !356, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2149, file: !2150, line: 58, baseType: !356, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2149, file: !2150, line: 59, baseType: !634, size: 32, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2149, file: !2150, line: 61, baseType: !634, size: 32, offset: 160)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2146, file: !1739, line: 754, baseType: !7, size: 32, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2146, file: !1739, line: 767, baseType: !194, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2146, file: !1739, line: 768, baseType: !948, size: 32, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2146, file: !1739, line: 770, baseType: !7, size: 32, offset: 352)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2146, file: !1739, line: 771, baseType: !7, size: 32, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2146, file: !1739, line: 774, baseType: !109, size: 32, offset: 416)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2146, file: !1739, line: 775, baseType: !2163, size: 128, offset: 448)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2164, line: 58, size: 128, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2165 = !{!2166, !2167, !2172, !2173}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2163, file: !2164, line: 59, baseType: !897, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2163, file: !2164, line: 60, baseType: !2168, size: 32, offset: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2163, file: !2164, line: 60, size: 32, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2168, file: !2164, line: 61, baseType: !7, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2168, file: !2164, line: 62, baseType: !442, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2163, file: !2164, line: 65, baseType: !458, size: 16, offset: 96)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2163, file: !2164, line: 65, baseType: !458, size: 16, offset: 112)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2146, file: !1739, line: 776, baseType: !7, size: 32, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2146, file: !1739, line: 777, baseType: !356, size: 64, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2146, file: !1739, line: 778, baseType: !2145, size: 64, offset: 704)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2146, file: !1739, line: 787, baseType: !109, size: 32, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2146, file: !1739, line: 788, baseType: !109, size: 32, offset: 800)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2146, file: !1739, line: 790, baseType: !109, size: 32, offset: 832)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2146, file: !1739, line: 792, baseType: !109, size: 32, offset: 864)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2146, file: !1739, line: 793, baseType: !109, size: 32, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2146, file: !1739, line: 794, baseType: !109, size: 32, offset: 928)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2146, file: !1739, line: 795, baseType: !7, size: 32, offset: 960)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2146, file: !1739, line: 797, baseType: !2185, size: 2048, offset: 1024)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1739, line: 551, size: 2048, elements: !2186)
!2186 = !{!2187, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2207, !2210, !2211, !2212}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2185, file: !1739, line: 553, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1739, line: 411, size: 128, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2188, file: !1739, line: 412, baseType: !356, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2188, file: !1739, line: 413, baseType: !634, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2185, file: !1739, line: 554, baseType: !1023, size: 192, align: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2185, file: !1739, line: 555, baseType: !638, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2185, file: !1739, line: 556, baseType: !638, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2185, file: !1739, line: 558, baseType: !206, size: 128, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2185, file: !1739, line: 559, baseType: !7, size: 32, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2185, file: !1739, line: 561, baseType: !638, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2185, file: !1739, line: 562, baseType: !638, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2185, file: !1739, line: 563, baseType: !638, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2185, file: !1739, line: 564, baseType: !638, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2185, file: !1739, line: 565, baseType: !855, size: 64, offset: 896)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2185, file: !1739, line: 566, baseType: !638, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2185, file: !1739, line: 568, baseType: !638, size: 64, offset: 1024)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2185, file: !1739, line: 571, baseType: !109, size: 32, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2185, file: !1739, line: 572, baseType: !2206, size: 64, offset: 1152)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2185, file: !1739, line: 574, baseType: !2208, size: 64, offset: 1216)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1739, line: 49, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2185, file: !1739, line: 576, baseType: !2208, size: 64, offset: 1280)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2185, file: !1739, line: 578, baseType: !356, size: 64, offset: 1344)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2185, file: !1739, line: 588, baseType: !2213, size: 512, align: 512, offset: 1536)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1739, line: 497, size: 512, align: 512, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2213, file: !1739, line: 498, baseType: !638, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2213, file: !1739, line: 499, baseType: !638, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2213, file: !1739, line: 500, baseType: !638, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2213, file: !1739, line: 501, baseType: !634, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2213, file: !1739, line: 502, baseType: !634, size: 32, offset: 224)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2213, file: !1739, line: 503, baseType: !356, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2213, file: !1739, line: 504, baseType: !356, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2213, file: !1739, line: 505, baseType: !356, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2213, file: !1739, line: 506, baseType: !2224, size: 64, align: 64, offset: 448)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1739, line: 445, size: 64, align: 64, elements: !2225)
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2224, file: !1739, line: 446, baseType: !7, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2224, file: !1739, line: 447, baseType: !7, size: 32, offset: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2146, file: !1739, line: 798, baseType: !2229, size: 384, offset: 3072)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1739, line: 592, size: 384, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2229, file: !1739, line: 593, baseType: !206, size: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2229, file: !1739, line: 594, baseType: !356, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2229, file: !1739, line: 595, baseType: !356, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2229, file: !1739, line: 596, baseType: !7, size: 32, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2229, file: !1739, line: 597, baseType: !460, size: 16, offset: 288)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2229, file: !1739, line: 598, baseType: !460, size: 16, offset: 304)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2229, file: !1739, line: 600, baseType: !2238, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2146, file: !1739, line: 799, baseType: !2240, size: 1792, offset: 3456)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1739, line: 610, size: 1792, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2331, !2332}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2240, file: !1739, line: 611, baseType: !1023, size: 192, align: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2240, file: !1739, line: 618, baseType: !638, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2240, file: !1739, line: 619, baseType: !638, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2240, file: !1739, line: 620, baseType: !638, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2240, file: !1739, line: 621, baseType: !638, size: 64, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2240, file: !1739, line: 622, baseType: !638, size: 64, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2240, file: !1739, line: 629, baseType: !855, size: 64, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2240, file: !1739, line: 630, baseType: !638, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !1739, line: 631, baseType: !7, size: 32, offset: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2240, file: !1739, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2240, file: !1739, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2240, file: !1739, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2240, file: !1739, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2240, file: !1739, line: 662, baseType: !2256, size: 512, offset: 704)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2257)
!2257 = !{!2258, !2266, !2267, !2272, !2327, !2328, !2329, !2330}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2256, file: !57, line: 119, baseType: !2259, size: 256)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2260, line: 9, size: 256, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2259, file: !2260, line: 10, baseType: !1023, size: 192, align: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2259, file: !2260, line: 11, baseType: !2264, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2265, line: 29, baseType: !855)
!2265 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2256, file: !57, line: 120, baseType: !2264, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2256, file: !57, line: 121, baseType: !2268, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!56, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2256, file: !57, line: 122, baseType: !2273, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2275)
!2275 = !{!2276, !2301, !2302, !2305, !2310, !2311, !2322, !2326}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2274, file: !57, line: 160, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2278, file: !57, line: 216, baseType: !858, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2278, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2278, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2278, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2278, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2278, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2278, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2278, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2278, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2278, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2278, file: !57, line: 227, baseType: !460, size: 16, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2278, file: !57, line: 228, baseType: !460, size: 16, offset: 208)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2278, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2278, file: !57, line: 235, baseType: !2264, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2278, file: !57, line: 236, baseType: !2271, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2278, file: !57, line: 237, baseType: !2264, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2278, file: !57, line: 238, baseType: !2271, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2278, file: !57, line: 239, baseType: !2298, size: 4096, align: 512, offset: 512)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2274, size: 4096, align: 512, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: 8)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2274, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2274, file: !57, line: 162, baseType: !2303, size: 32, offset: 96)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !196, line: 32, baseType: !2304)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !242, line: 96, baseType: !109)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2274, file: !57, line: 163, baseType: !2306, size: 32, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !607, line: 274, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !607, line: 274, size: 32, elements: !2308)
!2308 = !{!2309}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2307, file: !607, line: 274, baseType: !611, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2274, file: !57, line: 164, baseType: !2271, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2274, file: !57, line: 165, baseType: !2312, size: 128, offset: 256)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2260, line: 14, size: 128, elements: !2313)
!2313 = !{!2314}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2312, file: !2260, line: 15, baseType: !2315, size: 128)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1024, line: 26, size: 128, elements: !2316)
!2316 = !{!2317, !2321}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2315, file: !1024, line: 27, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1024, line: 12, size: 64, elements: !2319)
!2319 = !{!2320}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2318, file: !1024, line: 13, baseType: !1028, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2315, file: !1024, line: 28, baseType: !1028, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2274, file: !57, line: 166, baseType: !2323, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2264}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2274, file: !57, line: 167, baseType: !2264, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2256, file: !57, line: 123, baseType: !450, size: 8, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2256, file: !57, line: 124, baseType: !450, size: 8, offset: 456)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2256, file: !57, line: 125, baseType: !450, size: 8, offset: 464)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2256, file: !57, line: 126, baseType: !450, size: 8, offset: 472)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2240, file: !1739, line: 671, baseType: !2256, size: 512, offset: 1216)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2240, file: !1739, line: 679, baseType: !2333, size: 64, offset: 1728)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2146, file: !1739, line: 800, baseType: !2335, size: 64, offset: 5248)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1739, line: 800, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2146, file: !1739, line: 809, baseType: !2339, size: 64, offset: 5312)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1739, line: 70, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2146, file: !1739, line: 825, baseType: !2342, size: 2048, align: 512, offset: 5632)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1739, line: 509, size: 2048, align: 512, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2342, file: !1739, line: 511, baseType: !638, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2342, file: !1739, line: 512, baseType: !638, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2342, file: !1739, line: 513, baseType: !638, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2342, file: !1739, line: 514, baseType: !638, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2342, file: !1739, line: 515, baseType: !638, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2342, file: !1739, line: 516, baseType: !638, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2342, file: !1739, line: 518, baseType: !638, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2342, file: !1739, line: 519, baseType: !638, size: 64, offset: 448)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2342, file: !1739, line: 520, baseType: !855, size: 64, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2342, file: !1739, line: 522, baseType: !638, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2342, file: !1739, line: 523, baseType: !638, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2342, file: !1739, line: 524, baseType: !855, size: 64, offset: 704)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2342, file: !1739, line: 526, baseType: !855, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2342, file: !1739, line: 527, baseType: !638, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2342, file: !1739, line: 529, baseType: !638, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2342, file: !1739, line: 530, baseType: !638, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2342, file: !1739, line: 531, baseType: !638, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2342, file: !1739, line: 532, baseType: !638, size: 64, offset: 1088)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2342, file: !1739, line: 533, baseType: !638, size: 64, offset: 1152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2342, file: !1739, line: 535, baseType: !638, size: 64, offset: 1216)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2342, file: !1739, line: 536, baseType: !638, size: 64, offset: 1280)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2342, file: !1739, line: 537, baseType: !638, size: 64, offset: 1344)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2342, file: !1739, line: 538, baseType: !638, size: 64, offset: 1408)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2342, file: !1739, line: 539, baseType: !638, size: 64, offset: 1472)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2342, file: !1739, line: 540, baseType: !638, size: 64, offset: 1536)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2342, file: !1739, line: 541, baseType: !638, size: 64, offset: 1600)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2342, file: !1739, line: 542, baseType: !638, size: 64, offset: 1664)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2342, file: !1739, line: 543, baseType: !638, size: 64, offset: 1728)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2146, file: !1739, line: 833, baseType: !7, size: 32, offset: 7680)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2146, file: !1739, line: 836, baseType: !7, size: 32, offset: 7712)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2146, file: !1739, line: 837, baseType: !109, size: 32, offset: 7744)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2146, file: !1739, line: 838, baseType: !2376, size: 64, offset: 7808)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2379, line: 19, baseType: !2380)
!2379 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2379, line: 19, size: 64, elements: !2381)
!2381 = !{!2382}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2380, file: !2379, line: 19, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DISubrange(count: 1)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2146, file: !1739, line: 839, baseType: !2387, size: 64, offset: 7872)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2146, file: !1739, line: 840, baseType: !2378, size: 64, offset: 7936)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2146, file: !1739, line: 841, baseType: !194, size: 64, offset: 8000)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2146, file: !1739, line: 843, baseType: !460, size: 16, offset: 8064)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2146, file: !1739, line: 845, baseType: !460, size: 16, offset: 8080)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2146, file: !1739, line: 848, baseType: !109, size: 32, offset: 8096)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2146, file: !1739, line: 849, baseType: !2394, size: 32, offset: 8128)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1739, line: 718, size: 32, elements: !2395)
!2395 = !{!2396, !2403}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2394, file: !1739, line: 724, baseType: !2397, size: 32)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !1739, line: 719, size: 32, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2397, file: !1739, line: 720, baseType: !450, size: 8)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2397, file: !1739, line: 721, baseType: !450, size: 8, offset: 8)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2397, file: !1739, line: 722, baseType: !450, size: 8, offset: 16)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2397, file: !1739, line: 723, baseType: !450, size: 8, offset: 24)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2394, file: !1739, line: 725, baseType: !634, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2146, file: !1739, line: 850, baseType: !206, size: 128, offset: 8192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2146, file: !1739, line: 851, baseType: !2406, size: 64, offset: 8320)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1739, line: 60, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2146, file: !1739, line: 855, baseType: !356, size: 64, offset: 8384)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2146, file: !1739, line: 856, baseType: !450, size: 8, offset: 8448)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2146, file: !1739, line: 857, baseType: !450, size: 8, offset: 8456)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2146, file: !1739, line: 858, baseType: !109, size: 32, offset: 8480)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2146, file: !1739, line: 859, baseType: !206, size: 128, offset: 8512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2146, file: !1739, line: 860, baseType: !109, size: 32, offset: 8640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2146, file: !1739, line: 861, baseType: !206, size: 128, offset: 8704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2146, file: !1739, line: 873, baseType: !2416, size: 256, offset: 8832)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1739, line: 376, size: 256, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2416, file: !1739, line: 381, baseType: !356, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2416, file: !1739, line: 384, baseType: !273, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2416, file: !1739, line: 389, baseType: !273, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2416, file: !1739, line: 392, baseType: !273, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2146, file: !1739, line: 875, baseType: !206, size: 128, offset: 9088)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2146, file: !1739, line: 877, baseType: !2424, size: 320, offset: 9216)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2425, line: 86, size: 320, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2426 = !{!2427, !2428, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2424, file: !2425, line: 87, baseType: !109, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2424, file: !2425, line: 88, baseType: !206, size: 128, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2424, file: !2425, line: 89, baseType: !206, size: 128, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2146, file: !1739, line: 878, baseType: !1023, size: 192, align: 64, offset: 9536)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2146, file: !1739, line: 881, baseType: !1305, size: 64, offset: 9728)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2146, file: !1739, line: 882, baseType: !1305, size: 64, offset: 9792)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2146, file: !1739, line: 884, baseType: !109, size: 32, offset: 9856)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2146, file: !1739, line: 885, baseType: !109, size: 32, offset: 9888)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2146, file: !1739, line: 886, baseType: !109, size: 32, offset: 9920)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2146, file: !1739, line: 888, baseType: !109, size: 32, offset: 9952)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2146, file: !1739, line: 890, baseType: !356, size: 64, offset: 9984)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2146, file: !1739, line: 893, baseType: !7, size: 32, offset: 10048)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2146, file: !1739, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2146, file: !1739, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2146, file: !1739, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2146, file: !1739, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2146, file: !1739, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2146, file: !1739, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2146, file: !1739, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2146, file: !1739, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2146, file: !1739, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2146, file: !1739, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2146, file: !1739, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2146, file: !1739, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2146, file: !1739, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2146, file: !1739, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2146, file: !1739, line: 969, baseType: !356, size: 64, offset: 10176)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2146, file: !1739, line: 971, baseType: !2455, size: 448, offset: 10240)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2456)
!2456 = !{!2457, !2458, !2463}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2455, file: !62, line: 26, baseType: !356, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2455, file: !62, line: 27, baseType: !2459, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!250, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2455, file: !62, line: 28, baseType: !2464, size: 320, offset: 128)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2455, file: !62, line: 28, size: 320, elements: !2465)
!2465 = !{!2466, !2476, !2501}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2464, file: !62, line: 37, baseType: !2467, size: 320)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2464, file: !62, line: 30, size: 320, elements: !2468)
!2468 = !{!2469, !2471, !2472, !2473, !2474, !2475}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2467, file: !62, line: 31, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2467, file: !62, line: 32, baseType: !634, size: 32, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !62, line: 33, baseType: !634, size: 32, offset: 96)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2467, file: !62, line: 34, baseType: !634, size: 32, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2467, file: !62, line: 35, baseType: !638, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2467, file: !62, line: 36, baseType: !2470, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2464, file: !62, line: 47, baseType: !2477, size: 192)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2464, file: !62, line: 39, size: 192, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2500}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2477, file: !62, line: 40, baseType: !2303, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2477, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !62, line: 42, baseType: !2482, size: 64, offset: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !62, line: 42, size: 64, elements: !2483)
!2483 = !{!2484, !2492}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2482, file: !62, line: 43, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2487, line: 7, size: 128, elements: !2488)
!2487 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2488 = !{!2489, !2491}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2486, file: !2487, line: 8, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !242, line: 93, baseType: !257)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2486, file: !2487, line: 9, baseType: !257, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2482, file: !62, line: 44, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2495, line: 7, size: 64, elements: !2496)
!2495 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2496 = !{!2497, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2494, file: !2495, line: 8, baseType: !2498, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2495, line: 5, baseType: !1016)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2494, file: !2495, line: 9, baseType: !1016, size: 32, offset: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2477, file: !62, line: 46, baseType: !638, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2464, file: !62, line: 55, baseType: !2502, size: 256)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2464, file: !62, line: 49, size: 256, elements: !2503)
!2503 = !{!2504, !2507, !2508, !2509, !2510}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2502, file: !62, line: 50, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2502, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2502, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2502, file: !62, line: 53, baseType: !356, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2502, file: !62, line: 54, baseType: !356, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2146, file: !1739, line: 973, baseType: !2512, size: 32, offset: 10688)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !196, line: 27, baseType: !241)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2146, file: !1739, line: 974, baseType: !2512, size: 32, offset: 10720)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2146, file: !1739, line: 978, baseType: !356, size: 64, offset: 10752)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2146, file: !1739, line: 987, baseType: !2145, size: 64, offset: 10816)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2146, file: !1739, line: 990, baseType: !2145, size: 64, offset: 10880)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2146, file: !1739, line: 995, baseType: !206, size: 128, offset: 10944)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2146, file: !1739, line: 996, baseType: !206, size: 128, offset: 11072)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2146, file: !1739, line: 997, baseType: !2145, size: 64, offset: 11200)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2146, file: !1739, line: 1005, baseType: !206, size: 128, offset: 11264)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2146, file: !1739, line: 1006, baseType: !206, size: 128, offset: 11392)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2146, file: !1739, line: 1009, baseType: !944, size: 64, offset: 11520)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2146, file: !1739, line: 1010, baseType: !2524, size: 512, offset: 11584)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 512, elements: !338)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2146, file: !1739, line: 1011, baseType: !206, size: 128, offset: 12096)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2146, file: !1739, line: 1012, baseType: !206, size: 128, offset: 12224)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2146, file: !1739, line: 1014, baseType: !2528, size: 64, offset: 12352)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2146, file: !1739, line: 1017, baseType: !827, size: 64, offset: 12416)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2146, file: !1739, line: 1020, baseType: !827, size: 64, offset: 12480)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2146, file: !1739, line: 1023, baseType: !194, size: 64, offset: 12544)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2146, file: !1739, line: 1025, baseType: !638, size: 64, offset: 12608)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2146, file: !1739, line: 1026, baseType: !638, size: 64, offset: 12672)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2146, file: !1739, line: 1031, baseType: !638, size: 64, offset: 12736)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2146, file: !1739, line: 1032, baseType: !2536, size: 192, offset: 12800)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1739, line: 324, size: 192, elements: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2536, file: !1739, line: 326, baseType: !638, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2536, file: !1739, line: 327, baseType: !638, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2536, file: !1739, line: 328, baseType: !858, size: 32, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2146, file: !1739, line: 1041, baseType: !356, size: 64, offset: 12992)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2146, file: !1739, line: 1042, baseType: !356, size: 64, offset: 13056)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2146, file: !1739, line: 1045, baseType: !638, size: 64, offset: 13120)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2146, file: !1739, line: 1048, baseType: !638, size: 64, offset: 13184)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2146, file: !1739, line: 1051, baseType: !356, size: 64, offset: 13248)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2146, file: !1739, line: 1052, baseType: !356, size: 64, offset: 13312)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2146, file: !1739, line: 1055, baseType: !2548, size: 640, offset: 13376)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2549, line: 132, size: 640, elements: !2550)
!2549 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2550 = !{!2551, !2557, !2558}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2548, file: !2549, line: 133, baseType: !2552, size: 576)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2553, size: 576, elements: !491)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2549, line: 117, size: 192, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2553, file: !2549, line: 118, baseType: !638, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2553, file: !2549, line: 119, baseType: !2312, size: 128, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2548, file: !2549, line: 134, baseType: !7, size: 32, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2548, file: !2549, line: 135, baseType: !7, size: 32, offset: 608)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2146, file: !1739, line: 1058, baseType: !2560, size: 448, offset: 14016)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2549, line: 144, size: 448, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2560, file: !2549, line: 145, baseType: !903, size: 128, align: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2560, file: !2549, line: 146, baseType: !845, size: 256, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2560, file: !2549, line: 147, baseType: !7, size: 32, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2146, file: !1739, line: 1064, baseType: !981, size: 64, offset: 14464)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2146, file: !1739, line: 1067, baseType: !981, size: 64, offset: 14528)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2146, file: !1739, line: 1070, baseType: !981, size: 64, offset: 14592)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2146, file: !1739, line: 1074, baseType: !1008, size: 64, offset: 14656)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2146, file: !1739, line: 1084, baseType: !377, size: 128, offset: 14720)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2146, file: !1739, line: 1086, baseType: !2571, size: 64, offset: 14848)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1739, line: 55, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2146, file: !1739, line: 1089, baseType: !2574, size: 64, offset: 14912)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2575, line: 12, size: 64, elements: !2576)
!2575 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2574, file: !2575, line: 13, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2575, line: 8, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2146, file: !1739, line: 1090, baseType: !2581, size: 128, offset: 14976)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2582, line: 13, size: 128, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2581, file: !2582, line: 14, baseType: !206, size: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2146, file: !1739, line: 1097, baseType: !2586, size: 64, offset: 15104)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1739, line: 50, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2146, file: !1739, line: 1100, baseType: !2589, size: 64, offset: 15168)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1739, line: 1100, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2146, file: !1739, line: 1103, baseType: !2592, size: 64, offset: 15232)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1739, line: 53, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2146, file: !1739, line: 1107, baseType: !2595, size: 64, offset: 15296)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1739, line: 56, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2146, file: !1739, line: 1110, baseType: !2598, size: 64, offset: 15360)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2600, line: 93, size: 8768, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2651, !2660, !2661, !2663, !2664, !2665, !2668, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2706, !2707, !2714, !2724, !2727, !2728, !2731, !2732, !2733, !2734, !2735, !2736}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2599, file: !2600, line: 94, baseType: !948, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2599, file: !2600, line: 95, baseType: !442, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2599, file: !2600, line: 96, baseType: !109, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2599, file: !2600, line: 97, baseType: !109, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2599, file: !2600, line: 98, baseType: !206, size: 128, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2599, file: !2600, line: 100, baseType: !959, size: 192, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2599, file: !2600, line: 103, baseType: !2145, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2599, file: !2600, line: 106, baseType: !2610, size: 192, offset: 512)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1178, line: 32, size: 192, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2610, file: !1178, line: 33, baseType: !206, size: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2610, file: !1178, line: 34, baseType: !2614, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2615, line: 25, baseType: !2616)
!2615 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2615, line: 23, size: 64, elements: !2617)
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2616, file: !2615, line: 24, baseType: !2383, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2599, file: !2600, line: 109, baseType: !752, size: 64, offset: 704)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2599, file: !2600, line: 112, baseType: !109, size: 32, offset: 768)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2599, file: !2600, line: 114, baseType: !109, size: 32, offset: 800)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2599, file: !2600, line: 115, baseType: !2145, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2599, file: !2600, line: 118, baseType: !109, size: 32, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !2600, line: 119, baseType: !7, size: 32, offset: 928)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2599, file: !2600, line: 121, baseType: !2626, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2600, line: 80, size: 448, elements: !2628)
!2628 = !{!2629, !2630, !2636}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2627, file: !2600, line: 81, baseType: !442, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2627, file: !2600, line: 82, baseType: !2631, size: 128, offset: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2600, line: 75, size: 128, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2631, file: !2600, line: 76, baseType: !2145, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2631, file: !2600, line: 77, baseType: !2635, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2627, file: !2600, line: 83, baseType: !1651, size: 256, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2599, file: !2600, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2599, file: !2600, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2599, file: !2600, line: 138, baseType: !7, size: 32, offset: 1056)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2599, file: !2600, line: 139, baseType: !206, size: 128, offset: 1088)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2599, file: !2600, line: 142, baseType: !2256, size: 512, offset: 1216)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2599, file: !2600, line: 143, baseType: !2264, size: 64, offset: 1728)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2599, file: !2600, line: 150, baseType: !2644, size: 256, offset: 1792)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 256, elements: !2649)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2600, line: 38, size: 128, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2645, file: !2600, line: 39, baseType: !638, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2645, file: !2600, line: 40, baseType: !638, size: 64, offset: 64)
!2649 = !{!2650}
!2650 = !DISubrange(count: 2)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2599, file: !2600, line: 156, baseType: !2652, size: 192, offset: 2048)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2600, line: 66, size: 192, elements: !2653)
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2652, file: !2600, line: 67, baseType: !2655, size: 192)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2600, line: 47, size: 192, elements: !2656)
!2656 = !{!2657, !2658, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2655, file: !2600, line: 48, baseType: !851, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2655, file: !2600, line: 49, baseType: !851, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2655, file: !2600, line: 50, baseType: !851, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2599, file: !2600, line: 160, baseType: !2548, size: 640, offset: 2240)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2599, file: !2600, line: 163, baseType: !2662, size: 256, offset: 2880)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 256, elements: !338)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2599, file: !2600, line: 169, baseType: !944, size: 64, offset: 3136)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2599, file: !2600, line: 172, baseType: !109, size: 32, offset: 3200)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2599, file: !2600, line: 174, baseType: !2666, size: 64, offset: 3264)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2600, line: 174, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2599, file: !2600, line: 185, baseType: !2669, size: 64, offset: 3328)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !607, line: 860, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !607, line: 853, size: 64, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2670, file: !607, line: 858, baseType: !606, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2670, file: !607, line: 859, baseType: !422, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2599, file: !2600, line: 186, baseType: !638, size: 64, offset: 3392)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2599, file: !2600, line: 186, baseType: !638, size: 64, offset: 3456)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2599, file: !2600, line: 186, baseType: !638, size: 64, offset: 3520)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2599, file: !2600, line: 186, baseType: !638, size: 64, offset: 3584)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2599, file: !2600, line: 187, baseType: !638, size: 64, offset: 3648)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2599, file: !2600, line: 188, baseType: !638, size: 64, offset: 3712)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2599, file: !2600, line: 189, baseType: !2536, size: 192, offset: 3776)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2599, file: !2600, line: 190, baseType: !356, size: 64, offset: 3968)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2599, file: !2600, line: 190, baseType: !356, size: 64, offset: 4032)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2599, file: !2600, line: 190, baseType: !356, size: 64, offset: 4096)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2599, file: !2600, line: 190, baseType: !356, size: 64, offset: 4160)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2599, file: !2600, line: 191, baseType: !356, size: 64, offset: 4224)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2599, file: !2600, line: 191, baseType: !356, size: 64, offset: 4288)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2599, file: !2600, line: 191, baseType: !356, size: 64, offset: 4352)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2599, file: !2600, line: 191, baseType: !356, size: 64, offset: 4416)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2599, file: !2600, line: 192, baseType: !356, size: 64, offset: 4480)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2599, file: !2600, line: 192, baseType: !356, size: 64, offset: 4544)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2599, file: !2600, line: 192, baseType: !356, size: 64, offset: 4608)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2599, file: !2600, line: 192, baseType: !356, size: 64, offset: 4672)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2599, file: !2600, line: 193, baseType: !356, size: 64, offset: 4736)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2599, file: !2600, line: 193, baseType: !356, size: 64, offset: 4800)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2599, file: !2600, line: 194, baseType: !2696, size: 448, offset: 4864)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2697, line: 12, size: 448, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2696, file: !2697, line: 15, baseType: !638, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2696, file: !2697, line: 17, baseType: !638, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2696, file: !2697, line: 19, baseType: !638, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2696, file: !2697, line: 21, baseType: !638, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2696, file: !2697, line: 29, baseType: !638, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2696, file: !2697, line: 35, baseType: !638, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2696, file: !2697, line: 44, baseType: !638, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2599, file: !2600, line: 202, baseType: !273, size: 64, offset: 5312)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2599, file: !2600, line: 213, baseType: !2708, size: 2048, offset: 5376)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 2048, elements: !378)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2710, line: 43, size: 128, elements: !2711)
!2710 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2711 = !{!2712, !2713}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2709, file: !2710, line: 44, baseType: !535, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2709, file: !2710, line: 45, baseType: !535, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2599, file: !2600, line: 216, baseType: !2715, size: 448, offset: 7424)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2600, line: 30, size: 448, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2715, file: !2600, line: 31, baseType: !109, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2715, file: !2600, line: 32, baseType: !250, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2715, file: !2600, line: 33, baseType: !356, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2715, file: !2600, line: 34, baseType: !638, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2715, file: !2600, line: 34, baseType: !638, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2715, file: !2600, line: 35, baseType: !356, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2715, file: !2600, line: 35, baseType: !356, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2599, file: !2600, line: 219, baseType: !2725, size: 64, offset: 7872)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2600, line: 219, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2599, file: !2600, line: 222, baseType: !7, size: 32, offset: 7936)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2599, file: !2600, line: 223, baseType: !2729, size: 64, offset: 8000)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2600, line: 223, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2599, file: !2600, line: 230, baseType: !1090, size: 8, offset: 8064)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2599, file: !2600, line: 231, baseType: !1059, size: 16, offset: 8080)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2599, file: !2600, line: 232, baseType: !1059, size: 16, offset: 8096)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2599, file: !2600, line: 234, baseType: !1305, size: 64, offset: 8128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2599, file: !2600, line: 237, baseType: !845, size: 256, offset: 8192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2599, file: !2600, line: 243, baseType: !1031, size: 320, offset: 8448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2146, file: !1739, line: 1111, baseType: !2738, size: 64, offset: 15424)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2600, line: 20, size: 16640, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2739, file: !2600, line: 21, baseType: !422, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2739, file: !2600, line: 22, baseType: !948, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2739, file: !2600, line: 23, baseType: !959, size: 192, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2739, file: !2600, line: 24, baseType: !2745, size: 16384, offset: 256)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2746, size: 16384, elements: !268)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1178, line: 51, size: 256, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2746, file: !1178, line: 52, baseType: !2749, size: 256)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1178, line: 37, size: 256, elements: !2750)
!2750 = !{!2751, !2758, !2759, !2765}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2749, file: !1178, line: 39, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2753, line: 83, baseType: !2754)
!2753 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2753, line: 82, baseType: !2756)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !109}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2749, file: !1178, line: 40, baseType: !356, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2749, file: !1178, line: 46, baseType: !2760, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2753, line: 86, baseType: !2761)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2753, line: 85, baseType: !2763)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2749, file: !1178, line: 48, baseType: !2614, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2146, file: !1739, line: 1112, baseType: !2614, size: 64, offset: 15488)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2146, file: !1739, line: 1113, baseType: !2614, size: 64, offset: 15552)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2146, file: !1739, line: 1115, baseType: !2614, size: 64, offset: 15616)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2146, file: !1739, line: 1116, baseType: !2610, size: 192, offset: 15680)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2146, file: !1739, line: 1117, baseType: !356, size: 64, offset: 15872)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2146, file: !1739, line: 1118, baseType: !533, size: 64, offset: 15936)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2146, file: !1739, line: 1119, baseType: !7, size: 32, offset: 16000)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2146, file: !1739, line: 1121, baseType: !906, size: 64, offset: 16064)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2146, file: !1739, line: 1125, baseType: !2775, size: 64, offset: 16128)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1739, line: 43, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2146, file: !1739, line: 1127, baseType: !571, size: 32, offset: 16192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2146, file: !1739, line: 1128, baseType: !7, size: 32, offset: 16224)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2146, file: !1739, line: 1130, baseType: !2780, size: 128, offset: 16256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2781, line: 37, size: 128, elements: !2782)
!2781 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2782 = !{!2783, !2784, !2785}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2780, file: !2781, line: 38, baseType: !109, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2780, file: !2781, line: 39, baseType: !442, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2780, file: !2781, line: 40, baseType: !2786, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2781, line: 24, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2146, file: !1739, line: 1131, baseType: !2789, size: 256, offset: 16384)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2790, line: 12, size: 256, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2789, file: !2790, line: 13, baseType: !490, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2789, file: !2790, line: 14, baseType: !356, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2789, file: !2790, line: 15, baseType: !356, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2789, file: !2790, line: 16, baseType: !1090, size: 8, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2146, file: !1739, line: 1134, baseType: !638, size: 64, offset: 16640)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2146, file: !1739, line: 1135, baseType: !638, size: 64, offset: 16704)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2146, file: !1739, line: 1138, baseType: !422, size: 32, offset: 16768)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2146, file: !1739, line: 1141, baseType: !858, size: 32, offset: 16800)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2146, file: !1739, line: 1143, baseType: !2801, size: 64, offset: 16832)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1739, line: 735, size: 64, elements: !2802)
!2802 = !{!2803}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2801, file: !1739, line: 736, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2146, file: !1739, line: 1147, baseType: !2315, size: 128, offset: 16896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2146, file: !1739, line: 1149, baseType: !2145, size: 64, offset: 17024)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2146, file: !1739, line: 1151, baseType: !2808, size: 64, offset: 17088)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1739, line: 1151, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2146, file: !1739, line: 1188, baseType: !194, size: 64, offset: 17152)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2146, file: !1739, line: 1191, baseType: !2812, size: 64, offset: 17216)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1739, line: 44, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2146, file: !1739, line: 1194, baseType: !2815, size: 64, offset: 17280)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1739, line: 45, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2146, file: !1739, line: 1197, baseType: !2818, size: 64, offset: 17344)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1739, line: 61, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2146, file: !1739, line: 1199, baseType: !2821, size: 64, offset: 17408)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2823, line: 99, size: 128, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2824 = !{!2825, !2826, !2827}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2822, file: !2823, line: 100, baseType: !849, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2822, file: !2823, line: 101, baseType: !442, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2822, file: !2823, line: 103, baseType: !460, size: 16, offset: 96)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2146, file: !1739, line: 1202, baseType: !2829, size: 64, offset: 17472)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1739, line: 48, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2146, file: !1739, line: 1205, baseType: !356, size: 64, offset: 17536)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2146, file: !1739, line: 1206, baseType: !2833, size: 64, offset: 17600)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1178, line: 14, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1178, line: 12, size: 384, elements: !2836)
!2836 = !{!2837}
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2835, file: !1178, line: 13, baseType: !2838, size: 384)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !1178, line: 13, size: 384, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2838, file: !1178, line: 13, baseType: !109, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2838, file: !1178, line: 13, baseType: !109, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2838, file: !1178, line: 13, baseType: !109, size: 32, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2838, file: !1178, line: 13, baseType: !2844, size: 256, offset: 128)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2845, line: 37, size: 256, elements: !2846)
!2845 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2846 = !{!2847, !2852, !2865, !2871, !2880, !2907, !2912}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2844, file: !2845, line: 42, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 39, size: 64, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2848, file: !2845, line: 40, baseType: !241, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2848, file: !2845, line: 41, baseType: !577, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2844, file: !2845, line: 50, baseType: !2853, size: 192)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 45, size: 192, elements: !2854)
!2854 = !{!2855, !2857, !2858, !2864}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2853, file: !2845, line: 46, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !242, line: 95, baseType: !109)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2853, file: !2845, line: 47, baseType: !109, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2853, file: !2845, line: 48, baseType: !2859, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2845, line: 11, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2845, line: 8, size: 64, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2860, file: !2845, line: 9, baseType: !109, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2860, file: !2845, line: 10, baseType: !194, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2853, file: !2845, line: 49, baseType: !109, size: 32, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2844, file: !2845, line: 57, baseType: !2866, size: 128)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 53, size: 128, elements: !2867)
!2867 = !{!2868, !2869, !2870}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2866, file: !2845, line: 54, baseType: !241, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2866, file: !2845, line: 55, baseType: !577, size: 32, offset: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2866, file: !2845, line: 56, baseType: !2859, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2844, file: !2845, line: 66, baseType: !2872, size: 256)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 60, size: 256, elements: !2873)
!2873 = !{!2874, !2875, !2876, !2877, !2879}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2872, file: !2845, line: 61, baseType: !241, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2872, file: !2845, line: 62, baseType: !577, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2872, file: !2845, line: 63, baseType: !109, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2872, file: !2845, line: 64, baseType: !2878, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !242, line: 94, baseType: !522)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2872, file: !2845, line: 65, baseType: !2878, size: 64, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2844, file: !2845, line: 105, baseType: !2881, size: 256)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 69, size: 256, elements: !2882)
!2882 = !{!2883, !2884}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2881, file: !2845, line: 70, baseType: !194, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2845, line: 79, baseType: !2885, size: 192, offset: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2845, line: 79, size: 192, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2896, !2901}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2885, file: !2845, line: 81, baseType: !109, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2885, file: !2845, line: 86, baseType: !1059, size: 16)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2885, file: !2845, line: 92, baseType: !2890, size: 192)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2845, line: 88, size: 192, elements: !2891)
!2891 = !{!2892, !2894, !2895}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2890, file: !2845, line: 89, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !2299)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2890, file: !2845, line: 90, baseType: !194, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2890, file: !2845, line: 91, baseType: !194, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2885, file: !2845, line: 97, baseType: !2897, size: 96)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2845, line: 94, size: 96, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2897, file: !2845, line: 95, baseType: !2893, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2897, file: !2845, line: 96, baseType: !635, size: 32, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2885, file: !2845, line: 103, baseType: !2902, size: 128)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2845, line: 99, size: 128, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2902, file: !2845, line: 100, baseType: !356, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2902, file: !2845, line: 101, baseType: !635, size: 32, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2902, file: !2845, line: 102, baseType: !635, size: 32, offset: 96)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2844, file: !2845, line: 111, baseType: !2908, size: 128)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 108, size: 128, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2908, file: !2845, line: 109, baseType: !250, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2908, file: !2845, line: 110, baseType: !109, size: 32, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2844, file: !2845, line: 118, baseType: !2913, size: 128)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !2845, line: 114, size: 128, elements: !2914)
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2913, file: !2845, line: 115, baseType: !194, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2913, file: !2845, line: 116, baseType: !109, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2913, file: !2845, line: 117, baseType: !7, size: 32, offset: 96)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2146, file: !1739, line: 1208, baseType: !2696, size: 448, offset: 17664)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2146, file: !1739, line: 1215, baseType: !638, size: 64, offset: 18112)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2146, file: !1739, line: 1217, baseType: !638, size: 64, offset: 18176)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2146, file: !1739, line: 1219, baseType: !638, size: 64, offset: 18240)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2146, file: !1739, line: 1223, baseType: !2923, size: 64, offset: 18304)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2924, line: 99, baseType: !2925)
!2924 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2924, line: 99, size: 64, elements: !2926)
!2926 = !{!2927}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2925, file: !2924, line: 99, baseType: !2383, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2146, file: !1739, line: 1225, baseType: !606, size: 32, offset: 18368)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2146, file: !1739, line: 1226, baseType: !109, size: 32, offset: 18400)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2146, file: !1739, line: 1227, baseType: !109, size: 32, offset: 18432)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2146, file: !1739, line: 1231, baseType: !2932, size: 64, offset: 18496)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1739, line: 1231, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2146, file: !1739, line: 1233, baseType: !206, size: 128, offset: 18560)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2146, file: !1739, line: 1240, baseType: !2936, size: 64, offset: 18688)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1739, line: 62, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2146, file: !1739, line: 1242, baseType: !2939, size: 64, offset: 18752)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1739, line: 1242, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2146, file: !1739, line: 1244, baseType: !206, size: 128, offset: 18816)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2146, file: !1739, line: 1245, baseType: !2943, size: 64, offset: 18944)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1739, line: 51, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2146, file: !1739, line: 1246, baseType: !845, size: 256, offset: 19008)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2146, file: !1739, line: 1247, baseType: !7, size: 32, offset: 19264)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2146, file: !1739, line: 1250, baseType: !2948, size: 64, offset: 19328)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1739, line: 57, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2146, file: !1739, line: 1251, baseType: !845, size: 256, offset: 19392)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2146, file: !1739, line: 1252, baseType: !206, size: 128, offset: 19648)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2146, file: !1739, line: 1259, baseType: !1737, size: 64, offset: 19776)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2146, file: !1739, line: 1260, baseType: !1059, size: 16, offset: 19840)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2146, file: !1739, line: 1261, baseType: !1059, size: 16, offset: 19856)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2146, file: !1739, line: 1314, baseType: !2956, size: 64, offset: 19904)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2958, line: 62, size: 256, align: 256, elements: !2959)
!2958 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2957, file: !2958, line: 75, baseType: !635, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2957, file: !2958, line: 90, baseType: !635, size: 32, offset: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2957, file: !2958, line: 112, baseType: !271, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2957, file: !2958, line: 132, baseType: !635, size: 32, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2957, file: !2958, line: 140, baseType: !635, size: 32, offset: 160)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2957, file: !2958, line: 149, baseType: !635, size: 32, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2957, file: !2958, line: 154, baseType: !2967, offset: 224)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, elements: !974)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2146, file: !1739, line: 1315, baseType: !634, size: 32, offset: 19968)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2146, file: !1739, line: 1316, baseType: !634, size: 32, offset: 20000)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2146, file: !1739, line: 1321, baseType: !356, size: 64, offset: 20032)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2146, file: !1739, line: 1325, baseType: !109, size: 32, offset: 20096)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2146, file: !1739, line: 1326, baseType: !109, size: 32, offset: 20128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2146, file: !1739, line: 1327, baseType: !109, size: 32, offset: 20160)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2146, file: !1739, line: 1328, baseType: !109, size: 32, offset: 20192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2146, file: !1739, line: 1329, baseType: !903, size: 128, align: 64, offset: 20224)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2146, file: !1739, line: 1332, baseType: !2977, size: 128, offset: 20352)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2978, line: 51, size: 128, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2979 = !{!2980, !2985, !2986}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2977, file: !2978, line: 60, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2982, line: 7, size: 64, elements: !2983)
!2982 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2983 = !{!2984}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2981, file: !2982, line: 12, baseType: !2380, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2977, file: !2978, line: 63, baseType: !1090, size: 8, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2977, file: !2978, line: 70, baseType: !1090, size: 8, offset: 72)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2146, file: !1739, line: 1335, baseType: !1790, size: 64, offset: 20480)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2146, file: !1739, line: 1337, baseType: !2989, size: 128, offset: 20544)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2978, line: 39, size: 128, elements: !2990)
!2990 = !{!2991, !2992, !2993}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2989, file: !2978, line: 40, baseType: !1566, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2989, file: !2978, line: 42, baseType: !635, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2989, file: !2978, line: 43, baseType: !635, size: 32, offset: 96)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2146, file: !1739, line: 1340, baseType: !2995, size: 64, offset: 20672)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1739, line: 69, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2146, file: !1739, line: 1351, baseType: !109, size: 32, offset: 20736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2146, file: !1739, line: 1352, baseType: !109, size: 32, offset: 20768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2146, file: !1739, line: 1354, baseType: !356, size: 64, offset: 20800)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2146, file: !1739, line: 1364, baseType: !638, size: 64, offset: 20864)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2146, file: !1739, line: 1365, baseType: !638, size: 64, offset: 20928)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2146, file: !1739, line: 1412, baseType: !356, size: 64, offset: 20992)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2146, file: !1739, line: 1453, baseType: !3004, size: 64, offset: 21056)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1739, line: 1453, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2146, file: !1739, line: 1457, baseType: !3007, size: 64, offset: 21120)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3009)
!3009 = !{!3010, !3011, !3030, !3033, !3034, !3067, !3077}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !68, line: 62, baseType: !67, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !68, line: 64, baseType: !3012, size: 192, offset: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3008, file: !68, line: 64, size: 192, elements: !3013)
!3013 = !{!3014, !3025}
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !3012, file: !68, line: 65, baseType: !3015, size: 192)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !68, line: 65, size: 192, elements: !3016)
!3016 = !{!3017, !3024}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3015, file: !68, line: 66, baseType: !3018, size: 128)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3019, line: 50, size: 128, elements: !3020)
!3019 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3020 = !{!3021, !3022, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3018, file: !3019, line: 52, baseType: !356, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3018, file: !3019, line: 54, baseType: !7, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3018, file: !3019, line: 55, baseType: !7, size: 32, offset: 96)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3015, file: !68, line: 67, baseType: !356, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, scope: !3012, file: !68, line: 70, baseType: !3026, size: 192)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3012, file: !68, line: 70, size: 192, elements: !3027)
!3027 = !{!3028, !3029}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3026, file: !68, line: 71, baseType: !903, size: 128, align: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3026, file: !68, line: 72, baseType: !356, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3008, file: !68, line: 76, baseType: !3031, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3008, file: !68, line: 77, baseType: !356, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3008, file: !68, line: 79, baseType: !3035, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3019, line: 25, size: 256, elements: !3037)
!3037 = !{!3038, !3044, !3048}
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !3036, file: !3019, line: 26, baseType: !3039, size: 128)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3036, file: !3019, line: 26, size: 128, elements: !3040)
!3040 = !{!3041, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3039, file: !3019, line: 27, baseType: !3042, size: 128)
!3042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 128, elements: !378)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3039, file: !3019, line: 28, baseType: !3042, size: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3036, file: !3019, line: 31, baseType: !3045, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3047)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3019, line: 23, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !3036, file: !3019, line: 33, baseType: !3049, size: 64, offset: 192)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3036, file: !3019, line: 33, size: 64, elements: !3050)
!3050 = !{!3051, !3057, !3062}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3049, file: !3019, line: 38, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3019, line: 34, size: 64, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3052, file: !3019, line: 35, baseType: !1016, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3052, file: !3019, line: 36, baseType: !450, size: 8, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3052, file: !3019, line: 37, baseType: !450, size: 8, offset: 40)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3049, file: !3019, line: 42, baseType: !3058, size: 16)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3019, line: 39, size: 16, elements: !3059)
!3059 = !{!3060, !3061}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3058, file: !3019, line: 40, baseType: !450, size: 8)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3058, file: !3019, line: 41, baseType: !450, size: 8, offset: 8)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3049, file: !3019, line: 46, baseType: !3063, size: 16)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !3019, line: 43, size: 16, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3063, file: !3019, line: 44, baseType: !450, size: 8)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3063, file: !3019, line: 45, baseType: !450, size: 8, offset: 8)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3008, file: !68, line: 81, baseType: !3068, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3069, file: !68, line: 86, baseType: !3031, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3069, file: !68, line: 87, baseType: !356, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3069, file: !68, line: 88, baseType: !356, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3069, file: !68, line: 89, baseType: !356, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3069, file: !68, line: 90, baseType: !1090, size: 8, offset: 256)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3069, file: !68, line: 92, baseType: !3068, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3008, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2146, file: !1739, line: 1463, baseType: !3079, offset: 21184)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1739, line: 739, elements: !764)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2146, file: !1739, line: 1470, baseType: !903, size: 128, align: 64, offset: 21184)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2146, file: !1739, line: 1471, baseType: !948, size: 32, offset: 21312)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2146, file: !1739, line: 1472, baseType: !109, size: 32, offset: 21344)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2146, file: !1739, line: 1474, baseType: !2145, size: 64, offset: 21376)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2146, file: !1739, line: 1475, baseType: !3085, size: 320, offset: 21440)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3086, line: 11, size: 320, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3087 = !{!3088, !3089, !3090, !3095}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3085, file: !3086, line: 16, baseType: !756, size: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3085, file: !3086, line: 17, baseType: !356, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3085, file: !3086, line: 18, baseType: !3091, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3094}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3085, file: !3086, line: 19, baseType: !634, size: 32, offset: 256)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2146, file: !1739, line: 1478, baseType: !3097, size: 64, offset: 21760)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1739, line: 1478, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2146, file: !1739, line: 1482, baseType: !948, size: 32, offset: 21824)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2146, file: !1739, line: 1489, baseType: !194, size: 64, offset: 21888)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2146, file: !1739, line: 1504, baseType: !194, size: 64, offset: 21952)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2146, file: !1739, line: 1505, baseType: !271, size: 64, offset: 22016)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2146, file: !1739, line: 1506, baseType: !638, size: 64, offset: 22080)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2146, file: !1739, line: 1507, baseType: !271, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2146, file: !1739, line: 1508, baseType: !271, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2146, file: !1739, line: 1509, baseType: !271, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2146, file: !1739, line: 1510, baseType: !903, size: 128, align: 64, offset: 22208)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2146, file: !1739, line: 1511, baseType: !109, size: 32, offset: 22336)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2146, file: !1739, line: 1515, baseType: !3110, size: 64, offset: 22400)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !898, line: 56, size: 64, elements: !3111)
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3110, file: !898, line: 57, baseType: !901, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2146, file: !1739, line: 1518, baseType: !3110, size: 64, offset: 22464)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2146, file: !1739, line: 1528, baseType: !903, size: 128, align: 64, offset: 22528)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2146, file: !1739, line: 1552, baseType: !3116, size: 35328, offset: 23040)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3117, line: 430, size: 35328, elements: !3118)
!3117 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3118 = !{!3119, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3148, !3149, !3150, !3151, !3152, !3153, !3156, !3157, !3158, !3159}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3116, file: !3117, line: 432, baseType: !3120, size: 192)
!3120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3121, size: 192, elements: !491)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3122, line: 16, size: 64, elements: !3123)
!3122 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3121, file: !3122, line: 17, baseType: !458, size: 16)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3121, file: !3122, line: 18, baseType: !458, size: 16, offset: 16)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3121, file: !3122, line: 19, baseType: !458, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3121, file: !3122, line: 19, baseType: !458, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3121, file: !3122, line: 19, baseType: !458, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3121, file: !3122, line: 19, baseType: !458, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3121, file: !3122, line: 19, baseType: !458, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3121, file: !3122, line: 20, baseType: !458, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3121, file: !3122, line: 20, baseType: !458, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3121, file: !3122, line: 20, baseType: !458, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3121, file: !3122, line: 20, baseType: !458, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3121, file: !3122, line: 20, baseType: !458, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3121, file: !3122, line: 20, baseType: !458, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3116, file: !3117, line: 436, baseType: !356, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3116, file: !3117, line: 440, baseType: !460, size: 16, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3116, file: !3117, line: 441, baseType: !460, size: 16, offset: 272)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3116, file: !3117, line: 442, baseType: !460, size: 16, offset: 288)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3116, file: !3117, line: 443, baseType: !460, size: 16, offset: 304)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3116, file: !3117, line: 447, baseType: !356, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3116, file: !3117, line: 448, baseType: !356, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3116, file: !3117, line: 459, baseType: !3145, size: 256, offset: 448)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3146, size: 256, elements: !338)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3117, line: 428, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3116, file: !3117, line: 461, baseType: !356, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3116, file: !3117, line: 463, baseType: !356, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3116, file: !3117, line: 465, baseType: !356, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3116, file: !3117, line: 466, baseType: !356, size: 64, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3116, file: !3117, line: 467, baseType: !356, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3116, file: !3117, line: 473, baseType: !3154, size: 64, offset: 1024)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3117, line: 10, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3116, file: !3117, line: 480, baseType: !356, size: 64, offset: 1088)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3116, file: !3117, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3116, file: !3117, line: 491, baseType: !634, size: 32, offset: 1184)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3116, file: !3117, line: 501, baseType: !3160, size: 33792, offset: 1536)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3161, line: 448, size: 33792, elements: !3162)
!3161 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3162 = !{!3163, !3164, !3165, !3327, !3328, !3334, !3335}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3160, file: !3161, line: 461, baseType: !7, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3160, file: !3161, line: 468, baseType: !356, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3160, file: !3161, line: 476, baseType: !3166, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3161, line: 356, size: 33280, align: 512, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3167, file: !3161, line: 358, baseType: !7, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3167, file: !3161, line: 361, baseType: !7, size: 32, offset: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3167, file: !3161, line: 364, baseType: !638, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3167, file: !3161, line: 367, baseType: !638, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3167, file: !3161, line: 370, baseType: !638, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3167, file: !3161, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3167, file: !3161, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3167, file: !3161, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3167, file: !3161, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3167, file: !3161, line: 397, baseType: !3179, size: 32768, offset: 512)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3161, line: 348, size: 32768, elements: !3180)
!3180 = !{!3181, !3196, !3233, !3310, !3323}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3179, file: !3161, line: 349, baseType: !3182, size: 896)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3161, line: 12, size: 896, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3195}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3182, file: !3161, line: 13, baseType: !634, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3182, file: !3161, line: 14, baseType: !634, size: 32, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3182, file: !3161, line: 15, baseType: !634, size: 32, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3182, file: !3161, line: 16, baseType: !634, size: 32, offset: 96)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3182, file: !3161, line: 17, baseType: !634, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3182, file: !3161, line: 18, baseType: !634, size: 32, offset: 160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3182, file: !3161, line: 19, baseType: !634, size: 32, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3182, file: !3161, line: 22, baseType: !3192, size: 640, offset: 224)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 640, elements: !3193)
!3193 = !{!3194}
!3194 = !DISubrange(count: 20)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3182, file: !3161, line: 25, baseType: !634, size: 32, offset: 864)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3179, file: !3161, line: 350, baseType: !3197, size: 4096, align: 128)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3161, line: 34, size: 4096, align: 128, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3218, !3219, !3220, !3222, !3224, !3228}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3197, file: !3161, line: 35, baseType: !458, size: 16)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3197, file: !3161, line: 36, baseType: !458, size: 16, offset: 16)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3197, file: !3161, line: 37, baseType: !458, size: 16, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3197, file: !3161, line: 38, baseType: !458, size: 16, offset: 48)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !3161, line: 39, baseType: !3204, size: 128, offset: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !3161, line: 39, size: 128, elements: !3205)
!3205 = !{!3206, !3211}
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !3161, line: 40, baseType: !3207, size: 128)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !3161, line: 40, size: 128, elements: !3208)
!3208 = !{!3209, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3207, file: !3161, line: 41, baseType: !638, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3207, file: !3161, line: 42, baseType: !638, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !3161, line: 44, baseType: !3212, size: 128)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !3161, line: 44, size: 128, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3212, file: !3161, line: 45, baseType: !634, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3212, file: !3161, line: 46, baseType: !634, size: 32, offset: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3212, file: !3161, line: 47, baseType: !634, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3212, file: !3161, line: 48, baseType: !634, size: 32, offset: 96)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3197, file: !3161, line: 51, baseType: !634, size: 32, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3197, file: !3161, line: 52, baseType: !634, size: 32, offset: 224)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3197, file: !3161, line: 55, baseType: !3221, size: 1024, offset: 256)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 1024, elements: !383)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3197, file: !3161, line: 58, baseType: !3223, size: 2048, offset: 1280)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 2048, elements: !268)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3197, file: !3161, line: 60, baseType: !3225, size: 384, offset: 3328)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 384, elements: !3226)
!3226 = !{!3227}
!3227 = !DISubrange(count: 12)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !3161, line: 62, baseType: !3229, size: 384, offset: 3712)
!3229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !3161, line: 62, size: 384, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3229, file: !3161, line: 63, baseType: !3225, size: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3229, file: !3161, line: 64, baseType: !3225, size: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3179, file: !3161, line: 351, baseType: !3234, size: 1088)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3161, line: 79, size: 1088, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3309}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3234, file: !3161, line: 80, baseType: !634, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3234, file: !3161, line: 81, baseType: !634, size: 32, offset: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3234, file: !3161, line: 82, baseType: !634, size: 32, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3234, file: !3161, line: 83, baseType: !634, size: 32, offset: 96)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3234, file: !3161, line: 84, baseType: !634, size: 32, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3234, file: !3161, line: 85, baseType: !634, size: 32, offset: 160)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3234, file: !3161, line: 86, baseType: !634, size: 32, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3234, file: !3161, line: 88, baseType: !3192, size: 640, offset: 224)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3234, file: !3161, line: 89, baseType: !450, size: 8, offset: 864)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3234, file: !3161, line: 90, baseType: !450, size: 8, offset: 872)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3234, file: !3161, line: 91, baseType: !450, size: 8, offset: 880)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3234, file: !3161, line: 92, baseType: !450, size: 8, offset: 888)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3234, file: !3161, line: 93, baseType: !450, size: 8, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3234, file: !3161, line: 94, baseType: !450, size: 8, offset: 904)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3234, file: !3161, line: 95, baseType: !3251, size: 64, offset: 960)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3253, line: 11, size: 128, elements: !3254)
!3253 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3252, file: !3253, line: 12, baseType: !250, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3252, file: !3253, line: 13, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3259, line: 103, size: 1344, elements: !3260)
!3259 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3289, !3290, !3291}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3258, file: !3259, line: 109, baseType: !356, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3258, file: !3259, line: 110, baseType: !356, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3258, file: !3259, line: 111, baseType: !356, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3258, file: !3259, line: 112, baseType: !356, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3258, file: !3259, line: 113, baseType: !356, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3258, file: !3259, line: 114, baseType: !356, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3258, file: !3259, line: 117, baseType: !356, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3258, file: !3259, line: 118, baseType: !356, size: 64, offset: 448)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3258, file: !3259, line: 119, baseType: !356, size: 64, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3258, file: !3259, line: 120, baseType: !356, size: 64, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3258, file: !3259, line: 121, baseType: !356, size: 64, offset: 640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3258, file: !3259, line: 122, baseType: !356, size: 64, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3258, file: !3259, line: 123, baseType: !356, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3258, file: !3259, line: 124, baseType: !356, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3258, file: !3259, line: 125, baseType: !356, size: 64, offset: 896)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3258, file: !3259, line: 139, baseType: !356, size: 64, offset: 960)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3258, file: !3259, line: 142, baseType: !356, size: 64, offset: 1024)
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !3259, line: 144, baseType: !3279, size: 64, offset: 1088)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !3259, line: 144, size: 64, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3279, file: !3259, line: 146, baseType: !458, size: 16)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3279, file: !3259, line: 148, baseType: !638, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3279, file: !3259, line: 150, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3259, line: 59, size: 64, elements: !3285)
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3284, file: !3259, line: 61, baseType: !638, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3284, file: !3259, line: 63, baseType: !638, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3284, file: !3259, line: 65, baseType: !638, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3258, file: !3259, line: 153, baseType: !356, size: 64, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3258, file: !3259, line: 154, baseType: !356, size: 64, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !3259, line: 156, baseType: !3292, size: 64, offset: 1280)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !3259, line: 156, size: 64, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3292, file: !3259, line: 158, baseType: !458, size: 16)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3292, file: !3259, line: 160, baseType: !638, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3292, file: !3259, line: 162, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3259, line: 69, size: 64, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3297, file: !3259, line: 71, baseType: !638, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3297, file: !3259, line: 73, baseType: !638, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3297, file: !3259, line: 75, baseType: !638, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3297, file: !3259, line: 77, baseType: !638, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3297, file: !3259, line: 80, baseType: !638, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3297, file: !3259, line: 83, baseType: !638, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3297, file: !3259, line: 86, baseType: !638, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3297, file: !3259, line: 88, baseType: !638, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3297, file: !3259, line: 93, baseType: !638, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3297, file: !3259, line: 100, baseType: !638, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3234, file: !3161, line: 96, baseType: !634, size: 32, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3179, file: !3161, line: 352, baseType: !3311, size: 4608, align: 512)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3161, line: 333, size: 4608, align: 512, elements: !3312)
!3312 = !{!3313, !3314, !3321}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3311, file: !3161, line: 334, baseType: !3197, size: 4096, align: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3311, file: !3161, line: 335, baseType: !3315, size: 512, offset: 4096)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3161, line: 312, size: 512, elements: !3316)
!3316 = !{!3317, !3318, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3315, file: !3161, line: 313, baseType: !638, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3315, file: !3161, line: 314, baseType: !638, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3315, file: !3161, line: 315, baseType: !3320, size: 384, offset: 128)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 384, elements: !1077)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3311, file: !3161, line: 336, baseType: !3322, offset: 4608)
!3322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, elements: !974)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3179, file: !3161, line: 353, baseType: !3324, size: 32768)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 32768, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 4096)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3160, file: !3161, line: 484, baseType: !3166, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3160, file: !3161, line: 491, baseType: !3329, size: 128, offset: 256)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3161, line: 404, size: 128, elements: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3329, file: !3161, line: 424, baseType: !638, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3329, file: !3161, line: 432, baseType: !7, size: 32, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3329, file: !3161, line: 440, baseType: !7, size: 32, offset: 96)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3160, file: !3161, line: 498, baseType: !3329, size: 128, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3160, file: !3161, line: 508, baseType: !3167, size: 33280, align: 512, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2128, file: !2129, line: 16, baseType: !959, size: 192, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2128, file: !2129, line: 17, baseType: !442, size: 32, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !713, file: !14, line: 1240, baseType: !194, size: 64, offset: 6912)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !713, file: !14, line: 1243, baseType: !634, size: 32, offset: 6976)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !713, file: !14, line: 1245, baseType: !1047, size: 64, offset: 7040)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !713, file: !14, line: 1246, baseType: !1047, size: 64, offset: 7104)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !713, file: !14, line: 1248, baseType: !635, size: 32, offset: 7168)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !713, file: !14, line: 1249, baseType: !3344, size: 64, offset: 7232)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !713, file: !14, line: 1252, baseType: !382, size: 256, offset: 7296)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !713, file: !14, line: 1253, baseType: !3348, size: 128, offset: 7552)
!3348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3349, line: 21, baseType: !3350)
!3349 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3349, line: 19, size: 128, elements: !3351)
!3351 = !{!3352}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3350, file: !3349, line: 20, baseType: !3353, size: 128)
!3353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !378)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !713, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !713, file: !14, line: 1261, baseType: !845, size: 256, offset: 7744)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !713, file: !14, line: 1267, baseType: !411, size: 64, offset: 8000)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !713, file: !14, line: 1269, baseType: !659, size: 64, offset: 8064)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !713, file: !14, line: 1271, baseType: !3359, size: 448, offset: 8128)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1908, line: 63, size: 448, elements: !3360)
!3360 = !{!3361, !3366, !3367, !3368, !3369, !3370, !3371}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3359, file: !1908, line: 64, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!356, !3365, !1906}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3359, file: !1908, line: 66, baseType: !3362, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3359, file: !1908, line: 69, baseType: !250, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3359, file: !1908, line: 70, baseType: !109, size: 32, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3359, file: !1908, line: 71, baseType: !7, size: 32, offset: 224)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3359, file: !1908, line: 74, baseType: !206, size: 128, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3359, file: !1908, line: 85, baseType: !3372, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !713, file: !14, line: 1274, baseType: !849, size: 64, offset: 8576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !713, file: !14, line: 1280, baseType: !849, size: 64, offset: 8640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !713, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !713, file: !14, line: 1286, baseType: !1840, size: 32, offset: 8736)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !713, file: !14, line: 1289, baseType: !3378, size: 64, offset: 8768)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1460, line: 18, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !713, file: !14, line: 1290, baseType: !752, size: 64, offset: 8832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !713, file: !14, line: 1297, baseType: !1173, size: 64, offset: 8896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !713, file: !14, line: 1304, baseType: !3383, size: 64, offset: 8960)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3384, line: 49, size: 64, elements: !3385)
!3384 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3385 = !{!3386}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3383, file: !3384, line: 50, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3384, line: 41, size: 512, align: 512, elements: !3389)
!3389 = !{!3390, !3391, !3396}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3388, file: !3384, line: 43, baseType: !422, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3388, file: !3384, line: 45, baseType: !3392, size: 192, offset: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3384, line: 29, size: 192, elements: !3393)
!3393 = !{!3394, !3395}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3392, file: !3384, line: 30, baseType: !206, size: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3392, file: !3384, line: 32, baseType: !250, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3388, file: !3384, line: 46, baseType: !250, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !713, file: !14, line: 1305, baseType: !3383, size: 64, offset: 9024)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !713, file: !14, line: 1306, baseType: !903, size: 128, align: 64, offset: 9088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !713, file: !14, line: 1307, baseType: !1459, size: 256, offset: 9216)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !713, file: !14, line: 1309, baseType: !845, size: 256, offset: 9472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !713, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !713, file: !14, line: 1317, baseType: !422, size: 32, align: 512, offset: 10240)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !713, file: !14, line: 1318, baseType: !206, size: 128, offset: 10304)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !713, file: !14, line: 1320, baseType: !422, size: 32, offset: 10432)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !713, file: !14, line: 1321, baseType: !206, size: 128, offset: 10496)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !707, file: !708, line: 73, baseType: !109, size: 32, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !707, file: !708, line: 74, baseType: !3408, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !998, line: 42, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !661, file: !602, line: 141, baseType: !3412, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!109, !1968, !1090}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !661, file: !602, line: 142, baseType: !3416, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!600, !600, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !601, file: !602, line: 96, baseType: !712, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !601, file: !602, line: 97, baseType: !356, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !601, file: !602, line: 98, baseType: !194, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !602, line: 100, baseType: !3425, size: 128, offset: 1024)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 100, size: 128, elements: !3426)
!3426 = !{!3427, !3428}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3425, file: !602, line: 101, baseType: !206, size: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3425, file: !602, line: 102, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !601, file: !602, line: 104, baseType: !206, size: 128, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !601, file: !602, line: 105, baseType: !206, size: 128, offset: 1280)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !601, file: !602, line: 113, baseType: !3433, size: 128, offset: 1408)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 109, size: 128, elements: !3434)
!3434 = !{!3435, !3436, !3437}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3433, file: !602, line: 110, baseType: !756, size: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3433, file: !602, line: 111, baseType: !616, size: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3433, file: !602, line: 112, baseType: !903, size: 128, align: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !594, file: !14, line: 1968, baseType: !3439, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!411, !600, !565, !3442}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3444, line: 10, size: 128, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3445 = !{!3446, !3450}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3443, file: !3444, line: 11, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !194}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3443, file: !3444, line: 12, baseType: !194, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !594, file: !14, line: 1969, baseType: !3452, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!109, !3408, !565, !109}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !594, file: !14, line: 1970, baseType: !3456, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!588, !565, !109, !1090}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !594, file: !14, line: 1972, baseType: !3460, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!109, !600, !490, !109}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !594, file: !14, line: 1974, baseType: !3464, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!109, !3408, !565, !600, !528, !1090}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !594, file: !14, line: 1976, baseType: !3468, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!109, !600, !565, !600}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !594, file: !14, line: 1977, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!109, !565, !600}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !594, file: !14, line: 1978, baseType: !3476, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!109, !3408, !565, !600, !411}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !594, file: !14, line: 1980, baseType: !3480, size: 64, offset: 576)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!109, !3408, !565, !600, !528}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !594, file: !14, line: 1982, baseType: !3472, size: 64, offset: 640)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !594, file: !14, line: 1983, baseType: !3485, size: 64, offset: 704)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!109, !3408, !565, !600, !528, !717}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !594, file: !14, line: 1985, baseType: !3489, size: 64, offset: 768)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!109, !3408, !565, !600, !565, !600, !7}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !594, file: !14, line: 1987, baseType: !3493, size: 64, offset: 832)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!109, !3408, !600, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3498)
!3498 = !{!3499, !3500, !3501, !3511, !3520, !3521, !3526, !3527, !3528}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3497, file: !14, line: 227, baseType: !7, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3497, file: !14, line: 228, baseType: !528, size: 16, offset: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !14, line: 241, baseType: !3502, size: 32, offset: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !14, line: 241, size: 32, elements: !3503)
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3502, file: !14, line: 242, baseType: !571, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3502, file: !14, line: 243, baseType: !3506, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3507, line: 16, baseType: !3508)
!3507 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3507, line: 14, size: 32, elements: !3509)
!3509 = !{!3510}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3508, file: !3507, line: 15, baseType: !576, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !14, line: 245, baseType: !3512, size: 32, offset: 96)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !14, line: 245, size: 32, elements: !3513)
!3513 = !{!3514, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3512, file: !14, line: 246, baseType: !580, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3512, file: !14, line: 247, baseType: !3516, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3507, line: 20, baseType: !3517)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3507, line: 18, size: 32, elements: !3518)
!3518 = !{!3519}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3517, file: !3507, line: 19, baseType: !584, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3497, file: !14, line: 249, baseType: !722, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3497, file: !14, line: 250, baseType: !3522, size: 128, offset: 192)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1048, line: 13, size: 128, elements: !3523)
!3523 = !{!3524, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3522, file: !1048, line: 14, baseType: !1047, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3522, file: !1048, line: 15, baseType: !250, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3497, file: !14, line: 251, baseType: !3522, size: 128, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3497, file: !14, line: 252, baseType: !3522, size: 128, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3497, file: !14, line: 259, baseType: !1218, size: 64, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !594, file: !14, line: 1988, baseType: !3530, size: 64, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!109, !3408, !1968, !3533, !634, !7}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3535, line: 22, size: 1280, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3534, file: !3535, line: 23, baseType: !634, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3534, file: !3535, line: 24, baseType: !528, size: 16, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3534, file: !3535, line: 25, baseType: !7, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3534, file: !3535, line: 26, baseType: !1055, size: 32, offset: 96)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3534, file: !3535, line: 27, baseType: !638, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3534, file: !3535, line: 28, baseType: !638, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3534, file: !3535, line: 41, baseType: !638, size: 64, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3534, file: !3535, line: 42, baseType: !717, size: 32, offset: 320)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3534, file: !3535, line: 43, baseType: !717, size: 32, offset: 352)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3534, file: !3535, line: 44, baseType: !571, size: 32, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3534, file: !3535, line: 45, baseType: !580, size: 32, offset: 416)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3534, file: !3535, line: 46, baseType: !722, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3534, file: !3535, line: 47, baseType: !3522, size: 128, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3534, file: !3535, line: 48, baseType: !3522, size: 128, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3534, file: !3535, line: 49, baseType: !3522, size: 128, offset: 768)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3534, file: !3535, line: 50, baseType: !3522, size: 128, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3534, file: !3535, line: 51, baseType: !638, size: 64, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3534, file: !3535, line: 52, baseType: !638, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3534, file: !3535, line: 53, baseType: !634, size: 32, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3534, file: !3535, line: 54, baseType: !634, size: 32, offset: 1184)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3534, file: !3535, line: 55, baseType: !638, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !594, file: !14, line: 1990, baseType: !3559, size: 64, offset: 960)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!520, !600, !490, !533}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !594, file: !14, line: 1991, baseType: !3563, size: 64, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!109, !565, !3566, !638, !638}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !594, file: !14, line: 1993, baseType: !3569, size: 64, offset: 1088)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!109, !565, !109}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !594, file: !14, line: 1994, baseType: !3573, size: 64, offset: 1152)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!109, !565, !600, !1218, !7, !528}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !594, file: !14, line: 1997, baseType: !3577, size: 64, offset: 1216)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!109, !3408, !565, !1218, !528}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !594, file: !14, line: 1999, baseType: !3581, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!588, !3408, !600, !109}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !594, file: !14, line: 2001, baseType: !3585, size: 64, offset: 1344)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!109, !3408, !600, !588, !109}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !594, file: !14, line: 2003, baseType: !3589, size: 64, offset: 1408)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!109, !3408, !600, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !594, file: !14, line: 2005, baseType: !3595, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!109, !600, !3592}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !594, file: !14, line: 2006, baseType: !3599, size: 64, offset: 1536)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!3602, !565}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3604)
!3604 = !{!3605, !3612}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3603, file: !14, line: 3193, baseType: !3606, size: 128)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3607, line: 296, size: 128, elements: !3608)
!3607 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3608 = !{!3609, !3610, !3611}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3606, file: !3607, line: 297, baseType: !422, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3606, file: !3607, line: 299, baseType: !195, size: 32, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3606, file: !3607, line: 300, baseType: !194, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3603, file: !14, line: 3194, baseType: !634, size: 32, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !566, file: !14, line: 655, baseType: !712, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !566, file: !14, line: 656, baseType: !561, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !566, file: !14, line: 659, baseType: !194, size: 64, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !566, file: !14, line: 663, baseType: !356, size: 64, offset: 640)
!3617 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !14, line: 671, baseType: !3618, size: 32, offset: 704)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !14, line: 671, size: 32, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3618, file: !14, line: 672, baseType: !354, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3618, file: !14, line: 673, baseType: !7, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !566, file: !14, line: 675, baseType: !717, size: 32, offset: 736)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !566, file: !14, line: 676, baseType: !722, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !566, file: !14, line: 677, baseType: !3522, size: 128, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !566, file: !14, line: 678, baseType: !3522, size: 128, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !566, file: !14, line: 679, baseType: !3522, size: 128, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !566, file: !14, line: 680, baseType: !422, size: 32, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !566, file: !14, line: 681, baseType: !460, size: 16, offset: 1248)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !566, file: !14, line: 682, baseType: !450, size: 8, offset: 1264)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !566, file: !14, line: 683, baseType: !450, size: 8, offset: 1272)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !566, file: !14, line: 684, baseType: !2041, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !566, file: !14, line: 691, baseType: !356, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !566, file: !14, line: 692, baseType: !1031, size: 320, offset: 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !566, file: !14, line: 694, baseType: !356, size: 64, offset: 1728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !566, file: !14, line: 695, baseType: !356, size: 64, offset: 1792)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !566, file: !14, line: 697, baseType: !756, size: 128, offset: 1856)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !566, file: !14, line: 698, baseType: !206, size: 128, offset: 1984)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !566, file: !14, line: 707, baseType: !206, size: 128, offset: 2112)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !566, file: !14, line: 708, baseType: !206, size: 128, offset: 2240)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !14, line: 709, baseType: !3641, size: 128, offset: 2368)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !14, line: 709, size: 128, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3641, file: !14, line: 710, baseType: !752, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3641, file: !14, line: 711, baseType: !903, size: 128, align: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !566, file: !14, line: 713, baseType: !851, size: 64, offset: 2496)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !566, file: !14, line: 714, baseType: !851, size: 64, offset: 2560)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !566, file: !14, line: 715, baseType: !442, size: 32, offset: 2624)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !566, file: !14, line: 716, baseType: !442, size: 32, offset: 2656)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !566, file: !14, line: 717, baseType: !442, size: 32, offset: 2688)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !566, file: !14, line: 719, baseType: !442, size: 32, offset: 2720)
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !14, line: 721, baseType: !3652, size: 64, offset: 2752)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !14, line: 721, size: 64, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3652, file: !14, line: 722, baseType: !1209, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3652, file: !14, line: 723, baseType: !783, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !566, file: !14, line: 725, baseType: !3657, size: 64, offset: 2816)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !566, file: !14, line: 726, baseType: !562, size: 1536, align: 64, offset: 2880)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !566, file: !14, line: 727, baseType: !206, size: 128, offset: 4416)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !14, line: 728, baseType: !3662, size: 64, offset: 4544)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !14, line: 728, size: 64, elements: !3663)
!3663 = !{!3664, !3665, !3668, !3669}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3662, file: !14, line: 729, baseType: !1790, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3662, file: !14, line: 730, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3662, file: !14, line: 731, baseType: !490, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3662, file: !14, line: 732, baseType: !7, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !566, file: !14, line: 735, baseType: !635, size: 32, offset: 4608)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !566, file: !14, line: 738, baseType: !635, size: 32, offset: 4640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !566, file: !14, line: 739, baseType: !3344, size: 64, offset: 4672)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !566, file: !14, line: 750, baseType: !194, size: 64, offset: 4736)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !562, file: !14, line: 474, baseType: !3606, size: 128, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !562, file: !14, line: 475, baseType: !1031, size: 320, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !562, file: !14, line: 476, baseType: !195, size: 32, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !562, file: !14, line: 477, baseType: !442, size: 32, offset: 544)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !562, file: !14, line: 482, baseType: !2315, size: 128, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !562, file: !14, line: 483, baseType: !356, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !562, file: !14, line: 484, baseType: !356, size: 64, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !562, file: !14, line: 485, baseType: !3682, size: 64, offset: 832)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3685)
!3685 = !{!3686, !3690, !3760, !3764, !3768, !3774, !3779, !3783, !3788, !3792, !3796, !3800, !3801, !3805, !3809, !3813, !3818, !3822, !3829, !3830}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3684, file: !14, line: 405, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!109, !1566, !795}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3684, file: !14, line: 406, baseType: !3691, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!109, !1218, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !3696)
!3696 = !{!3697, !3727, !3741}
!3697 = !DIDerivedType(tag: DW_TAG_member, scope: !3695, file: !27, line: 295, baseType: !3698, size: 512)
!3698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3695, file: !27, line: 295, size: 512, elements: !3699)
!3699 = !{!3700, !3726}
!3700 = !DIDerivedType(tag: DW_TAG_member, scope: !3698, file: !27, line: 296, baseType: !3701, size: 448)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3698, file: !27, line: 296, size: 448, elements: !3702)
!3702 = !{!3703, !3704, !3713, !3714, !3715, !3724, !3725}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3701, file: !27, line: 298, baseType: !356, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !27, line: 299, baseType: !3705, size: 128, offset: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !27, line: 299, size: 128, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3705, file: !27, line: 300, baseType: !206, size: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3705, file: !27, line: 302, baseType: !3709, size: 128)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3705, file: !27, line: 302, size: 128, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3709, file: !27, line: 303, baseType: !194, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3709, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3701, file: !27, line: 310, baseType: !561, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3701, file: !27, line: 311, baseType: !356, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, scope: !3701, file: !27, line: 312, baseType: !3716, size: 64, offset: 320)
!3716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3701, file: !27, line: 312, size: 64, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3716, file: !27, line: 313, baseType: !194, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3716, file: !27, line: 314, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !3722)
!3722 = !{!3723}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3721, file: !27, line: 256, baseType: !356, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3701, file: !27, line: 316, baseType: !442, size: 32, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3701, file: !27, line: 317, baseType: !442, size: 32, offset: 416)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3698, file: !27, line: 323, baseType: !1567, size: 512, align: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3695, file: !27, line: 325, baseType: !3728, size: 512, offset: 512)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3695, file: !27, line: 325, size: 512, elements: !3729)
!3729 = !{!3730, !3740}
!3730 = !DIDerivedType(tag: DW_TAG_member, scope: !3728, file: !27, line: 326, baseType: !3731, size: 320)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !27, line: 326, size: 320, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3731, file: !27, line: 327, baseType: !356, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3731, file: !27, line: 328, baseType: !356, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3731, file: !27, line: 329, baseType: !356, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3731, file: !27, line: 331, baseType: !442, size: 32, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3731, file: !27, line: 332, baseType: !442, size: 32, offset: 224)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3731, file: !27, line: 333, baseType: !442, size: 32, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3731, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3728, file: !27, line: 339, baseType: !1567, size: 512, align: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3695, file: !27, line: 341, baseType: !3742, size: 512, offset: 1024)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3695, file: !27, line: 341, size: 512, elements: !3743)
!3743 = !{!3744, !3753, !3759}
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !27, line: 342, baseType: !3745, size: 384)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !27, line: 342, size: 384, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3745, file: !27, line: 343, baseType: !356, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3745, file: !27, line: 344, baseType: !356, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3745, file: !27, line: 346, baseType: !194, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3745, file: !27, line: 347, baseType: !194, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3745, file: !27, line: 348, baseType: !194, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3745, file: !27, line: 349, baseType: !194, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !27, line: 352, baseType: !3754, size: 256)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3742, file: !27, line: 352, size: 256, elements: !3755)
!3755 = !{!3756, !3757, !3758}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3754, file: !27, line: 353, baseType: !356, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3754, file: !27, line: 354, baseType: !356, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3754, file: !27, line: 356, baseType: !206, size: 128, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3742, file: !27, line: 359, baseType: !1567, size: 512, align: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3684, file: !14, line: 409, baseType: !3761, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!109, !561, !795}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3684, file: !14, line: 412, baseType: !3765, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!1090, !561, !3694}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3684, file: !14, line: 414, baseType: !3769, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3684, file: !14, line: 416, baseType: !3775, size: 64, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!109, !1218, !561, !722, !7, !3778, !1805}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3684, file: !14, line: 419, baseType: !3780, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!109, !1218, !561, !722, !7, !7, !1566, !194}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3684, file: !14, line: 424, baseType: !3784, size: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!3787, !561, !3787}
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !196, line: 131, baseType: !638)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3684, file: !14, line: 425, baseType: !3789, size: 64, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3694, !533, !533}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3684, file: !14, line: 426, baseType: !3793, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!1090, !3694, !195}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3684, file: !14, line: 427, baseType: !3797, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{null, !3694}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3684, file: !14, line: 428, baseType: !1228, size: 64, offset: 704)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3684, file: !14, line: 433, baseType: !3802, size: 64, offset: 768)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!109, !561, !3694, !3694, !74}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3684, file: !14, line: 435, baseType: !3806, size: 64, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!109, !3694}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3684, file: !14, line: 436, baseType: !3810, size: 64, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!1090, !3694, !533, !533}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3684, file: !14, line: 438, baseType: !3814, size: 64, offset: 960)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !3694, !3817, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3684, file: !14, line: 439, baseType: !3819, size: 64, offset: 1024)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!109, !561, !1566}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3684, file: !14, line: 442, baseType: !3823, size: 64, offset: 1088)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!109, !3826, !1218, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3684, file: !14, line: 444, baseType: !1797, size: 64, offset: 1152)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3684, file: !14, line: 445, baseType: !3831, size: 64, offset: 1216)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!109, !1231, !1253}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !14, line: 486, baseType: !356, size: 64, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !562, file: !14, line: 487, baseType: !1031, size: 320, offset: 960)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !562, file: !14, line: 488, baseType: !1840, size: 32, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !562, file: !14, line: 489, baseType: !422, size: 32, offset: 1312)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !562, file: !14, line: 490, baseType: !206, size: 128, offset: 1344)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !562, file: !14, line: 491, baseType: !194, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !552, file: !514, line: 180, baseType: !3841, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!520, !1218, !415, !551, !490, !722, !533}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !552, file: !514, line: 182, baseType: !3841, size: 64, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !552, file: !514, line: 184, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!109, !1218, !415, !551, !1292}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !540, file: !514, line: 90, baseType: !3850, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !540, file: !514, line: 91, baseType: !3852, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !504, file: !408, line: 120, baseType: !3854, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!3857, !473}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3860)
!3860 = !{!3861, !3862, !3866, !3870, !3876, !3880}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3859, file: !82, line: 40, baseType: !81, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3859, file: !82, line: 41, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!1090}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3859, file: !82, line: 42, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!194}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3859, file: !82, line: 43, baseType: !3871, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!1420, !3874}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3859, file: !82, line: 44, baseType: !3877, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!1420}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3859, file: !82, line: 45, baseType: !3447, size: 64, offset: 320)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !504, file: !408, line: 121, baseType: !3882, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!1420, !473}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !504, file: !408, line: 122, baseType: !3886, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !473, !3889, !3890}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !407, file: !408, line: 70, baseType: !3892, size: 64, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !736, line: 190, size: 1152, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3974, !3975, !3976, !3977, !3978, !3981}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3893, file: !736, line: 191, baseType: !442, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3893, file: !736, line: 192, baseType: !442, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3893, file: !736, line: 202, baseType: !3892, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3893, file: !736, line: 203, baseType: !411, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3893, file: !736, line: 205, baseType: !1023, size: 192, align: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3893, file: !736, line: 207, baseType: !1420, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3893, file: !736, line: 208, baseType: !7, size: 32, offset: 448)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !736, line: 209, baseType: !3903, size: 256, offset: 512)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3893, file: !736, line: 209, size: 256, elements: !3904)
!3904 = !{!3905, !3914, !3918}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3903, file: !736, line: 210, baseType: !3906, size: 256)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !736, line: 153, size: 256, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3913}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3906, file: !736, line: 154, baseType: !356, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3906, file: !736, line: 156, baseType: !2318, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3906, file: !736, line: 162, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !736, line: 162, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3906, file: !736, line: 167, baseType: !356, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3903, file: !736, line: 211, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !736, line: 170, size: 64, elements: !3916)
!3916 = !{!3917}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3915, file: !736, line: 171, baseType: !3892, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3903, file: !736, line: 212, baseType: !3919, size: 256)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !736, line: 174, size: 256, elements: !3920)
!3920 = !{!3921, !3969, !3972, !3973}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3919, file: !736, line: 175, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !736, line: 271, size: 768, elements: !3925)
!3925 = !{!3926, !3946, !3950, !3951, !3952, !3953, !3954, !3958, !3959, !3960, !3961, !3965}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3924, file: !736, line: 276, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!109, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !736, line: 251, size: 1216, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3931, file: !736, line: 253, baseType: !3892, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3931, file: !736, line: 254, baseType: !1218, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3931, file: !736, line: 255, baseType: !833, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3931, file: !736, line: 256, baseType: !194, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3931, file: !736, line: 259, baseType: !845, size: 256, offset: 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3931, file: !736, line: 260, baseType: !845, size: 256, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3931, file: !736, line: 261, baseType: !109, size: 32, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3931, file: !736, line: 262, baseType: !206, size: 128, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3931, file: !736, line: 263, baseType: !490, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3931, file: !736, line: 265, baseType: !533, size: 64, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3931, file: !736, line: 266, baseType: !1090, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3931, file: !736, line: 267, baseType: !1090, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3931, file: !736, line: 268, baseType: !1502, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3924, file: !736, line: 277, baseType: !3947, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3930}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3924, file: !736, line: 290, baseType: !884, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3924, file: !736, line: 292, baseType: !871, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3924, file: !736, line: 293, baseType: !880, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3924, file: !736, line: 294, baseType: !876, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3924, file: !736, line: 296, baseType: !3955, size: 64, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!520, !3930, !490, !533, !722}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3924, file: !736, line: 306, baseType: !533, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3924, file: !736, line: 313, baseType: !1090, size: 8, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3924, file: !736, line: 314, baseType: !3955, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3924, file: !736, line: 317, baseType: !3962, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!1279, !3930, !1281}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3924, file: !736, line: 320, baseType: !3966, size: 64, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!109, !3930, !1292}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3919, file: !736, line: 176, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !736, line: 35, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3919, file: !736, line: 177, baseType: !722, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3919, file: !736, line: 178, baseType: !3892, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3893, file: !736, line: 215, baseType: !194, size: 64, offset: 768)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3893, file: !736, line: 221, baseType: !638, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3893, file: !736, line: 223, baseType: !460, size: 16, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3893, file: !736, line: 224, baseType: !528, size: 16, offset: 912)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3893, file: !736, line: 225, baseType: !3979, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !736, line: 36, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3893, file: !736, line: 227, baseType: !903, size: 128, align: 64, offset: 1024)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !407, file: !408, line: 71, baseType: !3983, size: 32, offset: 448)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3984, line: 19, size: 32, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3985 = !{!3986}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3983, file: !3984, line: 20, baseType: !948, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !407, file: !408, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !407, file: !408, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !407, file: !408, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !407, file: !408, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !407, file: !408, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !404, file: !6, line: 47, baseType: !394, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !404, file: !6, line: 48, baseType: !415, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !404, file: !6, line: 49, baseType: !3995, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !404, file: !6, line: 50, baseType: !2528, size: 64, offset: 704)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !395, file: !6, line: 418, baseType: !3999, size: 64, offset: 1408)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4001)
!4001 = !{!4002, !4003, !4008, !4012, !4016, !4020}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4000, file: !6, line: 54, baseType: !524, size: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4000, file: !6, line: 55, baseType: !4004, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!520, !3999, !4007, !490}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4000, file: !6, line: 57, baseType: !4009, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!520, !3999, !4007, !411, !533}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4000, file: !6, line: 59, baseType: !4013, size: 64, offset: 256)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !394, !411}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4000, file: !6, line: 60, baseType: !4017, size: 64, offset: 320)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!109, !394}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4000, file: !6, line: 61, baseType: !4021, size: 64, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !394}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !395, file: !6, line: 419, baseType: !411, size: 64, offset: 1472)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !395, file: !6, line: 420, baseType: !411, size: 64, offset: 1536)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !395, file: !6, line: 421, baseType: !415, size: 64, offset: 1600)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !395, file: !6, line: 424, baseType: !4028, size: 64, offset: 1664)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4030)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !395, file: !6, line: 425, baseType: !4032, size: 64, offset: 1728)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !395, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !395, file: !6, line: 435, baseType: !845, size: 256, offset: 1856)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !395, file: !6, line: 437, baseType: !4037, size: 64, offset: 2112)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4039, line: 69, size: 320, elements: !4040)
!4039 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4040 = !{!4041, !4042, !4043, !4060, !4062, !4066, !4067}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4038, file: !4039, line: 70, baseType: !411, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4038, file: !4039, line: 71, baseType: !394, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4038, file: !4039, line: 72, baseType: !4044, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4046)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4039, line: 47, size: 256, elements: !4047)
!4047 = !{!4048, !4049, !4055, !4059}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4046, file: !4039, line: 49, baseType: !7, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4046, file: !4039, line: 51, baseType: !4050, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!109, !411, !4053}
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4038)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4046, file: !4039, line: 53, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!109, !490, !4053}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4046, file: !4039, line: 55, baseType: !3447, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4038, file: !4039, line: 73, baseType: !4061, size: 16, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4038, file: !4039, line: 74, baseType: !4063, size: 8, offset: 208)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !451, line: 16, baseType: !4064)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !272, line: 20, baseType: !4065)
!4065 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4038, file: !4039, line: 75, baseType: !450, size: 8, offset: 216)
!4067 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !4039, line: 76, baseType: !4068, size: 64, offset: 256)
!4068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4038, file: !4039, line: 76, size: 64, elements: !4069)
!4069 = !{!4070, !4071, !4078}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4068, file: !4039, line: 77, baseType: !194, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4068, file: !4039, line: 78, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4039, line: 86, size: 128, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4074, file: !4039, line: 87, baseType: !7, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4074, file: !4039, line: 88, baseType: !490, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4068, file: !4039, line: 79, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4081)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4039, line: 92, size: 256, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4081, file: !4039, line: 94, baseType: !7, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4081, file: !4039, line: 95, baseType: !7, size: 32, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4081, file: !4039, line: 96, baseType: !314, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4081, file: !4039, line: 97, baseType: !4044, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4081, file: !4039, line: 98, baseType: !194, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !395, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !395, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !395, file: !6, line: 442, baseType: !4028, size: 64, offset: 2240)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !395, file: !6, line: 443, baseType: !4032, size: 64, offset: 2304)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !395, file: !6, line: 444, baseType: !1090, size: 8, offset: 2368)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !395, file: !6, line: 451, baseType: !1090, size: 8, offset: 2376)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !395, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !395, file: !6, line: 455, baseType: !4096, size: 64, offset: 2432)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4098, line: 23, size: 96, elements: !4099)
!4098 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4099 = !{!4100, !4101, !4102}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4097, file: !4098, line: 24, baseType: !109, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4097, file: !4098, line: 24, baseType: !109, size: 32, offset: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4097, file: !4098, line: 24, baseType: !109, size: 32, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !395, file: !6, line: 458, baseType: !4104, size: 64, offset: 2496)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !395, file: !6, line: 460, baseType: !4108, size: 4032, align: 512, offset: 2560)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4109, size: 4032, elements: !4123)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4110)
!4110 = !{!4111, !4112, !4113}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4109, file: !6, line: 363, baseType: !194, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4109, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4109, file: !6, line: 367, baseType: !4114, size: 448, offset: 128)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4115)
!4115 = !{!4116, !4117}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4114, file: !6, line: 320, baseType: !394, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4114, file: !6, line: 321, baseType: !4118, size: 384, offset: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4119, line: 40, size: 384, elements: !4120)
!4119 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4120 = !{!4121}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4118, file: !4119, line: 41, baseType: !4122, size: 384, align: 64)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 384, align: 64, elements: !2649)
!4123 = !{!4124}
!4124 = !DISubrange(count: 7)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !395, file: !6, line: 463, baseType: !4126, size: 192, offset: 6592)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4127, line: 8, size: 192, elements: !4128)
!4127 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4128 = !{!4129, !4130, !4131}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4126, file: !4127, line: 10, baseType: !7, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4126, file: !4127, line: 11, baseType: !827, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4126, file: !4127, line: 12, baseType: !4132, size: 64, offset: 128)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4134, line: 59, size: 48, elements: !4135)
!4134 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4133, file: !4134, line: 60, baseType: !1437, size: 16)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4133, file: !4134, line: 61, baseType: !1437, size: 16, offset: 16)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4133, file: !4134, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4133, file: !4134, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4133, file: !4134, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4133, file: !4134, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !395, file: !6, line: 465, baseType: !356, size: 64, offset: 6784)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !395, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !395, file: !6, line: 470, baseType: !206, size: 128, offset: 6912)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !395, file: !6, line: 471, baseType: !4146, size: 64, offset: 7040)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4148, line: 33, size: 96, elements: !4149)
!4148 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4149 = !{!4150, !4151, !4152, !4153}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4147, file: !4148, line: 37, baseType: !109, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4147, file: !4148, line: 43, baseType: !109, size: 32, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4147, file: !4148, line: 45, baseType: !460, size: 16, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4147, file: !4148, line: 47, baseType: !460, size: 16, offset: 80)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !395, file: !6, line: 476, baseType: !4155, size: 64, offset: 7104)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4157)
!4157 = !{!4158, !4174, !4175, !4176}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4156, file: !6, line: 379, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4161, line: 204, baseType: !4162)
!4161 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4161, line: 197, size: 192, elements: !4163)
!4163 = !{!4164, !4166, !4167, !4168, !4170, !4172}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4162, file: !4161, line: 198, baseType: !4165, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4161, line: 21, baseType: !635)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4162, file: !4161, line: 199, baseType: !222, size: 8, offset: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4162, file: !4161, line: 200, baseType: !222, size: 8, offset: 40)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4162, file: !4161, line: 201, baseType: !4169, size: 16, offset: 48)
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4161, line: 17, baseType: !459)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4162, file: !4161, line: 202, baseType: !4171, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4161, line: 16, baseType: !271)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4162, file: !4161, line: 203, baseType: !4173, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4161, line: 22, baseType: !271)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4156, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4156, file: !6, line: 381, baseType: !490, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4156, file: !6, line: 382, baseType: !490, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !395, file: !6, line: 477, baseType: !4156, size: 256, offset: 7168)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !395, file: !6, line: 480, baseType: !4179, size: 64, offset: 7424)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !395, file: !6, line: 483, baseType: !4182, size: 64, offset: 7488)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !395, file: !6, line: 488, baseType: !490, size: 64, offset: 7552)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !395, file: !6, line: 492, baseType: !194, size: 64, offset: 7616)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !395, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !395, file: !6, line: 495, baseType: !194, size: 64, offset: 7744)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !395, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !395, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !395, file: !6, line: 500, baseType: !4191, size: 64, offset: 7872)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4193, line: 45, baseType: !4194)
!4193 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !395, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !395, file: !6, line: 504, baseType: !4197, size: 64, offset: 8000)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4200, line: 96, size: 192, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4201 = !{!4202, !4203, !4246, !4248}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4199, file: !4200, line: 97, baseType: !7, size: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4199, file: !4200, line: 98, baseType: !4204, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4200, line: 24, size: 3072, elements: !4206)
!4206 = !{!4207, !4209, !4210, !4211, !4212, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4243, !4244, !4245}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4205, file: !4200, line: 26, baseType: !4208, size: 128)
!4208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 128, elements: !2649)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4205, file: !4200, line: 27, baseType: !4208, size: 128, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4205, file: !4200, line: 28, baseType: !109, size: 32, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4205, file: !4200, line: 31, baseType: !422, size: 32, align: 512, offset: 512)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4205, file: !4200, line: 32, baseType: !4213, size: 960, offset: 576)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4214, line: 206, size: 960, elements: !4215)
!4214 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4215 = !{!4216, !4217, !4220, !4222, !4223, !4225}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4213, file: !4214, line: 207, baseType: !906, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4213, file: !4214, line: 208, baseType: !4218, size: 256, offset: 64)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4219, size: 256, elements: !338)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4213, file: !4214, line: 209, baseType: !4221, size: 256, offset: 320)
!4221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !338)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4213, file: !4214, line: 213, baseType: !250, size: 64, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4213, file: !4214, line: 215, baseType: !4224, size: 256, offset: 640)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !338)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4213, file: !4214, line: 216, baseType: !450, size: 8, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4205, file: !4200, line: 33, baseType: !356, size: 64, offset: 1536)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4205, file: !4200, line: 34, baseType: !356, size: 64, offset: 1600)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4205, file: !4200, line: 35, baseType: !1090, size: 8, offset: 1664)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4205, file: !4200, line: 36, baseType: !3085, size: 320, offset: 1728)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4205, file: !4200, line: 37, baseType: !1459, size: 256, offset: 2048)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4205, file: !4200, line: 38, baseType: !903, size: 128, align: 64, offset: 2304)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4205, file: !4200, line: 39, baseType: !4233, size: 64, offset: 2432)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4200, line: 49, size: 768, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4234, file: !4200, line: 50, baseType: !422, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4234, file: !4200, line: 51, baseType: !4221, size: 256, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4234, file: !4200, line: 53, baseType: !4221, size: 256, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4234, file: !4200, line: 54, baseType: !356, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4234, file: !4200, line: 55, baseType: !4233, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4234, file: !4200, line: 56, baseType: !109, size: 32, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4234, file: !4200, line: 57, baseType: !109, size: 32, offset: 736)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4205, file: !4200, line: 40, baseType: !356, size: 64, offset: 2496)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4205, file: !4200, line: 42, baseType: !109, size: 32, offset: 2560)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4205, file: !4200, line: 43, baseType: !4198, size: 64, offset: 2624)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4199, file: !4200, line: 99, baseType: !4247, offset: 128)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !763, line: 211, elements: !764)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4199, file: !4200, line: 100, baseType: !4249, size: 64, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4200, line: 63, size: 3008, elements: !4251)
!4251 = !{!4252, !4253, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4281}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4250, file: !4200, line: 64, baseType: !4233, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4250, file: !4200, line: 65, baseType: !4254, size: 192, offset: 64)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4233, size: 192, elements: !491)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4250, file: !4200, line: 67, baseType: !109, size: 32, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4250, file: !4200, line: 68, baseType: !845, size: 256, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4250, file: !4200, line: 69, baseType: !422, size: 32, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4250, file: !4200, line: 70, baseType: !845, size: 256, offset: 640)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4250, file: !4200, line: 71, baseType: !356, size: 64, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4250, file: !4200, line: 72, baseType: !356, size: 64, offset: 960)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4250, file: !4200, line: 73, baseType: !356, size: 64, offset: 1024)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4250, file: !4200, line: 74, baseType: !356, size: 64, offset: 1088)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4250, file: !4200, line: 75, baseType: !356, size: 64, offset: 1152)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4250, file: !4200, line: 76, baseType: !356, size: 64, offset: 1216)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4250, file: !4200, line: 77, baseType: !356, size: 64, offset: 1280)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4250, file: !4200, line: 78, baseType: !356, size: 64, offset: 1344)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4250, file: !4200, line: 79, baseType: !1090, size: 8, offset: 1408)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4250, file: !4200, line: 80, baseType: !356, size: 64, offset: 1472)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4250, file: !4200, line: 81, baseType: !845, size: 256, offset: 1536)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4250, file: !4200, line: 82, baseType: !1651, size: 256, offset: 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4250, file: !4200, line: 84, baseType: !442, size: 32, offset: 2048)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4250, file: !4200, line: 87, baseType: !356, size: 64, offset: 2112)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4250, file: !4200, line: 88, baseType: !356, size: 64, offset: 2176)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4250, file: !4200, line: 89, baseType: !4275, size: 704, offset: 2240)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1460, line: 111, size: 704, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4275, file: !1460, line: 112, baseType: !1459, size: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4275, file: !1460, line: 113, baseType: !3085, size: 320, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4275, file: !1460, line: 116, baseType: !3378, size: 64, offset: 576)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4275, file: !1460, line: 117, baseType: !109, size: 32, offset: 640)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4250, file: !4200, line: 90, baseType: !4198, size: 64, offset: 2944)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !395, file: !6, line: 515, baseType: !4283, size: 64, offset: 8064)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4285, line: 117, size: 128, elements: !4286)
!4285 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4286 = !{!4287, !4288, !4289}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4284, file: !4285, line: 118, baseType: !1016, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4284, file: !4285, line: 119, baseType: !1016, size: 32, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4284, file: !4285, line: 120, baseType: !250, size: 64, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !395, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !395, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !395, file: !6, line: 520, baseType: !4293, size: 64, offset: 8192)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !395, file: !6, line: 523, baseType: !4295, size: 64, offset: 8256)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !395, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !395, file: !6, line: 525, baseType: !4300, size: 64, offset: 8384)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !395, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !395, file: !6, line: 533, baseType: !194, size: 64, offset: 8512)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !395, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !395, file: !6, line: 535, baseType: !4307, size: 64, offset: 8640)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !395, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !395, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !395, file: !6, line: 540, baseType: !4311, size: 64, offset: 8768)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4313, line: 32, size: 64, elements: !4314)
!4313 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4314 = !{!4315, !4316}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4312, file: !4313, line: 33, baseType: !1016, size: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4312, file: !4313, line: 34, baseType: !1016, size: 32, offset: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !395, file: !6, line: 563, baseType: !206, size: 128, offset: 8832)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !395, file: !6, line: 565, baseType: !206, size: 128, offset: 8960)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !395, file: !6, line: 568, baseType: !4320, size: 64, offset: 9088)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !395, file: !6, line: 570, baseType: !442, size: 32, offset: 9152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !373, file: !142, line: 94, baseType: !194, size: 64, offset: 3200)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !373, file: !142, line: 95, baseType: !4324, size: 64, offset: 3264)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !372}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !373, file: !142, line: 97, baseType: !206, size: 128, offset: 3328)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !373, file: !142, line: 99, baseType: !4329, size: 64, offset: 3456)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4337, !4338, !4391, !4473, !4474, !4475, !4476, !4477, !4484, !4576, !4589, !4599, !4603, !4605, !4606, !4607, !4611, !4618, !4619, !4622, !4625, !4629, !4632, !4633, !4634, !4635, !4636, !4637, !4667, !4668, !4669, !4672, !4675, !4684, !4685, !4686, !4687, !4688, !4689}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4330, file: !94, line: 706, baseType: !407, size: 512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4330, file: !94, line: 707, baseType: !4329, size: 64, offset: 512)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4330, file: !94, line: 709, baseType: !4335, size: 64, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4330, file: !94, line: 711, baseType: !411, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4330, file: !94, line: 712, baseType: !4339, size: 64, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4351, !4356, !4360}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !94, line: 90, baseType: !411, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4341, file: !94, line: 91, baseType: !537, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4341, file: !94, line: 92, baseType: !4346, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!109, !4349, !485}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4341, file: !94, line: 93, baseType: !4352, size: 64, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!490, !4349, !4355, !3889, !3890}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4341, file: !94, line: 95, baseType: !4357, size: 64, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !4329}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4341, file: !94, line: 97, baseType: !4361, size: 64, offset: 320)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4363)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4364)
!4364 = !{!4365, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4363, file: !101, line: 287, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!109, !4329}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4363, file: !101, line: 288, baseType: !4357, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4363, file: !101, line: 289, baseType: !4366, size: 64, offset: 128)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4363, file: !101, line: 290, baseType: !4366, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4363, file: !101, line: 291, baseType: !4366, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4363, file: !101, line: 292, baseType: !4366, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4363, file: !101, line: 293, baseType: !4366, size: 64, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4363, file: !101, line: 294, baseType: !4366, size: 64, offset: 448)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4363, file: !101, line: 295, baseType: !4366, size: 64, offset: 512)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4363, file: !101, line: 296, baseType: !4366, size: 64, offset: 576)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4363, file: !101, line: 297, baseType: !4366, size: 64, offset: 640)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4363, file: !101, line: 298, baseType: !4366, size: 64, offset: 704)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4363, file: !101, line: 299, baseType: !4366, size: 64, offset: 768)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4363, file: !101, line: 300, baseType: !4366, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4363, file: !101, line: 301, baseType: !4366, size: 64, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4363, file: !101, line: 302, baseType: !4366, size: 64, offset: 960)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4363, file: !101, line: 303, baseType: !4366, size: 64, offset: 1024)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4363, file: !101, line: 304, baseType: !4366, size: 64, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4363, file: !101, line: 305, baseType: !4366, size: 64, offset: 1152)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4363, file: !101, line: 306, baseType: !4366, size: 64, offset: 1216)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4363, file: !101, line: 307, baseType: !4366, size: 64, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4363, file: !101, line: 308, baseType: !4366, size: 64, offset: 1344)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4363, file: !101, line: 309, baseType: !4366, size: 64, offset: 1408)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4330, file: !94, line: 714, baseType: !4392, size: 64, offset: 768)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4395, line: 80, size: 1344, elements: !4396)
!4395 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4396 = !{!4397, !4398, !4399, !4400, !4401, !4402, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4472}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4394, file: !4395, line: 81, baseType: !411, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4394, file: !4395, line: 82, baseType: !411, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4394, file: !4395, line: 83, baseType: !537, size: 64, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4394, file: !4395, line: 84, baseType: !537, size: 64, offset: 192)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4394, file: !4395, line: 85, baseType: !537, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4394, file: !4395, line: 87, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!109, !4329, !4406}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4408)
!4408 = !{!4409, !4410, !4411, !4412, !4413, !4414, !4415, !4425, !4435, !4436, !4437, !4438, !4439, !4447, !4448, !4449, !4450, !4451, !4452}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4407, file: !88, line: 97, baseType: !411, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4407, file: !88, line: 98, baseType: !4392, size: 64, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4407, file: !88, line: 100, baseType: !394, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4407, file: !88, line: 101, baseType: !411, size: 64, offset: 192)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4407, file: !88, line: 103, baseType: !1090, size: 8, offset: 256)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4407, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4407, file: !88, line: 106, baseType: !4416, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4418)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4419, line: 282, size: 1600, elements: !4420)
!4419 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4420 = !{!4421, !4422, !4423, !4424}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4418, file: !4419, line: 283, baseType: !382, size: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4418, file: !4419, line: 284, baseType: !382, size: 256, offset: 256)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4418, file: !4419, line: 285, baseType: !392, size: 1024, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4418, file: !4419, line: 286, baseType: !1420, size: 64, offset: 1536)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4407, file: !88, line: 107, baseType: !4426, size: 64, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4419, line: 217, size: 256, elements: !4429)
!4429 = !{!4430, !4431, !4433, !4434}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4428, file: !4419, line: 218, baseType: !3353, size: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4428, file: !4419, line: 219, baseType: !4432, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4419, line: 15, baseType: !356)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4428, file: !4419, line: 220, baseType: !635, size: 32, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4428, file: !4419, line: 221, baseType: !635, size: 32, offset: 224)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4407, file: !88, line: 109, baseType: !4366, size: 64, offset: 448)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4407, file: !88, line: 110, baseType: !4357, size: 64, offset: 512)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4407, file: !88, line: 111, baseType: !4366, size: 64, offset: 576)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4407, file: !88, line: 112, baseType: !4357, size: 64, offset: 640)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4407, file: !88, line: 113, baseType: !4440, size: 64, offset: 704)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!109, !4329, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4444)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4445)
!4445 = !{!4446}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4444, file: !101, line: 59, baseType: !109, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4407, file: !88, line: 114, baseType: !4366, size: 64, offset: 768)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4407, file: !88, line: 115, baseType: !537, size: 64, offset: 832)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4407, file: !88, line: 116, baseType: !537, size: 64, offset: 896)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4407, file: !88, line: 118, baseType: !4361, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4407, file: !88, line: 119, baseType: !4357, size: 64, offset: 1024)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4407, file: !88, line: 121, baseType: !4453, size: 64, offset: 1088)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4394, file: !4395, line: 88, baseType: !4346, size: 64, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4394, file: !4395, line: 89, baseType: !4366, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4394, file: !4395, line: 90, baseType: !4357, size: 64, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4394, file: !4395, line: 91, baseType: !4357, size: 64, offset: 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4394, file: !4395, line: 92, baseType: !4357, size: 64, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4394, file: !4395, line: 94, baseType: !4366, size: 64, offset: 704)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4394, file: !4395, line: 95, baseType: !4366, size: 64, offset: 768)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4394, file: !4395, line: 97, baseType: !4440, size: 64, offset: 832)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4394, file: !4395, line: 98, baseType: !4366, size: 64, offset: 896)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4394, file: !4395, line: 100, baseType: !4366, size: 64, offset: 960)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4394, file: !4395, line: 102, baseType: !4366, size: 64, offset: 1024)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4394, file: !4395, line: 103, baseType: !4357, size: 64, offset: 1088)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4394, file: !4395, line: 105, baseType: !4361, size: 64, offset: 1152)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4394, file: !4395, line: 107, baseType: !4469, size: 64, offset: 1216)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4471)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4395, line: 107, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4394, file: !4395, line: 109, baseType: !1090, size: 8, offset: 1280)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4330, file: !94, line: 715, baseType: !4406, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4330, file: !94, line: 717, baseType: !194, size: 64, offset: 896)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4330, file: !94, line: 719, baseType: !194, size: 64, offset: 960)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4330, file: !94, line: 721, baseType: !845, size: 256, offset: 1024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4330, file: !94, line: 725, baseType: !4478, size: 448, offset: 1280)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4478, file: !94, line: 518, baseType: !206, size: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4478, file: !94, line: 519, baseType: !206, size: 128, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4478, file: !94, line: 520, baseType: !206, size: 128, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4478, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4330, file: !94, line: 726, baseType: !4485, size: 2496, offset: 1728)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4486)
!4486 = !{!4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4569, !4573}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4485, file: !101, line: 664, baseType: !4443, size: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4485, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4485, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4485, file: !101, line: 667, baseType: !1090, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4485, file: !101, line: 668, baseType: !1090, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4485, file: !101, line: 669, baseType: !1090, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4485, file: !101, line: 670, baseType: !1090, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4485, file: !101, line: 671, baseType: !1090, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4485, file: !101, line: 672, baseType: !1090, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4485, file: !101, line: 673, baseType: !1090, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4485, file: !101, line: 674, baseType: !1090, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4485, file: !101, line: 675, baseType: !634, size: 32, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4485, file: !101, line: 676, baseType: !422, size: 32, offset: 96)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4485, file: !101, line: 678, baseType: !206, size: 128, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4485, file: !101, line: 679, baseType: !1651, size: 256, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4485, file: !101, line: 680, baseType: !4503, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4505, line: 43, size: 1536, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4506 = !{!4507, !4508, !4509, !4510, !4511, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4504, file: !4505, line: 44, baseType: !411, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4504, file: !4505, line: 45, baseType: !109, size: 32, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4504, file: !4505, line: 46, baseType: !206, size: 128, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4504, file: !4505, line: 47, baseType: !422, size: 32, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4504, file: !4505, line: 48, baseType: !4512, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4504, file: !4505, line: 49, baseType: !3085, size: 320, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4504, file: !4505, line: 50, baseType: !356, size: 64, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4504, file: !4505, line: 51, baseType: !2264, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4504, file: !4505, line: 52, baseType: !2264, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4504, file: !4505, line: 53, baseType: !2264, size: 64, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4504, file: !4505, line: 54, baseType: !2264, size: 64, offset: 960)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4504, file: !4505, line: 55, baseType: !2264, size: 64, offset: 1024)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4504, file: !4505, line: 56, baseType: !356, size: 64, offset: 1088)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4504, file: !4505, line: 57, baseType: !356, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4504, file: !4505, line: 58, baseType: !356, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4504, file: !4505, line: 59, baseType: !356, size: 64, offset: 1280)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4504, file: !4505, line: 60, baseType: !356, size: 64, offset: 1344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4504, file: !4505, line: 61, baseType: !4329, size: 64, offset: 1408)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4504, file: !4505, line: 62, baseType: !1090, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4504, file: !4505, line: 63, baseType: !1090, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4485, file: !101, line: 681, baseType: !1090, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4485, file: !101, line: 682, baseType: !1090, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4485, file: !101, line: 683, baseType: !1090, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4485, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4485, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4485, file: !101, line: 690, baseType: !2256, size: 512, offset: 640)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4485, file: !101, line: 691, baseType: !638, size: 64, offset: 1152)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4485, file: !101, line: 692, baseType: !1459, size: 256, offset: 1216)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4485, file: !101, line: 693, baseType: !959, size: 192, offset: 1472)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4485, file: !101, line: 694, baseType: !4512, size: 64, offset: 1664)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4485, file: !101, line: 695, baseType: !442, size: 32, offset: 1728)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4485, file: !101, line: 696, baseType: !442, size: 32, offset: 1760)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4485, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4485, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4485, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4485, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4485, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4485, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4485, file: !101, line: 703, baseType: !1090, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
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
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4485, file: !101, line: 715, baseType: !638, size: 64, offset: 2048)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4485, file: !101, line: 716, baseType: !638, size: 64, offset: 2112)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4485, file: !101, line: 717, baseType: !638, size: 64, offset: 2176)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4485, file: !101, line: 718, baseType: !638, size: 64, offset: 2240)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4485, file: !101, line: 720, baseType: !4564, size: 64, offset: 2304)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4566)
!4566 = !{!4567, !4568}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4565, file: !101, line: 633, baseType: !422, size: 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4565, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4485, file: !101, line: 721, baseType: !4570, size: 64, offset: 2368)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !4329, !1016}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4485, file: !101, line: 722, baseType: !4574, size: 64, offset: 2432)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4330, file: !94, line: 727, baseType: !4577, size: 64, offset: 4224)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4579)
!4579 = !{!4580, !4581, !4582, !4586, !4587, !4588}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4578, file: !101, line: 743, baseType: !4363, size: 1472)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4578, file: !101, line: 744, baseType: !4366, size: 64, offset: 1472)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4578, file: !101, line: 745, baseType: !4583, size: 64, offset: 1536)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4329, !1090}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4578, file: !101, line: 746, baseType: !4366, size: 64, offset: 1600)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4578, file: !101, line: 747, baseType: !4357, size: 64, offset: 1664)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4578, file: !101, line: 748, baseType: !4357, size: 64, offset: 1728)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4330, file: !94, line: 736, baseType: !4590, size: 128, offset: 4288)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4591)
!4591 = !{!4592, !4596}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4590, file: !94, line: 531, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4595, line: 13, flags: DIFlagFwdDecl)
!4595 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4590, file: !94, line: 532, baseType: !4597, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4330, file: !94, line: 738, baseType: !4600, size: 64, offset: 4416)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4602)
!4602 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4330, file: !94, line: 740, baseType: !4604, size: 64, offset: 4480)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4330, file: !94, line: 741, baseType: !638, size: 64, offset: 4544)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4330, file: !94, line: 746, baseType: !638, size: 64, offset: 4608)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4330, file: !94, line: 747, baseType: !4608, size: 64, offset: 4672)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4610)
!4610 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4330, file: !94, line: 749, baseType: !4612, size: 64, offset: 4736)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4614)
!4614 = !{!4615, !4616, !4617}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4613, file: !94, line: 433, baseType: !7, size: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4613, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4613, file: !94, line: 435, baseType: !356, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4330, file: !94, line: 751, baseType: !206, size: 128, offset: 4800)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4330, file: !94, line: 762, baseType: !4620, size: 64, offset: 4928)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4330, file: !94, line: 770, baseType: !4623, offset: 4992)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4624, line: 5, elements: !764)
!4624 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4330, file: !94, line: 772, baseType: !4626, size: 64, offset: 4992)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4628, line: 18, flags: DIFlagFwdDecl)
!4628 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4330, file: !94, line: 773, baseType: !4630, size: 64, offset: 5056)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4395, line: 22, flags: DIFlagFwdDecl)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4330, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4330, file: !94, line: 778, baseType: !717, size: 32, offset: 5152)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4330, file: !94, line: 779, baseType: !634, size: 32, offset: 5184)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4330, file: !94, line: 781, baseType: !422, size: 32, offset: 5216)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4330, file: !94, line: 782, baseType: !206, size: 128, offset: 5248)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4330, file: !94, line: 784, baseType: !4638, size: 64, offset: 5376)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4640)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4641, line: 52, size: 768, elements: !4642)
!4641 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4651, !4655, !4656, !4657, !4658, !4662, !4666}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4640, file: !4641, line: 53, baseType: !411, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4640, file: !4641, line: 55, baseType: !537, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4640, file: !4641, line: 56, baseType: !537, size: 64, offset: 128)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4640, file: !4641, line: 58, baseType: !4346, size: 64, offset: 192)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4640, file: !4641, line: 59, baseType: !4648, size: 64, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!490, !4349, !4355}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4640, file: !4641, line: 61, baseType: !4652, size: 64, offset: 320)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4638}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4640, file: !4641, line: 62, baseType: !4357, size: 64, offset: 384)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4640, file: !4641, line: 64, baseType: !4366, size: 64, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4640, file: !4641, line: 66, baseType: !3857, size: 64, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4640, file: !4641, line: 67, baseType: !4659, size: 64, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!1420, !4349}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4640, file: !4641, line: 69, baseType: !4663, size: 64, offset: 640)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !4349, !3889, !3890}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4640, file: !4641, line: 71, baseType: !4361, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4330, file: !94, line: 785, baseType: !537, size: 64, offset: 5440)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4330, file: !94, line: 787, baseType: !4357, size: 64, offset: 5504)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4330, file: !94, line: 788, baseType: !4670, size: 64, offset: 5568)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4330, file: !94, line: 789, baseType: !4673, size: 64, offset: 5632)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4330, file: !94, line: 791, baseType: !4676, size: 64, offset: 5696)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4678)
!4678 = !{!4679, !4680, !4681, !4682, !4683}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4677, file: !94, line: 598, baseType: !116, size: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4677, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4677, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4677, file: !94, line: 601, baseType: !1090, size: 8, offset: 96)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4677, file: !94, line: 602, baseType: !1090, size: 8, offset: 104)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4330, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4330, file: !94, line: 795, baseType: !1090, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4330, file: !94, line: 796, baseType: !1090, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4330, file: !94, line: 797, baseType: !1090, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4330, file: !94, line: 798, baseType: !1090, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4330, file: !94, line: 799, baseType: !1090, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !373, file: !142, line: 100, baseType: !7, size: 32, offset: 3520)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !373, file: !142, line: 101, baseType: !1031, size: 320, offset: 3584)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !373, file: !142, line: 102, baseType: !923, size: 64, offset: 3904)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !373, file: !142, line: 103, baseType: !109, size: 32, offset: 3968)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !373, file: !142, line: 104, baseType: !533, size: 64, offset: 4032)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !373, file: !142, line: 105, baseType: !206, size: 128, offset: 4096)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !373, file: !142, line: 106, baseType: !206, size: 128, offset: 4224)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !373, file: !142, line: 108, baseType: !3606, size: 128, offset: 4352)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !373, file: !142, line: 109, baseType: !3606, size: 128, offset: 4480)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !373, file: !142, line: 110, baseType: !1090, size: 8, offset: 4608)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !373, file: !142, line: 113, baseType: !4701, size: 64, offset: 4672)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !142, line: 113, flags: DIFlagFwdDecl)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !373, file: !142, line: 114, baseType: !4704, size: 64, offset: 4736)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !142, line: 114, flags: DIFlagFwdDecl)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !373, file: !142, line: 116, baseType: !206, size: 128, offset: 4800)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !373, file: !142, line: 117, baseType: !4708, size: 64, offset: 4928)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !142, line: 117, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !373, file: !142, line: 119, baseType: !422, size: 32, offset: 4992)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !373, file: !142, line: 120, baseType: !109, size: 32, offset: 5024)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !373, file: !142, line: 121, baseType: !2528, size: 64, offset: 5056)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !373, file: !142, line: 122, baseType: !4329, size: 64, offset: 5120)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !373, file: !142, line: 123, baseType: !4330, size: 5824, offset: 5184)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !373, file: !142, line: 124, baseType: !4716, size: 256, offset: 11008)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 256, elements: !338)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !373, file: !142, line: 125, baseType: !1090, size: 8, offset: 11264)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !373, file: !142, line: 126, baseType: !1090, size: 8, offset: 11272)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !373, file: !142, line: 127, baseType: !1090, size: 8, offset: 11280)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !373, file: !142, line: 128, baseType: !109, size: 32, offset: 11296)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !373, file: !142, line: 129, baseType: !959, size: 192, offset: 11328)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !373, file: !142, line: 131, baseType: !533, size: 64, offset: 11520)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !373, file: !142, line: 132, baseType: !845, size: 256, offset: 11584)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !373, file: !142, line: 138, baseType: !7, size: 32, offset: 11840)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !373, file: !142, line: 139, baseType: !442, size: 32, offset: 11872)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !373, file: !142, line: 140, baseType: !959, size: 192, offset: 11904)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !373, file: !142, line: 141, baseType: !959, size: 192, offset: 12096)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !368, file: !203, line: 108, baseType: !944, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_subdevice", scope: !368, file: !203, line: 109, baseType: !4730, size: 64, offset: 256)
!4730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !2649)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "change_sleep", scope: !368, file: !203, line: 110, baseType: !959, size: 192, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "read_lock", scope: !368, file: !203, line: 111, baseType: !422, size: 32, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !368, file: !203, line: 112, baseType: !4734, size: 64, offset: 576)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_fasync", file: !142, line: 511, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !368, file: !203, line: 113, baseType: !109, size: 32, offset: 640)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !368, file: !203, line: 114, baseType: !206, size: 128, offset: 704)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !364, file: !203, line: 67, baseType: !7, size: 32, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !198, file: !3, line: 20, baseType: !206, size: 128, offset: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mask_bits", scope: !198, file: !3, line: 21, baseType: !7, size: 32, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "jack", scope: !198, file: !3, line: 22, baseType: !4742, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_jack", file: !162, line: 59, size: 1792, elements: !4744)
!4744 = !{!4745, !4746, !4747, !4748, !5024, !5025, !5026, !5027, !5031, !5033, !5034, !5035}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "kctl_list", scope: !4743, file: !162, line: 60, baseType: !206, size: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4743, file: !162, line: 61, baseType: !372, size: 64, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4743, file: !162, line: 62, baseType: !411, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4743, file: !162, line: 64, baseType: !4749, size: 64, offset: 256)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4751, line: 137, size: 10880, elements: !4752)
!4751 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!4752 = !{!4753, !4754, !4755, !4756, !4764, !4765, !4766, !4768, !4769, !4770, !4771, !4772, !4773, !4775, !4776, !4777, !4778, !4779, !4780, !4794, !4799, !4894, !4897, !4898, !4899, !4900, !4903, !4913, !4914, !4915, !4916, !4917, !4921, !4925, !4929, !4933, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5020, !5021, !5023}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4750, file: !4751, line: 138, baseType: !411, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4750, file: !4751, line: 139, baseType: !411, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4750, file: !4751, line: 140, baseType: !411, size: 64, offset: 128)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4750, file: !4751, line: 141, baseType: !4757, size: 64, offset: 192)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4758, line: 59, size: 64, elements: !4759)
!4758 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!4759 = !{!4760, !4761, !4762, !4763}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4757, file: !4758, line: 60, baseType: !459, size: 16)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4757, file: !4758, line: 61, baseType: !459, size: 16, offset: 16)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4757, file: !4758, line: 62, baseType: !459, size: 16, offset: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4757, file: !4758, line: 63, baseType: !459, size: 16, offset: 48)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4750, file: !4751, line: 143, baseType: !2383, size: 64, offset: 256)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4750, file: !4751, line: 145, baseType: !2383, size: 64, offset: 320)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4750, file: !4751, line: 146, baseType: !4767, size: 768, offset: 384)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 768, elements: !3226)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4750, file: !4751, line: 147, baseType: !2383, size: 64, offset: 1152)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4750, file: !4751, line: 148, baseType: !2383, size: 64, offset: 1216)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4750, file: !4751, line: 149, baseType: !2383, size: 64, offset: 1280)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4750, file: !4751, line: 150, baseType: !2383, size: 64, offset: 1344)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4750, file: !4751, line: 151, baseType: !2383, size: 64, offset: 1408)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4750, file: !4751, line: 152, baseType: !4774, size: 128, offset: 1472)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 128, elements: !2649)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4750, file: !4751, line: 153, baseType: !2383, size: 64, offset: 1600)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4750, file: !4751, line: 155, baseType: !7, size: 32, offset: 1664)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4750, file: !4751, line: 157, baseType: !7, size: 32, offset: 1696)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4750, file: !4751, line: 158, baseType: !7, size: 32, offset: 1728)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4750, file: !4751, line: 159, baseType: !194, size: 64, offset: 1792)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4750, file: !4751, line: 161, baseType: !4781, size: 64, offset: 1856)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!109, !4749, !4784, !314}
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4758, line: 117, size: 320, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4792}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4786, file: !4758, line: 119, baseType: !452, size: 8)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4786, file: !4758, line: 120, baseType: !452, size: 8, offset: 8)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4786, file: !4758, line: 121, baseType: !459, size: 16, offset: 16)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4786, file: !4758, line: 122, baseType: !635, size: 32, offset: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4786, file: !4758, line: 123, baseType: !4793, size: 256, offset: 64)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !383)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4750, file: !4751, line: 164, baseType: !4795, size: 64, offset: 1920)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!109, !4749, !4798}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4750, file: !4751, line: 167, baseType: !4800, size: 64, offset: 1984)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4751, line: 546, size: 960, elements: !4802)
!4802 = !{!4803, !4870, !4874, !4878, !4882, !4883, !4887, !4888, !4889, !4890, !4891, !4892}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4801, file: !4751, line: 547, baseType: !4804, size: 64)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!109, !4749, !4807, !4807}
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4758, line: 454, size: 384, elements: !4809)
!4809 = !{!4810, !4811, !4812, !4813, !4818, !4823}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4808, file: !4758, line: 455, baseType: !459, size: 16)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4808, file: !4758, line: 456, baseType: !1438, size: 16, offset: 16)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4808, file: !4758, line: 457, baseType: !459, size: 16, offset: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4808, file: !4758, line: 458, baseType: !4814, size: 32, offset: 48)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4758, line: 320, size: 32, elements: !4815)
!4815 = !{!4816, !4817}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4814, file: !4758, line: 321, baseType: !459, size: 16)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4814, file: !4758, line: 322, baseType: !459, size: 16, offset: 16)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4808, file: !4758, line: 459, baseType: !4819, size: 32, offset: 80)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4758, line: 310, size: 32, elements: !4820)
!4820 = !{!4821, !4822}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4819, file: !4758, line: 311, baseType: !459, size: 16)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4819, file: !4758, line: 312, baseType: !459, size: 16, offset: 16)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4808, file: !4758, line: 467, baseType: !4824, size: 256, offset: 128)
!4824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4808, file: !4758, line: 461, size: 256, elements: !4825)
!4825 = !{!4826, !4837, !4843, !4855, !4865}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4824, file: !4758, line: 462, baseType: !4827, size: 80)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4758, line: 349, size: 80, elements: !4828)
!4828 = !{!4829, !4830}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4827, file: !4758, line: 350, baseType: !1438, size: 16)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4827, file: !4758, line: 351, baseType: !4831, size: 64, offset: 16)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4758, line: 337, size: 64, elements: !4832)
!4832 = !{!4833, !4834, !4835, !4836}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4831, file: !4758, line: 338, baseType: !459, size: 16)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4831, file: !4758, line: 339, baseType: !459, size: 16, offset: 16)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4831, file: !4758, line: 340, baseType: !459, size: 16, offset: 32)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4831, file: !4758, line: 341, baseType: !459, size: 16, offset: 48)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4824, file: !4758, line: 463, baseType: !4838, size: 96)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4758, line: 360, size: 96, elements: !4839)
!4839 = !{!4840, !4841, !4842}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4838, file: !4758, line: 361, baseType: !1438, size: 16)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4838, file: !4758, line: 362, baseType: !1438, size: 16, offset: 16)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4838, file: !4758, line: 363, baseType: !4831, size: 64, offset: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4824, file: !4758, line: 464, baseType: !4844, size: 256)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4758, line: 405, size: 256, elements: !4845)
!4845 = !{!4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4844, file: !4758, line: 406, baseType: !459, size: 16)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4844, file: !4758, line: 407, baseType: !459, size: 16, offset: 16)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4844, file: !4758, line: 408, baseType: !1438, size: 16, offset: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4844, file: !4758, line: 409, baseType: !1438, size: 16, offset: 48)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4844, file: !4758, line: 410, baseType: !459, size: 16, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4844, file: !4758, line: 412, baseType: !4831, size: 64, offset: 80)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4844, file: !4758, line: 414, baseType: !635, size: 32, offset: 160)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4844, file: !4758, line: 415, baseType: !4854, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4824, file: !4758, line: 465, baseType: !4856, size: 192)
!4856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4857, size: 192, elements: !2649)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4758, line: 376, size: 96, elements: !4858)
!4858 = !{!4859, !4860, !4861, !4862, !4863, !4864}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4857, file: !4758, line: 377, baseType: !459, size: 16)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4857, file: !4758, line: 378, baseType: !459, size: 16, offset: 16)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4857, file: !4758, line: 380, baseType: !1438, size: 16, offset: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4857, file: !4758, line: 381, baseType: !1438, size: 16, offset: 48)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4857, file: !4758, line: 383, baseType: !459, size: 16, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4857, file: !4758, line: 384, baseType: !1438, size: 16, offset: 80)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4824, file: !4758, line: 466, baseType: !4866, size: 32)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4758, line: 426, size: 32, elements: !4867)
!4867 = !{!4868, !4869}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4866, file: !4758, line: 427, baseType: !459, size: 16)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4866, file: !4758, line: 428, baseType: !459, size: 16, offset: 16)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4801, file: !4751, line: 549, baseType: !4871, size: 64, offset: 64)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!109, !4749, !109}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4801, file: !4751, line: 551, baseType: !4875, size: 64, offset: 128)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!109, !4749, !109, !109}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4801, file: !4751, line: 552, baseType: !4879, size: 64, offset: 192)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{null, !4749, !458}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4801, file: !4751, line: 553, baseType: !4879, size: 64, offset: 256)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4801, file: !4751, line: 555, baseType: !4884, size: 64, offset: 320)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{null, !4800}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4801, file: !4751, line: 557, baseType: !194, size: 64, offset: 384)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4801, file: !4751, line: 559, baseType: !4774, size: 128, offset: 448)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4801, file: !4751, line: 561, baseType: !845, size: 256, offset: 576)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4801, file: !4751, line: 563, baseType: !109, size: 32, offset: 832)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4801, file: !4751, line: 564, baseType: !4807, size: 64, offset: 896)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4801, file: !4751, line: 565, baseType: !4893, offset: 960)
!4893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1218, elements: !974)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4750, file: !4751, line: 169, baseType: !4895, size: 64, offset: 2048)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4751, line: 24, flags: DIFlagFwdDecl)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4750, file: !4751, line: 171, baseType: !7, size: 32, offset: 2112)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4750, file: !4751, line: 172, baseType: !3085, size: 320, offset: 2176)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4750, file: !4751, line: 174, baseType: !4730, size: 64, offset: 2496)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4750, file: !4751, line: 176, baseType: !4901, size: 64, offset: 2560)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4751, line: 176, flags: DIFlagFwdDecl)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4750, file: !4751, line: 178, baseType: !4904, size: 64, offset: 2624)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4758, line: 93, size: 192, elements: !4906)
!4906 = !{!4907, !4908, !4909, !4910, !4911, !4912}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4905, file: !4758, line: 94, baseType: !1017, size: 32)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4905, file: !4758, line: 95, baseType: !1017, size: 32, offset: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4905, file: !4758, line: 96, baseType: !1017, size: 32, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4905, file: !4758, line: 97, baseType: !1017, size: 32, offset: 96)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4905, file: !4758, line: 98, baseType: !1017, size: 32, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4905, file: !4758, line: 99, baseType: !1017, size: 32, offset: 160)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4750, file: !4751, line: 180, baseType: !4767, size: 768, offset: 2688)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4750, file: !4751, line: 181, baseType: !2383, size: 64, offset: 3456)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4750, file: !4751, line: 182, baseType: !2383, size: 64, offset: 3520)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4750, file: !4751, line: 183, baseType: !2383, size: 64, offset: 3584)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4750, file: !4751, line: 185, baseType: !4918, size: 64, offset: 3648)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!109, !4749}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4750, file: !4751, line: 186, baseType: !4922, size: 64, offset: 3712)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{null, !4749}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4750, file: !4751, line: 187, baseType: !4926, size: 64, offset: 3776)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!109, !4749, !1218}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4750, file: !4751, line: 188, baseType: !4930, size: 64, offset: 3840)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!109, !4749, !7, !7, !109}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4750, file: !4751, line: 190, baseType: !4934, size: 64, offset: 3904)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4751, line: 345, size: 576, elements: !4936)
!4936 = !{!4937, !4938, !4939, !4940, !4941, !5007, !5008}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4935, file: !4751, line: 347, baseType: !194, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4935, file: !4751, line: 349, baseType: !109, size: 32, offset: 64)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4935, file: !4751, line: 350, baseType: !411, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4935, file: !4751, line: 352, baseType: !4749, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4935, file: !4751, line: 353, baseType: !4942, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4751, line: 310, size: 960, elements: !4944)
!4944 = !{!4945, !4946, !4950, !4961, !4965, !4969, !4996, !5000, !5001, !5002, !5003, !5004, !5005, !5006}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4943, file: !4751, line: 312, baseType: !194, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4943, file: !4751, line: 314, baseType: !4947, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !4934, !7, !7, !109}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4943, file: !4751, line: 315, baseType: !4951, size: 64, offset: 128)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{null, !4934, !4954, !7}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4956)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4751, line: 32, size: 64, elements: !4957)
!4957 = !{!4958, !4959, !4960}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4956, file: !4751, line: 33, baseType: !459, size: 16)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4956, file: !4751, line: 34, baseType: !459, size: 16, offset: 16)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4956, file: !4751, line: 35, baseType: !1017, size: 32, offset: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4943, file: !4751, line: 317, baseType: !4962, size: 64, offset: 192)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!1090, !4934, !7, !7, !109}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4943, file: !4751, line: 318, baseType: !4966, size: 64, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!1090, !4942, !4749}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4943, file: !4751, line: 319, baseType: !4970, size: 64, offset: 320)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!109, !4942, !4749, !4973}
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4975)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4419, line: 362, size: 1600, elements: !4976)
!4976 = !{!4977, !4978, !4979, !4980, !4981, !4982, !4984, !4986, !4987, !4988, !4989, !4990, !4991, !4993, !4994, !4995}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4975, file: !4419, line: 364, baseType: !4432, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4975, file: !4419, line: 366, baseType: !459, size: 16, offset: 64)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4975, file: !4419, line: 367, baseType: !459, size: 16, offset: 80)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4975, file: !4419, line: 368, baseType: !459, size: 16, offset: 96)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4975, file: !4419, line: 369, baseType: !459, size: 16, offset: 112)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4975, file: !4419, line: 371, baseType: !4983, size: 64, offset: 128)
!4983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4432, size: 64, elements: !2384)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4975, file: !4419, line: 372, baseType: !4985, size: 768, offset: 192)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4432, size: 768, elements: !3226)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4975, file: !4419, line: 373, baseType: !4983, size: 64, offset: 960)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4975, file: !4419, line: 374, baseType: !4983, size: 64, offset: 1024)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4975, file: !4419, line: 375, baseType: !4983, size: 64, offset: 1088)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4975, file: !4419, line: 376, baseType: !4983, size: 64, offset: 1152)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4975, file: !4419, line: 377, baseType: !4983, size: 64, offset: 1216)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4975, file: !4419, line: 378, baseType: !4992, size: 128, offset: 1280)
!4992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4432, size: 128, elements: !2649)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4975, file: !4419, line: 379, baseType: !4983, size: 64, offset: 1408)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4975, file: !4419, line: 380, baseType: !4983, size: 64, offset: 1472)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4975, file: !4419, line: 382, baseType: !4432, size: 64, offset: 1536)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4943, file: !4751, line: 320, baseType: !4997, size: 64, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{null, !4934}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4943, file: !4751, line: 321, baseType: !4997, size: 64, offset: 448)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4943, file: !4751, line: 323, baseType: !1090, size: 8, offset: 512)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4943, file: !4751, line: 324, baseType: !109, size: 32, offset: 544)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4943, file: !4751, line: 325, baseType: !411, size: 64, offset: 576)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4943, file: !4751, line: 327, baseType: !4973, size: 64, offset: 640)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4943, file: !4751, line: 329, baseType: !206, size: 128, offset: 704)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4943, file: !4751, line: 330, baseType: !206, size: 128, offset: 832)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4935, file: !4751, line: 355, baseType: !206, size: 128, offset: 320)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4935, file: !4751, line: 356, baseType: !206, size: 128, offset: 448)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4750, file: !4751, line: 192, baseType: !422, size: 32, offset: 3968)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4750, file: !4751, line: 193, baseType: !845, size: 256, offset: 4032)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4750, file: !4751, line: 195, baseType: !7, size: 32, offset: 4288)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4750, file: !4751, line: 196, baseType: !1090, size: 8, offset: 4320)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4750, file: !4751, line: 198, baseType: !4330, size: 5824, offset: 4352)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4750, file: !4751, line: 200, baseType: !206, size: 128, offset: 10176)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4750, file: !4751, line: 201, baseType: !206, size: 128, offset: 10304)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4750, file: !4751, line: 203, baseType: !7, size: 32, offset: 10432)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4750, file: !4751, line: 204, baseType: !7, size: 32, offset: 10464)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4750, file: !4751, line: 205, baseType: !5019, size: 64, offset: 10496)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4750, file: !4751, line: 207, baseType: !1090, size: 8, offset: 10560)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4750, file: !4751, line: 209, baseType: !5022, size: 192, offset: 10624)
!5022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2264, size: 192, elements: !491)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !4750, file: !4751, line: 211, baseType: !1090, size: 8, offset: 10816)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev_lock", scope: !4743, file: !162, line: 65, baseType: !845, size: 256, offset: 320)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4743, file: !162, line: 66, baseType: !109, size: 32, offset: 576)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4743, file: !162, line: 67, baseType: !109, size: 32, offset: 608)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4743, file: !162, line: 68, baseType: !5028, size: 800, offset: 640)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 800, elements: !5029)
!5029 = !{!5030}
!5030 = !DISubrange(count: 100)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4743, file: !162, line: 69, baseType: !5032, size: 192, offset: 1440)
!5032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !1077)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "hw_status_cache", scope: !4743, file: !162, line: 71, baseType: !109, size: 32, offset: 1632)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4743, file: !162, line: 72, baseType: !194, size: 64, offset: 1664)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4743, file: !162, line: 73, baseType: !5036, size: 64, offset: 1728)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !4742}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "sw_inject_enable", scope: !198, file: !3, line: 23, baseType: !1090, size: 8, offset: 320)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !209)
!5042 = !{!0, !5043, !5082, !5084, !5089, !5094, !5096, !5101, !5103, !5105, !5107, !5109, !5114}
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(name: "ops", scope: !5045, file: !3, line: 503, type: !5063, isLocal: true, isDefinition: true)
!5045 = distinct !DISubprogram(name: "snd_jack_new", scope: !3, file: !3, line: 497, type: !5046, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5049)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!109, !372, !411, !109, !5048, !1090, !1090}
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!5049 = !{!5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5062}
!5050 = !DILocalVariable(name: "card", arg: 1, scope: !5045, file: !3, line: 497, type: !372)
!5051 = !DILocalVariable(name: "id", arg: 2, scope: !5045, file: !3, line: 497, type: !411)
!5052 = !DILocalVariable(name: "type", arg: 3, scope: !5045, file: !3, line: 497, type: !109)
!5053 = !DILocalVariable(name: "jjack", arg: 4, scope: !5045, file: !3, line: 498, type: !5048)
!5054 = !DILocalVariable(name: "initial_kctl", arg: 5, scope: !5045, file: !3, line: 498, type: !1090)
!5055 = !DILocalVariable(name: "phantom_jack", arg: 6, scope: !5045, file: !3, line: 498, type: !1090)
!5056 = !DILocalVariable(name: "jack", scope: !5045, file: !3, line: 500, type: !4742)
!5057 = !DILocalVariable(name: "jack_kctl", scope: !5045, file: !3, line: 501, type: !197)
!5058 = !DILocalVariable(name: "err", scope: !5045, file: !3, line: 502, type: !109)
!5059 = !DILocalVariable(name: "i", scope: !5060, file: !3, line: 532, type: !109)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 531, column: 21)
!5061 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 531, column: 6)
!5062 = !DILabel(scope: !5045, name: "fail_input", file: !3, line: 566)
!5063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5064)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device_ops", file: !142, line: 61, size: 192, elements: !5065)
!5065 = !{!5066, !5080, !5081}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_free", scope: !5064, file: !142, line: 62, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!109, !5070}
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device", file: !142, line: 67, size: 384, elements: !5072)
!5072 = !{!5073, !5074, !5075, !5076, !5077, !5078}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5071, file: !142, line: 68, baseType: !206, size: 128)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !5071, file: !142, line: 69, baseType: !372, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5071, file: !142, line: 70, baseType: !141, size: 32, offset: 192)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5071, file: !142, line: 71, baseType: !147, size: 32, offset: 224)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !5071, file: !142, line: 72, baseType: !194, size: 64, offset: 256)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5071, file: !142, line: 73, baseType: !5079, size: 64, offset: 320)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5063, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_register", scope: !5064, file: !142, line: 63, baseType: !5067, size: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disconnect", scope: !5064, file: !142, line: 64, baseType: !5067, size: 64, offset: 128)
!5082 = !DIGlobalVariableExpression(var: !5083, expr: !DIExpression())
!5083 = distinct !DIGlobalVariable(name: "__key", scope: !5045, file: !3, line: 528, type: !762, isLocal: true, isDefinition: true)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(scope: null, file: !3, line: 528, type: !5086, isLocal: true, isDefinition: true)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 176, elements: !5087)
!5087 = !{!5088}
!5088 = !DISubrange(count: 22)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(scope: null, file: !3, line: 540, type: !5091, isLocal: true, isDefinition: true)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 40, elements: !5092)
!5092 = !{!5093}
!5093 = !DISubrange(count: 5)
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_jack_new296", scope: !2, file: !3, line: 574, type: !194, isLocal: true, isDefinition: true)
!5096 = !DIGlobalVariableExpression(var: !5097, expr: !DIExpression())
!5097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 589, type: !5098, isLocal: true, isDefinition: true)
!5098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 144, elements: !5099)
!5099 = !{!5100}
!5100 = !DISubrange(count: 18)
!5101 = !DIGlobalVariableExpression(var: !5102, expr: !DIExpression())
!5102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_jack_set_parent298", scope: !2, file: !3, line: 594, type: !194, isLocal: true, isDefinition: true)
!5103 = !DIGlobalVariableExpression(var: !5104, expr: !DIExpression())
!5104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_jack_set_key299", scope: !2, file: !3, line: 635, type: !194, isLocal: true, isDefinition: true)
!5105 = !DIGlobalVariableExpression(var: !5106, expr: !DIExpression())
!5106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_jack_report300", scope: !2, file: !3, line: 693, type: !194, isLocal: true, isDefinition: true)
!5107 = !DIGlobalVariableExpression(var: !5108, expr: !DIExpression())
!5108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !1076, isLocal: true, isDefinition: true)
!5109 = !DIGlobalVariableExpression(var: !5110, expr: !DIExpression())
!5110 = distinct !DIGlobalVariable(scope: null, file: !184, line: 480, type: !5111, isLocal: true, isDefinition: true)
!5111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 168, elements: !5112)
!5112 = !{!5113}
!5113 = !DISubrange(count: 21)
!5114 = !DIGlobalVariableExpression(var: !5115, expr: !DIExpression())
!5115 = distinct !DIGlobalVariable(name: "jack_switch_types", scope: !2, file: !3, line: 30, type: !5116, isLocal: true, isDefinition: true)
!5116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4194, size: 192, elements: !1077)
!5117 = !{i32 7, !"Dwarf Version", i32 5}
!5118 = !{i32 2, !"Debug Info Version", i32 3}
!5119 = !{i32 1, !"wchar_size", i32 2}
!5120 = !{i32 8, !"cf-protection-branch", i32 1}
!5121 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5122 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5123 = !{i32 1, !"Code Model", i32 2}
!5124 = !{i32 1, !"override-stack-alignment", i32 8}
!5125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5126 = distinct !DISubprogram(name: "snd_jack_add_new_kctl", scope: !3, file: !3, line: 469, type: !5127, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!109, !4742, !411, !109}
!5129 = !{!5130, !5131, !5132, !5133}
!5130 = !DILocalVariable(name: "jack", arg: 1, scope: !5126, file: !3, line: 469, type: !4742)
!5131 = !DILocalVariable(name: "name", arg: 2, scope: !5126, file: !3, line: 469, type: !411)
!5132 = !DILocalVariable(name: "mask", arg: 3, scope: !5126, file: !3, line: 469, type: !109)
!5133 = !DILocalVariable(name: "jack_kctl", scope: !5126, file: !3, line: 471, type: !197)
!5134 = !DILocation(line: 469, column: 44, scope: !5126)
!5135 = !DILocation(line: 469, column: 63, scope: !5126)
!5136 = !DILocation(line: 469, column: 73, scope: !5126)
!5137 = !DILocation(line: 471, column: 2, scope: !5126)
!5138 = !DILocation(line: 471, column: 24, scope: !5126)
!5139 = !DILocation(line: 473, column: 32, scope: !5126)
!5140 = !DILocation(line: 473, column: 38, scope: !5126)
!5141 = !DILocation(line: 473, column: 44, scope: !5126)
!5142 = !DILocation(line: 473, column: 50, scope: !5126)
!5143 = !DILocation(line: 473, column: 14, scope: !5126)
!5144 = !DILocation(line: 473, column: 12, scope: !5126)
!5145 = !DILocation(line: 474, column: 7, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 474, column: 6)
!5147 = !DILocation(line: 474, column: 6, scope: !5126)
!5148 = !DILocation(line: 475, column: 3, scope: !5146)
!5149 = !DILocation(line: 477, column: 20, scope: !5126)
!5150 = !DILocation(line: 477, column: 26, scope: !5126)
!5151 = !DILocation(line: 477, column: 2, scope: !5126)
!5152 = !DILocation(line: 478, column: 2, scope: !5126)
!5153 = !DILocation(line: 479, column: 1, scope: !5126)
!5154 = distinct !DISubprogram(name: "snd_jack_kctl_new", scope: !3, file: !3, line: 427, type: !5155, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!197, !372, !411, !7}
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164}
!5158 = !DILocalVariable(name: "card", arg: 1, scope: !5154, file: !3, line: 427, type: !372)
!5159 = !DILocalVariable(name: "name", arg: 2, scope: !5154, file: !3, line: 427, type: !411)
!5160 = !DILocalVariable(name: "mask", arg: 3, scope: !5154, file: !3, line: 427, type: !7)
!5161 = !DILocalVariable(name: "kctl", scope: !5154, file: !3, line: 429, type: !201)
!5162 = !DILocalVariable(name: "jack_kctl", scope: !5154, file: !3, line: 430, type: !197)
!5163 = !DILocalVariable(name: "err", scope: !5154, file: !3, line: 431, type: !109)
!5164 = !DILabel(scope: !5154, name: "error", file: !3, line: 453)
!5165 = !DILocation(line: 427, column: 66, scope: !5154)
!5166 = !DILocation(line: 427, column: 84, scope: !5154)
!5167 = !DILocation(line: 427, column: 103, scope: !5154)
!5168 = !DILocation(line: 429, column: 2, scope: !5154)
!5169 = !DILocation(line: 429, column: 23, scope: !5154)
!5170 = !DILocation(line: 430, column: 2, scope: !5154)
!5171 = !DILocation(line: 430, column: 24, scope: !5154)
!5172 = !DILocation(line: 431, column: 2, scope: !5154)
!5173 = !DILocation(line: 431, column: 6, scope: !5154)
!5174 = !DILocation(line: 433, column: 27, scope: !5154)
!5175 = !DILocation(line: 433, column: 33, scope: !5154)
!5176 = !DILocation(line: 433, column: 9, scope: !5154)
!5177 = !DILocation(line: 433, column: 7, scope: !5154)
!5178 = !DILocation(line: 434, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 434, column: 6)
!5180 = !DILocation(line: 434, column: 6, scope: !5154)
!5181 = !DILocation(line: 435, column: 3, scope: !5179)
!5182 = !DILocation(line: 437, column: 20, scope: !5154)
!5183 = !DILocation(line: 437, column: 26, scope: !5154)
!5184 = !DILocation(line: 437, column: 8, scope: !5154)
!5185 = !DILocation(line: 437, column: 6, scope: !5154)
!5186 = !DILocation(line: 438, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 438, column: 6)
!5188 = !DILocation(line: 438, column: 10, scope: !5187)
!5189 = !DILocation(line: 438, column: 6, scope: !5154)
!5190 = !DILocation(line: 439, column: 3, scope: !5187)
!5191 = !DILocation(line: 441, column: 14, scope: !5154)
!5192 = !DILocation(line: 441, column: 12, scope: !5154)
!5193 = !DILocation(line: 443, column: 7, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 443, column: 6)
!5195 = !DILocation(line: 443, column: 6, scope: !5154)
!5196 = !DILocation(line: 444, column: 3, scope: !5194)
!5197 = !DILocation(line: 446, column: 20, scope: !5154)
!5198 = !DILocation(line: 446, column: 2, scope: !5154)
!5199 = !DILocation(line: 446, column: 13, scope: !5154)
!5200 = !DILocation(line: 446, column: 18, scope: !5154)
!5201 = !DILocation(line: 447, column: 25, scope: !5154)
!5202 = !DILocation(line: 447, column: 2, scope: !5154)
!5203 = !DILocation(line: 447, column: 13, scope: !5154)
!5204 = !DILocation(line: 447, column: 23, scope: !5154)
!5205 = !DILocation(line: 449, column: 23, scope: !5154)
!5206 = !DILocation(line: 449, column: 2, scope: !5154)
!5207 = !DILocation(line: 449, column: 8, scope: !5154)
!5208 = !DILocation(line: 449, column: 21, scope: !5154)
!5209 = !DILocation(line: 450, column: 2, scope: !5154)
!5210 = !DILocation(line: 450, column: 8, scope: !5154)
!5211 = !DILocation(line: 450, column: 21, scope: !5154)
!5212 = !DILocation(line: 452, column: 9, scope: !5154)
!5213 = !DILocation(line: 452, column: 2, scope: !5154)
!5214 = !DILocation(line: 453, column: 1, scope: !5154)
!5215 = !DILocation(line: 454, column: 19, scope: !5154)
!5216 = !DILocation(line: 454, column: 2, scope: !5154)
!5217 = !DILocation(line: 455, column: 2, scope: !5154)
!5218 = !DILocation(line: 456, column: 1, scope: !5154)
!5219 = distinct !DISubprogram(name: "snd_jack_kctl_add", scope: !3, file: !3, line: 420, type: !5220, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5222)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{null, !4742, !197}
!5222 = !{!5223, !5224}
!5223 = !DILocalVariable(name: "jack", arg: 1, scope: !5219, file: !3, line: 420, type: !4742)
!5224 = !DILocalVariable(name: "jack_kctl", arg: 2, scope: !5219, file: !3, line: 420, type: !197)
!5225 = !DILocation(line: 420, column: 48, scope: !5219)
!5226 = !DILocation(line: 420, column: 76, scope: !5219)
!5227 = !DILocation(line: 422, column: 20, scope: !5219)
!5228 = !DILocation(line: 422, column: 2, scope: !5219)
!5229 = !DILocation(line: 422, column: 13, scope: !5219)
!5230 = !DILocation(line: 422, column: 18, scope: !5219)
!5231 = !DILocation(line: 423, column: 17, scope: !5219)
!5232 = !DILocation(line: 423, column: 28, scope: !5219)
!5233 = !DILocation(line: 423, column: 35, scope: !5219)
!5234 = !DILocation(line: 423, column: 41, scope: !5219)
!5235 = !DILocation(line: 423, column: 2, scope: !5219)
!5236 = !DILocation(line: 424, column: 35, scope: !5219)
!5237 = !DILocation(line: 424, column: 41, scope: !5219)
!5238 = !DILocation(line: 424, column: 2, scope: !5219)
!5239 = !DILocation(line: 425, column: 1, scope: !5219)
!5240 = !DILocation(line: 497, column: 35, scope: !5045)
!5241 = !DILocation(line: 497, column: 53, scope: !5045)
!5242 = !DILocation(line: 497, column: 61, scope: !5045)
!5243 = !DILocation(line: 498, column: 22, scope: !5045)
!5244 = !DILocation(line: 498, column: 34, scope: !5045)
!5245 = !DILocation(line: 498, column: 53, scope: !5045)
!5246 = !DILocation(line: 500, column: 2, scope: !5045)
!5247 = !DILocation(line: 500, column: 19, scope: !5045)
!5248 = !DILocation(line: 501, column: 2, scope: !5045)
!5249 = !DILocation(line: 501, column: 24, scope: !5045)
!5250 = !DILocation(line: 502, column: 2, scope: !5045)
!5251 = !DILocation(line: 502, column: 6, scope: !5045)
!5252 = !DILocation(line: 511, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 511, column: 6)
!5254 = !{i8 0, i8 2}
!5255 = !DILocation(line: 511, column: 6, scope: !5045)
!5256 = !DILocation(line: 512, column: 33, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 511, column: 20)
!5258 = !DILocation(line: 512, column: 39, scope: !5257)
!5259 = !DILocation(line: 512, column: 43, scope: !5257)
!5260 = !DILocation(line: 512, column: 15, scope: !5257)
!5261 = !DILocation(line: 512, column: 13, scope: !5257)
!5262 = !DILocation(line: 513, column: 8, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 513, column: 7)
!5264 = !DILocation(line: 513, column: 7, scope: !5257)
!5265 = !DILocation(line: 514, column: 4, scope: !5263)
!5266 = !DILocation(line: 515, column: 2, scope: !5257)
!5267 = !DILocation(line: 517, column: 9, scope: !5045)
!5268 = !DILocation(line: 517, column: 7, scope: !5045)
!5269 = !DILocation(line: 518, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 518, column: 6)
!5271 = !DILocation(line: 518, column: 11, scope: !5270)
!5272 = !DILocation(line: 518, column: 6, scope: !5045)
!5273 = !DILocation(line: 519, column: 3, scope: !5270)
!5274 = !DILocation(line: 521, column: 21, scope: !5045)
!5275 = !DILocation(line: 521, column: 13, scope: !5045)
!5276 = !DILocation(line: 521, column: 2, scope: !5045)
!5277 = !DILocation(line: 521, column: 8, scope: !5045)
!5278 = !DILocation(line: 521, column: 11, scope: !5045)
!5279 = !DILocation(line: 522, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 522, column: 6)
!5281 = !DILocation(line: 522, column: 12, scope: !5280)
!5282 = !DILocation(line: 522, column: 15, scope: !5280)
!5283 = !DILocation(line: 522, column: 6, scope: !5045)
!5284 = !DILocation(line: 523, column: 9, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 522, column: 24)
!5286 = !DILocation(line: 523, column: 3, scope: !5285)
!5287 = !DILocation(line: 524, column: 3, scope: !5285)
!5288 = !DILocation(line: 528, column: 2, scope: !5045)
!5289 = !DILocation(line: 528, column: 2, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 528, column: 2)
!5291 = !DILocation(line: 531, column: 7, scope: !5061)
!5292 = !DILocation(line: 531, column: 6, scope: !5045)
!5293 = !DILocation(line: 532, column: 3, scope: !5060)
!5294 = !DILocation(line: 532, column: 7, scope: !5060)
!5295 = !DILocation(line: 534, column: 21, scope: !5060)
!5296 = !DILocation(line: 534, column: 3, scope: !5060)
!5297 = !DILocation(line: 534, column: 9, scope: !5060)
!5298 = !DILocation(line: 534, column: 19, scope: !5060)
!5299 = !DILocation(line: 535, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 535, column: 7)
!5301 = !DILocation(line: 535, column: 13, scope: !5300)
!5302 = !DILocation(line: 535, column: 23, scope: !5300)
!5303 = !DILocation(line: 535, column: 7, scope: !5060)
!5304 = !DILocation(line: 536, column: 8, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 535, column: 32)
!5306 = !DILocation(line: 537, column: 4, scope: !5305)
!5307 = !DILocation(line: 540, column: 3, scope: !5060)
!5308 = !DILocation(line: 540, column: 9, scope: !5060)
!5309 = !DILocation(line: 540, column: 20, scope: !5060)
!5310 = !DILocation(line: 540, column: 25, scope: !5060)
!5311 = !DILocation(line: 542, column: 16, scope: !5060)
!5312 = !DILocation(line: 542, column: 3, scope: !5060)
!5313 = !DILocation(line: 542, column: 9, scope: !5060)
!5314 = !DILocation(line: 542, column: 14, scope: !5060)
!5315 = !DILocation(line: 544, column: 10, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 544, column: 3)
!5317 = !DILocation(line: 544, column: 8, scope: !5316)
!5318 = !DILocation(line: 544, column: 15, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 544, column: 3)
!5320 = !DILocation(line: 544, column: 17, scope: !5319)
!5321 = !DILocation(line: 544, column: 3, scope: !5316)
!5322 = !DILocation(line: 545, column: 8, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 545, column: 8)
!5324 = !DILocation(line: 545, column: 21, scope: !5323)
!5325 = !DILocation(line: 545, column: 18, scope: !5323)
!5326 = !DILocation(line: 545, column: 13, scope: !5323)
!5327 = !DILocation(line: 545, column: 8, scope: !5319)
!5328 = !DILocation(line: 546, column: 26, scope: !5323)
!5329 = !DILocation(line: 546, column: 32, scope: !5323)
!5330 = !DILocation(line: 547, column: 30, scope: !5323)
!5331 = !DILocation(line: 547, column: 12, scope: !5323)
!5332 = !DILocation(line: 546, column: 5, scope: !5323)
!5333 = !DILocation(line: 545, column: 22, scope: !5323)
!5334 = !DILocation(line: 544, column: 43, scope: !5319)
!5335 = !DILocation(line: 544, column: 3, scope: !5319)
!5336 = distinct !{!5336, !5321, !5337, !5338, !5339}
!5337 = !DILocation(line: 547, column: 32, scope: !5316)
!5338 = !{!"llvm.loop.mustprogress"}
!5339 = !{!"llvm.loop.unroll.disable"}
!5340 = !DILocation(line: 549, column: 2, scope: !5061)
!5341 = !DILocation(line: 549, column: 2, scope: !5060)
!5342 = !DILocation(line: 552, column: 23, scope: !5045)
!5343 = !DILocation(line: 552, column: 45, scope: !5045)
!5344 = !DILocation(line: 552, column: 8, scope: !5045)
!5345 = !DILocation(line: 552, column: 6, scope: !5045)
!5346 = !DILocation(line: 553, column: 6, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 553, column: 6)
!5348 = !DILocation(line: 553, column: 10, scope: !5347)
!5349 = !DILocation(line: 553, column: 6, scope: !5045)
!5350 = !DILocation(line: 554, column: 3, scope: !5347)
!5351 = !DILocation(line: 556, column: 15, scope: !5045)
!5352 = !DILocation(line: 556, column: 2, scope: !5045)
!5353 = !DILocation(line: 556, column: 8, scope: !5045)
!5354 = !DILocation(line: 556, column: 13, scope: !5045)
!5355 = !DILocation(line: 557, column: 18, scope: !5045)
!5356 = !DILocation(line: 557, column: 24, scope: !5045)
!5357 = !DILocation(line: 557, column: 2, scope: !5045)
!5358 = !DILocation(line: 559, column: 6, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 559, column: 6)
!5360 = !DILocation(line: 559, column: 6, scope: !5045)
!5361 = !DILocation(line: 560, column: 21, scope: !5359)
!5362 = !DILocation(line: 560, column: 27, scope: !5359)
!5363 = !DILocation(line: 560, column: 3, scope: !5359)
!5364 = !DILocation(line: 562, column: 11, scope: !5045)
!5365 = !DILocation(line: 562, column: 3, scope: !5045)
!5366 = !DILocation(line: 562, column: 9, scope: !5045)
!5367 = !DILocation(line: 564, column: 2, scope: !5045)
!5368 = !DILocation(line: 566, column: 1, scope: !5045)
!5369 = !DILocation(line: 568, column: 20, scope: !5045)
!5370 = !DILocation(line: 568, column: 26, scope: !5045)
!5371 = !DILocation(line: 568, column: 2, scope: !5045)
!5372 = !DILocation(line: 570, column: 8, scope: !5045)
!5373 = !DILocation(line: 570, column: 14, scope: !5045)
!5374 = !DILocation(line: 570, column: 2, scope: !5045)
!5375 = !DILocation(line: 571, column: 8, scope: !5045)
!5376 = !DILocation(line: 571, column: 2, scope: !5045)
!5377 = !DILocation(line: 572, column: 9, scope: !5045)
!5378 = !DILocation(line: 572, column: 2, scope: !5045)
!5379 = !DILocation(line: 573, column: 1, scope: !5045)
!5380 = distinct !DISubprogram(name: "snd_jack_dev_free", scope: !3, file: !3, line: 64, type: !5068, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5381)
!5381 = !{!5382, !5383, !5384, !5385, !5386, !5387, !5390, !5392}
!5382 = !DILocalVariable(name: "device", arg: 1, scope: !5380, file: !3, line: 64, type: !5070)
!5383 = !DILocalVariable(name: "jack", scope: !5380, file: !3, line: 66, type: !4742)
!5384 = !DILocalVariable(name: "card", scope: !5380, file: !3, line: 67, type: !372)
!5385 = !DILocalVariable(name: "jack_kctl", scope: !5380, file: !3, line: 68, type: !197)
!5386 = !DILocalVariable(name: "tmp_jack_kctl", scope: !5380, file: !3, line: 68, type: !197)
!5387 = !DILocalVariable(name: "__mptr", scope: !5388, file: !3, line: 70, type: !194)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 70, column: 2)
!5389 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 70, column: 2)
!5390 = !DILocalVariable(name: "__mptr", scope: !5391, file: !3, line: 70, type: !194)
!5391 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 70, column: 2)
!5392 = !DILocalVariable(name: "__mptr", scope: !5393, file: !3, line: 70, type: !194)
!5393 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 70, column: 2)
!5394 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 70, column: 2)
!5395 = !DILocation(line: 64, column: 49, scope: !5380)
!5396 = !DILocation(line: 66, column: 2, scope: !5380)
!5397 = !DILocation(line: 66, column: 19, scope: !5380)
!5398 = !DILocation(line: 66, column: 26, scope: !5380)
!5399 = !DILocation(line: 66, column: 34, scope: !5380)
!5400 = !DILocation(line: 67, column: 2, scope: !5380)
!5401 = !DILocation(line: 67, column: 19, scope: !5380)
!5402 = !DILocation(line: 67, column: 26, scope: !5380)
!5403 = !DILocation(line: 67, column: 34, scope: !5380)
!5404 = !DILocation(line: 68, column: 2, scope: !5380)
!5405 = !DILocation(line: 68, column: 24, scope: !5380)
!5406 = !DILocation(line: 68, column: 36, scope: !5380)
!5407 = !DILocation(line: 70, column: 2, scope: !5388)
!5408 = !DILocation(line: 70, column: 2, scope: !5389)
!5409 = !DILocation(line: 70, column: 2, scope: !5391)
!5410 = !DILocation(line: 70, column: 2, scope: !5394)
!5411 = !DILocation(line: 71, column: 18, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 70, column: 77)
!5413 = !DILocation(line: 71, column: 29, scope: !5412)
!5414 = !DILocation(line: 71, column: 3, scope: !5412)
!5415 = !DILocation(line: 72, column: 18, scope: !5412)
!5416 = !DILocation(line: 72, column: 24, scope: !5412)
!5417 = !DILocation(line: 72, column: 35, scope: !5412)
!5418 = !DILocation(line: 72, column: 3, scope: !5412)
!5419 = !DILocation(line: 73, column: 2, scope: !5412)
!5420 = !DILocation(line: 70, column: 2, scope: !5393)
!5421 = distinct !{!5421, !5408, !5422, !5338, !5339}
!5422 = !DILocation(line: 73, column: 2, scope: !5389)
!5423 = !DILocation(line: 75, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 75, column: 6)
!5425 = !DILocation(line: 75, column: 12, scope: !5424)
!5426 = !DILocation(line: 75, column: 6, scope: !5380)
!5427 = !DILocation(line: 76, column: 3, scope: !5424)
!5428 = !DILocation(line: 76, column: 9, scope: !5424)
!5429 = !DILocation(line: 76, column: 22, scope: !5424)
!5430 = !DILocation(line: 78, column: 26, scope: !5380)
!5431 = !DILocation(line: 78, column: 2, scope: !5380)
!5432 = !DILocation(line: 80, column: 8, scope: !5380)
!5433 = !DILocation(line: 80, column: 14, scope: !5380)
!5434 = !DILocation(line: 80, column: 2, scope: !5380)
!5435 = !DILocation(line: 81, column: 8, scope: !5380)
!5436 = !DILocation(line: 81, column: 2, scope: !5380)
!5437 = !DILocation(line: 84, column: 1, scope: !5380)
!5438 = !DILocation(line: 83, column: 2, scope: !5380)
!5439 = distinct !DISubprogram(name: "snd_jack_dev_register", scope: !3, file: !3, line: 87, type: !5068, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5445, !5446, !5449}
!5441 = !DILocalVariable(name: "device", arg: 1, scope: !5439, file: !3, line: 87, type: !5070)
!5442 = !DILocalVariable(name: "jack", scope: !5439, file: !3, line: 89, type: !4742)
!5443 = !DILocalVariable(name: "card", scope: !5439, file: !3, line: 90, type: !372)
!5444 = !DILocalVariable(name: "err", scope: !5439, file: !3, line: 91, type: !109)
!5445 = !DILocalVariable(name: "i", scope: !5439, file: !3, line: 91, type: !109)
!5446 = !DILocalVariable(name: "__UNIQUE_ID_guard294", scope: !5439, file: !3, line: 96, type: !5447)
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "class_mutex_t", file: !846, line: 250, baseType: !5448)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!5449 = !DILocalVariable(name: "testbit", scope: !5450, file: !3, line: 108, type: !109)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 107, column: 46)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 107, column: 2)
!5452 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 107, column: 2)
!5453 = !DILocation(line: 87, column: 53, scope: !5439)
!5454 = !DILocation(line: 89, column: 2, scope: !5439)
!5455 = !DILocation(line: 89, column: 19, scope: !5439)
!5456 = !DILocation(line: 89, column: 26, scope: !5439)
!5457 = !DILocation(line: 89, column: 34, scope: !5439)
!5458 = !DILocation(line: 90, column: 2, scope: !5439)
!5459 = !DILocation(line: 90, column: 19, scope: !5439)
!5460 = !DILocation(line: 90, column: 26, scope: !5439)
!5461 = !DILocation(line: 90, column: 34, scope: !5439)
!5462 = !DILocation(line: 91, column: 2, scope: !5439)
!5463 = !DILocation(line: 91, column: 6, scope: !5439)
!5464 = !DILocation(line: 91, column: 11, scope: !5439)
!5465 = !DILocation(line: 93, column: 11, scope: !5439)
!5466 = !DILocation(line: 93, column: 17, scope: !5439)
!5467 = !DILocation(line: 94, column: 4, scope: !5439)
!5468 = !DILocation(line: 94, column: 10, scope: !5439)
!5469 = !DILocation(line: 94, column: 21, scope: !5439)
!5470 = !DILocation(line: 94, column: 27, scope: !5439)
!5471 = !DILocation(line: 93, column: 2, scope: !5439)
!5472 = !DILocation(line: 96, column: 2, scope: !5439)
!5473 = !DILocation(line: 96, column: 16, scope: !5439)
!5474 = !DILocation(line: 96, column: 22, scope: !5439)
!5475 = !DILocation(line: 97, column: 7, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 97, column: 6)
!5477 = !DILocation(line: 97, column: 13, scope: !5476)
!5478 = !DILocation(line: 97, column: 6, scope: !5439)
!5479 = !DILocation(line: 98, column: 3, scope: !5476)
!5480 = !DILocation(line: 100, column: 26, scope: !5439)
!5481 = !DILocation(line: 100, column: 32, scope: !5439)
!5482 = !DILocation(line: 100, column: 2, scope: !5439)
!5483 = !DILocation(line: 100, column: 8, scope: !5439)
!5484 = !DILocation(line: 100, column: 19, scope: !5439)
!5485 = !DILocation(line: 100, column: 24, scope: !5439)
!5486 = !DILocation(line: 103, column: 7, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 103, column: 6)
!5488 = !DILocation(line: 103, column: 13, scope: !5487)
!5489 = !DILocation(line: 103, column: 24, scope: !5487)
!5490 = !DILocation(line: 103, column: 28, scope: !5487)
!5491 = !DILocation(line: 103, column: 6, scope: !5439)
!5492 = !DILocation(line: 104, column: 58, scope: !5487)
!5493 = !DILocation(line: 104, column: 33, scope: !5487)
!5494 = !DILocation(line: 104, column: 3, scope: !5487)
!5495 = !DILocation(line: 104, column: 9, scope: !5487)
!5496 = !DILocation(line: 104, column: 20, scope: !5487)
!5497 = !DILocation(line: 104, column: 24, scope: !5487)
!5498 = !DILocation(line: 104, column: 31, scope: !5487)
!5499 = !DILocation(line: 107, column: 9, scope: !5452)
!5500 = !DILocation(line: 107, column: 7, scope: !5452)
!5501 = !DILocation(line: 107, column: 14, scope: !5451)
!5502 = !DILocation(line: 107, column: 16, scope: !5451)
!5503 = !DILocation(line: 107, column: 2, scope: !5452)
!5504 = !DILocation(line: 108, column: 3, scope: !5450)
!5505 = !DILocation(line: 108, column: 7, scope: !5450)
!5506 = !DILocation(line: 108, column: 35, scope: !5450)
!5507 = !DILocation(line: 108, column: 32, scope: !5450)
!5508 = !DILocation(line: 110, column: 9, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 110, column: 7)
!5510 = !DILocation(line: 110, column: 15, scope: !5509)
!5511 = !DILocation(line: 110, column: 22, scope: !5509)
!5512 = !DILocation(line: 110, column: 20, scope: !5509)
!5513 = !DILocation(line: 110, column: 7, scope: !5450)
!5514 = !DILocation(line: 111, column: 4, scope: !5509)
!5515 = !DILocation(line: 113, column: 8, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 113, column: 7)
!5517 = !DILocation(line: 113, column: 14, scope: !5516)
!5518 = !DILocation(line: 113, column: 18, scope: !5516)
!5519 = !DILocation(line: 113, column: 7, scope: !5450)
!5520 = !DILocation(line: 114, column: 27, scope: !5516)
!5521 = !DILocation(line: 114, column: 25, scope: !5516)
!5522 = !DILocation(line: 114, column: 4, scope: !5516)
!5523 = !DILocation(line: 114, column: 10, scope: !5516)
!5524 = !DILocation(line: 114, column: 14, scope: !5516)
!5525 = !DILocation(line: 114, column: 17, scope: !5516)
!5526 = !DILocation(line: 116, column: 24, scope: !5450)
!5527 = !DILocation(line: 116, column: 30, scope: !5450)
!5528 = !DILocation(line: 116, column: 49, scope: !5450)
!5529 = !DILocation(line: 116, column: 55, scope: !5450)
!5530 = !DILocation(line: 116, column: 59, scope: !5450)
!5531 = !DILocation(line: 116, column: 3, scope: !5450)
!5532 = !DILocation(line: 117, column: 2, scope: !5451)
!5533 = !DILocation(line: 117, column: 2, scope: !5450)
!5534 = !DILocation(line: 107, column: 42, scope: !5451)
!5535 = !DILocation(line: 107, column: 2, scope: !5451)
!5536 = distinct !{!5536, !5503, !5537, !5338, !5339}
!5537 = !DILocation(line: 117, column: 2, scope: !5452)
!5538 = !DILocation(line: 119, column: 30, scope: !5439)
!5539 = !DILocation(line: 119, column: 36, scope: !5439)
!5540 = !DILocation(line: 119, column: 8, scope: !5439)
!5541 = !DILocation(line: 119, column: 6, scope: !5439)
!5542 = !DILocation(line: 120, column: 6, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 120, column: 6)
!5544 = !DILocation(line: 120, column: 10, scope: !5543)
!5545 = !DILocation(line: 120, column: 6, scope: !5439)
!5546 = !DILocation(line: 121, column: 3, scope: !5543)
!5547 = !DILocation(line: 121, column: 9, scope: !5543)
!5548 = !DILocation(line: 121, column: 20, scope: !5543)
!5549 = !DILocation(line: 123, column: 9, scope: !5439)
!5550 = !DILocation(line: 123, column: 2, scope: !5439)
!5551 = !DILocation(line: 124, column: 1, scope: !5439)
!5552 = distinct !DISubprogram(name: "snd_jack_dev_disconnect", scope: !3, file: !3, line: 42, type: !5068, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5553)
!5553 = !{!5554, !5555, !5556}
!5554 = !DILocalVariable(name: "device", arg: 1, scope: !5552, file: !3, line: 42, type: !5070)
!5555 = !DILocalVariable(name: "jack", scope: !5552, file: !3, line: 44, type: !4742)
!5556 = !DILocalVariable(name: "__UNIQUE_ID_guard293", scope: !5552, file: !3, line: 49, type: !5447)
!5557 = !DILocation(line: 42, column: 55, scope: !5552)
!5558 = !DILocation(line: 44, column: 2, scope: !5552)
!5559 = !DILocation(line: 44, column: 19, scope: !5552)
!5560 = !DILocation(line: 44, column: 26, scope: !5552)
!5561 = !DILocation(line: 44, column: 34, scope: !5552)
!5562 = !DILocation(line: 46, column: 26, scope: !5552)
!5563 = !DILocation(line: 46, column: 2, scope: !5552)
!5564 = !DILocation(line: 49, column: 2, scope: !5552)
!5565 = !DILocation(line: 49, column: 16, scope: !5552)
!5566 = !DILocation(line: 49, column: 22, scope: !5552)
!5567 = !DILocation(line: 50, column: 7, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 50, column: 6)
!5569 = !DILocation(line: 50, column: 13, scope: !5568)
!5570 = !DILocation(line: 50, column: 6, scope: !5552)
!5571 = !DILocation(line: 51, column: 3, scope: !5568)
!5572 = !DILocation(line: 55, column: 6, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 55, column: 6)
!5574 = !DILocation(line: 55, column: 12, scope: !5573)
!5575 = !DILocation(line: 55, column: 6, scope: !5552)
!5576 = !DILocation(line: 56, column: 27, scope: !5573)
!5577 = !DILocation(line: 56, column: 33, scope: !5573)
!5578 = !DILocation(line: 56, column: 3, scope: !5573)
!5579 = !DILocation(line: 58, column: 21, scope: !5573)
!5580 = !DILocation(line: 58, column: 27, scope: !5573)
!5581 = !DILocation(line: 58, column: 3, scope: !5573)
!5582 = !DILocation(line: 59, column: 2, scope: !5552)
!5583 = !DILocation(line: 59, column: 8, scope: !5552)
!5584 = !DILocation(line: 59, column: 18, scope: !5552)
!5585 = !DILocation(line: 61, column: 2, scope: !5552)
!5586 = !DILocation(line: 62, column: 1, scope: !5552)
!5587 = distinct !DISubprogram(name: "kzalloc", scope: !184, file: !184, line: 719, type: !5588, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!194, !533, !195}
!5590 = !{!5591, !5592}
!5591 = !DILocalVariable(name: "size", arg: 1, scope: !5587, file: !184, line: 719, type: !533)
!5592 = !DILocalVariable(name: "flags", arg: 2, scope: !5587, file: !184, line: 719, type: !195)
!5593 = !DILocation(line: 719, column: 52, scope: !5587)
!5594 = !DILocation(line: 719, column: 64, scope: !5587)
!5595 = !DILocation(line: 721, column: 17, scope: !5587)
!5596 = !DILocation(line: 721, column: 23, scope: !5587)
!5597 = !DILocation(line: 721, column: 29, scope: !5587)
!5598 = !DILocation(line: 721, column: 9, scope: !5587)
!5599 = !DILocation(line: 721, column: 2, scope: !5587)
!5600 = !DISubprogram(name: "kstrdup", scope: !5601, file: !5601, line: 216, type: !5602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5601 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!490, !411, !195}
!5604 = !DISubprogram(name: "kfree", scope: !184, file: !184, line: 227, type: !5605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{null, !1420}
!5607 = !DISubprogram(name: "__mutex_init", scope: !846, file: !846, line: 121, type: !5608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{null, !5448, !411, !5610}
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!5611 = !DISubprogram(name: "input_allocate_device", scope: !4751, file: !4751, line: 359, type: !5612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!4749}
!5614 = !DISubprogram(name: "input_set_capability", scope: !4751, file: !4751, line: 458, type: !5615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{null, !4749, !7, !7}
!5617 = !DISubprogram(name: "snd_device_new", scope: !142, file: !142, line: 321, type: !5618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!109, !372, !147, !194, !5079}
!5620 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5621, file: !5621, line: 35, type: !5622, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5624)
!5621 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5622 = !DISubroutineType(types: !5623)
!5623 = !{null, !209}
!5624 = !{!5625}
!5625 = !DILocalVariable(name: "list", arg: 1, scope: !5620, file: !5621, line: 35, type: !209)
!5626 = !DILocation(line: 35, column: 53, scope: !5620)
!5627 = !DILocation(line: 37, column: 2, scope: !5620)
!5628 = !DILocation(line: 37, column: 2, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5620, file: !5621, line: 37, column: 2)
!5630 = !DILocation(line: 37, column: 2, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5629, file: !5621, line: 37, column: 2)
!5632 = !DILocation(line: 37, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !5621, line: 37, column: 2)
!5634 = !DILocation(line: 38, column: 2, scope: !5620)
!5635 = !DILocation(line: 38, column: 2, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5620, file: !5621, line: 38, column: 2)
!5637 = !DILocation(line: 38, column: 2, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5636, file: !5621, line: 38, column: 2)
!5639 = !DILocation(line: 38, column: 2, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !5621, line: 38, column: 2)
!5641 = !DILocation(line: 39, column: 1, scope: !5620)
!5642 = !DISubprogram(name: "input_free_device", scope: !4751, file: !4751, line: 361, type: !4923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5643 = distinct !DISubprogram(name: "snd_jack_set_parent", scope: !3, file: !3, line: 587, type: !5644, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5646)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{null, !4742, !4329}
!5646 = !{!5647, !5648, !5649, !5651, !5654}
!5647 = !DILocalVariable(name: "jack", arg: 1, scope: !5643, file: !3, line: 587, type: !4742)
!5648 = !DILocalVariable(name: "parent", arg: 2, scope: !5643, file: !3, line: 587, type: !4329)
!5649 = !DILocalVariable(name: "__ret_warn_on", scope: !5650, file: !3, line: 589, type: !109)
!5650 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 589, column: 2)
!5651 = !DILocalVariable(name: "__flags", scope: !5652, file: !3, line: 589, type: !109)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 589, column: 2)
!5653 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 589, column: 2)
!5654 = !DILocalVariable(name: "__UNIQUE_ID_guard297", scope: !5643, file: !3, line: 590, type: !5447)
!5655 = !DILocation(line: 587, column: 43, scope: !5643)
!5656 = !DILocation(line: 587, column: 64, scope: !5643)
!5657 = !DILocation(line: 589, column: 2, scope: !5650)
!5658 = !DILocation(line: 589, column: 2, scope: !5653)
!5659 = !DILocation(line: 589, column: 2, scope: !5652)
!5660 = !DILocation(line: 589, column: 2, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 589, column: 2)
!5662 = !DILocation(line: 589, column: 2, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 589, column: 2)
!5664 = !{i64 2154629083, i64 2154629112, i64 2154629158, i64 2154629216, i64 2154629270, i64 2154629324, i64 2154629379, i64 2154629410, i64 2154629718, i64 2154629724, i64 2154629771, i64 2154629794, i64 2154629820}
!5665 = !DILocation(line: 589, column: 2, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 589, column: 2)
!5667 = !DILocation(line: 589, column: 2, scope: !5643)
!5668 = !DILocation(line: 590, column: 2, scope: !5643)
!5669 = !DILocation(line: 590, column: 16, scope: !5643)
!5670 = !DILocation(line: 590, column: 22, scope: !5643)
!5671 = !DILocation(line: 591, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 591, column: 6)
!5673 = !DILocation(line: 591, column: 12, scope: !5672)
!5674 = !DILocation(line: 591, column: 6, scope: !5643)
!5675 = !DILocation(line: 592, column: 33, scope: !5672)
!5676 = !DILocation(line: 592, column: 3, scope: !5672)
!5677 = !DILocation(line: 592, column: 9, scope: !5672)
!5678 = !DILocation(line: 592, column: 20, scope: !5672)
!5679 = !DILocation(line: 592, column: 24, scope: !5672)
!5680 = !DILocation(line: 592, column: 31, scope: !5672)
!5681 = !DILocation(line: 593, column: 1, scope: !5643)
!5682 = distinct !DISubprogram(name: "class_mutex_constructor", scope: !846, file: !846, line: 250, type: !5683, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{!5448, !5448}
!5685 = !{!5686, !5687}
!5686 = !DILocalVariable(name: "_T", arg: 1, scope: !5682, file: !846, line: 250, type: !5448)
!5687 = !DILocalVariable(name: "t", scope: !5682, file: !846, line: 250, type: !5448)
!5688 = !DILocation(line: 250, column: 1, scope: !5682)
!5689 = !DILocation(line: 250, column: 1, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5682, file: !846, line: 250, column: 1)
!5691 = distinct !DISubprogram(name: "class_mutex_destructor", scope: !846, file: !846, line: 250, type: !5692, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5695)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{null, !5694}
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5448, size: 64)
!5695 = !{!5696, !5697}
!5696 = !DILocalVariable(name: "p", arg: 1, scope: !5691, file: !846, line: 250, type: !5694)
!5697 = !DILocalVariable(name: "_T", scope: !5691, file: !846, line: 250, type: !5448)
!5698 = !DILocation(line: 250, column: 1, scope: !5691)
!5699 = !DILocation(line: 250, column: 1, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5691, file: !846, line: 250, column: 1)
!5701 = !DILocation(line: 250, column: 1, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5700, file: !846, line: 250, column: 1)
!5703 = distinct !DISubprogram(name: "snd_jack_set_key", scope: !3, file: !3, line: 621, type: !5704, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5706)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!109, !4742, !161, !109}
!5706 = !{!5707, !5708, !5709, !5710, !5711, !5713}
!5707 = !DILocalVariable(name: "jack", arg: 1, scope: !5703, file: !3, line: 621, type: !4742)
!5708 = !DILocalVariable(name: "type", arg: 2, scope: !5703, file: !3, line: 621, type: !161)
!5709 = !DILocalVariable(name: "keytype", arg: 3, scope: !5703, file: !3, line: 622, type: !109)
!5710 = !DILocalVariable(name: "key", scope: !5703, file: !3, line: 624, type: !109)
!5711 = !DILocalVariable(name: "__ret_warn_on", scope: !5712, file: !3, line: 626, type: !109)
!5712 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 626, column: 2)
!5713 = !DILocalVariable(name: "__flags", scope: !5714, file: !3, line: 626, type: !109)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 626, column: 2)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 626, column: 2)
!5716 = !DILocation(line: 621, column: 39, scope: !5703)
!5717 = !DILocation(line: 621, column: 65, scope: !5703)
!5718 = !DILocation(line: 622, column: 12, scope: !5703)
!5719 = !DILocation(line: 624, column: 2, scope: !5703)
!5720 = !DILocation(line: 624, column: 6, scope: !5703)
!5721 = !DILocation(line: 624, column: 12, scope: !5703)
!5722 = !DILocation(line: 624, column: 38, scope: !5703)
!5723 = !DILocation(line: 624, column: 34, scope: !5703)
!5724 = !DILocation(line: 624, column: 32, scope: !5703)
!5725 = !DILocation(line: 626, column: 2, scope: !5712)
!5726 = !DILocation(line: 626, column: 2, scope: !5715)
!5727 = !DILocation(line: 626, column: 2, scope: !5714)
!5728 = !DILocation(line: 626, column: 2, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 626, column: 2)
!5730 = !DILocation(line: 626, column: 2, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 626, column: 2)
!5732 = !{i64 2154632965, i64 2154632994, i64 2154633040, i64 2154633098, i64 2154633152, i64 2154633206, i64 2154633261, i64 2154633292, i64 2154633600, i64 2154633606, i64 2154633653, i64 2154633676, i64 2154633702}
!5733 = !DILocation(line: 626, column: 2, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 626, column: 2)
!5735 = !DILocation(line: 626, column: 2, scope: !5703)
!5736 = !DILocation(line: 628, column: 7, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 628, column: 6)
!5738 = !DILocation(line: 628, column: 15, scope: !5737)
!5739 = !DILocation(line: 628, column: 18, scope: !5737)
!5740 = !DILocation(line: 628, column: 22, scope: !5737)
!5741 = !DILocation(line: 628, column: 6, scope: !5703)
!5742 = !DILocation(line: 629, column: 3, scope: !5737)
!5743 = !DILocation(line: 631, column: 16, scope: !5703)
!5744 = !DILocation(line: 631, column: 2, scope: !5703)
!5745 = !DILocation(line: 631, column: 8, scope: !5703)
!5746 = !DILocation(line: 631, column: 13, scope: !5703)
!5747 = !DILocation(line: 632, column: 19, scope: !5703)
!5748 = !DILocation(line: 632, column: 2, scope: !5703)
!5749 = !DILocation(line: 632, column: 8, scope: !5703)
!5750 = !DILocation(line: 632, column: 12, scope: !5703)
!5751 = !DILocation(line: 632, column: 17, scope: !5703)
!5752 = !DILocation(line: 633, column: 2, scope: !5703)
!5753 = !DILocation(line: 634, column: 1, scope: !5703)
!5754 = distinct !DISubprogram(name: "fls", scope: !5755, file: !5755, line: 359, type: !5756, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5758)
!5755 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!109, !7}
!5758 = !{!5759, !5760}
!5759 = !DILocalVariable(name: "x", arg: 1, scope: !5754, file: !5755, line: 359, type: !7)
!5760 = !DILocalVariable(name: "r", scope: !5754, file: !5755, line: 361, type: !109)
!5761 = !DILocation(line: 359, column: 45, scope: !5754)
!5762 = !DILocation(line: 361, column: 2, scope: !5754)
!5763 = !DILocation(line: 361, column: 6, scope: !5754)
!5764 = !DILocation(line: 375, column: 14, scope: !5754)
!5765 = !DILocation(line: 373, column: 2, scope: !5754)
!5766 = !{i64 732179}
!5767 = !DILocation(line: 386, column: 9, scope: !5754)
!5768 = !DILocation(line: 386, column: 11, scope: !5754)
!5769 = !DILocation(line: 387, column: 1, scope: !5754)
!5770 = !DILocation(line: 386, column: 2, scope: !5754)
!5771 = distinct !DISubprogram(name: "snd_jack_report", scope: !3, file: !3, line: 646, type: !5772, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5774)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !4742, !109}
!5774 = !{!5775, !5776, !5777, !5778, !5779, !5780, !5781, !5784, !5787, !5791}
!5775 = !DILocalVariable(name: "jack", arg: 1, scope: !5771, file: !3, line: 646, type: !4742)
!5776 = !DILocalVariable(name: "status", arg: 2, scope: !5771, file: !3, line: 646, type: !109)
!5777 = !DILocalVariable(name: "jack_kctl", scope: !5771, file: !3, line: 648, type: !197)
!5778 = !DILocalVariable(name: "mask_bits", scope: !5771, file: !3, line: 649, type: !7)
!5779 = !DILocalVariable(name: "idev", scope: !5771, file: !3, line: 651, type: !4749)
!5780 = !DILocalVariable(name: "i", scope: !5771, file: !3, line: 652, type: !109)
!5781 = !DILocalVariable(name: "__mptr", scope: !5782, file: !3, line: 660, type: !194)
!5782 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 660, column: 2)
!5783 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 660, column: 2)
!5784 = !DILocalVariable(name: "__mptr", scope: !5785, file: !3, line: 660, type: !194)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 660, column: 2)
!5786 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 660, column: 2)
!5787 = !DILocalVariable(name: "testbit", scope: !5788, file: !3, line: 673, type: !109)
!5788 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 672, column: 46)
!5789 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 672, column: 2)
!5790 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 672, column: 2)
!5791 = !DILocalVariable(name: "testbit", scope: !5792, file: !3, line: 681, type: !109)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 680, column: 54)
!5793 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 680, column: 2)
!5794 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 680, column: 2)
!5795 = !DILocation(line: 646, column: 39, scope: !5771)
!5796 = !DILocation(line: 646, column: 49, scope: !5771)
!5797 = !DILocation(line: 648, column: 2, scope: !5771)
!5798 = !DILocation(line: 648, column: 24, scope: !5771)
!5799 = !DILocation(line: 649, column: 2, scope: !5771)
!5800 = !DILocation(line: 649, column: 15, scope: !5771)
!5801 = !DILocation(line: 651, column: 2, scope: !5771)
!5802 = !DILocation(line: 651, column: 20, scope: !5771)
!5803 = !DILocation(line: 652, column: 2, scope: !5771)
!5804 = !DILocation(line: 652, column: 6, scope: !5771)
!5805 = !DILocation(line: 655, column: 7, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 655, column: 6)
!5807 = !DILocation(line: 655, column: 6, scope: !5771)
!5808 = !DILocation(line: 656, column: 3, scope: !5806)
!5809 = !DILocation(line: 658, column: 26, scope: !5771)
!5810 = !DILocation(line: 658, column: 2, scope: !5771)
!5811 = !DILocation(line: 658, column: 8, scope: !5771)
!5812 = !DILocation(line: 658, column: 24, scope: !5771)
!5813 = !DILocation(line: 660, column: 2, scope: !5782)
!5814 = !DILocation(line: 660, column: 2, scope: !5783)
!5815 = !DILocation(line: 660, column: 2, scope: !5786)
!5816 = !DILocation(line: 661, column: 7, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 661, column: 7)
!5818 = !DILocation(line: 661, column: 18, scope: !5817)
!5819 = !DILocation(line: 661, column: 7, scope: !5786)
!5820 = !DILocation(line: 662, column: 17, scope: !5817)
!5821 = !DILocation(line: 662, column: 28, scope: !5817)
!5822 = !DILocation(line: 662, column: 14, scope: !5817)
!5823 = !DILocation(line: 662, column: 4, scope: !5817)
!5824 = !DILocation(line: 664, column: 25, scope: !5817)
!5825 = !DILocation(line: 664, column: 31, scope: !5817)
!5826 = !DILocation(line: 664, column: 37, scope: !5817)
!5827 = !DILocation(line: 664, column: 48, scope: !5817)
!5828 = !DILocation(line: 665, column: 11, scope: !5817)
!5829 = !DILocation(line: 665, column: 20, scope: !5817)
!5830 = !DILocation(line: 665, column: 31, scope: !5817)
!5831 = !DILocation(line: 665, column: 18, scope: !5817)
!5832 = !DILocation(line: 664, column: 4, scope: !5817)
!5833 = !DILocation(line: 660, column: 2, scope: !5785)
!5834 = distinct !{!5834, !5814, !5835, !5338, !5339}
!5835 = !DILocation(line: 665, column: 40, scope: !5783)
!5836 = !DILocation(line: 668, column: 26, scope: !5771)
!5837 = !DILocation(line: 668, column: 32, scope: !5771)
!5838 = !DILocation(line: 668, column: 9, scope: !5771)
!5839 = !DILocation(line: 668, column: 7, scope: !5771)
!5840 = !DILocation(line: 669, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 669, column: 6)
!5842 = !DILocation(line: 669, column: 6, scope: !5771)
!5843 = !DILocation(line: 670, column: 3, scope: !5841)
!5844 = !DILocation(line: 672, column: 9, scope: !5790)
!5845 = !DILocation(line: 672, column: 7, scope: !5790)
!5846 = !DILocation(line: 672, column: 14, scope: !5789)
!5847 = !DILocation(line: 672, column: 16, scope: !5789)
!5848 = !DILocation(line: 672, column: 2, scope: !5790)
!5849 = !DILocation(line: 673, column: 3, scope: !5788)
!5850 = !DILocation(line: 673, column: 7, scope: !5788)
!5851 = !DILocation(line: 673, column: 37, scope: !5788)
!5852 = !DILocation(line: 673, column: 34, scope: !5788)
!5853 = !DILocation(line: 673, column: 43, scope: !5788)
!5854 = !DILocation(line: 673, column: 42, scope: !5788)
!5855 = !DILocation(line: 673, column: 40, scope: !5788)
!5856 = !DILocation(line: 675, column: 7, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 675, column: 7)
!5858 = !DILocation(line: 675, column: 13, scope: !5857)
!5859 = !DILocation(line: 675, column: 20, scope: !5857)
!5860 = !DILocation(line: 675, column: 18, scope: !5857)
!5861 = !DILocation(line: 675, column: 7, scope: !5788)
!5862 = !DILocation(line: 676, column: 21, scope: !5857)
!5863 = !DILocation(line: 676, column: 27, scope: !5857)
!5864 = !DILocation(line: 676, column: 33, scope: !5857)
!5865 = !DILocation(line: 676, column: 37, scope: !5857)
!5866 = !DILocation(line: 677, column: 7, scope: !5857)
!5867 = !DILocation(line: 677, column: 16, scope: !5857)
!5868 = !DILocation(line: 677, column: 14, scope: !5857)
!5869 = !DILocation(line: 676, column: 4, scope: !5857)
!5870 = !DILocation(line: 678, column: 2, scope: !5789)
!5871 = !DILocation(line: 678, column: 2, scope: !5788)
!5872 = !DILocation(line: 672, column: 42, scope: !5789)
!5873 = !DILocation(line: 672, column: 2, scope: !5789)
!5874 = distinct !{!5874, !5848, !5875, !5338, !5339}
!5875 = !DILocation(line: 678, column: 2, scope: !5790)
!5876 = !DILocation(line: 680, column: 9, scope: !5794)
!5877 = !DILocation(line: 680, column: 7, scope: !5794)
!5878 = !DILocation(line: 680, column: 14, scope: !5793)
!5879 = !DILocation(line: 680, column: 16, scope: !5793)
!5880 = !DILocation(line: 680, column: 2, scope: !5794)
!5881 = !DILocation(line: 681, column: 3, scope: !5792)
!5882 = !DILocation(line: 681, column: 7, scope: !5792)
!5883 = !DILocation(line: 681, column: 24, scope: !5792)
!5884 = !DILocation(line: 681, column: 21, scope: !5792)
!5885 = !DILocation(line: 681, column: 30, scope: !5792)
!5886 = !DILocation(line: 681, column: 29, scope: !5792)
!5887 = !DILocation(line: 681, column: 27, scope: !5792)
!5888 = !DILocation(line: 683, column: 7, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 683, column: 7)
!5890 = !DILocation(line: 683, column: 13, scope: !5889)
!5891 = !DILocation(line: 683, column: 20, scope: !5889)
!5892 = !DILocation(line: 683, column: 18, scope: !5889)
!5893 = !DILocation(line: 683, column: 7, scope: !5792)
!5894 = !DILocation(line: 684, column: 24, scope: !5889)
!5895 = !DILocation(line: 685, column: 28, scope: !5889)
!5896 = !DILocation(line: 685, column: 10, scope: !5889)
!5897 = !DILocation(line: 686, column: 10, scope: !5889)
!5898 = !DILocation(line: 686, column: 19, scope: !5889)
!5899 = !DILocation(line: 686, column: 17, scope: !5889)
!5900 = !DILocation(line: 684, column: 4, scope: !5889)
!5901 = !DILocation(line: 687, column: 2, scope: !5793)
!5902 = !DILocation(line: 687, column: 2, scope: !5792)
!5903 = !DILocation(line: 680, column: 50, scope: !5793)
!5904 = !DILocation(line: 680, column: 2, scope: !5793)
!5905 = distinct !{!5905, !5880, !5906, !5338, !5339}
!5906 = !DILocation(line: 687, column: 2, scope: !5794)
!5907 = !DILocation(line: 689, column: 13, scope: !5771)
!5908 = !DILocation(line: 689, column: 2, scope: !5771)
!5909 = !DILocation(line: 690, column: 19, scope: !5771)
!5910 = !DILocation(line: 690, column: 2, scope: !5771)
!5911 = !DILocation(line: 692, column: 1, scope: !5771)
!5912 = !DISubprogram(name: "snd_kctl_jack_report", scope: !203, file: !203, line: 318, type: !5913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !372, !201, !1090}
!5915 = distinct !DISubprogram(name: "input_get_device", scope: !4751, file: !4751, line: 363, type: !5916, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5918)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!4749, !4749}
!5918 = !{!5919, !5920}
!5919 = !DILocalVariable(name: "dev", arg: 1, scope: !5915, file: !4751, line: 363, type: !4749)
!5920 = !DILocalVariable(name: "__mptr", scope: !5921, file: !4751, line: 365, type: !194)
!5921 = distinct !DILexicalBlock(scope: !5915, file: !4751, line: 365, column: 15)
!5922 = !DILocation(line: 363, column: 68, scope: !5915)
!5923 = !DILocation(line: 365, column: 9, scope: !5915)
!5924 = !DILocation(line: 365, column: 15, scope: !5921)
!5925 = !DILocation(line: 365, column: 15, scope: !5915)
!5926 = !DILocation(line: 365, column: 2, scope: !5915)
!5927 = distinct !DISubprogram(name: "input_report_key", scope: !4751, file: !4751, line: 423, type: !5928, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5930)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{null, !4749, !7, !109}
!5930 = !{!5931, !5932, !5933}
!5931 = !DILocalVariable(name: "dev", arg: 1, scope: !5927, file: !4751, line: 423, type: !4749)
!5932 = !DILocalVariable(name: "code", arg: 2, scope: !5927, file: !4751, line: 423, type: !7)
!5933 = !DILocalVariable(name: "value", arg: 3, scope: !5927, file: !4751, line: 423, type: !109)
!5934 = !DILocation(line: 423, column: 55, scope: !5927)
!5935 = !DILocation(line: 423, column: 73, scope: !5927)
!5936 = !DILocation(line: 423, column: 83, scope: !5927)
!5937 = !DILocation(line: 425, column: 14, scope: !5927)
!5938 = !DILocation(line: 425, column: 27, scope: !5927)
!5939 = !DILocation(line: 425, column: 35, scope: !5927)
!5940 = !DILocation(line: 425, column: 34, scope: !5927)
!5941 = !DILocation(line: 425, column: 33, scope: !5927)
!5942 = !DILocation(line: 425, column: 2, scope: !5927)
!5943 = !DILocation(line: 426, column: 1, scope: !5927)
!5944 = distinct !DISubprogram(name: "input_report_switch", scope: !4751, file: !4751, line: 443, type: !5928, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948}
!5946 = !DILocalVariable(name: "dev", arg: 1, scope: !5944, file: !4751, line: 443, type: !4749)
!5947 = !DILocalVariable(name: "code", arg: 2, scope: !5944, file: !4751, line: 443, type: !7)
!5948 = !DILocalVariable(name: "value", arg: 3, scope: !5944, file: !4751, line: 443, type: !109)
!5949 = !DILocation(line: 443, column: 58, scope: !5944)
!5950 = !DILocation(line: 443, column: 76, scope: !5944)
!5951 = !DILocation(line: 443, column: 86, scope: !5944)
!5952 = !DILocation(line: 445, column: 14, scope: !5944)
!5953 = !DILocation(line: 445, column: 26, scope: !5944)
!5954 = !DILocation(line: 445, column: 34, scope: !5944)
!5955 = !DILocation(line: 445, column: 33, scope: !5944)
!5956 = !DILocation(line: 445, column: 32, scope: !5944)
!5957 = !DILocation(line: 445, column: 2, scope: !5944)
!5958 = !DILocation(line: 446, column: 1, scope: !5944)
!5959 = distinct !DISubprogram(name: "input_sync", scope: !4751, file: !4751, line: 448, type: !4923, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5960)
!5960 = !{!5961}
!5961 = !DILocalVariable(name: "dev", arg: 1, scope: !5959, file: !4751, line: 448, type: !4749)
!5962 = !DILocation(line: 448, column: 49, scope: !5959)
!5963 = !DILocation(line: 450, column: 14, scope: !5959)
!5964 = !DILocation(line: 450, column: 2, scope: !5959)
!5965 = !DILocation(line: 451, column: 1, scope: !5959)
!5966 = distinct !DISubprogram(name: "input_put_device", scope: !4751, file: !4751, line: 368, type: !4923, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5967)
!5967 = !{!5968}
!5968 = !DILocalVariable(name: "dev", arg: 1, scope: !5966, file: !4751, line: 368, type: !4749)
!5969 = !DILocation(line: 368, column: 55, scope: !5966)
!5970 = !DILocation(line: 370, column: 6, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !4751, line: 370, column: 6)
!5972 = !DILocation(line: 370, column: 6, scope: !5966)
!5973 = !DILocation(line: 371, column: 15, scope: !5971)
!5974 = !DILocation(line: 371, column: 20, scope: !5971)
!5975 = !DILocation(line: 371, column: 3, scope: !5971)
!5976 = !DILocation(line: 372, column: 1, scope: !5966)
!5977 = !DISubprogram(name: "snd_kctl_jack_new", scope: !203, file: !203, line: 317, type: !5978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!201, !411, !372}
!5980 = !DISubprogram(name: "snd_ctl_add", scope: !203, file: !203, line: 136, type: !5981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!109, !372, !201}
!5983 = distinct !DISubprogram(name: "snd_jack_kctl_private_free", scope: !3, file: !3, line: 409, type: !360, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5984 = !{!5985, !5986}
!5985 = !DILocalVariable(name: "kctl", arg: 1, scope: !5983, file: !3, line: 409, type: !201)
!5986 = !DILocalVariable(name: "jack_kctl", scope: !5983, file: !3, line: 411, type: !197)
!5987 = !DILocation(line: 409, column: 61, scope: !5983)
!5988 = !DILocation(line: 411, column: 2, scope: !5983)
!5989 = !DILocation(line: 411, column: 24, scope: !5983)
!5990 = !DILocation(line: 413, column: 14, scope: !5983)
!5991 = !DILocation(line: 413, column: 20, scope: !5983)
!5992 = !DILocation(line: 413, column: 12, scope: !5983)
!5993 = !DILocation(line: 414, column: 6, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 414, column: 6)
!5995 = !DILocation(line: 414, column: 6, scope: !5983)
!5996 = !DILocation(line: 415, column: 13, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 414, column: 17)
!5998 = !DILocation(line: 415, column: 24, scope: !5997)
!5999 = !DILocation(line: 415, column: 3, scope: !5997)
!6000 = !DILocation(line: 416, column: 9, scope: !5997)
!6001 = !DILocation(line: 416, column: 3, scope: !5997)
!6002 = !DILocation(line: 417, column: 2, scope: !5997)
!6003 = !DILocation(line: 418, column: 1, scope: !5983)
!6004 = !DISubprogram(name: "snd_ctl_free_one", scope: !203, file: !203, line: 135, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6005 = distinct !DISubprogram(name: "list_del", scope: !5621, file: !5621, line: 227, type: !5622, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6006 = !{!6007}
!6007 = !DILocalVariable(name: "entry", arg: 1, scope: !6005, file: !5621, line: 227, type: !209)
!6008 = !DILocation(line: 227, column: 47, scope: !6005)
!6009 = !DILocation(line: 229, column: 19, scope: !6005)
!6010 = !DILocation(line: 229, column: 2, scope: !6005)
!6011 = !DILocation(line: 230, column: 2, scope: !6005)
!6012 = !DILocation(line: 230, column: 9, scope: !6005)
!6013 = !DILocation(line: 230, column: 14, scope: !6005)
!6014 = !DILocation(line: 231, column: 2, scope: !6005)
!6015 = !DILocation(line: 231, column: 9, scope: !6005)
!6016 = !DILocation(line: 231, column: 14, scope: !6005)
!6017 = !DILocation(line: 232, column: 1, scope: !6005)
!6018 = distinct !DISubprogram(name: "__list_del_entry", scope: !5621, file: !5621, line: 213, type: !5622, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6019)
!6019 = !{!6020}
!6020 = !DILocalVariable(name: "entry", arg: 1, scope: !6018, file: !5621, line: 213, type: !209)
!6021 = !DILocation(line: 213, column: 55, scope: !6018)
!6022 = !DILocation(line: 215, column: 30, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6018, file: !5621, line: 215, column: 6)
!6024 = !DILocation(line: 215, column: 7, scope: !6023)
!6025 = !DILocation(line: 215, column: 6, scope: !6018)
!6026 = !DILocation(line: 216, column: 3, scope: !6023)
!6027 = !DILocation(line: 218, column: 13, scope: !6018)
!6028 = !DILocation(line: 218, column: 20, scope: !6018)
!6029 = !DILocation(line: 218, column: 26, scope: !6018)
!6030 = !DILocation(line: 218, column: 33, scope: !6018)
!6031 = !DILocation(line: 218, column: 2, scope: !6018)
!6032 = !DILocation(line: 219, column: 1, scope: !6018)
!6033 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5621, file: !5621, line: 134, type: !6034, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!1090, !209}
!6036 = !{!6037}
!6037 = !DILocalVariable(name: "entry", arg: 1, scope: !6033, file: !5621, line: 134, type: !209)
!6038 = !DILocation(line: 134, column: 61, scope: !6033)
!6039 = !DILocation(line: 136, column: 2, scope: !6033)
!6040 = distinct !DISubprogram(name: "__list_del", scope: !5621, file: !5621, line: 193, type: !6041, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6043)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{null, !209, !209}
!6043 = !{!6044, !6045}
!6044 = !DILocalVariable(name: "prev", arg: 1, scope: !6040, file: !5621, line: 193, type: !209)
!6045 = !DILocalVariable(name: "next", arg: 2, scope: !6040, file: !5621, line: 193, type: !209)
!6046 = !DILocation(line: 193, column: 50, scope: !6040)
!6047 = !DILocation(line: 193, column: 75, scope: !6040)
!6048 = !DILocation(line: 195, column: 15, scope: !6040)
!6049 = !DILocation(line: 195, column: 2, scope: !6040)
!6050 = !DILocation(line: 195, column: 8, scope: !6040)
!6051 = !DILocation(line: 195, column: 13, scope: !6040)
!6052 = !DILocation(line: 196, column: 2, scope: !6040)
!6053 = !DILocation(line: 196, column: 2, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6040, file: !5621, line: 196, column: 2)
!6055 = !DILocation(line: 196, column: 2, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6054, file: !5621, line: 196, column: 2)
!6057 = !DILocation(line: 196, column: 2, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6054, file: !5621, line: 196, column: 2)
!6059 = !DILocation(line: 197, column: 1, scope: !6040)
!6060 = distinct !DISubprogram(name: "list_add_tail", scope: !5621, file: !5621, line: 181, type: !6041, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6061)
!6061 = !{!6062, !6063}
!6062 = !DILocalVariable(name: "new", arg: 1, scope: !6060, file: !5621, line: 181, type: !209)
!6063 = !DILocalVariable(name: "head", arg: 2, scope: !6060, file: !5621, line: 181, type: !209)
!6064 = !DILocation(line: 181, column: 52, scope: !6060)
!6065 = !DILocation(line: 181, column: 75, scope: !6060)
!6066 = !DILocation(line: 183, column: 13, scope: !6060)
!6067 = !DILocation(line: 183, column: 18, scope: !6060)
!6068 = !DILocation(line: 183, column: 24, scope: !6060)
!6069 = !DILocation(line: 183, column: 30, scope: !6060)
!6070 = !DILocation(line: 183, column: 2, scope: !6060)
!6071 = !DILocation(line: 184, column: 1, scope: !6060)
!6072 = distinct !DISubprogram(name: "snd_jack_debugfs_add_inject_node", scope: !3, file: !3, line: 398, type: !6073, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6075)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!109, !4742, !197}
!6075 = !{!6076, !6077}
!6076 = !DILocalVariable(name: "jack", arg: 1, scope: !6072, file: !3, line: 398, type: !4742)
!6077 = !DILocalVariable(name: "jack_kctl", arg: 2, scope: !6072, file: !3, line: 399, type: !197)
!6078 = !DILocation(line: 398, column: 62, scope: !6072)
!6079 = !DILocation(line: 399, column: 32, scope: !6072)
!6080 = !DILocation(line: 401, column: 2, scope: !6072)
!6081 = distinct !DISubprogram(name: "__list_add", scope: !5621, file: !5621, line: 146, type: !6082, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6084)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{null, !209, !209, !209}
!6084 = !{!6085, !6086, !6087}
!6085 = !DILocalVariable(name: "new", arg: 1, scope: !6081, file: !5621, line: 146, type: !209)
!6086 = !DILocalVariable(name: "prev", arg: 2, scope: !6081, file: !5621, line: 147, type: !209)
!6087 = !DILocalVariable(name: "next", arg: 3, scope: !6081, file: !5621, line: 148, type: !209)
!6088 = !DILocation(line: 146, column: 49, scope: !6081)
!6089 = !DILocation(line: 147, column: 28, scope: !6081)
!6090 = !DILocation(line: 148, column: 28, scope: !6081)
!6091 = !DILocation(line: 150, column: 24, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6081, file: !5621, line: 150, column: 6)
!6093 = !DILocation(line: 150, column: 29, scope: !6092)
!6094 = !DILocation(line: 150, column: 35, scope: !6092)
!6095 = !DILocation(line: 150, column: 7, scope: !6092)
!6096 = !DILocation(line: 150, column: 6, scope: !6081)
!6097 = !DILocation(line: 151, column: 3, scope: !6092)
!6098 = !DILocation(line: 153, column: 15, scope: !6081)
!6099 = !DILocation(line: 153, column: 2, scope: !6081)
!6100 = !DILocation(line: 153, column: 8, scope: !6081)
!6101 = !DILocation(line: 153, column: 13, scope: !6081)
!6102 = !DILocation(line: 154, column: 14, scope: !6081)
!6103 = !DILocation(line: 154, column: 2, scope: !6081)
!6104 = !DILocation(line: 154, column: 7, scope: !6081)
!6105 = !DILocation(line: 154, column: 12, scope: !6081)
!6106 = !DILocation(line: 155, column: 14, scope: !6081)
!6107 = !DILocation(line: 155, column: 2, scope: !6081)
!6108 = !DILocation(line: 155, column: 7, scope: !6081)
!6109 = !DILocation(line: 155, column: 12, scope: !6081)
!6110 = !DILocation(line: 156, column: 2, scope: !6081)
!6111 = !DILocation(line: 156, column: 2, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6081, file: !5621, line: 156, column: 2)
!6113 = !DILocation(line: 156, column: 2, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6112, file: !5621, line: 156, column: 2)
!6115 = !DILocation(line: 156, column: 2, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6112, file: !5621, line: 156, column: 2)
!6117 = !DILocation(line: 157, column: 1, scope: !6081)
!6118 = distinct !DISubprogram(name: "__list_add_valid", scope: !5621, file: !5621, line: 128, type: !6119, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6121)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{!1090, !209, !209, !209}
!6121 = !{!6122, !6123, !6124}
!6122 = !DILocalVariable(name: "new", arg: 1, scope: !6118, file: !5621, line: 128, type: !209)
!6123 = !DILocalVariable(name: "prev", arg: 2, scope: !6118, file: !5621, line: 129, type: !209)
!6124 = !DILocalVariable(name: "next", arg: 3, scope: !6118, file: !5621, line: 130, type: !209)
!6125 = !DILocation(line: 128, column: 55, scope: !6118)
!6126 = !DILocation(line: 129, column: 23, scope: !6118)
!6127 = !DILocation(line: 130, column: 23, scope: !6118)
!6128 = !DILocation(line: 132, column: 2, scope: !6118)
!6129 = distinct !DISubprogram(name: "list_del_init", scope: !5621, file: !5621, line: 285, type: !5622, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6130)
!6130 = !{!6131}
!6131 = !DILocalVariable(name: "entry", arg: 1, scope: !6129, file: !5621, line: 285, type: !209)
!6132 = !DILocation(line: 285, column: 52, scope: !6129)
!6133 = !DILocation(line: 287, column: 19, scope: !6129)
!6134 = !DILocation(line: 287, column: 2, scope: !6129)
!6135 = !DILocation(line: 288, column: 17, scope: !6129)
!6136 = !DILocation(line: 288, column: 2, scope: !6129)
!6137 = !DILocation(line: 289, column: 1, scope: !6129)
!6138 = !DISubprogram(name: "snd_ctl_remove", scope: !203, file: !203, line: 137, type: !5981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6139 = !DISubprogram(name: "snprintf", scope: !6140, file: !6140, line: 12, type: !6141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6140 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6141 = !DISubroutineType(types: !6142)
!6142 = !{!109, !490, !533, !411, null}
!6143 = distinct !DISubprogram(name: "snd_card_get_device_link", scope: !142, file: !142, line: 226, type: !6144, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6146)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!4329, !372}
!6146 = !{!6147}
!6147 = !DILocalVariable(name: "card", arg: 1, scope: !6143, file: !142, line: 226, type: !372)
!6148 = !DILocation(line: 226, column: 72, scope: !6143)
!6149 = !DILocation(line: 228, column: 9, scope: !6143)
!6150 = !DILocation(line: 228, column: 17, scope: !6143)
!6151 = !DILocation(line: 228, column: 23, scope: !6143)
!6152 = !DILocation(line: 228, column: 2, scope: !6143)
!6153 = !DISubprogram(name: "input_register_device", scope: !4751, file: !4751, line: 384, type: !4919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6154 = distinct !DISubprogram(name: "snd_jack_remove_debugfs", scope: !3, file: !3, line: 404, type: !5037, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6155)
!6155 = !{!6156}
!6156 = !DILocalVariable(name: "jack", arg: 1, scope: !6154, file: !3, line: 404, type: !4742)
!6157 = !DILocation(line: 404, column: 54, scope: !6154)
!6158 = !DILocation(line: 406, column: 1, scope: !6154)
!6159 = !DISubprogram(name: "input_unregister_device", scope: !4751, file: !4751, line: 385, type: !4923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6160 = distinct !DISubprogram(name: "kmalloc", scope: !184, file: !184, line: 591, type: !5588, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6161 = !{!6162, !6163, !6164}
!6162 = !DILocalVariable(name: "size", arg: 1, scope: !6160, file: !184, line: 591, type: !533)
!6163 = !DILocalVariable(name: "flags", arg: 2, scope: !6160, file: !184, line: 591, type: !195)
!6164 = !DILocalVariable(name: "index", scope: !6165, file: !184, line: 594, type: !7)
!6165 = distinct !DILexicalBlock(scope: !6166, file: !184, line: 593, column: 42)
!6166 = distinct !DILexicalBlock(scope: !6160, file: !184, line: 593, column: 6)
!6167 = !DILocation(line: 591, column: 61, scope: !6160)
!6168 = !DILocation(line: 591, column: 73, scope: !6160)
!6169 = !DILocation(line: 593, column: 27, scope: !6166)
!6170 = !DILocation(line: 593, column: 6, scope: !6166)
!6171 = !DILocation(line: 593, column: 33, scope: !6166)
!6172 = !DILocation(line: 593, column: 36, scope: !6166)
!6173 = !DILocation(line: 593, column: 6, scope: !6160)
!6174 = !DILocation(line: 594, column: 3, scope: !6165)
!6175 = !DILocation(line: 594, column: 16, scope: !6165)
!6176 = !DILocation(line: 596, column: 7, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6165, file: !184, line: 596, column: 7)
!6178 = !DILocation(line: 596, column: 12, scope: !6177)
!6179 = !DILocation(line: 596, column: 7, scope: !6165)
!6180 = !DILocation(line: 597, column: 25, scope: !6177)
!6181 = !DILocation(line: 597, column: 31, scope: !6177)
!6182 = !DILocation(line: 597, column: 11, scope: !6177)
!6183 = !DILocation(line: 597, column: 4, scope: !6177)
!6184 = !DILocation(line: 599, column: 11, scope: !6165)
!6185 = !DILocation(line: 599, column: 9, scope: !6165)
!6186 = !DILocation(line: 601, column: 33, scope: !6165)
!6187 = !DILocation(line: 601, column: 40, scope: !6165)
!6188 = !DILocation(line: 601, column: 20, scope: !6165)
!6189 = !DILocation(line: 601, column: 5, scope: !6165)
!6190 = !DILocation(line: 601, column: 51, scope: !6165)
!6191 = !DILocation(line: 602, column: 5, scope: !6165)
!6192 = !DILocation(line: 602, column: 12, scope: !6165)
!6193 = !DILocation(line: 600, column: 10, scope: !6165)
!6194 = !DILocation(line: 600, column: 3, scope: !6165)
!6195 = !DILocation(line: 603, column: 2, scope: !6166)
!6196 = !DILocation(line: 604, column: 19, scope: !6160)
!6197 = !DILocation(line: 604, column: 25, scope: !6160)
!6198 = !DILocation(line: 604, column: 9, scope: !6160)
!6199 = !DILocation(line: 604, column: 2, scope: !6160)
!6200 = !DILocation(line: 605, column: 1, scope: !6160)
!6201 = !DISubprogram(name: "kmalloc_large", scope: !184, file: !184, line: 531, type: !5588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6202 = distinct !DISubprogram(name: "__kmalloc_index", scope: !184, file: !184, line: 444, type: !6203, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6205)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!7, !533, !1090}
!6205 = !{!6206, !6207}
!6206 = !DILocalVariable(name: "size", arg: 1, scope: !6202, file: !184, line: 444, type: !533)
!6207 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6202, file: !184, line: 445, type: !1090)
!6208 = !DILocation(line: 444, column: 60, scope: !6202)
!6209 = !DILocation(line: 445, column: 16, scope: !6202)
!6210 = !DILocation(line: 447, column: 7, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 447, column: 6)
!6212 = !DILocation(line: 447, column: 6, scope: !6202)
!6213 = !DILocation(line: 448, column: 3, scope: !6211)
!6214 = !DILocation(line: 450, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 450, column: 6)
!6216 = !DILocation(line: 450, column: 11, scope: !6215)
!6217 = !DILocation(line: 450, column: 6, scope: !6202)
!6218 = !DILocation(line: 451, column: 3, scope: !6215)
!6219 = !DILocation(line: 453, column: 32, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 453, column: 6)
!6221 = !DILocation(line: 453, column: 37, scope: !6220)
!6222 = !DILocation(line: 453, column: 42, scope: !6220)
!6223 = !DILocation(line: 453, column: 45, scope: !6220)
!6224 = !DILocation(line: 453, column: 50, scope: !6220)
!6225 = !DILocation(line: 453, column: 6, scope: !6202)
!6226 = !DILocation(line: 454, column: 3, scope: !6220)
!6227 = !DILocation(line: 455, column: 32, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 455, column: 6)
!6229 = !DILocation(line: 455, column: 37, scope: !6228)
!6230 = !DILocation(line: 455, column: 43, scope: !6228)
!6231 = !DILocation(line: 455, column: 46, scope: !6228)
!6232 = !DILocation(line: 455, column: 51, scope: !6228)
!6233 = !DILocation(line: 455, column: 6, scope: !6202)
!6234 = !DILocation(line: 456, column: 3, scope: !6228)
!6235 = !DILocation(line: 457, column: 6, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 457, column: 6)
!6237 = !DILocation(line: 457, column: 11, scope: !6236)
!6238 = !DILocation(line: 457, column: 6, scope: !6202)
!6239 = !DILocation(line: 457, column: 26, scope: !6236)
!6240 = !DILocation(line: 458, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 458, column: 6)
!6242 = !DILocation(line: 458, column: 11, scope: !6241)
!6243 = !DILocation(line: 458, column: 6, scope: !6202)
!6244 = !DILocation(line: 458, column: 26, scope: !6241)
!6245 = !DILocation(line: 459, column: 6, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 459, column: 6)
!6247 = !DILocation(line: 459, column: 11, scope: !6246)
!6248 = !DILocation(line: 459, column: 6, scope: !6202)
!6249 = !DILocation(line: 459, column: 26, scope: !6246)
!6250 = !DILocation(line: 460, column: 6, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 460, column: 6)
!6252 = !DILocation(line: 460, column: 11, scope: !6251)
!6253 = !DILocation(line: 460, column: 6, scope: !6202)
!6254 = !DILocation(line: 460, column: 26, scope: !6251)
!6255 = !DILocation(line: 461, column: 6, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 461, column: 6)
!6257 = !DILocation(line: 461, column: 11, scope: !6256)
!6258 = !DILocation(line: 461, column: 6, scope: !6202)
!6259 = !DILocation(line: 461, column: 26, scope: !6256)
!6260 = !DILocation(line: 462, column: 6, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 462, column: 6)
!6262 = !DILocation(line: 462, column: 11, scope: !6261)
!6263 = !DILocation(line: 462, column: 6, scope: !6202)
!6264 = !DILocation(line: 462, column: 26, scope: !6261)
!6265 = !DILocation(line: 463, column: 6, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 463, column: 6)
!6267 = !DILocation(line: 463, column: 11, scope: !6266)
!6268 = !DILocation(line: 463, column: 6, scope: !6202)
!6269 = !DILocation(line: 463, column: 26, scope: !6266)
!6270 = !DILocation(line: 464, column: 6, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 464, column: 6)
!6272 = !DILocation(line: 464, column: 11, scope: !6271)
!6273 = !DILocation(line: 464, column: 6, scope: !6202)
!6274 = !DILocation(line: 464, column: 26, scope: !6271)
!6275 = !DILocation(line: 465, column: 6, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 465, column: 6)
!6277 = !DILocation(line: 465, column: 11, scope: !6276)
!6278 = !DILocation(line: 465, column: 6, scope: !6202)
!6279 = !DILocation(line: 465, column: 26, scope: !6276)
!6280 = !DILocation(line: 466, column: 6, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 466, column: 6)
!6282 = !DILocation(line: 466, column: 11, scope: !6281)
!6283 = !DILocation(line: 466, column: 6, scope: !6202)
!6284 = !DILocation(line: 466, column: 26, scope: !6281)
!6285 = !DILocation(line: 467, column: 6, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 467, column: 6)
!6287 = !DILocation(line: 467, column: 11, scope: !6286)
!6288 = !DILocation(line: 467, column: 6, scope: !6202)
!6289 = !DILocation(line: 467, column: 26, scope: !6286)
!6290 = !DILocation(line: 468, column: 6, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 468, column: 6)
!6292 = !DILocation(line: 468, column: 11, scope: !6291)
!6293 = !DILocation(line: 468, column: 6, scope: !6202)
!6294 = !DILocation(line: 468, column: 26, scope: !6291)
!6295 = !DILocation(line: 469, column: 6, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 469, column: 6)
!6297 = !DILocation(line: 469, column: 11, scope: !6296)
!6298 = !DILocation(line: 469, column: 6, scope: !6202)
!6299 = !DILocation(line: 469, column: 26, scope: !6296)
!6300 = !DILocation(line: 470, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 470, column: 6)
!6302 = !DILocation(line: 470, column: 11, scope: !6301)
!6303 = !DILocation(line: 470, column: 6, scope: !6202)
!6304 = !DILocation(line: 470, column: 26, scope: !6301)
!6305 = !DILocation(line: 471, column: 6, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 471, column: 6)
!6307 = !DILocation(line: 471, column: 11, scope: !6306)
!6308 = !DILocation(line: 471, column: 6, scope: !6202)
!6309 = !DILocation(line: 471, column: 26, scope: !6306)
!6310 = !DILocation(line: 472, column: 6, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 472, column: 6)
!6312 = !DILocation(line: 472, column: 11, scope: !6311)
!6313 = !DILocation(line: 472, column: 6, scope: !6202)
!6314 = !DILocation(line: 472, column: 26, scope: !6311)
!6315 = !DILocation(line: 473, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 473, column: 6)
!6317 = !DILocation(line: 473, column: 11, scope: !6316)
!6318 = !DILocation(line: 473, column: 6, scope: !6202)
!6319 = !DILocation(line: 473, column: 26, scope: !6316)
!6320 = !DILocation(line: 474, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 474, column: 6)
!6322 = !DILocation(line: 474, column: 11, scope: !6321)
!6323 = !DILocation(line: 474, column: 6, scope: !6202)
!6324 = !DILocation(line: 474, column: 27, scope: !6321)
!6325 = !DILocation(line: 475, column: 6, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 475, column: 6)
!6327 = !DILocation(line: 475, column: 11, scope: !6326)
!6328 = !DILocation(line: 475, column: 6, scope: !6202)
!6329 = !DILocation(line: 475, column: 32, scope: !6326)
!6330 = !DILocation(line: 477, column: 50, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6202, file: !184, line: 477, column: 6)
!6332 = !DILocation(line: 477, column: 6, scope: !6202)
!6333 = !DILocation(line: 478, column: 3, scope: !6331)
!6334 = !DILocation(line: 478, column: 3, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6336, file: !184, line: 478, column: 3)
!6336 = distinct !DILexicalBlock(scope: !6331, file: !184, line: 478, column: 3)
!6337 = !{i32 -2141123388}
!6338 = !DILocation(line: 478, column: 3, scope: !6336)
!6339 = !DILocation(line: 480, column: 3, scope: !6331)
!6340 = !DILocation(line: 480, column: 3, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6331, file: !184, line: 480, column: 3)
!6342 = !DILocation(line: 480, column: 3, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6341, file: !184, line: 480, column: 3)
!6344 = !DILocation(line: 480, column: 3, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6341, file: !184, line: 480, column: 3)
!6346 = !{i64 2153844111, i64 2153844140, i64 2153844186, i64 2153844244, i64 2153844298, i64 2153844352, i64 2153844407, i64 2153844438}
!6347 = !DILocation(line: 483, column: 2, scope: !6202)
!6348 = !DILocation(line: 484, column: 1, scope: !6202)
!6349 = !DISubprogram(name: "kmalloc_trace", scope: !184, file: !184, line: 525, type: !6350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6350 = !DISubroutineType(types: !6351)
!6351 = !{!194, !6352, !195, !533}
!6352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6353, size: 64)
!6353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6354, line: 325, flags: DIFlagFwdDecl)
!6354 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6355 = distinct !DISubprogram(name: "kmalloc_type", scope: !184, file: !184, line: 401, type: !6356, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6358)
!6356 = !DISubroutineType(types: !6357)
!6357 = !{!183, !195, !356}
!6358 = !{!6359, !6360}
!6359 = !DILocalVariable(name: "flags", arg: 1, scope: !6355, file: !184, line: 401, type: !195)
!6360 = !DILocalVariable(name: "caller", arg: 2, scope: !6355, file: !184, line: 401, type: !356)
!6361 = !DILocation(line: 401, column: 67, scope: !6355)
!6362 = !DILocation(line: 401, column: 88, scope: !6355)
!6363 = !DILocation(line: 407, column: 6, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6355, file: !184, line: 407, column: 6)
!6365 = !DILocation(line: 407, column: 6, scope: !6355)
!6366 = !DILocation(line: 413, column: 3, scope: !6364)
!6367 = !DILocation(line: 423, column: 38, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6355, file: !184, line: 423, column: 6)
!6369 = !DILocation(line: 423, column: 44, scope: !6368)
!6370 = !DILocation(line: 423, column: 6, scope: !6355)
!6371 = !DILocation(line: 424, column: 3, scope: !6368)
!6372 = !DILocation(line: 426, column: 3, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6355, file: !184, line: 425, column: 6)
!6374 = !DILocation(line: 429, column: 1, scope: !6355)
!6375 = !DISubprogram(name: "__kmalloc", scope: !184, file: !184, line: 488, type: !5588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6376 = !DISubprogram(name: "__compiletime_assert_263", scope: !184, file: !184, line: 478, type: !2763, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6377 = !DISubprogram(name: "mutex_lock", scope: !846, file: !846, line: 227, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{null, !5448}
!6380 = !DISubprogram(name: "mutex_unlock", scope: !846, file: !846, line: 246, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6381 = !DISubprogram(name: "get_device", scope: !94, file: !94, line: 1230, type: !6382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6382 = !DISubroutineType(types: !6383)
!6383 = !{!4329, !4329}
!6384 = !DISubprogram(name: "input_event", scope: !4751, file: !4751, line: 420, type: !6385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{null, !4749, !7, !7, !109}
!6387 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
