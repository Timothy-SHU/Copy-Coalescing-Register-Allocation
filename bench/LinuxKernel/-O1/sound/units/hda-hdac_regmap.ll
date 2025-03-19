; ModuleID = 'sound/hda/hdac_regmap.c'
source_filename = "sound/hda/hdac_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_add_vendor_verb: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_add_vendor_verb ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_write_raw: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_write_raw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_read_raw: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_read_raw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_update_raw: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_update_raw ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_update_raw_once: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_update_raw_once ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_regmap_sync: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_regmap_sync ; .previous"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i64, i64, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@hda_regmap_cfg = internal constant %struct.regmap_config { ptr @.str, i32 32, i32 0, i32 0, i32 0, i32 0, i32 32, ptr @hda_writeable_reg, ptr @hda_readable_reg, ptr @hda_volatile_reg, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr @hda_reg_read, ptr @hda_reg_write, ptr null, ptr null, ptr null, i64 0, i64 0, i8 0, i8 0, i32 268435455, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i64 0, i64 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_hdac_regmap_init295 = internal global ptr @snd_hdac_regmap_init, section ".discard.addressable", align 8, !dbg !4940
@__UNIQUE_ID___addressable_snd_hdac_regmap_exit296 = internal global ptr @snd_hdac_regmap_exit, section ".discard.addressable", align 8, !dbg !4942
@__UNIQUE_ID___addressable_snd_hdac_regmap_add_vendor_verb297 = internal global ptr @snd_hdac_regmap_add_vendor_verb, section ".discard.addressable", align 8, !dbg !4944
@__UNIQUE_ID___addressable_snd_hdac_regmap_write_raw298 = internal global ptr @snd_hdac_regmap_write_raw, section ".discard.addressable", align 8, !dbg !4946
@__UNIQUE_ID___addressable_snd_hdac_regmap_read_raw299 = internal global ptr @snd_hdac_regmap_read_raw, section ".discard.addressable", align 8, !dbg !4948
@__UNIQUE_ID___addressable_snd_hdac_regmap_update_raw300 = internal global ptr @snd_hdac_regmap_update_raw, section ".discard.addressable", align 8, !dbg !4950
@__UNIQUE_ID___addressable_snd_hdac_regmap_update_raw_once301 = internal global ptr @snd_hdac_regmap_update_raw_once, section ".discard.addressable", align 8, !dbg !4952
@__UNIQUE_ID___addressable_snd_hdac_regmap_sync302 = internal global ptr @snd_hdac_regmap_sync, section ".discard.addressable", align 8, !dbg !4954
@.str = private unnamed_addr constant [8 x i8] c"hdaudio\00", align 1, !dbg !4956
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_init295, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_exit296, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_add_vendor_verb297, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_write_raw298, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_read_raw299, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_update_raw300, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_update_raw_once301, ptr @__UNIQUE_ID___addressable_snd_hdac_regmap_sync302], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_init(ptr noundef %codec) #0 align 16 !dbg !5076 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %regmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5078, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 8, ptr %regmap) #6, !dbg !5081
  call void @llvm.dbg.declare(metadata ptr %regmap, metadata !5079, metadata !DIExpression()), !dbg !5082
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5083
  %dev = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 0, !dbg !5083
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5083
  %call = call ptr @__regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %1, ptr noundef @hda_regmap_cfg, ptr noundef null, ptr noundef null) #7, !dbg !5083
  store ptr %call, ptr %regmap, align 8, !dbg !5084
  %2 = load ptr, ptr %regmap, align 8, !dbg !5085
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #7, !dbg !5087
  br i1 %call1, label %if.then, label %if.end, !dbg !5088

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %regmap, align 8, !dbg !5089
  %call2 = call i64 @PTR_ERR(ptr noundef %3) #7, !dbg !5090
  %conv = trunc i64 %call2 to i32, !dbg !5090
  store i32 %conv, ptr %retval, align 4, !dbg !5091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5091

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %regmap, align 8, !dbg !5092
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5093
  %regmap3 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 23, !dbg !5094
  store ptr %4, ptr %regmap3, align 8, !dbg !5095
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5096
  %vendor_verbs = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 25, !dbg !5097
  call void @snd_array_init(ptr noundef %vendor_verbs, i32 noundef 4, i32 noundef 8) #7, !dbg !5098
  store i32 0, ptr %retval, align 4, !dbg !5099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5099

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %regmap) #6, !dbg !5100
  %7 = load i32, ptr %retval, align 4, !dbg !5100
  ret i32 %7, !dbg !5100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5101 dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5156 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5163
  %1 = ptrtoint ptr %0 to i64, !dbg !5163
  %2 = inttoptr i64 %1 to ptr, !dbg !5163
  %3 = ptrtoint ptr %2 to i64, !dbg !5163
  %cmp = icmp uge i64 %3, -4095, !dbg !5163
  %lnot = xor i1 %cmp, true, !dbg !5163
  %lnot1 = xor i1 %lnot, true, !dbg !5163
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5163
  %conv = sext i32 %lnot.ext to i64, !dbg !5163
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5163
  %tobool = icmp ne i64 %expval, 0, !dbg !5163
  ret i1 %tobool, !dbg !5164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5165 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5171
  %1 = ptrtoint ptr %0 to i64, !dbg !5172
  ret i64 %1, !dbg !5173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_array_init(ptr noundef %array, i32 noundef %size, i32 noundef %align) #4 align 16 !dbg !5174 {
entry:
  %array.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !5179, metadata !DIExpression()), !dbg !5182
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5180, metadata !DIExpression()), !dbg !5183
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5181, metadata !DIExpression()), !dbg !5184
  %0 = load i32, ptr %size.addr, align 4, !dbg !5185
  %1 = load ptr, ptr %array.addr, align 8, !dbg !5186
  %elem_size = getelementptr inbounds %struct.snd_array, ptr %1, i32 0, i32 2, !dbg !5187
  store i32 %0, ptr %elem_size, align 8, !dbg !5188
  %2 = load i32, ptr %align.addr, align 4, !dbg !5189
  %3 = load ptr, ptr %array.addr, align 8, !dbg !5190
  %alloc_align = getelementptr inbounds %struct.snd_array, ptr %3, i32 0, i32 3, !dbg !5191
  store i32 %2, ptr %alloc_align, align 4, !dbg !5192
  ret void, !dbg !5193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_regmap_exit(ptr noundef %codec) #0 align 16 !dbg !5194 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5200
  %regmap = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23, !dbg !5202
  %1 = load ptr, ptr %regmap, align 8, !dbg !5202
  %tobool = icmp ne ptr %1, null, !dbg !5200
  br i1 %tobool, label %if.then, label %if.end, !dbg !5203

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !5204
  %regmap1 = getelementptr inbounds %struct.hdac_device, ptr %2, i32 0, i32 23, !dbg !5206
  %3 = load ptr, ptr %regmap1, align 8, !dbg !5206
  call void @regmap_exit(ptr noundef %3) #7, !dbg !5207
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !5208
  %regmap2 = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 23, !dbg !5209
  store ptr null, ptr %regmap2, align 8, !dbg !5210
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5211
  %vendor_verbs = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 25, !dbg !5212
  call void @snd_array_free(ptr noundef %vendor_verbs) #7, !dbg !5213
  br label %if.end, !dbg !5214

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5216 dso_local void @regmap_exit(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5219 dso_local void @snd_array_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %codec, i32 noundef %verb) #0 align 16 !dbg !5222 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %verb.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5226, metadata !DIExpression()), !dbg !5229
  store i32 %verb, ptr %verb.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %verb.addr, metadata !5227, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5228, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5233
  %vendor_verbs = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 25, !dbg !5234
  %call = call ptr @snd_array_new(ptr noundef %vendor_verbs) #7, !dbg !5235
  store ptr %call, ptr %p, align 8, !dbg !5232
  %1 = load ptr, ptr %p, align 8, !dbg !5236
  %tobool = icmp ne ptr %1, null, !dbg !5236
  br i1 %tobool, label %if.end, label %if.then, !dbg !5238

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5239

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %verb.addr, align 4, !dbg !5240
  %or = or i32 %2, 2048, !dbg !5241
  %3 = load ptr, ptr %p, align 8, !dbg !5242
  store i32 %or, ptr %3, align 4, !dbg !5243
  store i32 0, ptr %retval, align 4, !dbg !5244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5244

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !5245
  %4 = load i32, ptr %retval, align 4, !dbg !5245
  ret i32 %4, !dbg !5245
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5246 dso_local ptr @snd_array_new(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %reg, i32 noundef %val) #0 align 16 !dbg !5249 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %_err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5253, metadata !DIExpression()), !dbg !5258
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5254, metadata !DIExpression()), !dbg !5259
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5255, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 4, ptr %_err) #6, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %_err, metadata !5256, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5261
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5261
  %2 = load i32, ptr %val.addr, align 4, !dbg !5261
  %call = call i32 @reg_raw_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7, !dbg !5261
  store i32 %call, ptr %_err, align 4, !dbg !5261
  %3 = load i32, ptr %_err, align 4, !dbg !5262
  %cmp = icmp eq i32 %3, -11, !dbg !5262
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5261

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !5264
  %call1 = call i32 @snd_hdac_power_up_pm(ptr noundef %4) #7, !dbg !5264
  store i32 %call1, ptr %_err, align 4, !dbg !5264
  %5 = load i32, ptr %_err, align 4, !dbg !5266
  %cmp2 = icmp sge i32 %5, 0, !dbg !5266
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5264

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5266
  %7 = load i32, ptr %reg.addr, align 4, !dbg !5266
  %8 = load i32, ptr %val.addr, align 4, !dbg !5266
  %call4 = call i32 @reg_raw_write(ptr noundef %6, i32 noundef %7, i32 noundef %8) #7, !dbg !5266
  store i32 %call4, ptr %_err, align 4, !dbg !5266
  br label %if.end, !dbg !5266

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load ptr, ptr %codec.addr, align 8, !dbg !5264
  %call5 = call i32 @snd_hdac_power_down_pm(ptr noundef %9) #7, !dbg !5264
  br label %if.end6, !dbg !5264

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i32, ptr %_err, align 4, !dbg !5261
  store i32 %10, ptr %tmp, align 4, !dbg !5262
  call void @llvm.lifetime.end.p0(i64 4, ptr %_err) #6, !dbg !5268
  %11 = load i32, ptr %tmp, align 4, !dbg !5261
  ret i32 %11, !dbg !5269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reg_raw_write(ptr noundef %codec, i32 noundef %reg, i32 noundef %val) #0 align 16 !dbg !5270 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5272, metadata !DIExpression()), !dbg !5276
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5273, metadata !DIExpression()), !dbg !5277
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5274, metadata !DIExpression()), !dbg !5278
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5275, metadata !DIExpression()), !dbg !5280
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5281
  %regmap_lock = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24, !dbg !5282
  call void @mutex_lock(ptr noundef %regmap_lock) #7, !dbg !5283
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5284
  %regmap = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 23, !dbg !5286
  %2 = load ptr, ptr %regmap, align 8, !dbg !5286
  %tobool = icmp ne ptr %2, null, !dbg !5284
  br i1 %tobool, label %if.else, label %if.then, !dbg !5287

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !5288
  %4 = load i32, ptr %reg.addr, align 4, !dbg !5289
  %5 = load i32, ptr %val.addr, align 4, !dbg !5290
  %call = call i32 @hda_reg_write(ptr noundef %3, i32 noundef %4, i32 noundef %5) #7, !dbg !5291
  store i32 %call, ptr %err, align 4, !dbg !5292
  br label %if.end, !dbg !5293

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5294
  %regmap1 = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 23, !dbg !5295
  %7 = load ptr, ptr %regmap1, align 8, !dbg !5295
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5296
  %9 = load i32, ptr %val.addr, align 4, !dbg !5297
  %call2 = call i32 @regmap_write(ptr noundef %7, i32 noundef %8, i32 noundef %9) #7, !dbg !5298
  store i32 %call2, ptr %err, align 4, !dbg !5299
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %codec.addr, align 8, !dbg !5300
  %regmap_lock3 = getelementptr inbounds %struct.hdac_device, ptr %10, i32 0, i32 24, !dbg !5301
  call void @mutex_unlock(ptr noundef %regmap_lock3) #7, !dbg !5302
  %11 = load i32, ptr %err, align 4, !dbg !5303
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !5304
  ret i32 %11, !dbg !5305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5306 dso_local i32 @snd_hdac_power_up_pm(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5307 dso_local i32 @snd_hdac_power_down_pm(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_read_raw(ptr noundef %codec, i32 noundef %reg, ptr noundef %val) #0 align 16 !dbg !5308 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5312, metadata !DIExpression()), !dbg !5315
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5313, metadata !DIExpression()), !dbg !5316
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5314, metadata !DIExpression()), !dbg !5317
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5318
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5319
  %2 = load ptr, ptr %val.addr, align 8, !dbg !5320
  %call = call i32 @__snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false) #7, !dbg !5321
  ret i32 %call, !dbg !5322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__snd_hdac_regmap_read_raw(ptr noundef %codec, i32 noundef %reg, ptr noundef %val, i1 noundef zeroext %uncached) #0 align 16 !dbg !5323 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %uncached.addr = alloca i8, align 1
  %_err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5327, metadata !DIExpression()), !dbg !5333
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5328, metadata !DIExpression()), !dbg !5334
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5329, metadata !DIExpression()), !dbg !5335
  %frombool = zext i1 %uncached to i8
  store i8 %frombool, ptr %uncached.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %uncached.addr, metadata !5330, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 4, ptr %_err) #6, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %_err, metadata !5331, metadata !DIExpression()), !dbg !5337
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5337
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5337
  %2 = load ptr, ptr %val.addr, align 8, !dbg !5337
  %3 = load i8, ptr %uncached.addr, align 1, !dbg !5337, !range !5338, !noundef !915
  %tobool = trunc i8 %3 to i1, !dbg !5337
  %call = call i32 @reg_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %tobool) #7, !dbg !5337
  store i32 %call, ptr %_err, align 4, !dbg !5337
  %4 = load i32, ptr %_err, align 4, !dbg !5339
  %cmp = icmp eq i32 %4, -11, !dbg !5339
  br i1 %cmp, label %if.then, label %if.end7, !dbg !5337

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5341
  %call1 = call i32 @snd_hdac_power_up_pm(ptr noundef %5) #7, !dbg !5341
  store i32 %call1, ptr %_err, align 4, !dbg !5341
  %6 = load i32, ptr %_err, align 4, !dbg !5343
  %cmp2 = icmp sge i32 %6, 0, !dbg !5343
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5341

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !5343
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5343
  %9 = load ptr, ptr %val.addr, align 8, !dbg !5343
  %10 = load i8, ptr %uncached.addr, align 1, !dbg !5343, !range !5338, !noundef !915
  %tobool4 = trunc i8 %10 to i1, !dbg !5343
  %call5 = call i32 @reg_raw_read(ptr noundef %7, i32 noundef %8, ptr noundef %9, i1 noundef zeroext %tobool4) #7, !dbg !5343
  store i32 %call5, ptr %_err, align 4, !dbg !5343
  br label %if.end, !dbg !5343

if.end:                                           ; preds = %if.then3, %if.then
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !5341
  %call6 = call i32 @snd_hdac_power_down_pm(ptr noundef %11) #7, !dbg !5341
  br label %if.end7, !dbg !5341

if.end7:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %_err, align 4, !dbg !5337
  store i32 %12, ptr %tmp, align 4, !dbg !5339
  call void @llvm.lifetime.end.p0(i64 4, ptr %_err) #6, !dbg !5345
  %13 = load i32, ptr %tmp, align 4, !dbg !5337
  ret i32 %13, !dbg !5346
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_read_raw_uncached(ptr noundef %codec, i32 noundef %reg, ptr noundef %val) #0 align 16 !dbg !5347 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5349, metadata !DIExpression()), !dbg !5352
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5350, metadata !DIExpression()), !dbg !5353
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5351, metadata !DIExpression()), !dbg !5354
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5355
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5356
  %2 = load ptr, ptr %val.addr, align 8, !dbg !5357
  %call = call i32 @__snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true) #7, !dbg !5358
  ret i32 %call, !dbg !5359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_update_raw(ptr noundef %codec, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #0 align 16 !dbg !5360 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %_err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5364, metadata !DIExpression()), !dbg !5370
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5365, metadata !DIExpression()), !dbg !5371
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5366, metadata !DIExpression()), !dbg !5372
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5367, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 4, ptr %_err) #6, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %_err, metadata !5368, metadata !DIExpression()), !dbg !5374
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5374
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5374
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5374
  %3 = load i32, ptr %val.addr, align 4, !dbg !5374
  %call = call i32 @reg_raw_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7, !dbg !5374
  store i32 %call, ptr %_err, align 4, !dbg !5374
  %4 = load i32, ptr %_err, align 4, !dbg !5375
  %cmp = icmp eq i32 %4, -11, !dbg !5375
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5374

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5377
  %call1 = call i32 @snd_hdac_power_up_pm(ptr noundef %5) #7, !dbg !5377
  store i32 %call1, ptr %_err, align 4, !dbg !5377
  %6 = load i32, ptr %_err, align 4, !dbg !5379
  %cmp2 = icmp sge i32 %6, 0, !dbg !5379
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5377

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !5379
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5379
  %9 = load i32, ptr %mask.addr, align 4, !dbg !5379
  %10 = load i32, ptr %val.addr, align 4, !dbg !5379
  %call4 = call i32 @reg_raw_update(ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #7, !dbg !5379
  store i32 %call4, ptr %_err, align 4, !dbg !5379
  br label %if.end, !dbg !5379

if.end:                                           ; preds = %if.then3, %if.then
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !5377
  %call5 = call i32 @snd_hdac_power_down_pm(ptr noundef %11) #7, !dbg !5377
  br label %if.end6, !dbg !5377

if.end6:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %_err, align 4, !dbg !5374
  store i32 %12, ptr %tmp, align 4, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 4, ptr %_err) #6, !dbg !5381
  %13 = load i32, ptr %tmp, align 4, !dbg !5374
  ret i32 %13, !dbg !5382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reg_raw_update(ptr noundef %codec, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #0 align 16 !dbg !5383 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %orig = alloca i32, align 4
  %change = alloca i8, align 1
  %err = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5385, metadata !DIExpression()), !dbg !5392
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5386, metadata !DIExpression()), !dbg !5393
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5387, metadata !DIExpression()), !dbg !5394
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5388, metadata !DIExpression()), !dbg !5395
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig) #6, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %orig, metadata !5389, metadata !DIExpression()), !dbg !5397
  call void @llvm.lifetime.start.p0(i64 1, ptr %change) #6, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %change, metadata !5390, metadata !DIExpression()), !dbg !5399
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5391, metadata !DIExpression()), !dbg !5401
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5402
  %regmap_lock = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24, !dbg !5403
  call void @mutex_lock(ptr noundef %regmap_lock) #7, !dbg !5404
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5405
  %regmap = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 23, !dbg !5407
  %2 = load ptr, ptr %regmap, align 8, !dbg !5407
  %tobool = icmp ne ptr %2, null, !dbg !5405
  br i1 %tobool, label %if.then, label %if.else, !dbg !5408

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !5409
  %regmap1 = getelementptr inbounds %struct.hdac_device, ptr %3, i32 0, i32 23, !dbg !5411
  %4 = load ptr, ptr %regmap1, align 8, !dbg !5411
  %5 = load i32, ptr %reg.addr, align 4, !dbg !5412
  %6 = load i32, ptr %mask.addr, align 4, !dbg !5413
  %7 = load i32, ptr %val.addr, align 4, !dbg !5414
  %call = call i32 @regmap_update_bits_check(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %change) #7, !dbg !5415
  store i32 %call, ptr %err, align 4, !dbg !5416
  %8 = load i32, ptr %err, align 4, !dbg !5417
  %tobool2 = icmp ne i32 %8, 0, !dbg !5417
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5419

if.then3:                                         ; preds = %if.then
  %9 = load i8, ptr %change, align 1, !dbg !5420, !range !5338, !noundef !915
  %tobool4 = trunc i8 %9 to i1, !dbg !5420
  %10 = zext i1 %tobool4 to i64, !dbg !5420
  %cond = select i1 %tobool4, i32 1, i32 0, !dbg !5420
  store i32 %cond, ptr %err, align 4, !dbg !5421
  br label %if.end, !dbg !5422

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end16, !dbg !5423

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !5424
  %12 = load i32, ptr %reg.addr, align 4, !dbg !5426
  %call5 = call i32 @hda_reg_read(ptr noundef %11, i32 noundef %12, ptr noundef %orig) #7, !dbg !5427
  store i32 %call5, ptr %err, align 4, !dbg !5428
  %13 = load i32, ptr %err, align 4, !dbg !5429
  %tobool6 = icmp ne i32 %13, 0, !dbg !5429
  br i1 %tobool6, label %if.end15, label %if.then7, !dbg !5431

if.then7:                                         ; preds = %if.else
  %14 = load i32, ptr %mask.addr, align 4, !dbg !5432
  %15 = load i32, ptr %val.addr, align 4, !dbg !5434
  %and = and i32 %15, %14, !dbg !5434
  store i32 %and, ptr %val.addr, align 4, !dbg !5434
  %16 = load i32, ptr %orig, align 4, !dbg !5435
  %17 = load i32, ptr %mask.addr, align 4, !dbg !5436
  %not = xor i32 %17, -1, !dbg !5437
  %and8 = and i32 %16, %not, !dbg !5438
  %18 = load i32, ptr %val.addr, align 4, !dbg !5439
  %or = or i32 %18, %and8, !dbg !5439
  store i32 %or, ptr %val.addr, align 4, !dbg !5439
  %19 = load i32, ptr %val.addr, align 4, !dbg !5440
  %20 = load i32, ptr %orig, align 4, !dbg !5442
  %cmp = icmp ne i32 %19, %20, !dbg !5443
  br i1 %cmp, label %if.then9, label %if.end14, !dbg !5444

if.then9:                                         ; preds = %if.then7
  %21 = load ptr, ptr %codec.addr, align 8, !dbg !5445
  %22 = load i32, ptr %reg.addr, align 4, !dbg !5447
  %23 = load i32, ptr %val.addr, align 4, !dbg !5448
  %call10 = call i32 @hda_reg_write(ptr noundef %21, i32 noundef %22, i32 noundef %23) #7, !dbg !5449
  store i32 %call10, ptr %err, align 4, !dbg !5450
  %24 = load i32, ptr %err, align 4, !dbg !5451
  %tobool11 = icmp ne i32 %24, 0, !dbg !5451
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5453

if.then12:                                        ; preds = %if.then9
  store i32 1, ptr %err, align 4, !dbg !5454
  br label %if.end13, !dbg !5455

if.end13:                                         ; preds = %if.then12, %if.then9
  br label %if.end14, !dbg !5456

if.end14:                                         ; preds = %if.end13, %if.then7
  br label %if.end15, !dbg !5457

if.end15:                                         ; preds = %if.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %25 = load ptr, ptr %codec.addr, align 8, !dbg !5458
  %regmap_lock17 = getelementptr inbounds %struct.hdac_device, ptr %25, i32 0, i32 24, !dbg !5459
  call void @mutex_unlock(ptr noundef %regmap_lock17) #7, !dbg !5460
  %26 = load i32, ptr %err, align 4, !dbg !5461
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !5462
  call void @llvm.lifetime.end.p0(i64 1, ptr %change) #6, !dbg !5462
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig) #6, !dbg !5462
  ret i32 %26, !dbg !5463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_regmap_update_raw_once(ptr noundef %codec, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #0 align 16 !dbg !5464 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %_err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5466, metadata !DIExpression()), !dbg !5472
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5467, metadata !DIExpression()), !dbg !5473
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5468, metadata !DIExpression()), !dbg !5474
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5469, metadata !DIExpression()), !dbg !5475
  call void @llvm.lifetime.start.p0(i64 4, ptr %_err) #6, !dbg !5476
  call void @llvm.dbg.declare(metadata ptr %_err, metadata !5470, metadata !DIExpression()), !dbg !5476
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5476
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5476
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5476
  %3 = load i32, ptr %val.addr, align 4, !dbg !5476
  %call = call i32 @reg_raw_update_once(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7, !dbg !5476
  store i32 %call, ptr %_err, align 4, !dbg !5476
  %4 = load i32, ptr %_err, align 4, !dbg !5477
  %cmp = icmp eq i32 %4, -11, !dbg !5477
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5476

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5479
  %call1 = call i32 @snd_hdac_power_up_pm(ptr noundef %5) #7, !dbg !5479
  store i32 %call1, ptr %_err, align 4, !dbg !5479
  %6 = load i32, ptr %_err, align 4, !dbg !5481
  %cmp2 = icmp sge i32 %6, 0, !dbg !5481
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5479

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !5481
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5481
  %9 = load i32, ptr %mask.addr, align 4, !dbg !5481
  %10 = load i32, ptr %val.addr, align 4, !dbg !5481
  %call4 = call i32 @reg_raw_update_once(ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #7, !dbg !5481
  store i32 %call4, ptr %_err, align 4, !dbg !5481
  br label %if.end, !dbg !5481

if.end:                                           ; preds = %if.then3, %if.then
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !5479
  %call5 = call i32 @snd_hdac_power_down_pm(ptr noundef %11) #7, !dbg !5479
  br label %if.end6, !dbg !5479

if.end6:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %_err, align 4, !dbg !5476
  store i32 %12, ptr %tmp, align 4, !dbg !5477
  call void @llvm.lifetime.end.p0(i64 4, ptr %_err) #6, !dbg !5483
  %13 = load i32, ptr %tmp, align 4, !dbg !5476
  ret i32 %13, !dbg !5484
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reg_raw_update_once(ptr noundef %codec, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #0 align 16 !dbg !5485 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5487, metadata !DIExpression()), !dbg !5492
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5488, metadata !DIExpression()), !dbg !5493
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5489, metadata !DIExpression()), !dbg !5494
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5490, metadata !DIExpression()), !dbg !5495
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !5496
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5491, metadata !DIExpression()), !dbg !5497
  store i32 0, ptr %err, align 4, !dbg !5497
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5498
  %regmap = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 23, !dbg !5500
  %1 = load ptr, ptr %regmap, align 8, !dbg !5500
  %tobool = icmp ne ptr %1, null, !dbg !5498
  br i1 %tobool, label %if.end, label %if.then, !dbg !5501

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !5502
  %3 = load i32, ptr %reg.addr, align 4, !dbg !5503
  %4 = load i32, ptr %mask.addr, align 4, !dbg !5504
  %5 = load i32, ptr %val.addr, align 4, !dbg !5505
  %call = call i32 @reg_raw_update(ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7, !dbg !5506
  store i32 %call, ptr %retval, align 4, !dbg !5507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5507

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !5508
  %regmap_lock = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 24, !dbg !5509
  call void @mutex_lock(ptr noundef %regmap_lock) #7, !dbg !5510
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !5511
  %regmap1 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 23, !dbg !5513
  %8 = load ptr, ptr %regmap1, align 8, !dbg !5513
  %9 = load i32, ptr %reg.addr, align 4, !dbg !5514
  %call2 = call zeroext i1 @regcache_reg_cached(ptr noundef %8, i32 noundef %9) #7, !dbg !5515
  br i1 %call2, label %if.end6, label %if.then3, !dbg !5516

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %codec.addr, align 8, !dbg !5517
  %regmap4 = getelementptr inbounds %struct.hdac_device, ptr %10, i32 0, i32 23, !dbg !5518
  %11 = load ptr, ptr %regmap4, align 8, !dbg !5518
  %12 = load i32, ptr %reg.addr, align 4, !dbg !5519
  %13 = load i32, ptr %mask.addr, align 4, !dbg !5520
  %14 = load i32, ptr %val.addr, align 4, !dbg !5521
  %call5 = call i32 @regmap_update_bits(ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7, !dbg !5522
  store i32 %call5, ptr %err, align 4, !dbg !5523
  br label %if.end6, !dbg !5524

if.end6:                                          ; preds = %if.then3, %if.end
  %15 = load ptr, ptr %codec.addr, align 8, !dbg !5525
  %regmap_lock7 = getelementptr inbounds %struct.hdac_device, ptr %15, i32 0, i32 24, !dbg !5526
  call void @mutex_unlock(ptr noundef %regmap_lock7) #7, !dbg !5527
  %16 = load i32, ptr %err, align 4, !dbg !5528
  store i32 %16, ptr %retval, align 4, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !5530
  %17 = load i32, ptr %retval, align 4, !dbg !5530
  ret i32 %17, !dbg !5530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_regmap_sync(ptr noundef %codec) #0 align 16 !dbg !5531 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5535
  %regmap_lock = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24, !dbg !5536
  call void @mutex_lock(ptr noundef %regmap_lock) #7, !dbg !5537
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5538
  %regmap = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 23, !dbg !5540
  %2 = load ptr, ptr %regmap, align 8, !dbg !5540
  %tobool = icmp ne ptr %2, null, !dbg !5538
  br i1 %tobool, label %if.then, label %if.end, !dbg !5541

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !5542
  %regmap1 = getelementptr inbounds %struct.hdac_device, ptr %3, i32 0, i32 23, !dbg !5543
  %4 = load ptr, ptr %regmap1, align 8, !dbg !5543
  %call = call i32 @regcache_sync(ptr noundef %4) #7, !dbg !5544
  br label %if.end, !dbg !5544

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5545
  %regmap_lock2 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 24, !dbg !5546
  call void @mutex_unlock(ptr noundef %regmap_lock2) #7, !dbg !5547
  ret void, !dbg !5548
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5549 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5553 dso_local i32 @regcache_sync(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5556 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hda_writeable_reg(ptr noundef %dev, i32 noundef %reg) #0 align 16 !dbg !5557 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %verb = alloca i32, align 4
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5559, metadata !DIExpression()), !dbg !5568
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5560, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #6, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5561, metadata !DIExpression()), !dbg !5571
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5562, metadata !DIExpression()), !dbg !5572
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5572
  store ptr %0, ptr %__mptr, align 8, !dbg !5572
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5572
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5572
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5572
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5573
  %2 = load ptr, ptr %tmp, align 8, !dbg !5572
  store ptr %2, ptr %codec, align 8, !dbg !5571
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !5564, metadata !DIExpression()), !dbg !5575
  %3 = load i32, ptr %reg.addr, align 4, !dbg !5576
  %shr = lshr i32 %3, 8, !dbg !5576
  %and = and i32 %shr, 4095, !dbg !5576
  store i32 %and, ptr %verb, align 4, !dbg !5575
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #6, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5565, metadata !DIExpression()), !dbg !5578
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5579
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5567, metadata !DIExpression()), !dbg !5580
  store i32 0, ptr %i, align 4, !dbg !5581
  %4 = load ptr, ptr %codec, align 8, !dbg !5581
  %vendor_verbs = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 25, !dbg !5581
  %list = getelementptr inbounds %struct.snd_array, ptr %vendor_verbs, i32 0, i32 4, !dbg !5581
  %5 = load ptr, ptr %list, align 8, !dbg !5581
  store ptr %5, ptr %v, align 8, !dbg !5581
  br label %for.cond, !dbg !5581

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !5583
  %7 = load ptr, ptr %codec, align 8, !dbg !5583
  %vendor_verbs1 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 25, !dbg !5583
  %used = getelementptr inbounds %struct.snd_array, ptr %vendor_verbs1, i32 0, i32 0, !dbg !5583
  %8 = load i32, ptr %used, align 8, !dbg !5583
  %cmp = icmp ult i32 %6, %8, !dbg !5583
  br i1 %cmp, label %for.body, label %for.end, !dbg !5581

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %verb, align 4, !dbg !5585
  %10 = load ptr, ptr %v, align 8, !dbg !5588
  %11 = load i32, ptr %10, align 4, !dbg !5589
  %cmp2 = icmp eq i32 %9, %11, !dbg !5590
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5591

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !5592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5592

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5593

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %codec, align 8, !dbg !5583
  %vendor_verbs3 = getelementptr inbounds %struct.hdac_device, ptr %12, i32 0, i32 25, !dbg !5583
  %13 = load i32, ptr %i, align 4, !dbg !5583
  %inc = add i32 %13, 1, !dbg !5583
  store i32 %inc, ptr %i, align 4, !dbg !5583
  %call = call ptr @snd_array_elem(ptr noundef %vendor_verbs3, i32 noundef %inc) #7, !dbg !5583
  store ptr %call, ptr %v, align 8, !dbg !5583
  br label %for.cond, !dbg !5583, !llvm.loop !5594

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %codec, align 8, !dbg !5598
  %caps_overwriting = getelementptr inbounds %struct.hdac_device, ptr %14, i32 0, i32 26, !dbg !5600
  %bf.load = load i8, ptr %caps_overwriting, align 8, !dbg !5600
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5600
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5600
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5600
  br i1 %bf.cast, label %if.then4, label %if.end5, !dbg !5601

if.then4:                                         ; preds = %for.end
  store i1 true, ptr %retval, align 1, !dbg !5602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5602

if.end5:                                          ; preds = %for.end
  %15 = load i32, ptr %verb, align 4, !dbg !5603
  %and6 = and i32 %15, 3840, !dbg !5604
  switch i32 %and6, label %sw.default [
    i32 2560, label %sw.bb
    i32 2816, label %sw.bb
    i32 3072, label %sw.bb7
    i32 3840, label %sw.epilog
  ], !dbg !5605

sw.bb:                                            ; preds = %if.end5, %if.end5
  store i1 true, ptr %retval, align 1, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5606

sw.bb7:                                           ; preds = %if.end5
  %16 = load ptr, ptr %codec, align 8, !dbg !5608
  %cache_coef = getelementptr inbounds %struct.hdac_device, ptr %16, i32 0, i32 26, !dbg !5609
  %bf.load8 = load i8, ptr %cache_coef, align 8, !dbg !5609
  %bf.lshr9 = lshr i8 %bf.load8, 2, !dbg !5609
  %bf.clear10 = and i8 %bf.lshr9, 1, !dbg !5609
  %bf.cast11 = trunc i8 %bf.clear10 to i1, !dbg !5609
  store i1 %bf.cast11, ptr %retval, align 1, !dbg !5610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5610

sw.default:                                       ; preds = %if.end5
  store i1 false, ptr %retval, align 1, !dbg !5611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5611

sw.epilog:                                        ; preds = %if.end5
  %17 = load i32, ptr %verb, align 4, !dbg !5612
  switch i32 %17, label %sw.epilog13 [
    i32 3841, label %sw.bb12
    i32 3844, label %sw.bb12
    i32 3847, label %sw.bb12
    i32 3848, label %sw.bb12
    i32 3850, label %sw.bb12
    i32 3852, label %sw.bb12
    i32 3853, label %sw.bb12
    i32 3854, label %sw.bb12
    i32 3855, label %sw.bb12
    i32 3862, label %sw.bb12
    i32 3863, label %sw.bb12
    i32 3861, label %sw.bb12
    i32 3864, label %sw.bb12
    i32 3865, label %sw.bb12
    i32 3866, label %sw.bb12
  ], !dbg !5613

sw.bb12:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  store i1 true, ptr %retval, align 1, !dbg !5614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5614

sw.epilog13:                                      ; preds = %sw.epilog
  store i1 false, ptr %retval, align 1, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

cleanup:                                          ; preds = %sw.epilog13, %sw.bb12, %sw.default, %sw.bb7, %sw.bb, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #6, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #6, !dbg !5617
  %18 = load i1, ptr %retval, align 1, !dbg !5617
  ret i1 %18, !dbg !5617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hda_readable_reg(ptr noundef %dev, i32 noundef %reg) #0 align 16 !dbg !5618 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %verb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5620, metadata !DIExpression()), !dbg !5626
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5621, metadata !DIExpression()), !dbg !5627
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #6, !dbg !5628
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5622, metadata !DIExpression()), !dbg !5629
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5623, metadata !DIExpression()), !dbg !5630
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5630
  store ptr %0, ptr %__mptr, align 8, !dbg !5630
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5630
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5630
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5631
  %2 = load ptr, ptr %tmp, align 8, !dbg !5630
  store ptr %2, ptr %codec, align 8, !dbg !5629
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !5625, metadata !DIExpression()), !dbg !5633
  %3 = load i32, ptr %reg.addr, align 4, !dbg !5634
  %shr = lshr i32 %3, 8, !dbg !5634
  %and = and i32 %shr, 4095, !dbg !5634
  store i32 %and, ptr %verb, align 4, !dbg !5633
  %4 = load ptr, ptr %codec, align 8, !dbg !5635
  %caps_overwriting = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 26, !dbg !5637
  %bf.load = load i8, ptr %caps_overwriting, align 8, !dbg !5637
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5637
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5637
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5637
  br i1 %bf.cast, label %if.then, label %if.end, !dbg !5638

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5639

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %verb, align 4, !dbg !5640
  switch i32 %5, label %sw.epilog [
    i32 3840, label %sw.bb
    i32 3842, label %sw.bb
    i32 3872, label %sw.bb
    i32 3868, label %sw.bb1
    i32 3846, label %sw.bb1
    i32 3885, label %sw.bb1
  ], !dbg !5641

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5642

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5644

sw.epilog:                                        ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5645
  %7 = load i32, ptr %reg.addr, align 4, !dbg !5646
  %call = call zeroext i1 @hda_writeable_reg(ptr noundef %6, i32 noundef %7) #7, !dbg !5647
  store i1 %call, ptr %retval, align 1, !dbg !5648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5648

cleanup:                                          ; preds = %sw.epilog, %sw.bb1, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #6, !dbg !5649
  %8 = load i1, ptr %retval, align 1, !dbg !5649
  ret i1 %8, !dbg !5649
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hda_volatile_reg(ptr noundef %dev, i32 noundef %reg) #0 align 16 !dbg !5650 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %verb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5652, metadata !DIExpression()), !dbg !5658
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5653, metadata !DIExpression()), !dbg !5659
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #6, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5654, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5655, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5662
  store ptr %0, ptr %__mptr, align 8, !dbg !5662
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5662
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5662
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !5663
  %2 = load ptr, ptr %tmp, align 8, !dbg !5662
  store ptr %2, ptr %codec, align 8, !dbg !5661
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !5657, metadata !DIExpression()), !dbg !5665
  %3 = load i32, ptr %reg.addr, align 4, !dbg !5666
  %shr = lshr i32 %3, 8, !dbg !5666
  %and = and i32 %shr, 4095, !dbg !5666
  store i32 %and, ptr %verb, align 4, !dbg !5665
  %4 = load i32, ptr %verb, align 4, !dbg !5667
  switch i32 %4, label %sw.epilog [
    i32 3072, label %sw.bb
    i32 3328, label %sw.bb1
    i32 3843, label %sw.bb1
    i32 3845, label %sw.bb1
    i32 3849, label %sw.bb1
    i32 3886, label %sw.bb1
    i32 3887, label %sw.bb1
    i32 3888, label %sw.bb1
    i32 3889, label %sw.bb1
    i32 3890, label %sw.bb1
    i32 3891, label %sw.bb1
    i32 3892, label %sw.bb1
    i32 3893, label %sw.bb1
    i32 3894, label %sw.bb1
  ], !dbg !5668

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %codec, align 8, !dbg !5669
  %cache_coef = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 26, !dbg !5671
  %bf.load = load i8, ptr %cache_coef, align 8, !dbg !5671
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5671
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5671
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5671
  %lnot = xor i1 %bf.cast, true, !dbg !5672
  store i1 %lnot, ptr %retval, align 1, !dbg !5673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5673

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, ptr %retval, align 1, !dbg !5674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5674

sw.epilog:                                        ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5675

cleanup:                                          ; preds = %sw.epilog, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !5676
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #6, !dbg !5676
  %6 = load i1, ptr %retval, align 1, !dbg !5676
  ret i1 %6, !dbg !5676
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_reg_read(ptr noundef %context, i32 noundef %reg, ptr noundef %val) #0 align 16 !dbg !5677 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %verb = alloca i32, align 4
  %err = alloca i32, align 4
  %pm_lock = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5679, metadata !DIExpression()), !dbg !5687
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5680, metadata !DIExpression()), !dbg !5688
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5681, metadata !DIExpression()), !dbg !5689
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #6, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5682, metadata !DIExpression()), !dbg !5691
  %0 = load ptr, ptr %context.addr, align 8, !dbg !5692
  store ptr %0, ptr %codec, align 8, !dbg !5691
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !5683, metadata !DIExpression()), !dbg !5694
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5695
  %shr = lshr i32 %1, 8, !dbg !5695
  %and = and i32 %shr, 4095, !dbg !5695
  store i32 %and, ptr %verb, align 4, !dbg !5694
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5684, metadata !DIExpression()), !dbg !5697
  call void @llvm.lifetime.start.p0(i64 4, ptr %pm_lock) #6, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %pm_lock, metadata !5685, metadata !DIExpression()), !dbg !5699
  store i32 0, ptr %pm_lock, align 4, !dbg !5699
  %2 = load i32, ptr %verb, align 4, !dbg !5700
  %cmp = icmp ne i32 %2, 3845, !dbg !5702
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5703

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %codec, align 8, !dbg !5704
  %call = call i32 @codec_pm_lock(ptr noundef %3) #7, !dbg !5706
  store i32 %call, ptr %pm_lock, align 4, !dbg !5707
  %4 = load i32, ptr %pm_lock, align 4, !dbg !5708
  %cmp1 = icmp slt i32 %4, 0, !dbg !5710
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5711

if.then2:                                         ; preds = %if.then
  store i32 -11, ptr %retval, align 4, !dbg !5712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5712

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5713

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %codec, align 8, !dbg !5714
  %addr = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 3, !dbg !5715
  %6 = load i32, ptr %addr, align 8, !dbg !5715
  %shl = shl i32 %6, 28, !dbg !5716
  %7 = load i32, ptr %reg.addr, align 4, !dbg !5717
  %or = or i32 %7, %shl, !dbg !5717
  store i32 %or, ptr %reg.addr, align 4, !dbg !5717
  %8 = load i32, ptr %reg.addr, align 4, !dbg !5718
  %call4 = call zeroext i1 @is_stereo_amp_verb(i32 noundef %8) #7, !dbg !5720
  br i1 %call4, label %if.then5, label %if.end7, !dbg !5721

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %codec, align 8, !dbg !5722
  %10 = load i32, ptr %reg.addr, align 4, !dbg !5724
  %11 = load ptr, ptr %val.addr, align 8, !dbg !5725
  %call6 = call i32 @hda_reg_read_stereo_amp(ptr noundef %9, i32 noundef %10, ptr noundef %11) #7, !dbg !5726
  store i32 %call6, ptr %err, align 4, !dbg !5727
  br label %out, !dbg !5728

if.end7:                                          ; preds = %if.end3
  %12 = load i32, ptr %verb, align 4, !dbg !5729
  %cmp8 = icmp eq i32 %12, 3072, !dbg !5731
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !5732

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %codec, align 8, !dbg !5733
  %14 = load i32, ptr %reg.addr, align 4, !dbg !5735
  %15 = load ptr, ptr %val.addr, align 8, !dbg !5736
  %call10 = call i32 @hda_reg_read_coef(ptr noundef %13, i32 noundef %14, ptr noundef %15) #7, !dbg !5737
  store i32 %call10, ptr %err, align 4, !dbg !5738
  br label %out, !dbg !5739

if.end11:                                         ; preds = %if.end7
  %16 = load i32, ptr %verb, align 4, !dbg !5740
  %and12 = and i32 %16, 1792, !dbg !5742
  %cmp13 = icmp eq i32 %and12, 768, !dbg !5743
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5744

if.then14:                                        ; preds = %if.end11
  %17 = load i32, ptr %reg.addr, align 4, !dbg !5745
  %and15 = and i32 %17, -17, !dbg !5745
  store i32 %and15, ptr %reg.addr, align 4, !dbg !5745
  br label %if.end16, !dbg !5746

if.end16:                                         ; preds = %if.then14, %if.end11
  %18 = load ptr, ptr %codec, align 8, !dbg !5747
  %19 = load i32, ptr %reg.addr, align 4, !dbg !5748
  %20 = load ptr, ptr %val.addr, align 8, !dbg !5749
  %call17 = call i32 @snd_hdac_exec_verb(ptr noundef %18, i32 noundef %19, i32 noundef 0, ptr noundef %20) #7, !dbg !5750
  store i32 %call17, ptr %err, align 4, !dbg !5751
  %21 = load i32, ptr %err, align 4, !dbg !5752
  %cmp18 = icmp slt i32 %21, 0, !dbg !5754
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5755

if.then19:                                        ; preds = %if.end16
  br label %out, !dbg !5756

if.end20:                                         ; preds = %if.end16
  %22 = load i32, ptr %verb, align 4, !dbg !5757
  %cmp21 = icmp eq i32 %22, 3845, !dbg !5759
  br i1 %cmp21, label %if.then22, label %if.end28, !dbg !5760

if.then22:                                        ; preds = %if.end20
  %23 = load ptr, ptr %val.addr, align 8, !dbg !5761
  %24 = load i32, ptr %23, align 4, !dbg !5764
  %and23 = and i32 %24, 256, !dbg !5765
  %tobool = icmp ne i32 %and23, 0, !dbg !5765
  br i1 %tobool, label %if.then24, label %if.else, !dbg !5766

if.then24:                                        ; preds = %if.then22
  %25 = load ptr, ptr %val.addr, align 8, !dbg !5767
  store i32 -1, ptr %25, align 4, !dbg !5768
  br label %if.end27, !dbg !5769

if.else:                                          ; preds = %if.then22
  %26 = load ptr, ptr %val.addr, align 8, !dbg !5770
  %27 = load i32, ptr %26, align 4, !dbg !5771
  %shr25 = lshr i32 %27, 4, !dbg !5772
  %and26 = and i32 %shr25, 15, !dbg !5773
  %28 = load ptr, ptr %val.addr, align 8, !dbg !5774
  store i32 %and26, ptr %28, align 4, !dbg !5775
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  br label %if.end28, !dbg !5776

if.end28:                                         ; preds = %if.end27, %if.end20
  br label %out, !dbg !5777

out:                                              ; preds = %if.end28, %if.then19, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !5686), !dbg !5778
  %29 = load ptr, ptr %codec, align 8, !dbg !5779
  %30 = load i32, ptr %pm_lock, align 4, !dbg !5780
  call void @codec_pm_unlock(ptr noundef %29, i32 noundef %30) #7, !dbg !5781
  %31 = load i32, ptr %err, align 4, !dbg !5782
  store i32 %31, ptr %retval, align 4, !dbg !5783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5783

cleanup:                                          ; preds = %out, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %pm_lock) #6, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #6, !dbg !5784
  %32 = load i32, ptr %retval, align 4, !dbg !5784
  ret i32 %32, !dbg !5784
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 16 !dbg !5785 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %codec = alloca ptr, align 8
  %verb = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes = alloca i32, align 4
  %err = alloca i32, align 4
  %pm_lock = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5787, metadata !DIExpression()), !dbg !5797
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5788, metadata !DIExpression()), !dbg !5798
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5789, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #6, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5790, metadata !DIExpression()), !dbg !5801
  %0 = load ptr, ptr %context.addr, align 8, !dbg !5802
  store ptr %0, ptr %codec, align 8, !dbg !5801
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !5791, metadata !DIExpression()), !dbg !5804
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5792, metadata !DIExpression()), !dbg !5806
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #6, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5793, metadata !DIExpression()), !dbg !5807
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !5805
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5794, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 4, ptr %pm_lock) #6, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %pm_lock, metadata !5795, metadata !DIExpression()), !dbg !5810
  store i32 0, ptr %pm_lock, align 4, !dbg !5810
  %1 = load ptr, ptr %codec, align 8, !dbg !5811
  %caps_overwriting = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 26, !dbg !5813
  %bf.load = load i8, ptr %caps_overwriting, align 8, !dbg !5813
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5813
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5813
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5813
  br i1 %bf.cast, label %if.then, label %if.end, !dbg !5814

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5815

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %reg.addr, align 4, !dbg !5816
  %and = and i32 %2, -524289, !dbg !5816
  store i32 %and, ptr %reg.addr, align 4, !dbg !5816
  %3 = load ptr, ptr %codec, align 8, !dbg !5817
  %addr = getelementptr inbounds %struct.hdac_device, ptr %3, i32 0, i32 3, !dbg !5818
  %4 = load i32, ptr %addr, align 8, !dbg !5818
  %shl = shl i32 %4, 28, !dbg !5819
  %5 = load i32, ptr %reg.addr, align 4, !dbg !5820
  %or = or i32 %5, %shl, !dbg !5820
  store i32 %or, ptr %reg.addr, align 4, !dbg !5820
  %6 = load i32, ptr %reg.addr, align 4, !dbg !5821
  %shr = lshr i32 %6, 8, !dbg !5821
  %and1 = and i32 %shr, 4095, !dbg !5821
  store i32 %and1, ptr %verb, align 4, !dbg !5822
  %7 = load i32, ptr %verb, align 4, !dbg !5823
  %cmp = icmp ne i32 %7, 1797, !dbg !5825
  br i1 %cmp, label %if.then2, label %if.end9, !dbg !5826

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %codec, align 8, !dbg !5827
  %call = call i32 @codec_pm_lock(ptr noundef %8) #7, !dbg !5829
  store i32 %call, ptr %pm_lock, align 4, !dbg !5830
  %9 = load i32, ptr %pm_lock, align 4, !dbg !5831
  %cmp3 = icmp slt i32 %9, 0, !dbg !5833
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !5834

if.then4:                                         ; preds = %if.then2
  %10 = load ptr, ptr %codec, align 8, !dbg !5835
  %lazy_cache = getelementptr inbounds %struct.hdac_device, ptr %10, i32 0, i32 26, !dbg !5836
  %bf.load5 = load i8, ptr %lazy_cache, align 8, !dbg !5836
  %bf.clear6 = and i8 %bf.load5, 1, !dbg !5836
  %bf.cast7 = trunc i8 %bf.clear6 to i1, !dbg !5836
  %11 = zext i1 %bf.cast7 to i64, !dbg !5835
  %cond = select i1 %bf.cast7, i32 0, i32 -11, !dbg !5835
  store i32 %cond, ptr %retval, align 4, !dbg !5837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5837

if.end8:                                          ; preds = %if.then2
  br label %if.end9, !dbg !5838

if.end9:                                          ; preds = %if.end8, %if.end
  %12 = load i32, ptr %reg.addr, align 4, !dbg !5839
  %call10 = call zeroext i1 @is_stereo_amp_verb(i32 noundef %12) #7, !dbg !5841
  br i1 %call10, label %if.then11, label %if.end13, !dbg !5842

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %codec, align 8, !dbg !5843
  %14 = load i32, ptr %reg.addr, align 4, !dbg !5845
  %15 = load i32, ptr %val.addr, align 4, !dbg !5846
  %call12 = call i32 @hda_reg_write_stereo_amp(ptr noundef %13, i32 noundef %14, i32 noundef %15) #7, !dbg !5847
  store i32 %call12, ptr %err, align 4, !dbg !5848
  br label %out, !dbg !5849

if.end13:                                         ; preds = %if.end9
  %16 = load i32, ptr %verb, align 4, !dbg !5850
  %cmp14 = icmp eq i32 %16, 1024, !dbg !5852
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !5853

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %codec, align 8, !dbg !5854
  %18 = load i32, ptr %reg.addr, align 4, !dbg !5856
  %19 = load i32, ptr %val.addr, align 4, !dbg !5857
  %call16 = call i32 @hda_reg_write_coef(ptr noundef %17, i32 noundef %18, i32 noundef %19) #7, !dbg !5858
  store i32 %call16, ptr %err, align 4, !dbg !5859
  br label %out, !dbg !5860

if.end17:                                         ; preds = %if.end13
  %20 = load i32, ptr %verb, align 4, !dbg !5861
  %and18 = and i32 %20, 3840, !dbg !5862
  switch i32 %and18, label %sw.epilog [
    i32 768, label %sw.bb
  ], !dbg !5863

sw.bb:                                            ; preds = %if.end17
  %21 = load i32, ptr %reg.addr, align 4, !dbg !5864
  %and19 = and i32 %21, 16, !dbg !5867
  %tobool = icmp ne i32 %and19, 0, !dbg !5867
  br i1 %tobool, label %land.lhs.true, label %if.end23, !dbg !5868

land.lhs.true:                                    ; preds = %sw.bb
  %22 = load i32, ptr %val.addr, align 4, !dbg !5869
  %and20 = and i32 %22, 128, !dbg !5870
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5870
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5871

if.then22:                                        ; preds = %land.lhs.true
  store i32 0, ptr %val.addr, align 4, !dbg !5872
  br label %if.end23, !dbg !5873

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %sw.bb
  store i32 768, ptr %verb, align 4, !dbg !5874
  %23 = load i32, ptr %reg.addr, align 4, !dbg !5875
  %and24 = and i32 %23, 8192, !dbg !5877
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5877
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !5878

if.then26:                                        ; preds = %if.end23
  %24 = load i32, ptr %verb, align 4, !dbg !5879
  %or27 = or i32 %24, 32, !dbg !5879
  store i32 %or27, ptr %verb, align 4, !dbg !5879
  br label %if.end29, !dbg !5880

if.else:                                          ; preds = %if.end23
  %25 = load i32, ptr %verb, align 4, !dbg !5881
  %or28 = or i32 %25, 16, !dbg !5881
  store i32 %or28, ptr %verb, align 4, !dbg !5881
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %26 = load i32, ptr %reg.addr, align 4, !dbg !5882
  %and30 = and i32 %26, 32768, !dbg !5884
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5884
  br i1 %tobool31, label %if.then32, label %if.else34, !dbg !5885

if.then32:                                        ; preds = %if.end29
  %27 = load i32, ptr %verb, align 4, !dbg !5886
  %or33 = or i32 %27, 128, !dbg !5886
  store i32 %or33, ptr %verb, align 4, !dbg !5886
  br label %if.end38, !dbg !5888

if.else34:                                        ; preds = %if.end29
  %28 = load i32, ptr %verb, align 4, !dbg !5889
  %or35 = or i32 %28, 64, !dbg !5889
  store i32 %or35, ptr %verb, align 4, !dbg !5889
  %29 = load i32, ptr %reg.addr, align 4, !dbg !5891
  %and36 = and i32 %29, 15, !dbg !5892
  %30 = load i32, ptr %verb, align 4, !dbg !5893
  %or37 = or i32 %30, %and36, !dbg !5893
  store i32 %or37, ptr %verb, align 4, !dbg !5893
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then32
  br label %sw.epilog, !dbg !5894

sw.epilog:                                        ; preds = %if.end17, %if.end38
  %31 = load i32, ptr %verb, align 4, !dbg !5895
  switch i32 %31, label %sw.default [
    i32 1805, label %sw.bb39
    i32 1820, label %sw.bb40
  ], !dbg !5896

sw.bb39:                                          ; preds = %sw.epilog
  store i32 2, ptr %bytes, align 4, !dbg !5897
  br label %sw.epilog41, !dbg !5899

sw.bb40:                                          ; preds = %sw.epilog
  store i32 4, ptr %bytes, align 4, !dbg !5900
  br label %sw.epilog41, !dbg !5901

sw.default:                                       ; preds = %sw.epilog
  store i32 1, ptr %bytes, align 4, !dbg !5902
  br label %sw.epilog41, !dbg !5903

sw.epilog41:                                      ; preds = %sw.default, %sw.bb40, %sw.bb39
  store i32 0, ptr %i, align 4, !dbg !5904
  br label %for.cond, !dbg !5906

for.cond:                                         ; preds = %for.inc, %sw.epilog41
  %32 = load i32, ptr %i, align 4, !dbg !5907
  %33 = load i32, ptr %bytes, align 4, !dbg !5909
  %cmp42 = icmp slt i32 %32, %33, !dbg !5910
  br i1 %cmp42, label %for.body, label %for.end, !dbg !5911

for.body:                                         ; preds = %for.cond
  %34 = load i32, ptr %reg.addr, align 4, !dbg !5912
  %and43 = and i32 %34, -1048576, !dbg !5912
  store i32 %and43, ptr %reg.addr, align 4, !dbg !5912
  %35 = load i32, ptr %verb, align 4, !dbg !5914
  %36 = load i32, ptr %i, align 4, !dbg !5915
  %add = add i32 %35, %36, !dbg !5916
  %shl44 = shl i32 %add, 8, !dbg !5917
  %37 = load i32, ptr %val.addr, align 4, !dbg !5918
  %38 = load i32, ptr %i, align 4, !dbg !5919
  %mul = mul i32 8, %38, !dbg !5920
  %shr45 = lshr i32 %37, %mul, !dbg !5921
  %and46 = and i32 %shr45, 255, !dbg !5922
  %or47 = or i32 %shl44, %and46, !dbg !5923
  %39 = load i32, ptr %reg.addr, align 4, !dbg !5924
  %or48 = or i32 %39, %or47, !dbg !5924
  store i32 %or48, ptr %reg.addr, align 4, !dbg !5924
  %40 = load ptr, ptr %codec, align 8, !dbg !5925
  %41 = load i32, ptr %reg.addr, align 4, !dbg !5926
  %call49 = call i32 @snd_hdac_exec_verb(ptr noundef %40, i32 noundef %41, i32 noundef 0, ptr noundef null) #7, !dbg !5927
  store i32 %call49, ptr %err, align 4, !dbg !5928
  %42 = load i32, ptr %err, align 4, !dbg !5929
  %cmp50 = icmp slt i32 %42, 0, !dbg !5931
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !5932

if.then51:                                        ; preds = %for.body
  br label %out, !dbg !5933

if.end52:                                         ; preds = %for.body
  br label %for.inc, !dbg !5934

for.inc:                                          ; preds = %if.end52
  %43 = load i32, ptr %i, align 4, !dbg !5935
  %inc = add i32 %43, 1, !dbg !5935
  store i32 %inc, ptr %i, align 4, !dbg !5935
  br label %for.cond, !dbg !5936, !llvm.loop !5937

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !5938

out:                                              ; preds = %for.end, %if.then51, %if.then15, %if.then11
  call void @llvm.dbg.label(metadata !5796), !dbg !5939
  %44 = load ptr, ptr %codec, align 8, !dbg !5940
  %45 = load i32, ptr %pm_lock, align 4, !dbg !5941
  call void @codec_pm_unlock(ptr noundef %44, i32 noundef %45) #7, !dbg !5942
  %46 = load i32, ptr %err, align 4, !dbg !5943
  store i32 %46, ptr %retval, align 4, !dbg !5944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5944

cleanup:                                          ; preds = %out, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pm_lock) #6, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #6, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #6, !dbg !5945
  %47 = load i32, ptr %retval, align 4, !dbg !5945
  ret i32 %47, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_array_elem(ptr noundef %array, i32 noundef %idx) #4 align 16 !dbg !5946 {
entry:
  %array.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !5950, metadata !DIExpression()), !dbg !5952
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5951, metadata !DIExpression()), !dbg !5953
  %0 = load ptr, ptr %array.addr, align 8, !dbg !5954
  %list = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 4, !dbg !5955
  %1 = load ptr, ptr %list, align 8, !dbg !5955
  %2 = load i32, ptr %idx.addr, align 4, !dbg !5956
  %3 = load ptr, ptr %array.addr, align 8, !dbg !5957
  %elem_size = getelementptr inbounds %struct.snd_array, ptr %3, i32 0, i32 2, !dbg !5958
  %4 = load i32, ptr %elem_size, align 8, !dbg !5958
  %mul = mul i32 %2, %4, !dbg !5959
  %idx.ext = zext i32 %mul to i64, !dbg !5960
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !5960
  ret ptr %add.ptr, !dbg !5961
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @codec_pm_lock(ptr noundef %codec) #0 align 16 !dbg !5962 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5966
  %call = call i32 @snd_hdac_keep_power_up(ptr noundef %0) #7, !dbg !5967
  ret i32 %call, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_stereo_amp_verb(i32 noundef %reg) #0 align 16 !dbg !5969 {
entry:
  %retval = alloca i1, align 1
  %reg.addr = alloca i32, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  %0 = load i32, ptr %reg.addr, align 4, !dbg !5975
  %shr = lshr i32 %0, 8, !dbg !5977
  %and = and i32 %shr, 1792, !dbg !5978
  %cmp = icmp ne i32 %and, 768, !dbg !5979
  br i1 %cmp, label %if.then, label %if.end, !dbg !5980

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5981
  br label %return, !dbg !5981

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %reg.addr, align 4, !dbg !5982
  %and1 = and i32 %1, 12288, !dbg !5983
  %cmp2 = icmp eq i32 %and1, 12288, !dbg !5984
  store i1 %cmp2, ptr %retval, align 1, !dbg !5985
  br label %return, !dbg !5985

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !5986
  ret i1 %2, !dbg !5986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_reg_read_stereo_amp(ptr noundef %codec, i32 noundef %reg, ptr noundef %val) #0 align 16 !dbg !5987 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5989, metadata !DIExpression()), !dbg !5995
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !5990, metadata !DIExpression()), !dbg !5996
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5991, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #6, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5992, metadata !DIExpression()), !dbg !5999
  call void @llvm.lifetime.start.p0(i64 4, ptr %right) #6, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5993, metadata !DIExpression()), !dbg !6000
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !6001
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5994, metadata !DIExpression()), !dbg !6002
  %0 = load i32, ptr %reg.addr, align 4, !dbg !6003
  %and = and i32 %0, -12289, !dbg !6003
  store i32 %and, ptr %reg.addr, align 4, !dbg !6003
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6004
  %2 = load i32, ptr %reg.addr, align 4, !dbg !6005
  %or = or i32 %2, 8192, !dbg !6006
  %call = call i32 @snd_hdac_exec_verb(ptr noundef %1, i32 noundef %or, i32 noundef 0, ptr noundef %left) #7, !dbg !6007
  store i32 %call, ptr %err, align 4, !dbg !6008
  %3 = load i32, ptr %err, align 4, !dbg !6009
  %cmp = icmp slt i32 %3, 0, !dbg !6011
  br i1 %cmp, label %if.then, label %if.end, !dbg !6012

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !6013
  store i32 %4, ptr %retval, align 4, !dbg !6014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6014

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !6015
  %6 = load i32, ptr %reg.addr, align 4, !dbg !6016
  %or1 = or i32 %6, 0, !dbg !6017
  %call2 = call i32 @snd_hdac_exec_verb(ptr noundef %5, i32 noundef %or1, i32 noundef 0, ptr noundef %right) #7, !dbg !6018
  store i32 %call2, ptr %err, align 4, !dbg !6019
  %7 = load i32, ptr %err, align 4, !dbg !6020
  %cmp3 = icmp slt i32 %7, 0, !dbg !6022
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6023

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !6024
  store i32 %8, ptr %retval, align 4, !dbg !6025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6025

if.end5:                                          ; preds = %if.end
  %9 = load i32, ptr %left, align 4, !dbg !6026
  %10 = load i32, ptr %right, align 4, !dbg !6027
  %shl = shl i32 %10, 8, !dbg !6028
  %or6 = or i32 %9, %shl, !dbg !6029
  %11 = load ptr, ptr %val.addr, align 8, !dbg !6030
  store i32 %or6, ptr %11, align 4, !dbg !6031
  store i32 0, ptr %retval, align 4, !dbg !6032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6032

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !6033
  call void @llvm.lifetime.end.p0(i64 4, ptr %right) #6, !dbg !6033
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #6, !dbg !6033
  %12 = load i32, ptr %retval, align 4, !dbg !6033
  ret i32 %12, !dbg !6033
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_reg_read_coef(ptr noundef %codec, i32 noundef %reg, ptr noundef %val) #0 align 16 !dbg !6034 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %verb = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6036, metadata !DIExpression()), !dbg !6041
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6037, metadata !DIExpression()), !dbg !6042
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6038, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !6039, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6040, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6048
  %cache_coef = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26, !dbg !6050
  %bf.load = load i8, ptr %cache_coef, align 8, !dbg !6050
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !6050
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6050
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !6050
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !6051

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6053
  %and = and i32 %1, -1048321, !dbg !6054
  %or = or i32 %and, 327680, !dbg !6055
  store i32 %or, ptr %verb, align 4, !dbg !6056
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !6057
  %3 = load i32, ptr %verb, align 4, !dbg !6058
  %call = call i32 @snd_hdac_exec_verb(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null) #7, !dbg !6059
  store i32 %call, ptr %err, align 4, !dbg !6060
  %4 = load i32, ptr %err, align 4, !dbg !6061
  %cmp = icmp slt i32 %4, 0, !dbg !6063
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6064

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %err, align 4, !dbg !6065
  store i32 %5, ptr %retval, align 4, !dbg !6066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6066

if.end2:                                          ; preds = %if.end
  %6 = load i32, ptr %reg.addr, align 4, !dbg !6067
  %and3 = and i32 %6, -1048576, !dbg !6068
  %or4 = or i32 %and3, 851968, !dbg !6069
  store i32 %or4, ptr %verb, align 4, !dbg !6070
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !6071
  %8 = load i32, ptr %verb, align 4, !dbg !6072
  %9 = load ptr, ptr %val.addr, align 8, !dbg !6073
  %call5 = call i32 @snd_hdac_exec_verb(ptr noundef %7, i32 noundef %8, i32 noundef 0, ptr noundef %9) #7, !dbg !6074
  store i32 %call5, ptr %retval, align 4, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !6076
  %10 = load i32, ptr %retval, align 4, !dbg !6076
  ret i32 %10, !dbg !6076
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6077 dso_local i32 @snd_hdac_exec_verb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @codec_pm_unlock(ptr noundef %codec, i32 noundef %lock) #0 align 16 !dbg !6079 {
entry:
  %codec.addr = alloca ptr, align 8
  %lock.addr = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6083, metadata !DIExpression()), !dbg !6085
  store i32 %lock, ptr %lock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6084, metadata !DIExpression()), !dbg !6086
  %0 = load i32, ptr %lock.addr, align 4, !dbg !6087
  %cmp = icmp eq i32 %0, 1, !dbg !6089
  br i1 %cmp, label %if.then, label %if.end, !dbg !6090

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6091
  %call = call i32 @snd_hdac_power_down_pm(ptr noundef %1) #7, !dbg !6092
  br label %if.end, !dbg !6092

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6094 dso_local i32 @snd_hdac_keep_power_up(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_reg_write_stereo_amp(ptr noundef %codec, i32 noundef %reg, i32 noundef %val) #0 align 16 !dbg !6095 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %verb = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6097, metadata !DIExpression()), !dbg !6104
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6098, metadata !DIExpression()), !dbg !6105
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6099, metadata !DIExpression()), !dbg !6106
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6100, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !6101, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #6, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6102, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 4, ptr %right) #6, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6103, metadata !DIExpression()), !dbg !6112
  store i32 196608, ptr %verb, align 4, !dbg !6113
  %0 = load i32, ptr %reg.addr, align 4, !dbg !6114
  %and = and i32 %0, 32768, !dbg !6116
  %tobool = icmp ne i32 %and, 0, !dbg !6116
  br i1 %tobool, label %if.then, label %if.else, !dbg !6117

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %verb, align 4, !dbg !6118
  %or = or i32 %1, 32768, !dbg !6118
  store i32 %or, ptr %verb, align 4, !dbg !6118
  br label %if.end, !dbg !6119

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %reg.addr, align 4, !dbg !6120
  %and1 = and i32 %2, 15, !dbg !6121
  %shl = shl i32 %and1, 8, !dbg !6122
  %or2 = or i32 16384, %shl, !dbg !6123
  %3 = load i32, ptr %verb, align 4, !dbg !6124
  %or3 = or i32 %3, %or2, !dbg !6124
  store i32 %or3, ptr %verb, align 4, !dbg !6124
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %reg.addr, align 4, !dbg !6125
  %and4 = and i32 %4, -1048576, !dbg !6126
  %5 = load i32, ptr %verb, align 4, !dbg !6127
  %or5 = or i32 %and4, %5, !dbg !6128
  store i32 %or5, ptr %reg.addr, align 4, !dbg !6129
  %6 = load i32, ptr %val.addr, align 4, !dbg !6130
  %and6 = and i32 %6, 255, !dbg !6131
  store i32 %and6, ptr %left, align 4, !dbg !6132
  %7 = load i32, ptr %val.addr, align 4, !dbg !6133
  %shr = lshr i32 %7, 8, !dbg !6134
  %and7 = and i32 %shr, 255, !dbg !6135
  store i32 %and7, ptr %right, align 4, !dbg !6136
  %8 = load i32, ptr %left, align 4, !dbg !6137
  %9 = load i32, ptr %right, align 4, !dbg !6139
  %cmp = icmp eq i32 %8, %9, !dbg !6140
  br i1 %cmp, label %if.then8, label %if.end11, !dbg !6141

if.then8:                                         ; preds = %if.end
  %10 = load i32, ptr %reg.addr, align 4, !dbg !6142
  %or9 = or i32 %10, 12288, !dbg !6142
  store i32 %or9, ptr %reg.addr, align 4, !dbg !6142
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !6144
  %12 = load i32, ptr %reg.addr, align 4, !dbg !6145
  %13 = load i32, ptr %left, align 4, !dbg !6146
  %or10 = or i32 %12, %13, !dbg !6147
  %call = call i32 @snd_hdac_exec_verb(ptr noundef %11, i32 noundef %or10, i32 noundef 0, ptr noundef null) #7, !dbg !6148
  store i32 %call, ptr %retval, align 4, !dbg !6149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6149

if.end11:                                         ; preds = %if.end
  %14 = load ptr, ptr %codec.addr, align 8, !dbg !6150
  %15 = load i32, ptr %reg.addr, align 4, !dbg !6151
  %or12 = or i32 %15, 8192, !dbg !6152
  %16 = load i32, ptr %left, align 4, !dbg !6153
  %or13 = or i32 %or12, %16, !dbg !6154
  %call14 = call i32 @snd_hdac_exec_verb(ptr noundef %14, i32 noundef %or13, i32 noundef 0, ptr noundef null) #7, !dbg !6155
  store i32 %call14, ptr %err, align 4, !dbg !6156
  %17 = load i32, ptr %err, align 4, !dbg !6157
  %cmp15 = icmp slt i32 %17, 0, !dbg !6159
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6160

if.then16:                                        ; preds = %if.end11
  %18 = load i32, ptr %err, align 4, !dbg !6161
  store i32 %18, ptr %retval, align 4, !dbg !6162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6162

if.end17:                                         ; preds = %if.end11
  %19 = load ptr, ptr %codec.addr, align 8, !dbg !6163
  %20 = load i32, ptr %reg.addr, align 4, !dbg !6164
  %or18 = or i32 %20, 4096, !dbg !6165
  %21 = load i32, ptr %right, align 4, !dbg !6166
  %or19 = or i32 %or18, %21, !dbg !6167
  %call20 = call i32 @snd_hdac_exec_verb(ptr noundef %19, i32 noundef %or19, i32 noundef 0, ptr noundef null) #7, !dbg !6168
  store i32 %call20, ptr %err, align 4, !dbg !6169
  %22 = load i32, ptr %err, align 4, !dbg !6170
  %cmp21 = icmp slt i32 %22, 0, !dbg !6172
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6173

if.then22:                                        ; preds = %if.end17
  %23 = load i32, ptr %err, align 4, !dbg !6174
  store i32 %23, ptr %retval, align 4, !dbg !6175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6175

if.end23:                                         ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !6176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then16, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %right) #6, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #6, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !6177
  %24 = load i32, ptr %retval, align 4, !dbg !6177
  ret i32 %24, !dbg !6177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_reg_write_coef(ptr noundef %codec, i32 noundef %reg, i32 noundef %val) #0 align 16 !dbg !6178 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %verb = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6180, metadata !DIExpression()), !dbg !6185
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6181, metadata !DIExpression()), !dbg !6186
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6182, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 4, ptr %verb) #6, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %verb, metadata !6183, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6184, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6192
  %cache_coef = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 26, !dbg !6194
  %bf.load = load i8, ptr %cache_coef, align 8, !dbg !6194
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !6194
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6194
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !6194
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !6195

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6196

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6197
  %and = and i32 %1, -1048321, !dbg !6198
  %or = or i32 %and, 327680, !dbg !6199
  store i32 %or, ptr %verb, align 4, !dbg !6200
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !6201
  %3 = load i32, ptr %verb, align 4, !dbg !6202
  %call = call i32 @snd_hdac_exec_verb(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null) #7, !dbg !6203
  store i32 %call, ptr %err, align 4, !dbg !6204
  %4 = load i32, ptr %err, align 4, !dbg !6205
  %cmp = icmp slt i32 %4, 0, !dbg !6207
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6208

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %err, align 4, !dbg !6209
  store i32 %5, ptr %retval, align 4, !dbg !6210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6210

if.end2:                                          ; preds = %if.end
  %6 = load i32, ptr %reg.addr, align 4, !dbg !6211
  %and3 = and i32 %6, -1048576, !dbg !6212
  %or4 = or i32 %and3, 851968, !dbg !6213
  %7 = load i32, ptr %val.addr, align 4, !dbg !6214
  %and5 = and i32 %7, 65535, !dbg !6215
  %or6 = or i32 %or4, %and5, !dbg !6216
  store i32 %or6, ptr %verb, align 4, !dbg !6217
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !6218
  %9 = load i32, ptr %verb, align 4, !dbg !6219
  %call7 = call i32 @snd_hdac_exec_verb(ptr noundef %8, i32 noundef %9, i32 noundef 0, ptr noundef null) #7, !dbg !6220
  store i32 %call7, ptr %retval, align 4, !dbg !6221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6221

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 4, ptr %verb) #6, !dbg !6222
  %10 = load i32, ptr %retval, align 4, !dbg !6222
  ret i32 %10, !dbg !6222
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reg_raw_read(ptr noundef %codec, i32 noundef %reg, ptr noundef %val, i1 noundef zeroext %uncached) #0 align 16 !dbg !6226 {
entry:
  %codec.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %uncached.addr = alloca i8, align 1
  %err = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6228, metadata !DIExpression()), !dbg !6233
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6229, metadata !DIExpression()), !dbg !6234
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6230, metadata !DIExpression()), !dbg !6235
  %frombool = zext i1 %uncached to i8
  store i8 %frombool, ptr %uncached.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %uncached.addr, metadata !6231, metadata !DIExpression()), !dbg !6236
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !6237
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6232, metadata !DIExpression()), !dbg !6238
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6239
  %regmap_lock = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 24, !dbg !6240
  call void @mutex_lock(ptr noundef %regmap_lock) #7, !dbg !6241
  %1 = load i8, ptr %uncached.addr, align 1, !dbg !6242, !range !5338, !noundef !915
  %tobool = trunc i8 %1 to i1, !dbg !6242
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6244

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !6245
  %regmap = getelementptr inbounds %struct.hdac_device, ptr %2, i32 0, i32 23, !dbg !6246
  %3 = load ptr, ptr %regmap, align 8, !dbg !6246
  %tobool1 = icmp ne ptr %3, null, !dbg !6245
  br i1 %tobool1, label %if.else, label %if.then, !dbg !6247

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !6248
  %5 = load i32, ptr %reg.addr, align 4, !dbg !6249
  %6 = load ptr, ptr %val.addr, align 8, !dbg !6250
  %call = call i32 @hda_reg_read(ptr noundef %4, i32 noundef %5, ptr noundef %6) #7, !dbg !6251
  store i32 %call, ptr %err, align 4, !dbg !6252
  br label %if.end, !dbg !6253

if.else:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %codec.addr, align 8, !dbg !6254
  %regmap2 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 23, !dbg !6255
  %8 = load ptr, ptr %regmap2, align 8, !dbg !6255
  %9 = load i32, ptr %reg.addr, align 4, !dbg !6256
  %10 = load ptr, ptr %val.addr, align 8, !dbg !6257
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef %9, ptr noundef %10) #7, !dbg !6258
  store i32 %call3, ptr %err, align 4, !dbg !6259
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !6260
  %regmap_lock4 = getelementptr inbounds %struct.hdac_device, ptr %11, i32 0, i32 24, !dbg !6261
  call void @mutex_unlock(ptr noundef %regmap_lock4) #7, !dbg !6262
  %12 = load i32, ptr %err, align 4, !dbg !6263
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !6264
  ret i32 %12, !dbg !6265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6266 dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regmap_update_bits_check(ptr noundef %map, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, ptr noundef %change) #4 align 16 !dbg !6269 {
entry:
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %change.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6273, metadata !DIExpression()), !dbg !6278
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6274, metadata !DIExpression()), !dbg !6279
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6275, metadata !DIExpression()), !dbg !6280
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6276, metadata !DIExpression()), !dbg !6281
  store ptr %change, ptr %change.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %change.addr, metadata !6277, metadata !DIExpression()), !dbg !6282
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6283
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6284
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6285
  %3 = load i32, ptr %val.addr, align 4, !dbg !6286
  %4 = load ptr, ptr %change.addr, align 8, !dbg !6287
  %call = call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext false) #7, !dbg !6288
  ret i32 %call, !dbg !6289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6290 dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6293 dso_local zeroext i1 @regcache_reg_cached(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regmap_update_bits(ptr noundef %map, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #4 align 16 !dbg !6296 {
entry:
  %map.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6300, metadata !DIExpression()), !dbg !6304
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6301, metadata !DIExpression()), !dbg !6305
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6302, metadata !DIExpression()), !dbg !6306
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6303, metadata !DIExpression()), !dbg !6307
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6308
  %1 = load i32, ptr %reg.addr, align 4, !dbg !6309
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6310
  %3 = load i32, ptr %val.addr, align 4, !dbg !6311
  %call = call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7, !dbg !6312
  ret i32 %call, !dbg !6313
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074}
!llvm.ident = !{!5075}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hda_regmap_cfg", scope: !2, file: !3, line: 352, type: !4958, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.hdac_regmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-hda-core\22 -D KBUILD_BASENAME=\22hdac_regmap\22 -D KBUILD_MODNAME=\22snd_hda_core\22 -D __KBUILD_MODNAME=kmod_snd_hda_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/hdac_regmap.ll sound/hda/hdac_regmap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, globals: !4939, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/hda/hdac_regmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8755e92bce33ab822dbc7dba534a67bf")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !129, !133, !142, !147, !152, !158, !165, !172, !178}
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !117, line: 41, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!120 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!121 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !117, line: 99, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!125 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!126 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!127 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!128 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !117, line: 80, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!132 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!136 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!137 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!138 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!139 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!141 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!156 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !159, line: 5, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!162 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!163 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!164 = !DIEnumerator(name: "DMA_NONE", value: 3)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !166, line: 202, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe5626d9d627f4ed2a386e72c96db98d")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0)
!169 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1)
!170 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2)
!171 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !166, line: 58, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177}
!174 = !DIEnumerator(name: "REGCACHE_NONE", value: 0)
!175 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1)
!176 = !DIEnumerator(name: "REGCACHE_FLAT", value: 2)
!177 = !DIEnumerator(name: "REGCACHE_MAPLE", value: 3)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 10, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "false", value: 0)
!182 = !DIEnumerator(name: "true", value: 1)
!183 = !{!184, !185, !335, !321}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_device", file: !187, line: 52, size: 7616, elements: !188)
!187 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!188 = !{!189, !4729, !4730, !4896, !4897, !4898, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4915, !4916, !4917, !4918, !4919, !4920, !4923, !4926, !4927, !4935, !4936, !4937, !4938}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !186, file: !187, line: 53, baseType: !190, size: 5824)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !191)
!191 = !{!192, !4201, !4203, !4206, !4207, !4260, !4345, !4346, !4347, !4348, !4349, !4356, !4514, !4527, !4537, !4541, !4543, !4544, !4545, !4549, !4556, !4557, !4560, !4563, !4567, !4671, !4672, !4673, !4674, !4675, !4676, !4706, !4707, !4708, !4711, !4714, !4723, !4724, !4725, !4726, !4727, !4728}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !94, line: 706, baseType: !193, size: 512)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !194, line: 64, size: 512, elements: !195)
!194 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!195 = !{!196, !200, !207, !209, !298, !4088, !4191, !4196, !4197, !4198, !4199, !4200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !194, line: 65, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !193, file: !194, line: 66, baseType: !201, size: 128, offset: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !202, line: 190, size: 128, elements: !203)
!202 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !202, line: 191, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !202, line: 191, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !194, line: 67, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !193, file: !194, line: 68, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !194, line: 168, size: 768, elements: !212)
!212 = !{!213, !214, !257, !258}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !211, file: !194, line: 169, baseType: !201, size: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !211, file: !194, line: 170, baseType: !215, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !216, line: 29, baseType: !217)
!216 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !216, line: 17, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !216, line: 18, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 18, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !220, file: !216, line: 19, baseType: !223, size: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !224, line: 14, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !223, file: !224, line: 15, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !228, line: 44, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 15, size: 32, elements: !233)
!233 = !{!234, !239, !249}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !232, file: !228, line: 16, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !202, line: 174, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 172, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !236, file: !202, line: 173, baseType: !109, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 24, baseType: !240, size: 16)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 24, size: 16, elements: !241)
!241 = !{!242, !248}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !240, file: !228, line: 25, baseType: !243, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !244, line: 17, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !246, line: 21, baseType: !247)
!246 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!247 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !240, file: !228, line: 26, baseType: !243, size: 8, offset: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 28, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 28, size: 32, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !250, file: !228, line: 29, baseType: !253, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !244, line: 19, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !246, line: 24, baseType: !255)
!255 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !250, file: !228, line: 30, baseType: !253, size: 16, offset: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !211, file: !194, line: 171, baseType: !193, size: 512, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !211, file: !194, line: 172, baseType: !259, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !194, line: 133, size: 192, elements: !262)
!262 = !{!263, !270, !275}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !261, file: !194, line: 134, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!109, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !194, line: 135, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!197, !268}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !261, file: !194, line: 136, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!109, !268, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !194, line: 125, size: 20736, elements: !282)
!282 = !{!283, !288, !292, !293, !297}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !281, file: !194, line: 126, baseType: !284, size: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 192, elements: !286)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!286 = !{!287}
!287 = !DISubrange(count: 3)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !281, file: !194, line: 127, baseType: !289, size: 4096, offset: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 4096, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !281, file: !194, line: 128, baseType: !109, size: 32, offset: 4288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !281, file: !194, line: 129, baseType: !294, size: 16384, offset: 4320)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 16384, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 2048)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !281, file: !194, line: 130, baseType: !109, size: 32, offset: 20704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !193, file: !194, line: 69, baseType: !299, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !194, line: 116, size: 384, elements: !302)
!302 = !{!303, !307, !336, !4050, !4078, !4082}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !301, file: !194, line: 117, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !208}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !301, file: !194, line: 118, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !311, line: 254, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!312 = !{!313, !328}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !310, file: !311, line: 255, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !208, !322, !285}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !202, line: 66, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !319, line: 73, baseType: !320)
!319 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !319, line: 15, baseType: !321)
!321 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !311, line: 30, size: 128, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !311, line: 31, baseType: !197, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !323, file: !311, line: 32, baseType: !327, size: 16, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !202, line: 24, baseType: !255)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !310, file: !311, line: 256, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!317, !208, !322, !197, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 61, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !319, line: 72, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !319, line: 16, baseType: !335)
!335 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !301, file: !194, line: 119, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !311, line: 84, size: 320, elements: !341)
!341 = !{!342, !343, !347, !4046, !4048}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !311, line: 85, baseType: !197, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !340, file: !311, line: 86, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!327, !208, !322, !109}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !340, file: !311, line: 88, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!327, !208, !351, !109}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !311, line: 175, size: 512, elements: !353)
!353 = !{!354, !355, !356, !357, !4037, !4041, !4042}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !352, file: !311, line: 176, baseType: !323, size: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !352, file: !311, line: 177, baseType: !332, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !352, file: !311, line: 178, baseType: !184, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !352, file: !311, line: 179, baseType: !358, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !363)
!363 = !{!364, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !4031, !4032, !4033, !4034, !4035, !4036}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !362, file: !14, line: 473, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !367)
!367 = !{!368, !369, !370, !378, !379, !386, !387, !390, !391, !3810, !3811, !3812, !3813, !3814, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3854, !3857, !3858, !3859, !3868, !3869, !3870, !3871}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !366, file: !14, line: 642, baseType: !327, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !366, file: !14, line: 643, baseType: !255, size: 16, offset: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !366, file: !14, line: 644, baseType: !371, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !372, line: 23, baseType: !373)
!372 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 21, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !373, file: !372, line: 22, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !202, line: 37, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !319, line: 49, baseType: !7)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !366, file: !14, line: 645, baseType: !201, size: 128, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !366, file: !14, line: 646, baseType: !380, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !372, line: 28, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 26, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !381, file: !372, line: 27, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !202, line: 38, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !319, line: 50, baseType: !7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !366, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !366, file: !14, line: 650, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !366, file: !14, line: 651, baseType: !388, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !366, file: !14, line: 654, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !395)
!395 = !{!396, !3644, !3654, !3658, !3662, !3666, !3670, !3674, !3678, !3682, !3686, !3687, !3691, !3695, !3732, !3761, !3765, !3771, !3775, !3779, !3783, !3787, !3791, !3797, !3801}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !394, file: !14, line: 1967, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!400, !365, !400, !7}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !402, line: 82, size: 1536, elements: !403)
!402 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!403 = !{!404, !405, !415, !423, !424, !444, !445, !449, !462, !3628, !3629, !3630, !3631, !3636, !3637, !3638}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !401, file: !402, line: 84, baseType: !7, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !401, file: !402, line: 85, baseType: !406, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !407, line: 275, baseType: !408)
!407 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !407, line: 275, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !408, file: !407, line: 275, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !407, line: 69, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !407, line: 64, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !412, file: !407, line: 65, baseType: !7, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !401, file: !402, line: 86, baseType: !416, size: 128, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !417, line: 38, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!418 = !{!419, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !417, line: 39, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !416, file: !417, line: 39, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !401, file: !402, line: 87, baseType: !400, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !401, file: !402, line: 88, baseType: !425, size: 128, offset: 256)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !402, line: 49, size: 128, elements: !426)
!426 = !{!427, !441}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !402, line: 50, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !402, line: 50, size: 64, elements: !429)
!429 = !{!430, !437}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !402, line: 51, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !402, line: 51, size: 64, elements: !432)
!432 = !{!433, !436}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !431, file: !402, line: 52, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !244, line: 21, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !246, line: 27, baseType: !7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !431, file: !402, line: 52, baseType: !434, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !428, file: !402, line: 54, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !244, line: 23, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !246, line: 31, baseType: !440)
!440 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !402, line: 56, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !401, file: !402, line: 89, baseType: !365, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !401, file: !402, line: 91, baseType: !446, size: 256, offset: 448)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 256, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !401, file: !402, line: 94, baseType: !450, size: 64, offset: 704)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !451, line: 25, size: 64, elements: !452)
!451 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !451, line: 26, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !451, line: 26, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !454, file: !451, line: 28, baseType: !439, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !451, line: 30, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !454, file: !451, line: 30, size: 64, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !451, line: 31, baseType: !215, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !458, file: !451, line: 32, baseType: !109, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !401, file: !402, line: 95, baseType: !463, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !402, line: 128, size: 1024, align: 512, elements: !466)
!466 = !{!467, !471, !472, !479, !485, !489, !493, !497, !498, !502, !506, !3618, !3622}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !465, file: !402, line: 129, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!109, !400, !7}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !465, file: !402, line: 130, baseType: !468, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !465, file: !402, line: 131, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!109, !476, !478}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !465, file: !402, line: 132, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!109, !476, !7, !197, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !465, file: !402, line: 134, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!109, !476}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !465, file: !402, line: 135, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!109, !400}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !465, file: !402, line: 136, baseType: !494, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !400}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !465, file: !402, line: 137, baseType: !494, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !465, file: !402, line: 138, baseType: !499, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !400, !365}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !465, file: !402, line: 139, baseType: !503, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!285, !400, !285, !109}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !465, file: !402, line: 140, baseType: !507, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !3617}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !512, line: 70, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!513 = !{!514, !515, !3613, !3614}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !511, file: !512, line: 71, baseType: !400, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !511, file: !512, line: 72, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !518)
!518 = !{!519, !520, !523, !524, !525, !529, !1009, !1149, !1189, !1279, !1283, !1284, !1285, !1286, !1287, !1296, !1297, !1298, !1299, !1304, !1308, !1309, !1312, !1315, !1318, !1321, !1322, !1323, !1364, !3546, !3547, !3548, !3549, !3550, !3551, !3554, !3556, !3563, !3564, !3565, !3566, !3567, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !517, file: !14, line: 1191, baseType: !201, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !517, file: !14, line: 1192, baseType: !521, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !202, line: 21, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !202, line: 18, baseType: !434)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !517, file: !14, line: 1193, baseType: !247, size: 8, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !517, file: !14, line: 1194, baseType: !335, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !517, file: !14, line: 1195, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !202, line: 52, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !319, line: 88, baseType: !528)
!528 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !517, file: !14, line: 1196, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !532)
!532 = !{!533, !534, !535, !542, !546, !550, !554, !994, !995, !999, !1001, !1002, !1003, !1005, !1006, !1007, !1008}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !14, line: 2367, baseType: !197, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !531, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !531, file: !14, line: 2376, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!109, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !541, line: 32, flags: DIFlagFwdDecl)
!541 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !531, file: !14, line: 2377, baseType: !543, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !531, file: !14, line: 2378, baseType: !547, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!400, !530, !109, !197, !184}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !531, file: !14, line: 2380, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !516}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !531, file: !14, line: 2381, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !557)
!557 = !{!558, !559, !560, !564, !586, !612, !613, !614, !615, !619, !624, !625, !645, !701, !702, !703, !704, !705, !708, !709, !710, !718, !722, !749, !770, !771, !772, !773, !782, !805, !806, !809, !812, !813, !814, !815, !816, !817, !818, !823, !824, !952, !960, !961, !962, !964, !968, !969, !973, !974, !975, !976, !978, !979, !980, !987, !988, !989, !993}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !556, file: !6, line: 403, baseType: !5, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !556, file: !6, line: 406, baseType: !201, size: 128, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !6, line: 409, baseType: !561, size: 448, offset: 192)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 448, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 56)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !556, file: !6, line: 417, baseType: !565, size: 768, offset: 640)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !566)
!566 = !{!567, !568, !569, !570, !573}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !565, file: !6, line: 46, baseType: !193, size: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !565, file: !6, line: 47, baseType: !555, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !565, file: !6, line: 48, baseType: !208, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !565, file: !6, line: 49, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !565, file: !6, line: 50, baseType: !574, size: 64, offset: 704)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !576, line: 26, size: 256, elements: !577)
!576 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !575, file: !576, line: 27, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !575, file: !576, line: 28, baseType: !580, size: 192, offset: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !581, line: 43, size: 192, elements: !582)
!581 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!582 = !{!583, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !581, line: 44, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !224, line: 23, baseType: !223)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !580, file: !581, line: 45, baseType: !201, size: 128, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !556, file: !6, line: 418, baseType: !587, size: 64, offset: 1408)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !589)
!589 = !{!590, !591, !596, !600, !604, !608}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !588, file: !6, line: 54, baseType: !323, size: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !588, file: !6, line: 55, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!317, !587, !595, !285}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !588, file: !6, line: 57, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!317, !587, !595, !197, !332}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !588, file: !6, line: 59, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !555, !197}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !588, file: !6, line: 60, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!109, !555}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !588, file: !6, line: 61, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !555}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !556, file: !6, line: 419, baseType: !197, size: 64, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !556, file: !6, line: 420, baseType: !197, size: 64, offset: 1536)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !556, file: !6, line: 421, baseType: !208, size: 64, offset: 1600)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !556, file: !6, line: 424, baseType: !616, size: 64, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !556, file: !6, line: 425, baseType: !620, size: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !244, line: 20, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !246, line: 26, baseType: !109)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !556, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !556, file: !6, line: 435, baseType: !626, size: 256, offset: 1856)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !627, line: 66, size: 256, elements: !628)
!627 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!628 = !{!629, !638, !639, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !626, file: !627, line: 67, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !631, line: 13, baseType: !632)
!631 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !202, line: 181, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 179, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !633, file: !202, line: 180, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !244, line: 22, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !246, line: 30, baseType: !528)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !626, file: !627, line: 68, baseType: !584, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !626, file: !627, line: 70, baseType: !640, size: 32, offset: 96)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !641, line: 15, size: 32, elements: !642)
!641 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !640, file: !641, line: 20, baseType: !235, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !626, file: !627, line: 72, baseType: !201, size: 128, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !556, file: !6, line: 437, baseType: !646, size: 64, offset: 2112)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !648, line: 69, size: 320, elements: !649)
!648 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!649 = !{!650, !651, !652, !672, !674, !678, !679}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !648, line: 70, baseType: !197, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !647, file: !648, line: 71, baseType: !555, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !647, file: !648, line: 72, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !648, line: 47, size: 256, elements: !656)
!656 = !{!657, !658, !664, !668}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !648, line: 49, baseType: !7, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !655, file: !648, line: 51, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!109, !197, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !655, file: !648, line: 53, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!109, !285, !662}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !655, file: !648, line: 55, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !184}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !647, file: !648, line: 73, baseType: !673, size: 16, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !647, file: !648, line: 74, baseType: !675, size: 8, offset: 208)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !244, line: 16, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !246, line: 20, baseType: !677)
!677 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !648, line: 75, baseType: !243, size: 8, offset: 216)
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !648, line: 76, baseType: !680, size: 64, offset: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !648, line: 76, size: 64, elements: !681)
!681 = !{!682, !683, !690}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !680, file: !648, line: 77, baseType: !184, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !680, file: !648, line: 78, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !648, line: 86, size: 128, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !686, file: !648, line: 87, baseType: !7, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !686, file: !648, line: 88, baseType: !285, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !680, file: !648, line: 79, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !648, line: 92, size: 256, elements: !694)
!694 = !{!695, !696, !697, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !693, file: !648, line: 94, baseType: !7, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !693, file: !648, line: 95, baseType: !7, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !693, file: !648, line: 96, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !693, file: !648, line: 97, baseType: !653, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !693, file: !648, line: 98, baseType: !184, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !556, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !556, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !556, file: !6, line: 442, baseType: !616, size: 64, offset: 2240)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !556, file: !6, line: 443, baseType: !620, size: 64, offset: 2304)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !556, file: !6, line: 444, baseType: !706, size: 8, offset: 2368)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !202, line: 35, baseType: !707)
!707 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !556, file: !6, line: 451, baseType: !706, size: 8, offset: 2376)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !556, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !556, file: !6, line: 455, baseType: !711, size: 64, offset: 2432)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !713, line: 23, size: 96, elements: !714)
!713 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!714 = !{!715, !716, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !712, file: !713, line: 24, baseType: !109, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !712, file: !713, line: 24, baseType: !109, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !712, file: !713, line: 24, baseType: !109, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !556, file: !6, line: 458, baseType: !719, size: 64, offset: 2496)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!109}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !556, file: !6, line: 460, baseType: !723, size: 4032, align: 512, offset: 2560)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 4032, elements: !747)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !724, file: !6, line: 363, baseType: !184, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !724, file: !6, line: 367, baseType: !729, size: 448, offset: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !729, file: !6, line: 320, baseType: !555, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !729, file: !6, line: 321, baseType: !733, size: 384, offset: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !734, line: 40, size: 384, elements: !735)
!734 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !734, line: 41, baseType: !737, size: 384, align: 64)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 384, align: 64, elements: !745)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !739, line: 5, size: 192, align: 64, elements: !740)
!739 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!740 = !{!741, !742, !744}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !738, file: !739, line: 6, baseType: !335, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !738, file: !739, line: 7, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !738, file: !739, line: 8, baseType: !743, size: 64, offset: 128)
!745 = !{!746}
!746 = !DISubrange(count: 2)
!747 = !{!748}
!748 = !DISubrange(count: 7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !556, file: !6, line: 463, baseType: !750, size: 192, offset: 6592)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !751, line: 8, size: 192, elements: !752)
!751 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!752 = !{!753, !754, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !750, file: !751, line: 10, baseType: !7, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !750, file: !751, line: 11, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !750, file: !751, line: 12, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !759, line: 59, size: 48, elements: !760)
!759 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!760 = !{!761, !765, !766, !767, !768, !769}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !758, file: !759, line: 60, baseType: !762, size: 16)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !244, line: 18, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !246, line: 23, baseType: !764)
!764 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !758, file: !759, line: 61, baseType: !762, size: 16, offset: 16)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !758, file: !759, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !758, file: !759, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !759, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !758, file: !759, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !556, file: !6, line: 465, baseType: !335, size: 64, offset: 6784)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !556, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !556, file: !6, line: 470, baseType: !201, size: 128, offset: 6912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !556, file: !6, line: 471, baseType: !774, size: 64, offset: 7040)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !776, line: 33, size: 96, elements: !777)
!776 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!777 = !{!778, !779, !780, !781}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !775, file: !776, line: 37, baseType: !109, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !775, file: !776, line: 43, baseType: !109, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !775, file: !776, line: 45, baseType: !255, size: 16, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 47, baseType: !255, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !556, file: !6, line: 476, baseType: !783, size: 64, offset: 7104)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !785)
!785 = !{!786, !802, !803, !804}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !784, file: !6, line: 379, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !789, line: 204, baseType: !790)
!789 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !789, line: 197, size: 192, elements: !791)
!791 = !{!792, !794, !795, !796, !798, !800}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !790, file: !789, line: 198, baseType: !793, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !789, line: 21, baseType: !435)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !790, file: !789, line: 199, baseType: !247, size: 8, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !790, file: !789, line: 200, baseType: !247, size: 8, offset: 40)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !790, file: !789, line: 201, baseType: !797, size: 16, offset: 48)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !789, line: 17, baseType: !254)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !790, file: !789, line: 202, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !789, line: 16, baseType: !439)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !790, file: !789, line: 203, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !789, line: 22, baseType: !439)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !784, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !784, file: !6, line: 381, baseType: !285, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !784, file: !6, line: 382, baseType: !285, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !556, file: !6, line: 477, baseType: !784, size: 256, offset: 7168)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !556, file: !6, line: 480, baseType: !807, size: 64, offset: 7424)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !556, file: !6, line: 483, baseType: !810, size: 64, offset: 7488)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !556, file: !6, line: 488, baseType: !285, size: 64, offset: 7552)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !556, file: !6, line: 492, baseType: !184, size: 64, offset: 7616)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !556, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !556, file: !6, line: 495, baseType: !184, size: 64, offset: 7744)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !556, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !556, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !556, file: !6, line: 500, baseType: !819, size: 64, offset: 7872)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !821, line: 45, baseType: !822)
!821 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !556, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !556, file: !6, line: 504, baseType: !825, size: 64, offset: 8000)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !828, line: 96, size: 192, elements: !829)
!828 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!829 = !{!830, !831, !912, !916}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !827, file: !828, line: 97, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !827, file: !828, line: 98, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !828, line: 24, size: 3072, elements: !834)
!834 = !{!835, !837, !838, !839, !840, !864, !865, !866, !867, !885, !897, !898, !909, !910, !911}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !833, file: !828, line: 26, baseType: !836, size: 128)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 128, elements: !745)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !833, file: !828, line: 27, baseType: !836, size: 128, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !833, file: !828, line: 28, baseType: !109, size: 32, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !833, file: !828, line: 31, baseType: !215, size: 32, align: 512, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !833, file: !828, line: 32, baseType: !841, size: 960, offset: 576)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !842, line: 206, size: 960, elements: !843)
!842 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!843 = !{!844, !853, !858, !860, !861, !863}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !841, file: !842, line: 207, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !202, line: 232, size: 128, align: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !202, line: 233, baseType: !845, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !846, file: !202, line: 234, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !845}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !841, file: !842, line: 208, baseType: !854, size: 256, offset: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 256, elements: !856)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!856 = !{!857}
!857 = !DISubrange(count: 4)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !841, file: !842, line: 209, baseType: !859, size: 256, offset: 320)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 256, elements: !856)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !841, file: !842, line: 213, baseType: !321, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !841, file: !842, line: 215, baseType: !862, size: 256, offset: 640)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !856)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !841, file: !842, line: 216, baseType: !243, size: 8, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !833, file: !828, line: 33, baseType: !335, size: 64, offset: 1536)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !833, file: !828, line: 34, baseType: !335, size: 64, offset: 1600)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !833, file: !828, line: 35, baseType: !706, size: 8, offset: 1664)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !833, file: !828, line: 36, baseType: !868, size: 320, offset: 1728)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !869, line: 11, size: 320, elements: !870)
!869 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!870 = !{!871, !878, !879, !884}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !868, file: !869, line: 16, baseType: !872, size: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !202, line: 198, size: 128, elements: !873)
!873 = !{!874, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !202, line: 199, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !872, file: !202, line: 199, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !868, file: !869, line: 17, baseType: !335, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !868, file: !869, line: 18, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !869, line: 19, baseType: !434, size: 32, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !833, file: !828, line: 37, baseType: !886, size: 256, offset: 2048)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !887, line: 98, size: 256, elements: !888)
!887 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !886, file: !887, line: 99, baseType: !630, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !886, file: !887, line: 100, baseType: !201, size: 128, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !886, file: !887, line: 101, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !887, line: 21, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !833, file: !828, line: 38, baseType: !846, size: 128, align: 64, offset: 2304)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !833, file: !828, line: 39, baseType: !899, size: 64, offset: 2432)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !828, line: 49, size: 768, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !828, line: 50, baseType: !215, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !900, file: !828, line: 51, baseType: !859, size: 256, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !900, file: !828, line: 53, baseType: !859, size: 256, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !900, file: !828, line: 54, baseType: !335, size: 64, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !900, file: !828, line: 55, baseType: !899, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !900, file: !828, line: 56, baseType: !109, size: 32, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !900, file: !828, line: 57, baseType: !109, size: 32, offset: 736)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !833, file: !828, line: 40, baseType: !335, size: 64, offset: 2496)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !833, file: !828, line: 42, baseType: !109, size: 32, offset: 2560)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !833, file: !828, line: 43, baseType: !826, size: 64, offset: 2624)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !827, file: !828, line: 99, baseType: !913, offset: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !914, line: 211, elements: !915)
!914 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!915 = !{}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !827, file: !828, line: 100, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !828, line: 63, size: 3008, elements: !919)
!919 = !{!920, !921, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !951}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !918, file: !828, line: 64, baseType: !899, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !918, file: !828, line: 65, baseType: !922, size: 192, offset: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 192, elements: !286)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !918, file: !828, line: 67, baseType: !109, size: 32, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !918, file: !828, line: 68, baseType: !626, size: 256, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !828, line: 69, baseType: !215, size: 32, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !918, file: !828, line: 70, baseType: !626, size: 256, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !918, file: !828, line: 71, baseType: !335, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !918, file: !828, line: 72, baseType: !335, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !918, file: !828, line: 73, baseType: !335, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !918, file: !828, line: 74, baseType: !335, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !918, file: !828, line: 75, baseType: !335, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !918, file: !828, line: 76, baseType: !335, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !918, file: !828, line: 77, baseType: !335, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !918, file: !828, line: 78, baseType: !335, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !918, file: !828, line: 79, baseType: !706, size: 8, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !918, file: !828, line: 80, baseType: !335, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !918, file: !828, line: 81, baseType: !626, size: 256, offset: 1536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !918, file: !828, line: 82, baseType: !575, size: 256, offset: 1792)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !918, file: !828, line: 84, baseType: !235, size: 32, offset: 2048)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !918, file: !828, line: 87, baseType: !335, size: 64, offset: 2112)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !918, file: !828, line: 88, baseType: !335, size: 64, offset: 2176)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !918, file: !828, line: 89, baseType: !943, size: 704, offset: 2240)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !887, line: 111, size: 704, elements: !944)
!944 = !{!945, !946, !947, !950}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !943, file: !887, line: 112, baseType: !886, size: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !943, file: !887, line: 113, baseType: !868, size: 320, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !943, file: !887, line: 116, baseType: !948, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !887, line: 18, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !943, file: !887, line: 117, baseType: !109, size: 32, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !918, file: !828, line: 90, baseType: !826, size: 64, offset: 2944)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !556, file: !6, line: 515, baseType: !953, size: 64, offset: 8064)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !955, line: 117, size: 128, elements: !956)
!955 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !954, file: !955, line: 118, baseType: !622, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !954, file: !955, line: 119, baseType: !622, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !954, file: !955, line: 120, baseType: !321, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !556, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !556, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !556, file: !6, line: 520, baseType: !963, size: 64, offset: 8192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !556, file: !6, line: 523, baseType: !965, size: 64, offset: 8256)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !556, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !556, file: !6, line: 525, baseType: !970, size: 64, offset: 8384)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !556, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !556, file: !6, line: 533, baseType: !184, size: 64, offset: 8512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !556, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !556, file: !6, line: 535, baseType: !977, size: 64, offset: 8640)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !556, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !556, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !556, file: !6, line: 540, baseType: !981, size: 64, offset: 8768)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !983, line: 32, size: 64, elements: !984)
!983 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !982, file: !983, line: 33, baseType: !622, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !982, file: !983, line: 34, baseType: !622, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !556, file: !6, line: 563, baseType: !201, size: 128, offset: 8832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !556, file: !6, line: 565, baseType: !201, size: 128, offset: 8960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !556, file: !6, line: 568, baseType: !990, size: 64, offset: 9088)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !556, file: !6, line: 570, baseType: !235, size: 32, offset: 9152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !14, line: 2382, baseType: !530, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !531, file: !14, line: 2383, baseType: !996, size: 64, offset: 512)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !202, line: 194, size: 64, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !996, file: !202, line: 195, baseType: !875, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !531, file: !14, line: 2385, baseType: !1000, offset: 576)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !914, line: 206, elements: !915)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !531, file: !14, line: 2386, baseType: !1000, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !531, file: !14, line: 2387, baseType: !1000, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !531, file: !14, line: 2388, baseType: !1004, offset: 576)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, elements: !286)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !531, file: !14, line: 2390, baseType: !1000, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !531, file: !14, line: 2391, baseType: !1000, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !531, file: !14, line: 2392, baseType: !1000, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !531, file: !14, line: 2393, baseType: !1000, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !517, file: !14, line: 1197, baseType: !1010, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1013)
!1013 = !{!1014, !1018, !1022, !1023, !1027, !1033, !1037, !1038, !1039, !1043, !1047, !1051, !1052, !1053, !1059, !1063, !1064, !1071, !1072, !1073, !1074, !1078, !1082, !1131, !1147, !1148}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1012, file: !14, line: 2058, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!365, !516}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1012, file: !14, line: 2059, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !365}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1012, file: !14, line: 2060, baseType: !1019, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1012, file: !14, line: 2062, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !365, !109}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1012, file: !14, line: 2063, baseType: !1028, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!109, !365, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1012, file: !14, line: 2064, baseType: !1034, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!109, !365}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1012, file: !14, line: 2065, baseType: !1019, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1012, file: !14, line: 2066, baseType: !551, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1012, file: !14, line: 2067, baseType: !1040, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!109, !516, !109}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1012, file: !14, line: 2068, baseType: !1044, size: 64, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!109, !516, !13}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1012, file: !14, line: 2069, baseType: !1048, size: 64, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!109, !516}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1012, file: !14, line: 2070, baseType: !1044, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1012, file: !14, line: 2071, baseType: !1048, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1012, file: !14, line: 2072, baseType: !1054, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!109, !400, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1012, file: !14, line: 2073, baseType: !1060, size: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!109, !516, !755, !285}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1012, file: !14, line: 2074, baseType: !551, size: 64, offset: 960)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1012, file: !14, line: 2076, baseType: !1065, size: 64, offset: 1024)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!109, !1068, !400}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1070, line: 66, flags: DIFlagFwdDecl)
!1070 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1012, file: !14, line: 2077, baseType: !1065, size: 64, offset: 1088)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1012, file: !14, line: 2078, baseType: !1065, size: 64, offset: 1152)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1012, file: !14, line: 2079, baseType: !1065, size: 64, offset: 1216)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1012, file: !14, line: 2081, baseType: !1075, size: 64, offset: 1280)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!317, !516, !109, !285, !332, !526}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1012, file: !14, line: 2082, baseType: !1079, size: 64, offset: 1344)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!317, !516, !109, !197, !332, !526}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1012, file: !14, line: 2083, baseType: !1083, size: 64, offset: 1408)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!1086, !365}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1114, !1115, !1116}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1088, file: !19, line: 297, baseType: !872, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1088, file: !19, line: 298, baseType: !201, size: 128, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1088, file: !19, line: 299, baseType: !201, size: 128, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1088, file: !19, line: 300, baseType: !201, size: 128, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1088, file: !19, line: 301, baseType: !626, size: 256, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1088, file: !19, line: 302, baseType: !215, size: 32, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1088, file: !19, line: 303, baseType: !235, size: 32, offset: 800)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1088, file: !19, line: 304, baseType: !516, size: 64, offset: 832)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1088, file: !19, line: 305, baseType: !1099, size: 64, offset: 896)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1100)
!1100 = !{!1101, !1113}
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !19, line: 69, baseType: !1102, size: 32)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !19, line: 69, size: 32, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1102, file: !19, line: 70, baseType: !371, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1102, file: !19, line: 71, baseType: !380, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1102, file: !19, line: 72, baseType: !1107, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1108, line: 24, baseType: !1109)
!1108 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1108, line: 22, size: 32, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1109, file: !1108, line: 23, baseType: !1112, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1108, line: 20, baseType: !377)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1099, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1088, file: !19, line: 306, baseType: !526, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1088, file: !19, line: 307, baseType: !335, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1088, file: !19, line: 308, baseType: !1117, size: 576, offset: 1088)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1118)
!1118 = !{!1119, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1130}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1117, file: !19, line: 206, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !528)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1117, file: !19, line: 207, baseType: !1120, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1117, file: !19, line: 208, baseType: !1120, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1117, file: !19, line: 209, baseType: !1120, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1117, file: !19, line: 210, baseType: !1120, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1117, file: !19, line: 211, baseType: !1120, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1117, file: !19, line: 212, baseType: !1120, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1117, file: !19, line: 213, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1129, line: 8, baseType: !637)
!1129 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1117, file: !19, line: 214, baseType: !1128, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1012, file: !14, line: 2085, baseType: !1132, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!321, !516, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1137, line: 15, size: 256, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1138 = !{!1139, !1141, !1142, !1143, !1144}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1136, file: !1137, line: 16, baseType: !1140, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !202, line: 154, baseType: !7)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1136, file: !1137, line: 19, baseType: !109, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1136, file: !1137, line: 26, baseType: !335, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1136, file: !1137, line: 33, baseType: !335, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1136, file: !1137, line: 36, baseType: !1145, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1012, file: !14, line: 2087, baseType: !1132, size: 64, offset: 1536)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1012, file: !14, line: 2089, baseType: !551, size: 64, offset: 1600)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !517, file: !14, line: 1198, baseType: !1150, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1153)
!1153 = !{!1154, !1158, !1162, !1166, !1167, !1168, !1169, !1170, !1175, !1180, !1184}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1152, file: !19, line: 325, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!109, !1087}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1152, file: !19, line: 326, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1087, !516, !109}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1152, file: !19, line: 327, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1087}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1152, file: !19, line: 328, baseType: !1155, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1152, file: !19, line: 329, baseType: !1155, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1152, file: !19, line: 330, baseType: !1155, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1152, file: !19, line: 331, baseType: !1040, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1152, file: !19, line: 334, baseType: !1171, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!1174, !365}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1152, file: !19, line: 335, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!109, !365, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1152, file: !19, line: 337, baseType: !1181, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!109, !365, !1174}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1152, file: !19, line: 339, baseType: !1185, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!109, !516, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !517, file: !14, line: 1199, baseType: !1190, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1193)
!1193 = !{!1194, !1205, !1206, !1210, !1211, !1212, !1227, !1250, !1254, !1255, !1278}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1192, file: !19, line: 431, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!109, !516, !109, !109, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1201, line: 8, size: 128, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1200, file: !1201, line: 9, baseType: !510, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1200, file: !1201, line: 10, baseType: !400, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1192, file: !19, line: 432, baseType: !1040, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1192, file: !19, line: 433, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!109, !516, !7}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1192, file: !19, line: 434, baseType: !1207, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1192, file: !19, line: 435, baseType: !1040, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1192, file: !19, line: 436, baseType: !1213, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!109, !516, !109, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1217, file: !19, line: 418, baseType: !109, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1217, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1217, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1217, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1217, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1217, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1217, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1217, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1192, file: !19, line: 437, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!109, !516, !1099, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1232, file: !19, line: 346, baseType: !109, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1232, file: !19, line: 347, baseType: !438, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1232, file: !19, line: 348, baseType: !438, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1232, file: !19, line: 349, baseType: !438, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1232, file: !19, line: 350, baseType: !438, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1232, file: !19, line: 351, baseType: !438, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1232, file: !19, line: 352, baseType: !438, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1232, file: !19, line: 353, baseType: !636, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1232, file: !19, line: 355, baseType: !636, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1232, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1232, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1232, file: !19, line: 358, baseType: !438, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1232, file: !19, line: 359, baseType: !438, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1232, file: !19, line: 360, baseType: !438, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1232, file: !19, line: 361, baseType: !636, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1232, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1192, file: !19, line: 438, baseType: !1251, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!109, !516, !1188, !1231}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1192, file: !19, line: 440, baseType: !1228, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1192, file: !19, line: 441, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!109, !516, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1260, file: !19, line: 412, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1260, file: !19, line: 413, baseType: !1264, size: 1344, offset: 64)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1265, size: 1344, elements: !286)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1277}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !19, line: 398, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1265, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1265, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1265, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1265, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1265, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1265, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1265, file: !19, line: 406, baseType: !440, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1265, file: !19, line: 407, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !202, line: 132, baseType: !438)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1265, file: !19, line: 408, baseType: !1276, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1192, file: !19, line: 442, baseType: !1207, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !517, file: !14, line: 1200, baseType: !1280, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !517, file: !14, line: 1201, baseType: !335, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !517, file: !14, line: 1202, baseType: !335, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !517, file: !14, line: 1203, baseType: !335, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !517, file: !14, line: 1204, baseType: !400, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !517, file: !14, line: 1205, baseType: !1288, size: 320, offset: 896)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1289, line: 48, size: 320, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1290 = !{!1291, !1292, !1293, !1294, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1288, file: !1289, line: 49, baseType: !630, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1288, file: !1289, line: 55, baseType: !630, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1288, file: !1289, line: 57, baseType: !640, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1288, file: !1289, line: 59, baseType: !584, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1288, file: !1289, line: 60, baseType: !201, size: 128, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !517, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !517, file: !14, line: 1207, baseType: !235, size: 32, offset: 1248)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !517, file: !14, line: 1209, baseType: !184, size: 64, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !517, file: !14, line: 1211, baseType: !1300, size: 64, offset: 1344)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !517, file: !14, line: 1223, baseType: !1305, size: 64, offset: 1408)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !417, line: 34, size: 64, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1305, file: !417, line: 35, baseType: !420, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !517, file: !14, line: 1224, baseType: !201, size: 128, offset: 1472)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !517, file: !14, line: 1225, baseType: !1310, size: 64, offset: 1600)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !517, file: !14, line: 1226, baseType: !1313, size: 64, offset: 1664)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !517, file: !14, line: 1227, baseType: !1316, size: 64, offset: 1728)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !517, file: !14, line: 1228, baseType: !1319, size: 64, offset: 1792)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !517, file: !14, line: 1229, baseType: !872, size: 128, offset: 1856)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !517, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !517, file: !14, line: 1231, baseType: !1324, size: 2496, offset: 2048)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1330, !1362}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !19, line: 522, baseType: !7, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1324, file: !19, line: 523, baseType: !1288, size: 320, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1324, file: !19, line: 524, baseType: !1329, size: 192, offset: 384)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 192, elements: !286)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1324, file: !19, line: 525, baseType: !1331, size: 1728, offset: 576)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1332, size: 1728, elements: !286)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1333)
!1333 = !{!1334, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1332, file: !19, line: 223, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1337)
!1337 = !{!1338, !1339, !1352, !1353}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1336, file: !19, line: 446, baseType: !109, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1336, file: !19, line: 447, baseType: !1340, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1342, file: !19, line: 313, baseType: !1040, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1342, file: !19, line: 314, baseType: !1040, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1342, file: !19, line: 315, baseType: !1040, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1342, file: !19, line: 316, baseType: !1040, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1342, file: !19, line: 317, baseType: !1155, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1342, file: !19, line: 318, baseType: !1155, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1342, file: !19, line: 319, baseType: !1155, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1342, file: !19, line: 320, baseType: !1185, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1336, file: !19, line: 448, baseType: !555, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1336, file: !19, line: 449, baseType: !1335, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1332, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1332, file: !19, line: 226, baseType: !201, size: 128, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1332, file: !19, line: 227, baseType: !335, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1332, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1332, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1332, file: !19, line: 230, baseType: !1120, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1332, file: !19, line: 231, baseType: !1120, size: 64, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1332, file: !19, line: 232, baseType: !184, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1324, file: !19, line: 526, baseType: !1363, size: 192, offset: 2304)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 192, elements: !286)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !517, file: !14, line: 1233, baseType: !1365, size: 2368, offset: 4544)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1366)
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1365, file: !14, line: 1185, baseType: !255, size: 16)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1365, file: !14, line: 1186, baseType: !255, size: 16, offset: 16)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1365, file: !14, line: 1187, baseType: !1370, size: 2304, offset: 64)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 2304, elements: !286)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1372, line: 12, size: 768, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1373 = !{!1374, !1388, !1389, !3544, !3545}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1371, file: !1372, line: 13, baseType: !1375, size: 384)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1376, line: 17, size: 384, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1377 = !{!1378, !1379, !1380, !1387}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1375, file: !1376, line: 18, baseType: !109, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1375, file: !1376, line: 19, baseType: !109, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1375, file: !1376, line: 20, baseType: !1381, size: 192, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1382, line: 41, baseType: !1383)
!1382 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1382, line: 37, size: 192, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !1382, line: 38, baseType: !215, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1383, file: !1382, line: 39, baseType: !201, size: 128, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1375, file: !1376, line: 22, baseType: !846, size: 128, align: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1371, file: !1372, line: 14, baseType: !698, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1371, file: !1372, line: 15, baseType: !1390, size: 64, offset: 448)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1391, line: 16, size: 64, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1390, file: !1391, line: 17, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1070, line: 746, size: 58368, elements: !1396)
!1396 = !{!1397, !1405, !1406, !1407, !1413, !1414, !1415, !1416, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1487, !1498, !1593, !1597, !1600, !1631, !1632, !1633, !1634, !1645, !1647, !1648, !1649, !1650, !1651, !1652, !1663, !1664, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1681, !1682, !1689, !1690, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2718, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2766, !2772, !2773, !2774, !2775, !2776, !2780, !2783, !2790, !2795, !2798, !2801, !2804, !2807, !2945, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2983, !2984, !2985, !2994, !3002, !3003, !3004, !3005, !3006, !3011, !3012, !3013, !3016, !3017, !3020, !3023, !3026, !3034, !3037, !3038, !3124, !3125, !3126, !3127, !3128, !3134, !3135, !3136, !3137, !3140, !3141, !3144, !3147, !3148, !3151, !3152, !3153, !3156, !3157, !3158, !3159, !3160, !3161, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3193, !3194, !3200, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3212, !3284, !3286, !3287, !3288, !3289, !3290, !3291, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3321, !3322, !3323}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1395, file: !1070, line: 752, baseType: !1398, size: 192)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1399, line: 56, size: 192, elements: !1400)
!1399 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1400 = !{!1401, !1402, !1403, !1404}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1398, file: !1399, line: 57, baseType: !335, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1398, file: !1399, line: 58, baseType: !335, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1398, file: !1399, line: 59, baseType: !434, size: 32, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1398, file: !1399, line: 61, baseType: !434, size: 32, offset: 160)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1395, file: !1070, line: 754, baseType: !7, size: 32, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1395, file: !1070, line: 767, baseType: !184, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1395, file: !1070, line: 768, baseType: !1408, size: 32, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1409, line: 113, baseType: !1410)
!1409 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1409, line: 111, size: 32, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1410, file: !1409, line: 112, baseType: !235, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !1070, line: 770, baseType: !7, size: 32, offset: 352)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1395, file: !1070, line: 771, baseType: !7, size: 32, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1395, file: !1070, line: 774, baseType: !109, size: 32, offset: 416)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1395, file: !1070, line: 775, baseType: !1417, size: 128, offset: 448)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1418, line: 58, size: 128, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1419 = !{!1420, !1426, !1431, !1432}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1417, file: !1418, line: 59, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1422, line: 60, size: 64, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1421, file: !1422, line: 61, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !1418, line: 60, baseType: !1427, size: 32, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !1418, line: 60, size: 32, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1427, file: !1418, line: 61, baseType: !7, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1427, file: !1418, line: 62, baseType: !235, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1417, file: !1418, line: 65, baseType: !253, size: 16, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1417, file: !1418, line: 65, baseType: !253, size: 16, offset: 112)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1395, file: !1070, line: 776, baseType: !7, size: 32, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1395, file: !1070, line: 777, baseType: !335, size: 64, offset: 640)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1395, file: !1070, line: 778, baseType: !1394, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1395, file: !1070, line: 787, baseType: !109, size: 32, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1395, file: !1070, line: 788, baseType: !109, size: 32, offset: 800)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1395, file: !1070, line: 790, baseType: !109, size: 32, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1395, file: !1070, line: 792, baseType: !109, size: 32, offset: 864)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1395, file: !1070, line: 793, baseType: !109, size: 32, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1395, file: !1070, line: 794, baseType: !109, size: 32, offset: 928)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1395, file: !1070, line: 795, baseType: !7, size: 32, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1395, file: !1070, line: 797, baseType: !1444, size: 2048, offset: 1024)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1070, line: 551, size: 2048, elements: !1445)
!1445 = !{!1446, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1466, !1469, !1470, !1471}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1444, file: !1070, line: 553, baseType: !1447, size: 128)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1070, line: 411, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1447, file: !1070, line: 412, baseType: !335, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1447, file: !1070, line: 413, baseType: !434, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1444, file: !1070, line: 554, baseType: !738, size: 192, align: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1444, file: !1070, line: 555, baseType: !438, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1444, file: !1070, line: 556, baseType: !438, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1444, file: !1070, line: 558, baseType: !201, size: 128, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1444, file: !1070, line: 559, baseType: !7, size: 32, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1444, file: !1070, line: 561, baseType: !438, size: 64, offset: 640)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1444, file: !1070, line: 562, baseType: !438, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1444, file: !1070, line: 563, baseType: !438, size: 64, offset: 768)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1444, file: !1070, line: 564, baseType: !438, size: 64, offset: 832)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1444, file: !1070, line: 565, baseType: !636, size: 64, offset: 896)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1444, file: !1070, line: 566, baseType: !438, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1444, file: !1070, line: 568, baseType: !438, size: 64, offset: 1024)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1444, file: !1070, line: 571, baseType: !109, size: 32, offset: 1088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1444, file: !1070, line: 572, baseType: !1465, size: 64, offset: 1152)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1444, file: !1070, line: 574, baseType: !1467, size: 64, offset: 1216)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1070, line: 49, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1444, file: !1070, line: 576, baseType: !1467, size: 64, offset: 1280)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1444, file: !1070, line: 578, baseType: !335, size: 64, offset: 1344)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1444, file: !1070, line: 588, baseType: !1472, size: 512, align: 512, offset: 1536)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1070, line: 497, size: 512, align: 512, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1472, file: !1070, line: 498, baseType: !438, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1472, file: !1070, line: 499, baseType: !438, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1472, file: !1070, line: 500, baseType: !438, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1472, file: !1070, line: 501, baseType: !434, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1472, file: !1070, line: 502, baseType: !434, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1472, file: !1070, line: 503, baseType: !335, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1472, file: !1070, line: 504, baseType: !335, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1472, file: !1070, line: 505, baseType: !335, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1472, file: !1070, line: 506, baseType: !1483, size: 64, align: 64, offset: 448)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1070, line: 445, size: 64, align: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1483, file: !1070, line: 446, baseType: !7, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1483, file: !1070, line: 447, baseType: !7, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1395, file: !1070, line: 798, baseType: !1488, size: 384, offset: 3072)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1070, line: 592, size: 384, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1488, file: !1070, line: 593, baseType: !201, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1488, file: !1070, line: 594, baseType: !335, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1488, file: !1070, line: 595, baseType: !335, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1488, file: !1070, line: 596, baseType: !7, size: 32, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1488, file: !1070, line: 597, baseType: !255, size: 16, offset: 288)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1488, file: !1070, line: 598, baseType: !255, size: 16, offset: 304)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1488, file: !1070, line: 600, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1395, file: !1070, line: 799, baseType: !1499, size: 1792, offset: 3456)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1070, line: 610, size: 1792, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1590, !1591}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1499, file: !1070, line: 611, baseType: !738, size: 192, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1499, file: !1070, line: 618, baseType: !438, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1499, file: !1070, line: 619, baseType: !438, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1499, file: !1070, line: 620, baseType: !438, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1499, file: !1070, line: 621, baseType: !438, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1499, file: !1070, line: 622, baseType: !438, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1499, file: !1070, line: 629, baseType: !636, size: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1499, file: !1070, line: 630, baseType: !438, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1499, file: !1070, line: 631, baseType: !7, size: 32, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1499, file: !1070, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1499, file: !1070, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1499, file: !1070, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1499, file: !1070, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1499, file: !1070, line: 662, baseType: !1515, size: 512, offset: 704)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1516)
!1516 = !{!1517, !1525, !1526, !1531, !1586, !1587, !1588, !1589}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1515, file: !25, line: 119, baseType: !1518, size: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1519, line: 9, size: 256, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1518, file: !1519, line: 10, baseType: !738, size: 192, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1518, file: !1519, line: 11, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1524, line: 29, baseType: !636)
!1524 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1515, file: !25, line: 120, baseType: !1523, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1515, file: !25, line: 121, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!24, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1515, file: !25, line: 122, baseType: !1532, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1534)
!1534 = !{!1535, !1560, !1561, !1564, !1569, !1570, !1581, !1585}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1533, file: !25, line: 160, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !25, line: 216, baseType: !584, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1537, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1537, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1537, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1537, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1537, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1537, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1537, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1537, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1537, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1537, file: !25, line: 227, baseType: !255, size: 16, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1537, file: !25, line: 228, baseType: !255, size: 16, offset: 208)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1537, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1537, file: !25, line: 235, baseType: !1523, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1537, file: !25, line: 236, baseType: !1530, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1537, file: !25, line: 237, baseType: !1523, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1537, file: !25, line: 238, baseType: !1530, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1537, file: !25, line: 239, baseType: !1557, size: 4096, align: 512, offset: 512)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 4096, align: 512, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 8)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1533, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1533, file: !25, line: 162, baseType: !1562, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !202, line: 32, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !319, line: 96, baseType: !109)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1533, file: !25, line: 163, baseType: !1565, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !407, line: 274, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !407, line: 274, size: 32, elements: !1567)
!1567 = !{!1568}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1566, file: !407, line: 274, baseType: !411, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1533, file: !25, line: 164, baseType: !1530, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1533, file: !25, line: 165, baseType: !1571, size: 128, offset: 256)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1519, line: 14, size: 128, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1571, file: !1519, line: 15, baseType: !1574, size: 128)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !739, line: 26, size: 128, elements: !1575)
!1575 = !{!1576, !1580}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1574, file: !739, line: 27, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !739, line: 12, size: 64, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1577, file: !739, line: 13, baseType: !743, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1574, file: !739, line: 28, baseType: !743, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1533, file: !25, line: 166, baseType: !1582, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1523}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1533, file: !25, line: 167, baseType: !1523, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1515, file: !25, line: 123, baseType: !243, size: 8, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1515, file: !25, line: 124, baseType: !243, size: 8, offset: 456)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1515, file: !25, line: 125, baseType: !243, size: 8, offset: 464)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1515, file: !25, line: 126, baseType: !243, size: 8, offset: 472)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1499, file: !1070, line: 671, baseType: !1515, size: 512, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1499, file: !1070, line: 679, baseType: !1592, size: 64, offset: 1728)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1395, file: !1070, line: 800, baseType: !1594, size: 64, offset: 5248)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1070, line: 800, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1395, file: !1070, line: 809, baseType: !1598, size: 64, offset: 5312)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1070, line: 70, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1395, file: !1070, line: 825, baseType: !1601, size: 2048, align: 512, offset: 5632)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1070, line: 509, size: 2048, align: 512, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1601, file: !1070, line: 511, baseType: !438, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1601, file: !1070, line: 512, baseType: !438, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1601, file: !1070, line: 513, baseType: !438, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1601, file: !1070, line: 514, baseType: !438, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1601, file: !1070, line: 515, baseType: !438, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1601, file: !1070, line: 516, baseType: !438, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1601, file: !1070, line: 518, baseType: !438, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1601, file: !1070, line: 519, baseType: !438, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1601, file: !1070, line: 520, baseType: !636, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1601, file: !1070, line: 522, baseType: !438, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1601, file: !1070, line: 523, baseType: !438, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1601, file: !1070, line: 524, baseType: !636, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1601, file: !1070, line: 526, baseType: !636, size: 64, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1601, file: !1070, line: 527, baseType: !438, size: 64, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1601, file: !1070, line: 529, baseType: !438, size: 64, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1601, file: !1070, line: 530, baseType: !438, size: 64, offset: 960)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1601, file: !1070, line: 531, baseType: !438, size: 64, offset: 1024)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1601, file: !1070, line: 532, baseType: !438, size: 64, offset: 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1601, file: !1070, line: 533, baseType: !438, size: 64, offset: 1152)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1601, file: !1070, line: 535, baseType: !438, size: 64, offset: 1216)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1601, file: !1070, line: 536, baseType: !438, size: 64, offset: 1280)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1601, file: !1070, line: 537, baseType: !438, size: 64, offset: 1344)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1601, file: !1070, line: 538, baseType: !438, size: 64, offset: 1408)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1601, file: !1070, line: 539, baseType: !438, size: 64, offset: 1472)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1601, file: !1070, line: 540, baseType: !438, size: 64, offset: 1536)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1601, file: !1070, line: 541, baseType: !438, size: 64, offset: 1600)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1601, file: !1070, line: 542, baseType: !438, size: 64, offset: 1664)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1601, file: !1070, line: 543, baseType: !438, size: 64, offset: 1728)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1395, file: !1070, line: 833, baseType: !7, size: 32, offset: 7680)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1395, file: !1070, line: 836, baseType: !7, size: 32, offset: 7712)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1395, file: !1070, line: 837, baseType: !109, size: 32, offset: 7744)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1395, file: !1070, line: 838, baseType: !1635, size: 64, offset: 7808)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1638, line: 19, baseType: !1639)
!1638 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1638, line: 19, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1639, file: !1638, line: 19, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !1643)
!1643 = !{!1644}
!1644 = !DISubrange(count: 1)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1395, file: !1070, line: 839, baseType: !1646, size: 64, offset: 7872)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1395, file: !1070, line: 840, baseType: !1637, size: 64, offset: 7936)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1395, file: !1070, line: 841, baseType: !184, size: 64, offset: 8000)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1395, file: !1070, line: 843, baseType: !255, size: 16, offset: 8064)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1395, file: !1070, line: 845, baseType: !255, size: 16, offset: 8080)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1395, file: !1070, line: 848, baseType: !109, size: 32, offset: 8096)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1395, file: !1070, line: 849, baseType: !1653, size: 32, offset: 8128)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1070, line: 718, size: 32, elements: !1654)
!1654 = !{!1655, !1662}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1653, file: !1070, line: 724, baseType: !1656, size: 32)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1070, line: 719, size: 32, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1656, file: !1070, line: 720, baseType: !243, size: 8)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1656, file: !1070, line: 721, baseType: !243, size: 8, offset: 8)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1656, file: !1070, line: 722, baseType: !243, size: 8, offset: 16)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1656, file: !1070, line: 723, baseType: !243, size: 8, offset: 24)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1653, file: !1070, line: 725, baseType: !434, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1395, file: !1070, line: 850, baseType: !201, size: 128, offset: 8192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1395, file: !1070, line: 851, baseType: !1665, size: 64, offset: 8320)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1070, line: 60, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1395, file: !1070, line: 855, baseType: !335, size: 64, offset: 8384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1395, file: !1070, line: 856, baseType: !243, size: 8, offset: 8448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1395, file: !1070, line: 857, baseType: !243, size: 8, offset: 8456)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1395, file: !1070, line: 858, baseType: !109, size: 32, offset: 8480)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1395, file: !1070, line: 859, baseType: !201, size: 128, offset: 8512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1395, file: !1070, line: 860, baseType: !109, size: 32, offset: 8640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1395, file: !1070, line: 861, baseType: !201, size: 128, offset: 8704)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1395, file: !1070, line: 873, baseType: !1675, size: 256, offset: 8832)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1070, line: 376, size: 256, elements: !1676)
!1676 = !{!1677, !1678, !1679, !1680}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1675, file: !1070, line: 381, baseType: !335, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1675, file: !1070, line: 384, baseType: !440, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1675, file: !1070, line: 389, baseType: !440, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1675, file: !1070, line: 392, baseType: !440, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1395, file: !1070, line: 875, baseType: !201, size: 128, offset: 9088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1395, file: !1070, line: 877, baseType: !1683, size: 320, offset: 9216)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1684, line: 86, size: 320, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1685 = !{!1686, !1687, !1688}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1683, file: !1684, line: 87, baseType: !109, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1683, file: !1684, line: 88, baseType: !201, size: 128, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1683, file: !1684, line: 89, baseType: !201, size: 128, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1395, file: !1070, line: 878, baseType: !738, size: 192, align: 64, offset: 9536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1395, file: !1070, line: 881, baseType: !1691, size: 64, offset: 9728)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1693)
!1693 = !{!1694, !2632}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !38, line: 734, baseType: !1695, size: 10240)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !38, line: 734, size: 10240, elements: !1696)
!1696 = !{!1697, !1701, !1714, !2509, !2510, !2511, !2512, !2513, !2514, !2521, !2522, !2523, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2562, !2564, !2567, !2612, !2613, !2614, !2617, !2618, !2619, !2622, !2623, !2624, !2630, !2631}
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !38, line: 739, baseType: !1698, size: 512, align: 512)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !38, line: 739, size: 512, align: 512, elements: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1698, file: !38, line: 747, baseType: !235, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1695, file: !38, line: 750, baseType: !1702, size: 128, offset: 512)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1703, line: 218, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1704 = !{!1705, !1712, !1713}
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1703, line: 219, baseType: !1706, size: 32)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1703, line: 219, size: 32, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1706, file: !1703, line: 220, baseType: !215, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1706, file: !1703, line: 221, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1703, line: 197, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1703, line: 197, elements: !915)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1702, file: !1703, line: 223, baseType: !7, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1702, file: !1703, line: 224, baseType: !184, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1695, file: !38, line: 752, baseType: !1715, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!335, !1718, !335, !335, !335, !335}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1720)
!1720 = !{!1721, !1727, !1728, !1730, !1731, !1732, !1733, !1734, !1784, !1974, !1983, !1984, !1985, !2499, !2500, !2501, !2502, !2504, !2505, !2508}
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !14, line: 995, baseType: !1722, size: 128)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !14, line: 995, size: 128, elements: !1723)
!1723 = !{!1724, !1725, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1722, file: !14, line: 996, baseType: !1421, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1722, file: !14, line: 997, baseType: !846, size: 128, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1722, file: !14, line: 998, baseType: !7, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1719, file: !14, line: 1005, baseType: !215, size: 32, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1719, file: !14, line: 1006, baseType: !1729, size: 32, offset: 160)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !202, line: 156, baseType: !7)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1719, file: !14, line: 1007, baseType: !630, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1719, file: !14, line: 1008, baseType: !626, size: 256, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1719, file: !14, line: 1009, baseType: !526, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1719, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1719, file: !14, line: 1011, baseType: !1735, size: 256, offset: 640)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1736)
!1736 = !{!1737, !1758, !1780, !1781, !1782, !1783}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1735, file: !14, line: 949, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1739, line: 34, baseType: !1740)
!1739 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 25, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1740, file: !1739, line: 26, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1744, line: 27, baseType: !1745)
!1744 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1744, line: 13, size: 64, elements: !1746)
!1746 = !{!1747, !1757}
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1744, line: 14, baseType: !1748, size: 32)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !1744, line: 14, size: 32, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1748, file: !1744, line: 15, baseType: !235, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !1744, line: 16, baseType: !1752, size: 32)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !1744, line: 16, size: 32, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1752, file: !1744, line: 18, baseType: !243, size: 8)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1752, file: !1744, line: 19, baseType: !1756, size: 24, offset: 8)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 24, elements: !286)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1745, file: !1744, line: 26, baseType: !227, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1735, file: !14, line: 950, baseType: !1759, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1767, !1768, !1769, !1770}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1760, file: !30, line: 61, baseType: !1408, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1760, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1760, file: !30, line: 63, baseType: !215, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1760, file: !30, line: 65, baseType: !1766, size: 256, offset: 128)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 256, elements: !856)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1760, file: !30, line: 66, baseType: !996, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1760, file: !30, line: 68, baseType: !1381, size: 192, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1760, file: !30, line: 69, baseType: !846, size: 128, align: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1760, file: !30, line: 70, baseType: !1771, offset: 768)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, elements: !1778)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1772, file: !30, line: 55, baseType: !109, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1772, file: !30, line: 56, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1778 = !{!1779}
!1779 = !DISubrange(count: -1)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1735, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1735, file: !14, line: 952, baseType: !371, size: 32, offset: 160)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1735, file: !14, line: 952, baseType: !371, size: 32, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1735, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1719, file: !14, line: 1012, baseType: !1785, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1788, line: 110, size: 1472, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1806, !1807, !1808, !1809, !1810, !1811, !1919, !1920, !1921, !1922, !1923, !1954, !1957, !1961, !1969}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1787, file: !1788, line: 111, baseType: !630, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1787, file: !1788, line: 112, baseType: !371, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1787, file: !1788, line: 113, baseType: !380, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1787, file: !1788, line: 114, baseType: !371, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1787, file: !1788, line: 115, baseType: !380, size: 32, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1787, file: !1788, line: 116, baseType: !371, size: 32, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1787, file: !1788, line: 117, baseType: !380, size: 32, offset: 224)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1787, file: !1788, line: 118, baseType: !371, size: 32, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1787, file: !1788, line: 119, baseType: !380, size: 32, offset: 288)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1787, file: !1788, line: 120, baseType: !7, size: 32, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1787, file: !1788, line: 121, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1802, line: 24, baseType: !1803)
!1802 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 24, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1803, file: !1802, line: 24, baseType: !438, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1787, file: !1788, line: 122, baseType: !1801, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1787, file: !1788, line: 123, baseType: !1801, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1787, file: !1788, line: 124, baseType: !1801, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1787, file: !1788, line: 125, baseType: !1801, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1787, file: !1788, line: 127, baseType: !247, size: 8, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1787, file: !1788, line: 129, baseType: !1812, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1814, line: 195, size: 1728, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1815 = !{!1816, !1817, !1820, !1825, !1826, !1829, !1830, !1835, !1836, !1837, !1838, !1841, !1842, !1843, !1844, !1845, !1883, !1904}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1813, file: !1814, line: 196, baseType: !1408, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1813, file: !1814, line: 197, baseType: !1818, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1814, line: 28, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !202, line: 104, baseType: !622)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 198, baseType: !1821, size: 192, offset: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 198, size: 192, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1821, file: !1814, line: 199, baseType: !201, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1821, file: !1814, line: 200, baseType: !738, size: 192, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1813, file: !1814, line: 205, baseType: !1288, size: 320, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1813, file: !1814, line: 206, baseType: !1827, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1814, line: 206, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1813, file: !1814, line: 207, baseType: !184, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 208, baseType: !1831, size: 64, offset: 704)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 208, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1831, file: !1814, line: 209, baseType: !1128, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1831, file: !1814, line: 210, baseType: !1128, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1813, file: !1814, line: 212, baseType: !1128, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1813, file: !1814, line: 213, baseType: !371, size: 32, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1813, file: !1814, line: 214, baseType: !380, size: 32, offset: 864)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1813, file: !1814, line: 215, baseType: !1839, size: 32, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1814, line: 31, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !202, line: 110, baseType: !434)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1813, file: !1814, line: 216, baseType: !255, size: 16, offset: 928)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1813, file: !1814, line: 217, baseType: !255, size: 16, offset: 944)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1813, file: !1814, line: 221, baseType: !764, size: 16, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !1814, line: 228, baseType: !335, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 245, baseType: !1846, size: 320, offset: 1088)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 245, size: 320, elements: !1847)
!1847 = !{!1848, !1875}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1846, file: !1814, line: 246, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1814, line: 114, size: 320, elements: !1850)
!1850 = !{!1851, !1852, !1864, !1867, !1874}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1849, file: !1814, line: 116, baseType: !335, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1814, line: 117, baseType: !1853, size: 64, offset: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1814, line: 117, size: 64, elements: !1854)
!1854 = !{!1855, !1863}
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !1814, line: 118, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1814, line: 118, size: 64, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1856, file: !1814, line: 120, baseType: !253, size: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1856, file: !1814, line: 121, baseType: !1860, size: 48, offset: 16)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 48, elements: !1861)
!1861 = !{!1862}
!1862 = !DISubrange(count: 6)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1853, file: !1814, line: 127, baseType: !335, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1849, file: !1814, line: 129, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1814, line: 102, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1849, file: !1814, line: 130, baseType: !1868, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1814, line: 108, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1869, file: !1814, line: 109, baseType: !846, size: 128, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1869, file: !1814, line: 110, baseType: !1408, size: 32, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1869, file: !1814, line: 111, baseType: !706, size: 8, offset: 160)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1849, file: !1814, line: 131, baseType: !197, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1814, line: 247, baseType: !1876, size: 320)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1814, line: 247, size: 320, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1876, file: !1814, line: 248, baseType: !335, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1876, file: !1814, line: 249, baseType: !335, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1876, file: !1814, line: 250, baseType: !1865, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1876, file: !1814, line: 251, baseType: !1868, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1876, file: !1814, line: 252, baseType: !285, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1814, line: 260, baseType: !1884, size: 256, offset: 1408)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1814, line: 260, size: 256, elements: !1885)
!1885 = !{!1886, !1892}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1884, file: !1814, line: 261, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1814, line: 134, size: 256, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1887, file: !1814, line: 135, baseType: !184, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1887, file: !1814, line: 136, baseType: !1891, size: 256)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !856)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !1814, line: 262, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1814, line: 262, size: 256, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1893, file: !1814, line: 264, baseType: !201, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1893, file: !1814, line: 265, baseType: !1897, size: 128, offset: 128)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1898, line: 22, size: 128, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1899 = !{!1900, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1897, file: !1898, line: 23, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1898, line: 23, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1897, file: !1898, line: 24, baseType: !335, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1813, file: !1814, line: 280, baseType: !1905, size: 64, offset: 1664)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1814, line: 176, size: 192, elements: !1907)
!1907 = !{!1908, !1917, !1918}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1906, file: !1814, line: 177, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1814, line: 171, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!109, !1812, !1913, !1915, !1812}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1906, file: !1814, line: 178, baseType: !1812, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1906, file: !1814, line: 179, baseType: !1865, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1787, file: !1788, line: 130, baseType: !1812, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1787, file: !1788, line: 131, baseType: !1812, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1787, file: !1788, line: 132, baseType: !1812, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1787, file: !1788, line: 135, baseType: !184, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1787, file: !1788, line: 137, baseType: !1924, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1926, line: 14, size: 1088, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1927 = !{!1928, !1929, !1938, !1939, !1940, !1941, !1942, !1943}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1925, file: !1926, line: 15, baseType: !1408, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1925, file: !1926, line: 17, baseType: !1930, size: 320, offset: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1931, line: 22, size: 320, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1930, file: !1931, line: 23, baseType: !584, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1930, file: !1931, line: 24, baseType: !636, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1930, file: !1931, line: 26, baseType: !201, size: 128, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1930, file: !1931, line: 28, baseType: !1937, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1925, file: !1926, line: 19, baseType: !335, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1925, file: !1926, line: 20, baseType: !630, size: 64, offset: 448)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1925, file: !1926, line: 23, baseType: !872, size: 128, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1925, file: !1926, line: 24, baseType: !371, size: 32, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1925, file: !1926, line: 29, baseType: !630, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1925, file: !1926, line: 36, baseType: !1944, size: 320, offset: 768)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1945, line: 15, size: 320, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1944, file: !1945, line: 16, baseType: !584, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1944, file: !1945, line: 18, baseType: !109, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1944, file: !1945, line: 19, baseType: !109, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1944, file: !1945, line: 20, baseType: !109, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1944, file: !1945, line: 21, baseType: !109, size: 32, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1944, file: !1945, line: 22, baseType: !335, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1945, line: 23, baseType: !335, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1787, file: !1788, line: 138, baseType: !1955, size: 64, offset: 1152)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1787, file: !1788, line: 139, baseType: !1958, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1960, line: 16, flags: DIFlagFwdDecl)
!1960 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1787, file: !1788, line: 140, baseType: !1962, size: 64, offset: 1280)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1788, line: 25, size: 64, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1963, file: !1788, line: 26, baseType: !235, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1963, file: !1788, line: 27, baseType: !109, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1963, file: !1788, line: 28, baseType: !1968, offset: 64)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, elements: !1778)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !1788, line: 142, baseType: !1970, size: 128, offset: 1344)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !1788, line: 142, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1970, file: !1788, line: 143, baseType: !109, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1970, file: !1788, line: 144, baseType: !846, size: 128, align: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1719, file: !14, line: 1013, baseType: !1975, size: 256, offset: 960)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1975, file: !14, line: 971, baseType: !335, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1975, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1975, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1975, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1975, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1975, file: !14, line: 976, baseType: !526, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1719, file: !14, line: 1014, baseType: !1200, size: 128, offset: 1216)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1719, file: !14, line: 1015, baseType: !365, size: 64, offset: 1344)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1719, file: !14, line: 1016, baseType: !1986, size: 64, offset: 1408)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1989)
!1989 = !{!1990, !1991, !1995, !2000, !2004, !2088, !2089, !2095, !2108, !2125, !2129, !2130, !2421, !2422, !2426, !2431, !2432, !2436, !2440, !2446, !2447, !2451, !2452, !2458, !2462, !2466, !2472, !2476, !2480, !2484, !2488, !2489, !2495}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1988, file: !14, line: 1915, baseType: !555, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1988, file: !14, line: 1916, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!526, !1718, !526, !109}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1988, file: !14, line: 1917, baseType: !1996, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!317, !1718, !285, !332, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1988, file: !14, line: 1918, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!317, !1718, !197, !332, !1999}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1988, file: !14, line: 1919, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!317, !2008, !2030}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2017, !2018, !2019, !2020}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2009, file: !14, line: 374, baseType: !1718, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2009, file: !14, line: 375, baseType: !526, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2009, file: !14, line: 376, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !2008, !321}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2009, file: !14, line: 377, baseType: !184, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2009, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2009, file: !14, line: 379, baseType: !253, size: 16, offset: 288)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !14, line: 380, baseType: !2021, size: 64, offset: 320)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2009, file: !14, line: 380, size: 64, elements: !2022)
!2022 = !{!2023, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2021, file: !14, line: 386, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2021, file: !14, line: 395, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!317, !184}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2032, line: 41, size: 320, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2044, !2083}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2031, file: !2032, line: 42, baseType: !243, size: 8)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2031, file: !2032, line: 43, baseType: !706, size: 8, offset: 8)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2031, file: !2032, line: 44, baseType: !706, size: 8, offset: 16)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2031, file: !2032, line: 45, baseType: !706, size: 8, offset: 24)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2031, file: !2032, line: 46, baseType: !706, size: 8, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 47, baseType: !2040, size: 64, offset: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 47, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2040, file: !2032, line: 48, baseType: !332, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2040, file: !2032, line: 49, baseType: !109, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 61, baseType: !2045, size: 128, offset: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 61, size: 128, elements: !2046)
!2046 = !{!2047, !2053}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2045, file: !2032, line: 67, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2049, line: 17, size: 128, elements: !2050)
!2049 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2048, file: !2049, line: 19, baseType: !184, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2048, file: !2049, line: 20, baseType: !333, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !2032, line: 68, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2032, line: 68, size: 128, elements: !2055)
!2055 = !{!2056, !2082}
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !2032, line: 69, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2032, line: 69, size: 64, elements: !2058)
!2058 = !{!2059, !2062, !2069, !2073, !2081}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2057, file: !2032, line: 71, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2057, file: !2032, line: 72, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2032, line: 17, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2065, file: !2032, line: 18, baseType: !184, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2065, file: !2032, line: 19, baseType: !332, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2057, file: !2032, line: 73, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2032, line: 73, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2057, file: !2032, line: 74, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2076, line: 296, size: 128, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2075, file: !2076, line: 297, baseType: !215, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2075, file: !2076, line: 299, baseType: !1140, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2075, file: !2076, line: 300, baseType: !184, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2057, file: !2032, line: 75, baseType: !184, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2054, file: !2032, line: 77, baseType: !332, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2031, file: !2032, line: 80, baseType: !2084, size: 64, offset: 256)
!2084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 80, size: 64, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2084, file: !2032, line: 81, baseType: !335, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2084, file: !2032, line: 82, baseType: !526, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1988, file: !14, line: 1920, baseType: !2005, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1988, file: !14, line: 1921, baseType: !2090, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!109, !2008, !2093, !7}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1988, file: !14, line: 1923, baseType: !2096, size: 64, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!109, !1718, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2101)
!2101 = !{!2102, !2107}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2100, file: !14, line: 1859, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!706, !2099, !197, !109, !526, !438, !7}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2100, file: !14, line: 1860, baseType: !526, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1988, file: !14, line: 1924, baseType: !2109, size: 64, offset: 512)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!2112, !1718, !2114}
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2113, line: 59, baseType: !7)
!2113 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2116, line: 37, size: 128, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2117 = !{!2118, !2124}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2115, file: !2116, line: 38, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2116, line: 31, baseType: !2120)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !1718, !2123, !2114}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2115, file: !2116, line: 39, baseType: !2112, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1988, file: !14, line: 1925, baseType: !2126, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!321, !1718, !7, !335}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1988, file: !14, line: 1926, baseType: !2126, size: 64, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1988, file: !14, line: 1927, baseType: !2131, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!109, !1718, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2136)
!2136 = !{!2137, !2146, !2147, !2155, !2162, !2163, !2168, !2169, !2174, !2175, !2178, !2414, !2415, !2416, !2417, !2418, !2419}
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !38, line: 628, baseType: !2138, size: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !38, line: 628, size: 128, elements: !2139)
!2139 = !{!2140, !2145}
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !38, line: 629, baseType: !2141, size: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !38, line: 629, size: 128, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2141, file: !38, line: 631, baseType: !335, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2141, file: !38, line: 632, baseType: !335, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2138, file: !38, line: 635, baseType: !846, size: 128, align: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2135, file: !38, line: 639, baseType: !1691, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2135, file: !38, line: 640, baseType: !2148, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2149, line: 297, baseType: !2150)
!2149 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2149, line: 297, size: 64, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2150, file: !2149, line: 297, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2154, line: 19, baseType: !335)
!2154 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !38, line: 646, baseType: !2156, size: 64, offset: 256)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !38, line: 646, size: 64, elements: !2157)
!2157 = !{!2158, !2161}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2156, file: !38, line: 647, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !335)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2156, file: !38, line: 648, baseType: !2160, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2135, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2135, file: !38, line: 667, baseType: !2164, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2165, file: !38, line: 580, baseType: !1288, size: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2135, file: !38, line: 670, baseType: !706, size: 8, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2135, file: !38, line: 681, baseType: !2170, size: 256, offset: 512)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2135, file: !38, line: 678, size: 256, elements: !2171)
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2170, file: !38, line: 679, baseType: !738, size: 192, align: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2170, file: !38, line: 680, baseType: !335, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2135, file: !38, line: 689, baseType: !201, size: 128, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2135, file: !38, line: 691, baseType: !2176, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2135, file: !38, line: 694, baseType: !2179, size: 64, offset: 960)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2182, line: 563, size: 1024, elements: !2183)
!2182 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2183 = !{!2184, !2188, !2189, !2193, !2197, !2201, !2378, !2382, !2386, !2390, !2391, !2392, !2396, !2400, !2406, !2410}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2181, file: !2182, line: 564, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !2134}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2181, file: !2182, line: 569, baseType: !2185, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2181, file: !2182, line: 571, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!109, !2134, !335}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2181, file: !2182, line: 572, baseType: !2194, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!109, !2134}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2181, file: !2182, line: 578, baseType: !2198, size: 64, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!109, !2134, !335, !335, !335}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2181, file: !2182, line: 580, baseType: !2202, size: 64, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2182, line: 512, size: 896, elements: !2208)
!2208 = !{!2209, !2217, !2218, !2225, !2232, !2242, !2371, !2372, !2374, !2376}
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2182, line: 513, baseType: !2210, size: 320)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !2182, line: 513, size: 320, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2210, file: !2182, line: 514, baseType: !2134, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2210, file: !2182, line: 515, baseType: !1140, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2210, file: !2182, line: 516, baseType: !335, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2210, file: !2182, line: 517, baseType: !335, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2210, file: !2182, line: 518, baseType: !335, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !2182, line: 520, baseType: !37, size: 32, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2207, file: !2182, line: 522, baseType: !2219, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2154, line: 22, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2154, line: 22, size: 64, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2221, file: !2154, line: 22, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2154, line: 15, baseType: !335)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2207, file: !2182, line: 524, baseType: !2226, size: 64, offset: 448)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2149, line: 372, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 372, size: 64, elements: !2229)
!2229 = !{!2230}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2228, file: !2149, line: 372, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2154, line: 16, baseType: !335)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2182, line: 527, baseType: !2233, size: 64, offset: 512)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !2182, line: 527, size: 64, elements: !2234)
!2234 = !{!2235, !2241}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2233, file: !2182, line: 528, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2154, line: 21, baseType: !2237)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2154, line: 21, size: 64, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2237, file: !2154, line: 21, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2154, line: 14, baseType: !335)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2233, file: !2182, line: 529, baseType: !2220, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2207, file: !2182, line: 534, baseType: !2243, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2245)
!2245 = !{!2246, !2247, !2365, !2370}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2244, file: !38, line: 75, baseType: !335, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !38, line: 83, baseType: !2248, size: 320, offset: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !38, line: 83, size: 320, elements: !2249)
!2249 = !{!2250, !2271, !2285, !2289, !2364}
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !38, line: 84, baseType: !2251, size: 320)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2248, file: !38, line: 84, size: 320, elements: !2252)
!2252 = !{!2253, !2264, !2265, !2270}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !38, line: 90, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !38, line: 90, size: 128, elements: !2255)
!2255 = !{!2256, !2257, !2262, !2263}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2254, file: !38, line: 91, baseType: !201, size: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2254, file: !38, line: 94, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2254, file: !38, line: 94, size: 128, elements: !2259)
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2258, file: !38, line: 96, baseType: !184, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2258, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2254, file: !38, line: 102, baseType: !201, size: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2254, file: !38, line: 103, baseType: !201, size: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2251, file: !38, line: 106, baseType: !361, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !38, line: 107, baseType: !2266, size: 64, offset: 192)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !38, line: 107, size: 64, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2266, file: !38, line: 108, baseType: !335, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2266, file: !38, line: 109, baseType: !335, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2251, file: !38, line: 117, baseType: !335, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !38, line: 119, baseType: !2272, size: 320)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2248, file: !38, line: 119, size: 320, elements: !2273)
!2273 = !{!2274, !2275, !2278, !2279, !2280}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2272, file: !38, line: 124, baseType: !335, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2272, file: !38, line: 125, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2272, file: !38, line: 126, baseType: !335, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2272, file: !38, line: 127, baseType: !335, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2272, file: !38, line: 128, baseType: !2281, size: 64, offset: 256)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2272, file: !38, line: 128, size: 64, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2281, file: !38, line: 133, baseType: !335, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2281, file: !38, line: 138, baseType: !630, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !38, line: 141, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2248, file: !38, line: 141, size: 64, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2286, file: !38, line: 142, baseType: !335, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !38, line: 144, baseType: !2290, size: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2248, file: !38, line: 144, size: 128, elements: !2291)
!2291 = !{!2292, !2363}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2290, file: !38, line: 146, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2295)
!2295 = !{!2296, !2306, !2327, !2328, !2329, !2330, !2331, !2345, !2346, !2347}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2294, file: !54, line: 127, baseType: !2297, size: 384)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2298)
!2298 = !{!2299, !2300, !2302, !2303, !2304, !2305}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2297, file: !54, line: 22, baseType: !335, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2297, file: !54, line: 23, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2297, file: !54, line: 24, baseType: !2301, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2297, file: !54, line: 25, baseType: !335, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2297, file: !54, line: 26, baseType: !335, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2297, file: !54, line: 27, baseType: !335, size: 64, offset: 320)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2294, file: !54, line: 128, baseType: !2307, size: 128, offset: 384)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2308, line: 105, size: 128, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2307, file: !2308, line: 110, baseType: !335, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2307, file: !2308, line: 118, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2308, line: 95, size: 448, elements: !2314)
!2314 = !{!2315, !2316, !2322, !2323, !2324, !2325, !2326}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2313, file: !2308, line: 96, baseType: !630, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2313, file: !2308, line: 97, baseType: !2317, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2308, line: 60, baseType: !2319)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2313, file: !2308, line: 98, baseType: !2317, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2313, file: !2308, line: 99, baseType: !706, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2313, file: !2308, line: 100, baseType: !706, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2313, file: !2308, line: 101, baseType: !846, size: 128, align: 64, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2313, file: !2308, line: 102, baseType: !2321, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2294, file: !54, line: 129, baseType: !575, size: 256, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2294, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2294, file: !54, line: 132, baseType: !335, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2294, file: !54, line: 133, baseType: !2332, size: 64, offset: 896)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2335)
!2335 = !{!2336, !2340, !2341}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2334, file: !54, line: 83, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2243}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2334, file: !54, line: 89, baseType: !2202, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2334, file: !54, line: 100, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!109, !2293, !335, !335, !109}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2294, file: !54, line: 134, baseType: !184, size: 64, offset: 960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2294, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2347 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !54, line: 136, baseType: !2348, size: 128, offset: 1088)
!2348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2294, file: !54, line: 136, size: 128, elements: !2349)
!2349 = !{!2350, !2356}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2348, file: !54, line: 137, baseType: !2351, size: 128)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2352, line: 6, size: 128, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2351, file: !2352, line: 7, baseType: !438, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2351, file: !2352, line: 8, baseType: !438, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2348, file: !54, line: 138, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2348, file: !54, line: 138, elements: !2358)
!2358 = !{!2359, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2357, file: !54, line: 138, baseType: !2360)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2357, file: !54, line: 138, elements: !915)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2357, file: !54, line: 138, baseType: !2362)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, elements: !1778)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2290, file: !38, line: 147, baseType: !184, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2248, file: !38, line: 161, baseType: !846, size: 128, align: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !38, line: 164, baseType: !2366, size: 32, offset: 384)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !38, line: 164, size: 32, elements: !2367)
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2366, file: !38, line: 169, baseType: !235, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2366, file: !38, line: 177, baseType: !7, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2244, file: !38, line: 181, baseType: !235, size: 32, offset: 416)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2207, file: !2182, line: 535, baseType: !2243, size: 64, offset: 640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2207, file: !2182, line: 541, baseType: !2373, size: 64, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2207, file: !2182, line: 545, baseType: !2375, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2207, file: !2182, line: 549, baseType: !2377, size: 64, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2149, line: 520, baseType: !2243)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2181, file: !2182, line: 581, baseType: !2379, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!2205, !2206, !7}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2181, file: !2182, line: 582, baseType: !2383, size: 64, offset: 448)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!2205, !2206, !335, !335}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2181, file: !2182, line: 584, baseType: !2387, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!335, !2134}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2181, file: !2182, line: 588, baseType: !2202, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2181, file: !2182, line: 591, baseType: !2202, size: 64, offset: 640)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2181, file: !2182, line: 597, baseType: !2393, size: 64, offset: 704)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!109, !2134, !335, !184, !109, !109}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2181, file: !2182, line: 603, baseType: !2397, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!197, !2134}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2181, file: !2182, line: 613, baseType: !2401, size: 64, offset: 832)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!109, !2134, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2181, file: !2182, line: 625, baseType: !2407, size: 64, offset: 896)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!2404, !2134, !335}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2181, file: !2182, line: 633, baseType: !2411, size: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2243, !2134, !335}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2135, file: !38, line: 697, baseType: !335, size: 64, offset: 1024)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2135, file: !38, line: 699, baseType: !1718, size: 64, offset: 1088)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2135, file: !38, line: 700, baseType: !184, size: 64, offset: 1152)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2135, file: !38, line: 711, baseType: !630, size: 64, offset: 1216)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2135, file: !38, line: 717, baseType: !2404, size: 64, offset: 1280)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2135, file: !38, line: 722, baseType: !2420, offset: 1344)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !915)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1988, file: !14, line: 1928, baseType: !335, size: 64, offset: 768)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1988, file: !14, line: 1929, baseType: !2423, size: 64, offset: 832)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!109, !365, !1718}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1988, file: !14, line: 1930, baseType: !2427, size: 64, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!109, !1718, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !184)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1988, file: !14, line: 1931, baseType: !2423, size: 64, offset: 960)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1988, file: !14, line: 1932, baseType: !2433, size: 64, offset: 1024)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!109, !1718, !526, !526, !109}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1988, file: !14, line: 1933, baseType: !2437, size: 64, offset: 1088)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!109, !109, !1718, !109}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1988, file: !14, line: 1934, baseType: !2441, size: 64, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!109, !1718, !109, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1988, file: !14, line: 1935, baseType: !1715, size: 64, offset: 1216)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1988, file: !14, line: 1936, baseType: !2448, size: 64, offset: 1280)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!109, !109}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1988, file: !14, line: 1937, baseType: !2441, size: 64, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1988, file: !14, line: 1938, baseType: !2453, size: 64, offset: 1408)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!317, !2456, !1718, !1999, !332, !7}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1070, line: 59, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1988, file: !14, line: 1939, baseType: !2459, size: 64, offset: 1472)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!317, !1718, !1999, !2456, !332, !7}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1988, file: !14, line: 1940, baseType: !2463, size: 64, offset: 1536)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !1718}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1988, file: !14, line: 1941, baseType: !2467, size: 64, offset: 1600)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!109, !1718, !109, !2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1988, file: !14, line: 1942, baseType: !2473, size: 64, offset: 1664)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!321, !1718, !109, !526, !526}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1988, file: !14, line: 1944, baseType: !2477, size: 64, offset: 1728)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !1068, !1718}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1988, file: !14, line: 1948, baseType: !2481, size: 64, offset: 1792)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!317, !1718, !526, !1718, !526, !332, !7}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1988, file: !14, line: 1950, baseType: !2485, size: 64, offset: 1856)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!526, !1718, !526, !1718, !526, !526, !7}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1988, file: !14, line: 1953, baseType: !2433, size: 64, offset: 1920)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1988, file: !14, line: 1954, baseType: !2490, size: 64, offset: 1984)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!109, !2493, !7}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1988, file: !14, line: 1955, baseType: !2496, size: 64, offset: 2048)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!109, !2493, !2093, !7}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1719, file: !14, line: 1018, baseType: !438, size: 64, offset: 1472)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1719, file: !14, line: 1020, baseType: !184, size: 64, offset: 1536)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1719, file: !14, line: 1023, baseType: !184, size: 64, offset: 1600)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1719, file: !14, line: 1027, baseType: !2503, size: 64, offset: 1664)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1719, file: !14, line: 1029, baseType: !361, size: 64, offset: 1728)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1719, file: !14, line: 1030, baseType: !2506, size: 32, offset: 1792)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2507, line: 8, baseType: !434)
!2507 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1719, file: !14, line: 1031, baseType: !2506, size: 32, offset: 1824)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1695, file: !38, line: 756, baseType: !335, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1695, file: !38, line: 757, baseType: !335, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1695, file: !38, line: 760, baseType: !335, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1695, file: !38, line: 761, baseType: !335, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1695, file: !38, line: 763, baseType: !335, size: 64, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1695, file: !38, line: 764, baseType: !2515, size: 64, offset: 1024)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2149, line: 299, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 299, size: 64, elements: !2518)
!2518 = !{!2519}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2517, file: !2149, line: 299, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2154, line: 18, baseType: !335)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1695, file: !38, line: 773, baseType: !235, size: 32, offset: 1088)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1695, file: !38, line: 785, baseType: !235, size: 32, offset: 1120)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1695, file: !38, line: 795, baseType: !2524, size: 64, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2526)
!2526 = !{!2527, !2528}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2525, file: !38, line: 727, baseType: !438, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2525, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1695, file: !38, line: 801, baseType: !335, size: 64, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1695, file: !38, line: 804, baseType: !630, size: 64, offset: 1280)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1695, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1695, file: !38, line: 808, baseType: !215, size: 32, offset: 1376)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1695, file: !38, line: 823, baseType: !1288, size: 320, offset: 1408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1695, file: !38, line: 825, baseType: !201, size: 128, offset: 1728)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1695, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1695, file: !38, line: 849, baseType: !335, size: 64, offset: 1920)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1695, file: !38, line: 850, baseType: !335, size: 64, offset: 1984)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1695, file: !38, line: 852, baseType: !335, size: 64, offset: 2048)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1695, file: !38, line: 853, baseType: !335, size: 64, offset: 2112)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1695, file: !38, line: 854, baseType: !632, size: 64, offset: 2176)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1695, file: !38, line: 855, baseType: !335, size: 64, offset: 2240)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1695, file: !38, line: 856, baseType: !335, size: 64, offset: 2304)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1695, file: !38, line: 857, baseType: !335, size: 64, offset: 2368)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1695, file: !38, line: 858, baseType: !335, size: 64, offset: 2432)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1695, file: !38, line: 865, baseType: !411, size: 32, offset: 2496)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1695, file: !38, line: 867, baseType: !215, size: 32, offset: 2528)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1695, file: !38, line: 869, baseType: !335, size: 64, offset: 2560)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1695, file: !38, line: 869, baseType: !335, size: 64, offset: 2624)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1695, file: !38, line: 869, baseType: !335, size: 64, offset: 2688)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1695, file: !38, line: 869, baseType: !335, size: 64, offset: 2752)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1695, file: !38, line: 870, baseType: !335, size: 64, offset: 2816)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1695, file: !38, line: 870, baseType: !335, size: 64, offset: 2880)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1695, file: !38, line: 870, baseType: !335, size: 64, offset: 2944)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1695, file: !38, line: 871, baseType: !335, size: 64, offset: 3008)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1695, file: !38, line: 871, baseType: !335, size: 64, offset: 3072)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1695, file: !38, line: 871, baseType: !335, size: 64, offset: 3136)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1695, file: !38, line: 871, baseType: !335, size: 64, offset: 3200)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1695, file: !38, line: 873, baseType: !2559, size: 3328, offset: 3264)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 3328, elements: !2560)
!2560 = !{!2561}
!2561 = !DISubrange(count: 52)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1695, file: !38, line: 875, baseType: !2563, size: 1280, offset: 6592)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1930, size: 1280, elements: !856)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1695, file: !38, line: 877, baseType: !2565, size: 64, offset: 7872)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1695, file: !38, line: 880, baseType: !2568, size: 1088, offset: 7936)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2569, line: 72, baseType: !2570)
!2569 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2569, line: 23, size: 1088, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2579, !2580, !2581, !2582, !2609, !2610, !2611}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2570, file: !2569, line: 28, baseType: !438, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2570, file: !2569, line: 38, baseType: !632, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2570, file: !2569, line: 40, baseType: !335, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2570, file: !2569, line: 43, baseType: !1288, size: 320, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2570, file: !2569, line: 44, baseType: !2577, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2569, line: 44, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2570, file: !2569, line: 48, baseType: !335, size: 64, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2570, file: !2569, line: 59, baseType: !626, size: 256, offset: 640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2570, file: !2569, line: 60, baseType: !184, size: 64, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2570, file: !2569, line: 61, baseType: !2583, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2586, line: 13, size: 1216, elements: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2585, file: !2586, line: 14, baseType: !184, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2585, file: !2586, line: 15, baseType: !335, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2585, file: !2586, line: 17, baseType: !335, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2585, file: !2586, line: 17, baseType: !335, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2585, file: !2586, line: 18, baseType: !335, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2585, file: !2586, line: 18, baseType: !335, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2585, file: !2586, line: 19, baseType: !2595, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2585, file: !2586, line: 21, baseType: !321, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2585, file: !2586, line: 23, baseType: !321, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2585, file: !2586, line: 24, baseType: !321, size: 64, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2585, file: !2586, line: 25, baseType: !321, size: 64, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2585, file: !2586, line: 26, baseType: !321, size: 64, offset: 704)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2585, file: !2586, line: 27, baseType: !321, size: 64, offset: 768)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2585, file: !2586, line: 28, baseType: !321, size: 64, offset: 832)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2585, file: !2586, line: 29, baseType: !321, size: 64, offset: 896)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2585, file: !2586, line: 30, baseType: !321, size: 64, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2585, file: !2586, line: 31, baseType: !321, size: 64, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2585, file: !2586, line: 32, baseType: !321, size: 64, offset: 1088)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2585, file: !2586, line: 33, baseType: !321, size: 64, offset: 1152)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2570, file: !2569, line: 63, baseType: !235, size: 32, offset: 1024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2570, file: !2569, line: 69, baseType: !253, size: 16, offset: 1056)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2570, file: !2569, line: 70, baseType: !762, size: 16, offset: 1072)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1695, file: !38, line: 882, baseType: !335, size: 64, offset: 9024)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1695, file: !38, line: 885, baseType: !215, size: 32, offset: 9088)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1695, file: !38, line: 886, baseType: !2615, size: 64, offset: 9152)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1695, file: !38, line: 901, baseType: !1955, size: 64, offset: 9216)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1695, file: !38, line: 904, baseType: !1718, size: 64, offset: 9280)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1695, file: !38, line: 906, baseType: !2620, size: 64, offset: 9344)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1695, file: !38, line: 930, baseType: !235, size: 32, offset: 9408)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1695, file: !38, line: 933, baseType: !235, size: 32, offset: 9440)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1695, file: !38, line: 935, baseType: !2625, size: 64, offset: 9472)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2625, file: !68, line: 104, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1695, file: !38, line: 940, baseType: !630, size: 64, offset: 9536)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1695, file: !38, line: 942, baseType: !886, size: 256, offset: 9600)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1692, file: !38, line: 986, baseType: !2633, offset: 10240)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !1778)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1395, file: !1070, line: 882, baseType: !1691, size: 64, offset: 9792)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1395, file: !1070, line: 884, baseType: !109, size: 32, offset: 9856)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1395, file: !1070, line: 885, baseType: !109, size: 32, offset: 9888)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1395, file: !1070, line: 886, baseType: !109, size: 32, offset: 9920)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1395, file: !1070, line: 888, baseType: !109, size: 32, offset: 9952)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1395, file: !1070, line: 890, baseType: !335, size: 64, offset: 9984)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1395, file: !1070, line: 893, baseType: !7, size: 32, offset: 10048)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1395, file: !1070, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1395, file: !1070, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1395, file: !1070, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1395, file: !1070, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1395, file: !1070, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1395, file: !1070, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1395, file: !1070, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1395, file: !1070, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1395, file: !1070, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1395, file: !1070, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1395, file: !1070, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1395, file: !1070, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1395, file: !1070, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1395, file: !1070, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1395, file: !1070, line: 969, baseType: !335, size: 64, offset: 10176)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1395, file: !1070, line: 971, baseType: !2657, size: 448, offset: 10240)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2658)
!2658 = !{!2659, !2660, !2665}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2657, file: !62, line: 26, baseType: !335, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2657, file: !62, line: 27, baseType: !2661, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!321, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !62, line: 28, baseType: !2666, size: 320, offset: 128)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2657, file: !62, line: 28, size: 320, elements: !2667)
!2667 = !{!2668, !2678, !2703}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2666, file: !62, line: 37, baseType: !2669, size: 320)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !62, line: 30, size: 320, elements: !2670)
!2670 = !{!2671, !2673, !2674, !2675, !2676, !2677}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2669, file: !62, line: 31, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2669, file: !62, line: 32, baseType: !434, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2669, file: !62, line: 33, baseType: !434, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2669, file: !62, line: 34, baseType: !434, size: 32, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2669, file: !62, line: 35, baseType: !438, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2669, file: !62, line: 36, baseType: !2672, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2666, file: !62, line: 47, baseType: !2679, size: 192)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !62, line: 39, size: 192, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2702}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2679, file: !62, line: 40, baseType: !1562, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2679, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !2679, file: !62, line: 42, baseType: !2684, size: 64, offset: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2679, file: !62, line: 42, size: 64, elements: !2685)
!2685 = !{!2686, !2694}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2684, file: !62, line: 43, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2689, line: 7, size: 128, elements: !2690)
!2689 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2690 = !{!2691, !2693}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2688, file: !2689, line: 8, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !319, line: 93, baseType: !528)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2688, file: !2689, line: 9, baseType: !528, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2684, file: !62, line: 44, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2697, line: 7, size: 64, elements: !2698)
!2697 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2698 = !{!2699, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2696, file: !2697, line: 8, baseType: !2700, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2697, line: 5, baseType: !622)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2696, file: !2697, line: 9, baseType: !622, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2679, file: !62, line: 46, baseType: !438, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2666, file: !62, line: 55, baseType: !2704, size: 256)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !62, line: 49, size: 256, elements: !2705)
!2705 = !{!2706, !2714, !2715, !2716, !2717}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2704, file: !62, line: 50, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2709, line: 36, size: 64, elements: !2710)
!2709 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2708, file: !2709, line: 37, baseType: !109, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2708, file: !2709, line: 38, baseType: !764, size: 16, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2708, file: !2709, line: 39, baseType: !764, size: 16, offset: 48)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2704, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2704, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2704, file: !62, line: 53, baseType: !335, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2704, file: !62, line: 54, baseType: !335, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1395, file: !1070, line: 973, baseType: !2719, size: 32, offset: 10688)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !202, line: 27, baseType: !2720)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !319, line: 28, baseType: !109)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1395, file: !1070, line: 974, baseType: !2719, size: 32, offset: 10720)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1395, file: !1070, line: 978, baseType: !335, size: 64, offset: 10752)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1395, file: !1070, line: 987, baseType: !1394, size: 64, offset: 10816)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1395, file: !1070, line: 990, baseType: !1394, size: 64, offset: 10880)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1395, file: !1070, line: 995, baseType: !201, size: 128, offset: 10944)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1395, file: !1070, line: 996, baseType: !201, size: 128, offset: 11072)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1395, file: !1070, line: 997, baseType: !1394, size: 64, offset: 11200)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1395, file: !1070, line: 1005, baseType: !201, size: 128, offset: 11264)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1395, file: !1070, line: 1006, baseType: !201, size: 128, offset: 11392)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1395, file: !1070, line: 1009, baseType: !1759, size: 64, offset: 11520)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1395, file: !1070, line: 1010, baseType: !2732, size: 512, offset: 11584)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 512, elements: !856)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1395, file: !1070, line: 1011, baseType: !201, size: 128, offset: 12096)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1395, file: !1070, line: 1012, baseType: !201, size: 128, offset: 12224)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1395, file: !1070, line: 1014, baseType: !574, size: 64, offset: 12352)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1395, file: !1070, line: 1017, baseType: !755, size: 64, offset: 12416)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1395, file: !1070, line: 1020, baseType: !755, size: 64, offset: 12480)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1395, file: !1070, line: 1023, baseType: !184, size: 64, offset: 12544)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1395, file: !1070, line: 1025, baseType: !438, size: 64, offset: 12608)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1395, file: !1070, line: 1026, baseType: !438, size: 64, offset: 12672)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1395, file: !1070, line: 1031, baseType: !438, size: 64, offset: 12736)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1395, file: !1070, line: 1032, baseType: !2743, size: 192, offset: 12800)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1070, line: 324, size: 192, elements: !2744)
!2744 = !{!2745, !2746, !2747}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2743, file: !1070, line: 326, baseType: !438, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2743, file: !1070, line: 327, baseType: !438, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2743, file: !1070, line: 328, baseType: !584, size: 32, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1395, file: !1070, line: 1041, baseType: !335, size: 64, offset: 12992)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1395, file: !1070, line: 1042, baseType: !335, size: 64, offset: 13056)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1395, file: !1070, line: 1045, baseType: !438, size: 64, offset: 13120)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1395, file: !1070, line: 1048, baseType: !438, size: 64, offset: 13184)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1395, file: !1070, line: 1051, baseType: !335, size: 64, offset: 13248)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1395, file: !1070, line: 1052, baseType: !335, size: 64, offset: 13312)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1395, file: !1070, line: 1055, baseType: !2755, size: 640, offset: 13376)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2756, line: 132, size: 640, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2757 = !{!2758, !2764, !2765}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2755, file: !2756, line: 133, baseType: !2759, size: 576)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2760, size: 576, elements: !286)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2756, line: 117, size: 192, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2760, file: !2756, line: 118, baseType: !438, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2760, file: !2756, line: 119, baseType: !1571, size: 128, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2755, file: !2756, line: 134, baseType: !7, size: 32, offset: 576)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2755, file: !2756, line: 135, baseType: !7, size: 32, offset: 608)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1395, file: !1070, line: 1058, baseType: !2767, size: 448, offset: 14016)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2756, line: 144, size: 448, elements: !2768)
!2768 = !{!2769, !2770, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2767, file: !2756, line: 145, baseType: !846, size: 128, align: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2767, file: !2756, line: 146, baseType: !626, size: 256, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2767, file: !2756, line: 147, baseType: !7, size: 32, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1395, file: !1070, line: 1064, baseType: !1785, size: 64, offset: 14464)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1395, file: !1070, line: 1067, baseType: !1785, size: 64, offset: 14528)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1395, file: !1070, line: 1070, baseType: !1785, size: 64, offset: 14592)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1395, file: !1070, line: 1074, baseType: !1812, size: 64, offset: 14656)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1395, file: !1070, line: 1084, baseType: !2777, size: 128, offset: 14720)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, elements: !2778)
!2778 = !{!2779}
!2779 = !DISubrange(count: 16)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1395, file: !1070, line: 1086, baseType: !2781, size: 64, offset: 14848)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1070, line: 55, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1395, file: !1070, line: 1089, baseType: !2784, size: 64, offset: 14912)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2785, line: 12, size: 64, elements: !2786)
!2785 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2786 = !{!2787}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2784, file: !2785, line: 13, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2785, line: 8, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1395, file: !1070, line: 1090, baseType: !2791, size: 128, offset: 14976)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2792, line: 13, size: 128, elements: !2793)
!2792 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2793 = !{!2794}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2791, file: !2792, line: 14, baseType: !201, size: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1395, file: !1070, line: 1097, baseType: !2796, size: 64, offset: 15104)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1070, line: 50, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1395, file: !1070, line: 1100, baseType: !2799, size: 64, offset: 15168)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1070, line: 1100, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1395, file: !1070, line: 1103, baseType: !2802, size: 64, offset: 15232)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1070, line: 53, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1395, file: !1070, line: 1107, baseType: !2805, size: 64, offset: 15296)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1070, line: 56, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1395, file: !1070, line: 1110, baseType: !2808, size: 64, offset: 15360)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2810, line: 93, size: 8768, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2859, !2868, !2869, !2871, !2872, !2873, !2876, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2914, !2915, !2922, !2932, !2935, !2936, !2939, !2940, !2941, !2942, !2943, !2944}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2809, file: !2810, line: 94, baseType: !1408, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2809, file: !2810, line: 95, baseType: !235, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2809, file: !2810, line: 96, baseType: !109, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2809, file: !2810, line: 97, baseType: !109, size: 32, offset: 96)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2809, file: !2810, line: 98, baseType: !201, size: 128, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2809, file: !2810, line: 100, baseType: !1381, size: 192, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2809, file: !2810, line: 103, baseType: !1394, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2809, file: !2810, line: 106, baseType: !2820, size: 192, offset: 512)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1960, line: 32, size: 192, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2820, file: !1960, line: 33, baseType: !201, size: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2820, file: !1960, line: 34, baseType: !2824, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2825, line: 25, baseType: !2826)
!2825 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2825, line: 23, size: 64, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2826, file: !2825, line: 24, baseType: !1642, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2809, file: !2810, line: 109, baseType: !996, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2809, file: !2810, line: 112, baseType: !109, size: 32, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2809, file: !2810, line: 114, baseType: !109, size: 32, offset: 800)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2809, file: !2810, line: 115, baseType: !1394, size: 64, offset: 832)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2809, file: !2810, line: 118, baseType: !109, size: 32, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2809, file: !2810, line: 119, baseType: !7, size: 32, offset: 928)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2809, file: !2810, line: 121, baseType: !2836, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2810, line: 80, size: 448, elements: !2838)
!2838 = !{!2839, !2840, !2846}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2837, file: !2810, line: 81, baseType: !235, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2837, file: !2810, line: 82, baseType: !2841, size: 128, offset: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2810, line: 75, size: 128, elements: !2842)
!2842 = !{!2843, !2844}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2841, file: !2810, line: 76, baseType: !1394, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2841, file: !2810, line: 77, baseType: !2845, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2837, file: !2810, line: 83, baseType: !575, size: 256, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2809, file: !2810, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2809, file: !2810, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2809, file: !2810, line: 138, baseType: !7, size: 32, offset: 1056)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2809, file: !2810, line: 139, baseType: !201, size: 128, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2809, file: !2810, line: 142, baseType: !1515, size: 512, offset: 1216)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2809, file: !2810, line: 143, baseType: !1523, size: 64, offset: 1728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2809, file: !2810, line: 150, baseType: !2854, size: 256, offset: 1792)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2855, size: 256, elements: !745)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2810, line: 38, size: 128, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2855, file: !2810, line: 39, baseType: !438, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2855, file: !2810, line: 40, baseType: !438, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2809, file: !2810, line: 156, baseType: !2860, size: 192, offset: 2048)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2810, line: 66, size: 192, elements: !2861)
!2861 = !{!2862}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2860, file: !2810, line: 67, baseType: !2863, size: 192)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2810, line: 47, size: 192, elements: !2864)
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2863, file: !2810, line: 48, baseType: !632, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2863, file: !2810, line: 49, baseType: !632, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2863, file: !2810, line: 50, baseType: !632, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2809, file: !2810, line: 160, baseType: !2755, size: 640, offset: 2240)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2809, file: !2810, line: 163, baseType: !2870, size: 256, offset: 2880)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 256, elements: !856)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2809, file: !2810, line: 169, baseType: !1759, size: 64, offset: 3136)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2809, file: !2810, line: 172, baseType: !109, size: 32, offset: 3200)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2809, file: !2810, line: 174, baseType: !2874, size: 64, offset: 3264)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2810, line: 174, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2809, file: !2810, line: 185, baseType: !2877, size: 64, offset: 3328)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !407, line: 860, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 853, size: 64, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2878, file: !407, line: 858, baseType: !406, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2878, file: !407, line: 859, baseType: !215, size: 32, offset: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2809, file: !2810, line: 186, baseType: !438, size: 64, offset: 3392)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2809, file: !2810, line: 186, baseType: !438, size: 64, offset: 3456)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2809, file: !2810, line: 186, baseType: !438, size: 64, offset: 3520)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2809, file: !2810, line: 186, baseType: !438, size: 64, offset: 3584)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2809, file: !2810, line: 187, baseType: !438, size: 64, offset: 3648)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2809, file: !2810, line: 188, baseType: !438, size: 64, offset: 3712)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2809, file: !2810, line: 189, baseType: !2743, size: 192, offset: 3776)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2809, file: !2810, line: 190, baseType: !335, size: 64, offset: 3968)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2809, file: !2810, line: 190, baseType: !335, size: 64, offset: 4032)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2809, file: !2810, line: 190, baseType: !335, size: 64, offset: 4096)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2809, file: !2810, line: 190, baseType: !335, size: 64, offset: 4160)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2809, file: !2810, line: 191, baseType: !335, size: 64, offset: 4224)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2809, file: !2810, line: 191, baseType: !335, size: 64, offset: 4288)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2809, file: !2810, line: 191, baseType: !335, size: 64, offset: 4352)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2809, file: !2810, line: 191, baseType: !335, size: 64, offset: 4416)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2809, file: !2810, line: 192, baseType: !335, size: 64, offset: 4480)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2809, file: !2810, line: 192, baseType: !335, size: 64, offset: 4544)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2809, file: !2810, line: 192, baseType: !335, size: 64, offset: 4608)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2809, file: !2810, line: 192, baseType: !335, size: 64, offset: 4672)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2809, file: !2810, line: 193, baseType: !335, size: 64, offset: 4736)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2809, file: !2810, line: 193, baseType: !335, size: 64, offset: 4800)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2809, file: !2810, line: 194, baseType: !2904, size: 448, offset: 4864)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2905, line: 12, size: 448, elements: !2906)
!2905 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2904, file: !2905, line: 15, baseType: !438, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2904, file: !2905, line: 17, baseType: !438, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2904, file: !2905, line: 19, baseType: !438, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2904, file: !2905, line: 21, baseType: !438, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2904, file: !2905, line: 29, baseType: !438, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2904, file: !2905, line: 35, baseType: !438, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2904, file: !2905, line: 44, baseType: !438, size: 64, offset: 384)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2809, file: !2810, line: 202, baseType: !440, size: 64, offset: 5312)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2809, file: !2810, line: 213, baseType: !2916, size: 2048, offset: 5376)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2917, size: 2048, elements: !2778)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2918, line: 43, size: 128, elements: !2919)
!2918 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2919 = !{!2920, !2921}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2917, file: !2918, line: 44, baseType: !334, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2917, file: !2918, line: 45, baseType: !334, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2809, file: !2810, line: 216, baseType: !2923, size: 448, offset: 7424)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2810, line: 30, size: 448, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2923, file: !2810, line: 31, baseType: !109, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2923, file: !2810, line: 32, baseType: !321, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2923, file: !2810, line: 33, baseType: !335, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2923, file: !2810, line: 34, baseType: !438, size: 64, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2923, file: !2810, line: 34, baseType: !438, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2923, file: !2810, line: 35, baseType: !335, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2923, file: !2810, line: 35, baseType: !335, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2809, file: !2810, line: 219, baseType: !2933, size: 64, offset: 7872)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2810, line: 219, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2809, file: !2810, line: 222, baseType: !7, size: 32, offset: 7936)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2809, file: !2810, line: 223, baseType: !2937, size: 64, offset: 8000)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2810, line: 223, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2809, file: !2810, line: 230, baseType: !706, size: 8, offset: 8064)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2809, file: !2810, line: 231, baseType: !764, size: 16, offset: 8080)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2809, file: !2810, line: 232, baseType: !764, size: 16, offset: 8096)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2809, file: !2810, line: 234, baseType: !1691, size: 64, offset: 8128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2809, file: !2810, line: 237, baseType: !626, size: 256, offset: 8192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2809, file: !2810, line: 243, baseType: !1288, size: 320, offset: 8448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1395, file: !1070, line: 1111, baseType: !2946, size: 64, offset: 15424)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2810, line: 20, size: 16640, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2947, file: !2810, line: 21, baseType: !215, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2947, file: !2810, line: 22, baseType: !1408, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2947, file: !2810, line: 23, baseType: !1381, size: 192, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2947, file: !2810, line: 24, baseType: !2953, size: 16384, offset: 256)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2954, size: 16384, elements: !290)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1960, line: 51, size: 256, elements: !2955)
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2954, file: !1960, line: 52, baseType: !2957, size: 256)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1960, line: 37, size: 256, elements: !2958)
!2958 = !{!2959, !2966, !2967, !2971}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2957, file: !1960, line: 39, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2961, line: 83, baseType: !2962)
!2961 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2961, line: 82, baseType: !2964)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !109}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2957, file: !1960, line: 40, baseType: !335, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2957, file: !1960, line: 46, baseType: !2968, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2961, line: 86, baseType: !2969)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2961, line: 85, baseType: !991)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2957, file: !1960, line: 48, baseType: !2824, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1395, file: !1070, line: 1112, baseType: !2824, size: 64, offset: 15488)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1395, file: !1070, line: 1113, baseType: !2824, size: 64, offset: 15552)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1395, file: !1070, line: 1115, baseType: !2824, size: 64, offset: 15616)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1395, file: !1070, line: 1116, baseType: !2820, size: 192, offset: 15680)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1395, file: !1070, line: 1117, baseType: !335, size: 64, offset: 15872)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1395, file: !1070, line: 1118, baseType: !332, size: 64, offset: 15936)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1395, file: !1070, line: 1119, baseType: !7, size: 32, offset: 16000)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1395, file: !1070, line: 1121, baseType: !845, size: 64, offset: 16064)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1395, file: !1070, line: 1125, baseType: !2981, size: 64, offset: 16128)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1070, line: 43, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1395, file: !1070, line: 1127, baseType: !371, size: 32, offset: 16192)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1395, file: !1070, line: 1128, baseType: !7, size: 32, offset: 16224)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1395, file: !1070, line: 1130, baseType: !2986, size: 128, offset: 16256)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2987, line: 37, size: 128, elements: !2988)
!2987 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2988 = !{!2989, !2990, !2991}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2986, file: !2987, line: 38, baseType: !109, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2986, file: !2987, line: 39, baseType: !235, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2986, file: !2987, line: 40, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2987, line: 24, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1395, file: !1070, line: 1131, baseType: !2995, size: 256, offset: 16384)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2996, line: 12, size: 256, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2995, file: !2996, line: 13, baseType: !285, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2995, file: !2996, line: 14, baseType: !335, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2995, file: !2996, line: 15, baseType: !335, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2995, file: !2996, line: 16, baseType: !706, size: 8, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1395, file: !1070, line: 1134, baseType: !438, size: 64, offset: 16640)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1395, file: !1070, line: 1135, baseType: !438, size: 64, offset: 16704)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1395, file: !1070, line: 1138, baseType: !215, size: 32, offset: 16768)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1395, file: !1070, line: 1141, baseType: !584, size: 32, offset: 16800)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1395, file: !1070, line: 1143, baseType: !3007, size: 64, offset: 16832)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1070, line: 735, size: 64, elements: !3008)
!3008 = !{!3009}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3007, file: !1070, line: 736, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1395, file: !1070, line: 1147, baseType: !1574, size: 128, offset: 16896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1395, file: !1070, line: 1149, baseType: !1394, size: 64, offset: 17024)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1395, file: !1070, line: 1151, baseType: !3014, size: 64, offset: 17088)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1070, line: 1151, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1395, file: !1070, line: 1188, baseType: !184, size: 64, offset: 17152)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1395, file: !1070, line: 1191, baseType: !3018, size: 64, offset: 17216)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1070, line: 44, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1395, file: !1070, line: 1194, baseType: !3021, size: 64, offset: 17280)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1070, line: 45, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1395, file: !1070, line: 1197, baseType: !3024, size: 64, offset: 17344)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1070, line: 61, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1395, file: !1070, line: 1199, baseType: !3027, size: 64, offset: 17408)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3029, line: 99, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3030 = !{!3031, !3032, !3033}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3028, file: !3029, line: 100, baseType: !630, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3028, file: !3029, line: 101, baseType: !235, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3028, file: !3029, line: 103, baseType: !255, size: 16, offset: 96)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1395, file: !1070, line: 1202, baseType: !3035, size: 64, offset: 17472)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1070, line: 48, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1395, file: !1070, line: 1205, baseType: !335, size: 64, offset: 17536)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1395, file: !1070, line: 1206, baseType: !3039, size: 64, offset: 17600)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1960, line: 14, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1960, line: 12, size: 384, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !3041, file: !1960, line: 13, baseType: !3044, size: 384)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !1960, line: 13, size: 384, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3044, file: !1960, line: 13, baseType: !109, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3044, file: !1960, line: 13, baseType: !109, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3044, file: !1960, line: 13, baseType: !109, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3044, file: !1960, line: 13, baseType: !3050, size: 256, offset: 128)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3051, line: 37, size: 256, elements: !3052)
!3051 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3052 = !{!3053, !3058, !3071, !3077, !3086, !3113, !3118}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3050, file: !3051, line: 42, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 39, size: 64, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3054, file: !3051, line: 40, baseType: !2720, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3054, file: !3051, line: 41, baseType: !377, size: 32, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3050, file: !3051, line: 50, baseType: !3059, size: 192)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 45, size: 192, elements: !3060)
!3060 = !{!3061, !3063, !3064, !3070}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3059, file: !3051, line: 46, baseType: !3062, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !319, line: 95, baseType: !109)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3059, file: !3051, line: 47, baseType: !109, size: 32, offset: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3059, file: !3051, line: 48, baseType: !3065, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3051, line: 11, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3051, line: 8, size: 64, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3066, file: !3051, line: 9, baseType: !109, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3066, file: !3051, line: 10, baseType: !184, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3059, file: !3051, line: 49, baseType: !109, size: 32, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3050, file: !3051, line: 57, baseType: !3072, size: 128)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 53, size: 128, elements: !3073)
!3073 = !{!3074, !3075, !3076}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3072, file: !3051, line: 54, baseType: !2720, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3072, file: !3051, line: 55, baseType: !377, size: 32, offset: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3072, file: !3051, line: 56, baseType: !3065, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3050, file: !3051, line: 66, baseType: !3078, size: 256)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 60, size: 256, elements: !3079)
!3079 = !{!3080, !3081, !3082, !3083, !3085}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3078, file: !3051, line: 61, baseType: !2720, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3078, file: !3051, line: 62, baseType: !377, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3078, file: !3051, line: 63, baseType: !109, size: 32, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3078, file: !3051, line: 64, baseType: !3084, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !319, line: 94, baseType: !320)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3078, file: !3051, line: 65, baseType: !3084, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3050, file: !3051, line: 105, baseType: !3087, size: 256)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 69, size: 256, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3087, file: !3051, line: 70, baseType: !184, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3087, file: !3051, line: 79, baseType: !3091, size: 192, offset: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3087, file: !3051, line: 79, size: 192, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3102, !3107}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3091, file: !3051, line: 81, baseType: !109, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3091, file: !3051, line: 86, baseType: !764, size: 16)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3091, file: !3051, line: 92, baseType: !3096, size: 192)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3091, file: !3051, line: 88, size: 192, elements: !3097)
!3097 = !{!3098, !3100, !3101}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3096, file: !3051, line: 89, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !1558)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3096, file: !3051, line: 90, baseType: !184, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3096, file: !3051, line: 91, baseType: !184, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3091, file: !3051, line: 97, baseType: !3103, size: 96)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3091, file: !3051, line: 94, size: 96, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3103, file: !3051, line: 95, baseType: !3099, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3103, file: !3051, line: 96, baseType: !435, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3091, file: !3051, line: 103, baseType: !3108, size: 128)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3091, file: !3051, line: 99, size: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3108, file: !3051, line: 100, baseType: !335, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3108, file: !3051, line: 101, baseType: !435, size: 32, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3108, file: !3051, line: 102, baseType: !435, size: 32, offset: 96)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3050, file: !3051, line: 111, baseType: !3114, size: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 108, size: 128, elements: !3115)
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3114, file: !3051, line: 109, baseType: !321, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3114, file: !3051, line: 110, baseType: !109, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3050, file: !3051, line: 118, baseType: !3119, size: 128)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3051, line: 114, size: 128, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3119, file: !3051, line: 115, baseType: !184, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3119, file: !3051, line: 116, baseType: !109, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3119, file: !3051, line: 117, baseType: !7, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1395, file: !1070, line: 1208, baseType: !2904, size: 448, offset: 17664)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1395, file: !1070, line: 1215, baseType: !438, size: 64, offset: 18112)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1395, file: !1070, line: 1217, baseType: !438, size: 64, offset: 18176)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1395, file: !1070, line: 1219, baseType: !438, size: 64, offset: 18240)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1395, file: !1070, line: 1223, baseType: !3129, size: 64, offset: 18304)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3130, line: 99, baseType: !3131)
!3130 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3130, line: 99, size: 64, elements: !3132)
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3131, file: !3130, line: 99, baseType: !1642, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1395, file: !1070, line: 1225, baseType: !406, size: 32, offset: 18368)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1395, file: !1070, line: 1226, baseType: !109, size: 32, offset: 18400)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1395, file: !1070, line: 1227, baseType: !109, size: 32, offset: 18432)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1395, file: !1070, line: 1231, baseType: !3138, size: 64, offset: 18496)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1070, line: 1231, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1395, file: !1070, line: 1233, baseType: !201, size: 128, offset: 18560)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1395, file: !1070, line: 1240, baseType: !3142, size: 64, offset: 18688)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1070, line: 62, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1395, file: !1070, line: 1242, baseType: !3145, size: 64, offset: 18752)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1070, line: 1242, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1395, file: !1070, line: 1244, baseType: !201, size: 128, offset: 18816)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1395, file: !1070, line: 1245, baseType: !3149, size: 64, offset: 18944)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1070, line: 51, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1395, file: !1070, line: 1246, baseType: !626, size: 256, offset: 19008)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1395, file: !1070, line: 1247, baseType: !7, size: 32, offset: 19264)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1395, file: !1070, line: 1250, baseType: !3154, size: 64, offset: 19328)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1070, line: 57, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1395, file: !1070, line: 1251, baseType: !626, size: 256, offset: 19392)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1395, file: !1070, line: 1252, baseType: !201, size: 128, offset: 19648)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1395, file: !1070, line: 1259, baseType: !2404, size: 64, offset: 19776)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1395, file: !1070, line: 1260, baseType: !764, size: 16, offset: 19840)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1395, file: !1070, line: 1261, baseType: !764, size: 16, offset: 19856)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1395, file: !1070, line: 1314, baseType: !3162, size: 64, offset: 19904)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3164, line: 62, size: 256, align: 256, elements: !3165)
!3164 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3163, file: !3164, line: 75, baseType: !435, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3163, file: !3164, line: 90, baseType: !435, size: 32, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3163, file: !3164, line: 112, baseType: !439, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3163, file: !3164, line: 132, baseType: !435, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3163, file: !3164, line: 140, baseType: !435, size: 32, offset: 160)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3163, file: !3164, line: 149, baseType: !435, size: 32, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3163, file: !3164, line: 154, baseType: !3173, offset: 224)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1778)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1395, file: !1070, line: 1315, baseType: !434, size: 32, offset: 19968)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1395, file: !1070, line: 1316, baseType: !434, size: 32, offset: 20000)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1395, file: !1070, line: 1321, baseType: !335, size: 64, offset: 20032)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1395, file: !1070, line: 1325, baseType: !109, size: 32, offset: 20096)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1395, file: !1070, line: 1326, baseType: !109, size: 32, offset: 20128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1395, file: !1070, line: 1327, baseType: !109, size: 32, offset: 20160)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1395, file: !1070, line: 1328, baseType: !109, size: 32, offset: 20192)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1395, file: !1070, line: 1329, baseType: !846, size: 128, align: 64, offset: 20224)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1395, file: !1070, line: 1332, baseType: !3183, size: 128, offset: 20352)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3184, line: 51, size: 128, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3185 = !{!3186, !3191, !3192}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3183, file: !3184, line: 60, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3188, line: 7, size: 64, elements: !3189)
!3188 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3187, file: !3188, line: 12, baseType: !1639, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3183, file: !3184, line: 63, baseType: !706, size: 8, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3183, file: !3184, line: 70, baseType: !706, size: 8, offset: 72)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1395, file: !1070, line: 1335, baseType: !2456, size: 64, offset: 20480)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1395, file: !1070, line: 1337, baseType: !3195, size: 128, offset: 20544)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3184, line: 39, size: 128, elements: !3196)
!3196 = !{!3197, !3198, !3199}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3195, file: !3184, line: 40, baseType: !2243, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3195, file: !3184, line: 42, baseType: !435, size: 32, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3195, file: !3184, line: 43, baseType: !435, size: 32, offset: 96)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1395, file: !1070, line: 1340, baseType: !3201, size: 64, offset: 20672)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1070, line: 69, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1395, file: !1070, line: 1351, baseType: !109, size: 32, offset: 20736)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1395, file: !1070, line: 1352, baseType: !109, size: 32, offset: 20768)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1395, file: !1070, line: 1354, baseType: !335, size: 64, offset: 20800)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1395, file: !1070, line: 1364, baseType: !438, size: 64, offset: 20864)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1395, file: !1070, line: 1365, baseType: !438, size: 64, offset: 20928)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1395, file: !1070, line: 1412, baseType: !335, size: 64, offset: 20992)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1395, file: !1070, line: 1453, baseType: !3210, size: 64, offset: 21056)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1070, line: 1453, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1395, file: !1070, line: 1457, baseType: !3213, size: 64, offset: 21120)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3215)
!3215 = !{!3216, !3217, !3236, !3239, !3240, !3273, !3283}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3214, file: !68, line: 62, baseType: !67, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3214, file: !68, line: 64, baseType: !3218, size: 192, offset: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3214, file: !68, line: 64, size: 192, elements: !3219)
!3219 = !{!3220, !3231}
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !68, line: 65, baseType: !3221, size: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3218, file: !68, line: 65, size: 192, elements: !3222)
!3222 = !{!3223, !3230}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3221, file: !68, line: 66, baseType: !3224, size: 128)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3225, line: 50, size: 128, elements: !3226)
!3225 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3226 = !{!3227, !3228, !3229}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3224, file: !3225, line: 52, baseType: !335, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3224, file: !3225, line: 54, baseType: !7, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3224, file: !3225, line: 55, baseType: !7, size: 32, offset: 96)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3221, file: !68, line: 67, baseType: !335, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !68, line: 70, baseType: !3232, size: 192)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3218, file: !68, line: 70, size: 192, elements: !3233)
!3233 = !{!3234, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3232, file: !68, line: 71, baseType: !846, size: 128, align: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3232, file: !68, line: 72, baseType: !335, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3214, file: !68, line: 76, baseType: !3237, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3214, file: !68, line: 77, baseType: !335, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3214, file: !68, line: 79, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3225, line: 25, size: 256, elements: !3243)
!3243 = !{!3244, !3250, !3254}
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !3225, line: 26, baseType: !3245, size: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3242, file: !3225, line: 26, size: 128, elements: !3246)
!3246 = !{!3247, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3245, file: !3225, line: 27, baseType: !3248, size: 128)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 128, elements: !2778)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3245, file: !3225, line: 28, baseType: !3248, size: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3242, file: !3225, line: 31, baseType: !3251, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3225, line: 23, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3242, file: !3225, line: 33, baseType: !3255, size: 64, offset: 192)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3242, file: !3225, line: 33, size: 64, elements: !3256)
!3256 = !{!3257, !3263, !3268}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3255, file: !3225, line: 38, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3225, line: 34, size: 64, elements: !3259)
!3259 = !{!3260, !3261, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3258, file: !3225, line: 35, baseType: !622, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3258, file: !3225, line: 36, baseType: !243, size: 8, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3258, file: !3225, line: 37, baseType: !243, size: 8, offset: 40)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3255, file: !3225, line: 42, baseType: !3264, size: 16)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3225, line: 39, size: 16, elements: !3265)
!3265 = !{!3266, !3267}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3264, file: !3225, line: 40, baseType: !243, size: 8)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3264, file: !3225, line: 41, baseType: !243, size: 8, offset: 8)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3255, file: !3225, line: 46, baseType: !3269, size: 16)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3255, file: !3225, line: 43, size: 16, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3269, file: !3225, line: 44, baseType: !243, size: 8)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3269, file: !3225, line: 45, baseType: !243, size: 8, offset: 8)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3214, file: !68, line: 81, baseType: !3274, size: 64, offset: 448)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3275, file: !68, line: 86, baseType: !3237, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3275, file: !68, line: 87, baseType: !335, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3275, file: !68, line: 88, baseType: !335, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3275, file: !68, line: 89, baseType: !335, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3275, file: !68, line: 90, baseType: !706, size: 8, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3275, file: !68, line: 92, baseType: !3274, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3214, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1395, file: !1070, line: 1463, baseType: !3285, offset: 21184)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1070, line: 739, elements: !915)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1395, file: !1070, line: 1470, baseType: !846, size: 128, align: 64, offset: 21184)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1395, file: !1070, line: 1471, baseType: !1408, size: 32, offset: 21312)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1395, file: !1070, line: 1472, baseType: !109, size: 32, offset: 21344)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1395, file: !1070, line: 1474, baseType: !1394, size: 64, offset: 21376)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1395, file: !1070, line: 1475, baseType: !868, size: 320, offset: 21440)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1395, file: !1070, line: 1478, baseType: !3292, size: 64, offset: 21760)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3294, line: 49, size: 512, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3302, !3303, !3304, !3306}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3293, file: !3294, line: 50, baseType: !3292, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3293, file: !3294, line: 51, baseType: !184, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3293, file: !3294, line: 52, baseType: !335, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3293, file: !3294, line: 53, baseType: !335, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3293, file: !3294, line: 54, baseType: !3301, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3293, file: !3294, line: 56, baseType: !7, size: 32, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3293, file: !3294, line: 58, baseType: !7, size: 32, offset: 352)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3293, file: !3294, line: 59, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !202, line: 159, baseType: !438)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3293, file: !3294, line: 60, baseType: !2595, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1395, file: !1070, line: 1482, baseType: !1408, size: 32, offset: 21824)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1395, file: !1070, line: 1489, baseType: !184, size: 64, offset: 21888)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1395, file: !1070, line: 1504, baseType: !184, size: 64, offset: 21952)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1395, file: !1070, line: 1505, baseType: !439, size: 64, offset: 22016)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1395, file: !1070, line: 1506, baseType: !438, size: 64, offset: 22080)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1395, file: !1070, line: 1507, baseType: !439, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1395, file: !1070, line: 1508, baseType: !439, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1395, file: !1070, line: 1509, baseType: !439, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1395, file: !1070, line: 1510, baseType: !846, size: 128, align: 64, offset: 22208)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1395, file: !1070, line: 1511, baseType: !109, size: 32, offset: 22336)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1395, file: !1070, line: 1515, baseType: !3318, size: 64, offset: 22400)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1422, line: 56, size: 64, elements: !3319)
!3319 = !{!3320}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3318, file: !1422, line: 57, baseType: !1425, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1395, file: !1070, line: 1518, baseType: !3318, size: 64, offset: 22464)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1395, file: !1070, line: 1528, baseType: !846, size: 128, align: 64, offset: 22528)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1395, file: !1070, line: 1552, baseType: !3324, size: 35328, offset: 23040)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3325, line: 430, size: 35328, elements: !3326)
!3325 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3326 = !{!3327, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3356, !3357, !3358, !3359, !3360, !3361, !3364, !3365, !3366, !3367}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3324, file: !3325, line: 432, baseType: !3328, size: 192)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3329, size: 192, elements: !286)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3330, line: 16, size: 64, elements: !3331)
!3330 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3329, file: !3330, line: 17, baseType: !253, size: 16)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3329, file: !3330, line: 18, baseType: !253, size: 16, offset: 16)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3329, file: !3330, line: 19, baseType: !253, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3329, file: !3330, line: 19, baseType: !253, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3329, file: !3330, line: 19, baseType: !253, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3329, file: !3330, line: 19, baseType: !253, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3329, file: !3330, line: 19, baseType: !253, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3329, file: !3330, line: 20, baseType: !253, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3329, file: !3330, line: 20, baseType: !253, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3329, file: !3330, line: 20, baseType: !253, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3329, file: !3330, line: 20, baseType: !253, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3329, file: !3330, line: 20, baseType: !253, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3329, file: !3330, line: 20, baseType: !253, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3324, file: !3325, line: 436, baseType: !335, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3324, file: !3325, line: 440, baseType: !255, size: 16, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3324, file: !3325, line: 441, baseType: !255, size: 16, offset: 272)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3324, file: !3325, line: 442, baseType: !255, size: 16, offset: 288)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3324, file: !3325, line: 443, baseType: !255, size: 16, offset: 304)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3324, file: !3325, line: 447, baseType: !335, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3324, file: !3325, line: 448, baseType: !335, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3324, file: !3325, line: 459, baseType: !3353, size: 256, offset: 448)
!3353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3354, size: 256, elements: !856)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3325, line: 428, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3324, file: !3325, line: 461, baseType: !335, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3324, file: !3325, line: 463, baseType: !335, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3324, file: !3325, line: 465, baseType: !335, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3324, file: !3325, line: 466, baseType: !335, size: 64, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3324, file: !3325, line: 467, baseType: !335, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3324, file: !3325, line: 473, baseType: !3362, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3325, line: 10, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3324, file: !3325, line: 480, baseType: !335, size: 64, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3324, file: !3325, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3324, file: !3325, line: 491, baseType: !434, size: 32, offset: 1184)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3324, file: !3325, line: 501, baseType: !3368, size: 33792, offset: 1536)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3369, line: 448, size: 33792, elements: !3370)
!3369 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3370 = !{!3371, !3372, !3373, !3535, !3536, !3542, !3543}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3368, file: !3369, line: 461, baseType: !7, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3368, file: !3369, line: 468, baseType: !335, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3368, file: !3369, line: 476, baseType: !3374, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3369, line: 356, size: 33280, align: 512, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3375, file: !3369, line: 358, baseType: !7, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3375, file: !3369, line: 361, baseType: !7, size: 32, offset: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3375, file: !3369, line: 364, baseType: !438, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3375, file: !3369, line: 367, baseType: !438, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3375, file: !3369, line: 370, baseType: !438, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3375, file: !3369, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3375, file: !3369, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3375, file: !3369, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3375, file: !3369, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3375, file: !3369, line: 397, baseType: !3387, size: 32768, offset: 512)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3369, line: 348, size: 32768, elements: !3388)
!3388 = !{!3389, !3404, !3441, !3518, !3531}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3387, file: !3369, line: 349, baseType: !3390, size: 896)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3369, line: 12, size: 896, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3403}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3390, file: !3369, line: 13, baseType: !434, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3390, file: !3369, line: 14, baseType: !434, size: 32, offset: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3390, file: !3369, line: 15, baseType: !434, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3390, file: !3369, line: 16, baseType: !434, size: 32, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3390, file: !3369, line: 17, baseType: !434, size: 32, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3390, file: !3369, line: 18, baseType: !434, size: 32, offset: 160)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3390, file: !3369, line: 19, baseType: !434, size: 32, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3390, file: !3369, line: 22, baseType: !3400, size: 640, offset: 224)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 640, elements: !3401)
!3401 = !{!3402}
!3402 = !DISubrange(count: 20)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3390, file: !3369, line: 25, baseType: !434, size: 32, offset: 864)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3387, file: !3369, line: 350, baseType: !3405, size: 4096, align: 128)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3369, line: 34, size: 4096, align: 128, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3426, !3427, !3428, !3430, !3432, !3436}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3405, file: !3369, line: 35, baseType: !253, size: 16)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3405, file: !3369, line: 36, baseType: !253, size: 16, offset: 16)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3405, file: !3369, line: 37, baseType: !253, size: 16, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3405, file: !3369, line: 38, baseType: !253, size: 16, offset: 48)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3369, line: 39, baseType: !3412, size: 128, offset: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3369, line: 39, size: 128, elements: !3413)
!3413 = !{!3414, !3419}
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !3369, line: 40, baseType: !3415, size: 128)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3369, line: 40, size: 128, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3415, file: !3369, line: 41, baseType: !438, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3415, file: !3369, line: 42, baseType: !438, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !3369, line: 44, baseType: !3420, size: 128)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !3369, line: 44, size: 128, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3369, line: 45, baseType: !434, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3369, line: 46, baseType: !434, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3369, line: 47, baseType: !434, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3369, line: 48, baseType: !434, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3405, file: !3369, line: 51, baseType: !434, size: 32, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3405, file: !3369, line: 52, baseType: !434, size: 32, offset: 224)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3405, file: !3369, line: 55, baseType: !3429, size: 1024, offset: 256)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 1024, elements: !447)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3405, file: !3369, line: 58, baseType: !3431, size: 2048, offset: 1280)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 2048, elements: !290)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3405, file: !3369, line: 60, baseType: !3433, size: 384, offset: 3328)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 384, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 12)
!3436 = !DIDerivedType(tag: DW_TAG_member, scope: !3405, file: !3369, line: 62, baseType: !3437, size: 384, offset: 3712)
!3437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3405, file: !3369, line: 62, size: 384, elements: !3438)
!3438 = !{!3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3437, file: !3369, line: 63, baseType: !3433, size: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3437, file: !3369, line: 64, baseType: !3433, size: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3387, file: !3369, line: 351, baseType: !3442, size: 1088)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3369, line: 79, size: 1088, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3517}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3442, file: !3369, line: 80, baseType: !434, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3442, file: !3369, line: 81, baseType: !434, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3442, file: !3369, line: 82, baseType: !434, size: 32, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3442, file: !3369, line: 83, baseType: !434, size: 32, offset: 96)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3442, file: !3369, line: 84, baseType: !434, size: 32, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3442, file: !3369, line: 85, baseType: !434, size: 32, offset: 160)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3442, file: !3369, line: 86, baseType: !434, size: 32, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3442, file: !3369, line: 88, baseType: !3400, size: 640, offset: 224)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3442, file: !3369, line: 89, baseType: !243, size: 8, offset: 864)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3442, file: !3369, line: 90, baseType: !243, size: 8, offset: 872)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3442, file: !3369, line: 91, baseType: !243, size: 8, offset: 880)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3442, file: !3369, line: 92, baseType: !243, size: 8, offset: 888)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3442, file: !3369, line: 93, baseType: !243, size: 8, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3442, file: !3369, line: 94, baseType: !243, size: 8, offset: 904)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3442, file: !3369, line: 95, baseType: !3459, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3461, line: 11, size: 128, elements: !3462)
!3461 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3460, file: !3461, line: 12, baseType: !321, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3460, file: !3461, line: 13, baseType: !3465, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3467, line: 103, size: 1344, elements: !3468)
!3467 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3497, !3498, !3499}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3466, file: !3467, line: 109, baseType: !335, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3466, file: !3467, line: 110, baseType: !335, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3466, file: !3467, line: 111, baseType: !335, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3466, file: !3467, line: 112, baseType: !335, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3466, file: !3467, line: 113, baseType: !335, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3466, file: !3467, line: 114, baseType: !335, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3466, file: !3467, line: 117, baseType: !335, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3466, file: !3467, line: 118, baseType: !335, size: 64, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3466, file: !3467, line: 119, baseType: !335, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3466, file: !3467, line: 120, baseType: !335, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3466, file: !3467, line: 121, baseType: !335, size: 64, offset: 640)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3466, file: !3467, line: 122, baseType: !335, size: 64, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3466, file: !3467, line: 123, baseType: !335, size: 64, offset: 768)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3466, file: !3467, line: 124, baseType: !335, size: 64, offset: 832)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3466, file: !3467, line: 125, baseType: !335, size: 64, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3466, file: !3467, line: 139, baseType: !335, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3466, file: !3467, line: 142, baseType: !335, size: 64, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !3467, line: 144, baseType: !3487, size: 64, offset: 1088)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !3467, line: 144, size: 64, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3487, file: !3467, line: 146, baseType: !253, size: 16)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3487, file: !3467, line: 148, baseType: !438, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3487, file: !3467, line: 150, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3467, line: 59, size: 64, elements: !3493)
!3493 = !{!3494, !3495, !3496}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3492, file: !3467, line: 61, baseType: !438, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3492, file: !3467, line: 63, baseType: !438, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3492, file: !3467, line: 65, baseType: !438, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3466, file: !3467, line: 153, baseType: !335, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3466, file: !3467, line: 154, baseType: !335, size: 64, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !3467, line: 156, baseType: !3500, size: 64, offset: 1280)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !3467, line: 156, size: 64, elements: !3501)
!3501 = !{!3502, !3503, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3500, file: !3467, line: 158, baseType: !253, size: 16)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3500, file: !3467, line: 160, baseType: !438, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3500, file: !3467, line: 162, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3467, line: 69, size: 64, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3505, file: !3467, line: 71, baseType: !438, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3505, file: !3467, line: 73, baseType: !438, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3505, file: !3467, line: 75, baseType: !438, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3505, file: !3467, line: 77, baseType: !438, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3505, file: !3467, line: 80, baseType: !438, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3505, file: !3467, line: 83, baseType: !438, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3505, file: !3467, line: 86, baseType: !438, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3505, file: !3467, line: 88, baseType: !438, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3505, file: !3467, line: 93, baseType: !438, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3505, file: !3467, line: 100, baseType: !438, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3442, file: !3369, line: 96, baseType: !434, size: 32, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3387, file: !3369, line: 352, baseType: !3519, size: 4608, align: 512)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3369, line: 333, size: 4608, align: 512, elements: !3520)
!3520 = !{!3521, !3522, !3529}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3519, file: !3369, line: 334, baseType: !3405, size: 4096, align: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3519, file: !3369, line: 335, baseType: !3523, size: 512, offset: 4096)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3369, line: 312, size: 512, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3523, file: !3369, line: 313, baseType: !438, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3523, file: !3369, line: 314, baseType: !438, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3523, file: !3369, line: 315, baseType: !3528, size: 384, offset: 128)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 384, elements: !1861)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3519, file: !3369, line: 336, baseType: !3530, offset: 4608)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !1778)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3387, file: !3369, line: 353, baseType: !3532, size: 32768)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 32768, elements: !3533)
!3533 = !{!3534}
!3534 = !DISubrange(count: 4096)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3368, file: !3369, line: 484, baseType: !3374, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3368, file: !3369, line: 491, baseType: !3537, size: 128, offset: 256)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3369, line: 404, size: 128, elements: !3538)
!3538 = !{!3539, !3540, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3537, file: !3369, line: 424, baseType: !438, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3537, file: !3369, line: 432, baseType: !7, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3537, file: !3369, line: 440, baseType: !7, size: 32, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3368, file: !3369, line: 498, baseType: !3537, size: 128, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3368, file: !3369, line: 508, baseType: !3375, size: 33280, align: 512, offset: 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1371, file: !1372, line: 16, baseType: !1381, size: 192, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1371, file: !1372, line: 17, baseType: !235, size: 32, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !517, file: !14, line: 1240, baseType: !184, size: 64, offset: 6912)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !517, file: !14, line: 1243, baseType: !434, size: 32, offset: 6976)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !517, file: !14, line: 1245, baseType: !1128, size: 64, offset: 7040)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !517, file: !14, line: 1246, baseType: !1128, size: 64, offset: 7104)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !517, file: !14, line: 1248, baseType: !435, size: 32, offset: 7168)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !517, file: !14, line: 1249, baseType: !3552, size: 64, offset: 7232)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !517, file: !14, line: 1252, baseType: !3555, size: 256, offset: 7296)
!3555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !447)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !517, file: !14, line: 1253, baseType: !3557, size: 128, offset: 7552)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3558, line: 21, baseType: !3559)
!3558 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3558, line: 19, size: 128, elements: !3560)
!3560 = !{!3561}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3559, file: !3558, line: 20, baseType: !3562, size: 128)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !2778)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !517, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !517, file: !14, line: 1261, baseType: !626, size: 256, offset: 7744)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !517, file: !14, line: 1267, baseType: !197, size: 64, offset: 8000)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !517, file: !14, line: 1269, baseType: !463, size: 64, offset: 8064)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !517, file: !14, line: 1271, baseType: !3568, size: 448, offset: 8128)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1137, line: 63, size: 448, elements: !3569)
!3569 = !{!3570, !3575, !3576, !3577, !3578, !3579, !3580}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3568, file: !1137, line: 64, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!335, !3574, !1135}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3568, file: !1137, line: 66, baseType: !3571, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3568, file: !1137, line: 69, baseType: !321, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3568, file: !1137, line: 70, baseType: !109, size: 32, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3568, file: !1137, line: 71, baseType: !7, size: 32, offset: 224)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3568, file: !1137, line: 74, baseType: !201, size: 128, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3568, file: !1137, line: 85, baseType: !3581, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !517, file: !14, line: 1274, baseType: !630, size: 64, offset: 8576)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !517, file: !14, line: 1280, baseType: !630, size: 64, offset: 8640)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !517, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !517, file: !14, line: 1286, baseType: !2506, size: 32, offset: 8736)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !517, file: !14, line: 1289, baseType: !948, size: 64, offset: 8768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !517, file: !14, line: 1290, baseType: !996, size: 64, offset: 8832)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !517, file: !14, line: 1297, baseType: !1955, size: 64, offset: 8896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !517, file: !14, line: 1304, baseType: !3590, size: 64, offset: 8960)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3591, line: 49, size: 64, elements: !3592)
!3591 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3592 = !{!3593}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3590, file: !3591, line: 50, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3591, line: 41, size: 512, align: 512, elements: !3596)
!3596 = !{!3597, !3598, !3603}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3595, file: !3591, line: 43, baseType: !215, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3595, file: !3591, line: 45, baseType: !3599, size: 192, offset: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3591, line: 29, size: 192, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3599, file: !3591, line: 30, baseType: !201, size: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3599, file: !3591, line: 32, baseType: !321, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3595, file: !3591, line: 46, baseType: !321, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !517, file: !14, line: 1305, baseType: !3590, size: 64, offset: 9024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !517, file: !14, line: 1306, baseType: !846, size: 128, align: 64, offset: 9088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !517, file: !14, line: 1307, baseType: !886, size: 256, offset: 9216)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !517, file: !14, line: 1309, baseType: !626, size: 256, offset: 9472)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !517, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !517, file: !14, line: 1317, baseType: !215, size: 32, align: 512, offset: 10240)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !517, file: !14, line: 1318, baseType: !201, size: 128, offset: 10304)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !517, file: !14, line: 1320, baseType: !215, size: 32, offset: 10432)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !517, file: !14, line: 1321, baseType: !201, size: 128, offset: 10496)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !511, file: !512, line: 73, baseType: !109, size: 32, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !511, file: !512, line: 74, baseType: !3615, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1802, line: 42, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !465, file: !402, line: 141, baseType: !3619, size: 64, offset: 704)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!109, !1198, !706}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !465, file: !402, line: 142, baseType: !3623, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!400, !400, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !401, file: !402, line: 96, baseType: !516, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !401, file: !402, line: 97, baseType: !335, size: 64, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !401, file: !402, line: 98, baseType: !184, size: 64, offset: 960)
!3631 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !402, line: 100, baseType: !3632, size: 128, offset: 1024)
!3632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !402, line: 100, size: 128, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3632, file: !402, line: 101, baseType: !201, size: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3632, file: !402, line: 102, baseType: !2123, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !401, file: !402, line: 104, baseType: !201, size: 128, offset: 1152)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !401, file: !402, line: 105, baseType: !201, size: 128, offset: 1280)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !401, file: !402, line: 113, baseType: !3639, size: 128, offset: 1408)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !402, line: 109, size: 128, elements: !3640)
!3640 = !{!3641, !3642, !3643}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3639, file: !402, line: 110, baseType: !872, size: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3639, file: !402, line: 111, baseType: !416, size: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3639, file: !402, line: 112, baseType: !846, size: 128, align: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !394, file: !14, line: 1968, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!197, !400, !365, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3650, line: 10, size: 128, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3649, file: !3650, line: 11, baseType: !669, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3649, file: !3650, line: 12, baseType: !184, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !394, file: !14, line: 1969, baseType: !3655, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!109, !3615, !365, !109}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !394, file: !14, line: 1970, baseType: !3659, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!388, !365, !109, !706}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !394, file: !14, line: 1972, baseType: !3663, size: 64, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!109, !400, !285, !109}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !394, file: !14, line: 1974, baseType: !3667, size: 64, offset: 320)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!109, !3615, !365, !400, !327, !706}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !394, file: !14, line: 1976, baseType: !3671, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!109, !400, !365, !400}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !394, file: !14, line: 1977, baseType: !3675, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!109, !365, !400}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !394, file: !14, line: 1978, baseType: !3679, size: 64, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!109, !3615, !365, !400, !197}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !394, file: !14, line: 1980, baseType: !3683, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!109, !3615, !365, !400, !327}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !394, file: !14, line: 1982, baseType: !3675, size: 64, offset: 640)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !394, file: !14, line: 1983, baseType: !3688, size: 64, offset: 704)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!109, !3615, !365, !400, !327, !521}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !394, file: !14, line: 1985, baseType: !3692, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !3615, !365, !400, !365, !400, !7}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !394, file: !14, line: 1987, baseType: !3696, size: 64, offset: 832)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!109, !3615, !400, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3714, !3723, !3724, !3729, !3730, !3731}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3700, file: !14, line: 227, baseType: !7, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3700, file: !14, line: 228, baseType: !327, size: 16, offset: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3700, file: !14, line: 241, baseType: !3705, size: 32, offset: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3700, file: !14, line: 241, size: 32, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3705, file: !14, line: 242, baseType: !371, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3705, file: !14, line: 243, baseType: !3709, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3710, line: 16, baseType: !3711)
!3710 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3710, line: 14, size: 32, elements: !3712)
!3712 = !{!3713}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3711, file: !3710, line: 15, baseType: !376, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, scope: !3700, file: !14, line: 245, baseType: !3715, size: 32, offset: 96)
!3715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3700, file: !14, line: 245, size: 32, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3715, file: !14, line: 246, baseType: !380, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3715, file: !14, line: 247, baseType: !3719, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3710, line: 20, baseType: !3720)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3710, line: 18, size: 32, elements: !3721)
!3721 = !{!3722}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3720, file: !3710, line: 19, baseType: !384, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3700, file: !14, line: 249, baseType: !526, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3700, file: !14, line: 250, baseType: !3725, size: 128, offset: 192)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1129, line: 13, size: 128, elements: !3726)
!3726 = !{!3727, !3728}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3725, file: !1129, line: 14, baseType: !1128, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3725, file: !1129, line: 15, baseType: !321, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3700, file: !14, line: 251, baseType: !3725, size: 128, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3700, file: !14, line: 252, baseType: !3725, size: 128, offset: 448)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3700, file: !14, line: 259, baseType: !1718, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !394, file: !14, line: 1988, baseType: !3733, size: 64, offset: 896)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!109, !3615, !1198, !3736, !434, !7}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3738, line: 22, size: 1280, elements: !3739)
!3738 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3737, file: !3738, line: 23, baseType: !434, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3737, file: !3738, line: 24, baseType: !327, size: 16, offset: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3737, file: !3738, line: 25, baseType: !7, size: 32, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3737, file: !3738, line: 26, baseType: !1840, size: 32, offset: 96)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3737, file: !3738, line: 27, baseType: !438, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3737, file: !3738, line: 28, baseType: !438, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3737, file: !3738, line: 41, baseType: !438, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3737, file: !3738, line: 42, baseType: !521, size: 32, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3737, file: !3738, line: 43, baseType: !521, size: 32, offset: 352)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3737, file: !3738, line: 44, baseType: !371, size: 32, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3737, file: !3738, line: 45, baseType: !380, size: 32, offset: 416)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3737, file: !3738, line: 46, baseType: !526, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3737, file: !3738, line: 47, baseType: !3725, size: 128, offset: 512)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3737, file: !3738, line: 48, baseType: !3725, size: 128, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3737, file: !3738, line: 49, baseType: !3725, size: 128, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3737, file: !3738, line: 50, baseType: !3725, size: 128, offset: 896)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3737, file: !3738, line: 51, baseType: !438, size: 64, offset: 1024)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3737, file: !3738, line: 52, baseType: !438, size: 64, offset: 1088)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3737, file: !3738, line: 53, baseType: !434, size: 32, offset: 1152)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3737, file: !3738, line: 54, baseType: !434, size: 32, offset: 1184)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3737, file: !3738, line: 55, baseType: !438, size: 64, offset: 1216)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !394, file: !14, line: 1990, baseType: !3762, size: 64, offset: 960)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!317, !400, !285, !332}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !394, file: !14, line: 1991, baseType: !3766, size: 64, offset: 1024)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!109, !365, !3769, !438, !438}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !394, file: !14, line: 1993, baseType: !3772, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!109, !365, !109}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !394, file: !14, line: 1994, baseType: !3776, size: 64, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!109, !365, !400, !1718, !7, !327}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !394, file: !14, line: 1997, baseType: !3780, size: 64, offset: 1216)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!109, !3615, !365, !1718, !327}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !394, file: !14, line: 1999, baseType: !3784, size: 64, offset: 1280)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!388, !3615, !400, !109}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !394, file: !14, line: 2001, baseType: !3788, size: 64, offset: 1344)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!109, !3615, !400, !388, !109}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !394, file: !14, line: 2003, baseType: !3792, size: 64, offset: 1408)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!109, !3615, !400, !3795}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !394, file: !14, line: 2005, baseType: !3798, size: 64, offset: 1472)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!109, !400, !3795}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !394, file: !14, line: 2006, baseType: !3802, size: 64, offset: 1536)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!3805, !365}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3806, file: !14, line: 3193, baseType: !2075, size: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3806, file: !14, line: 3194, baseType: !434, size: 32, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !366, file: !14, line: 655, baseType: !516, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !366, file: !14, line: 656, baseType: !361, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !366, file: !14, line: 659, baseType: !184, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !366, file: !14, line: 663, baseType: !335, size: 64, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !14, line: 671, baseType: !3815, size: 32, offset: 704)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !14, line: 671, size: 32, elements: !3816)
!3816 = !{!3817, !3819}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3815, file: !14, line: 672, baseType: !3818, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3815, file: !14, line: 673, baseType: !7, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !366, file: !14, line: 675, baseType: !521, size: 32, offset: 736)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !366, file: !14, line: 676, baseType: !526, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !366, file: !14, line: 677, baseType: !3725, size: 128, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !366, file: !14, line: 678, baseType: !3725, size: 128, offset: 960)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !366, file: !14, line: 679, baseType: !3725, size: 128, offset: 1088)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !366, file: !14, line: 680, baseType: !215, size: 32, offset: 1216)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !366, file: !14, line: 681, baseType: !255, size: 16, offset: 1248)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !366, file: !14, line: 682, baseType: !243, size: 8, offset: 1264)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !366, file: !14, line: 683, baseType: !243, size: 8, offset: 1272)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !366, file: !14, line: 684, baseType: !1276, size: 64, offset: 1280)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !366, file: !14, line: 691, baseType: !335, size: 64, offset: 1344)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !366, file: !14, line: 692, baseType: !1288, size: 320, offset: 1408)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !366, file: !14, line: 694, baseType: !335, size: 64, offset: 1728)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !366, file: !14, line: 695, baseType: !335, size: 64, offset: 1792)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !366, file: !14, line: 697, baseType: !872, size: 128, offset: 1856)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !366, file: !14, line: 698, baseType: !201, size: 128, offset: 1984)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !366, file: !14, line: 707, baseType: !201, size: 128, offset: 2112)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !366, file: !14, line: 708, baseType: !201, size: 128, offset: 2240)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !14, line: 709, baseType: !3839, size: 128, offset: 2368)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !14, line: 709, size: 128, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3839, file: !14, line: 710, baseType: !996, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3839, file: !14, line: 711, baseType: !846, size: 128, align: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !366, file: !14, line: 713, baseType: !632, size: 64, offset: 2496)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !366, file: !14, line: 714, baseType: !632, size: 64, offset: 2560)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !366, file: !14, line: 715, baseType: !235, size: 32, offset: 2624)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !366, file: !14, line: 716, baseType: !235, size: 32, offset: 2656)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !366, file: !14, line: 717, baseType: !235, size: 32, offset: 2688)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !366, file: !14, line: 719, baseType: !235, size: 32, offset: 2720)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !14, line: 721, baseType: !3850, size: 64, offset: 2752)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !14, line: 721, size: 64, elements: !3851)
!3851 = !{!3852, !3853}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3850, file: !14, line: 722, baseType: !1986, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3850, file: !14, line: 723, baseType: !1019, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !366, file: !14, line: 725, baseType: !3855, size: 64, offset: 2816)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !366, file: !14, line: 726, baseType: !362, size: 1536, align: 64, offset: 2880)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !366, file: !14, line: 727, baseType: !201, size: 128, offset: 4416)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !14, line: 728, baseType: !3860, size: 64, offset: 4544)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !14, line: 728, size: 64, elements: !3861)
!3861 = !{!3862, !3863, !3866, !3867}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3860, file: !14, line: 729, baseType: !2456, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3860, file: !14, line: 730, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3860, file: !14, line: 731, baseType: !285, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3860, file: !14, line: 732, baseType: !7, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !366, file: !14, line: 735, baseType: !435, size: 32, offset: 4608)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !366, file: !14, line: 738, baseType: !435, size: 32, offset: 4640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !366, file: !14, line: 739, baseType: !3552, size: 64, offset: 4672)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !366, file: !14, line: 750, baseType: !184, size: 64, offset: 4736)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !362, file: !14, line: 474, baseType: !2075, size: 128, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !362, file: !14, line: 475, baseType: !1288, size: 320, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !362, file: !14, line: 476, baseType: !1140, size: 32, offset: 512)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !362, file: !14, line: 477, baseType: !235, size: 32, offset: 544)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !362, file: !14, line: 482, baseType: !1574, size: 128, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !362, file: !14, line: 483, baseType: !335, size: 64, offset: 704)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !362, file: !14, line: 484, baseType: !335, size: 64, offset: 768)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !362, file: !14, line: 485, baseType: !3880, size: 64, offset: 832)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3883)
!3883 = !{!3884, !3888, !3958, !3962, !3966, !3972, !3976, !3980, !3985, !3989, !3993, !3997, !3998, !4002, !4006, !4010, !4015, !4019, !4026, !4027}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3882, file: !14, line: 405, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!109, !2243, !1031}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3882, file: !14, line: 406, baseType: !3889, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!109, !1718, !3892}
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3894)
!3894 = !{!3895, !3925, !3939}
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !38, line: 295, baseType: !3896, size: 512)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3893, file: !38, line: 295, size: 512, elements: !3897)
!3897 = !{!3898, !3924}
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !38, line: 296, baseType: !3899, size: 448)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !38, line: 296, size: 448, elements: !3900)
!3900 = !{!3901, !3902, !3911, !3912, !3913, !3922, !3923}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3899, file: !38, line: 298, baseType: !335, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !38, line: 299, baseType: !3903, size: 128, offset: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3899, file: !38, line: 299, size: 128, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3903, file: !38, line: 300, baseType: !201, size: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !38, line: 302, baseType: !3907, size: 128)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !38, line: 302, size: 128, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3907, file: !38, line: 303, baseType: !184, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3907, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3899, file: !38, line: 310, baseType: !361, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3899, file: !38, line: 311, baseType: !335, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !38, line: 312, baseType: !3914, size: 64, offset: 320)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3899, file: !38, line: 312, size: 64, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3914, file: !38, line: 313, baseType: !184, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3914, file: !38, line: 314, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3920)
!3920 = !{!3921}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3919, file: !38, line: 256, baseType: !335, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3899, file: !38, line: 316, baseType: !235, size: 32, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3899, file: !38, line: 317, baseType: !235, size: 32, offset: 416)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3896, file: !38, line: 323, baseType: !2244, size: 512, align: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !38, line: 325, baseType: !3926, size: 512, offset: 512)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3893, file: !38, line: 325, size: 512, elements: !3927)
!3927 = !{!3928, !3938}
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !38, line: 326, baseType: !3929, size: 320)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3926, file: !38, line: 326, size: 320, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936, !3937}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3929, file: !38, line: 327, baseType: !335, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3929, file: !38, line: 328, baseType: !335, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3929, file: !38, line: 329, baseType: !335, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3929, file: !38, line: 331, baseType: !235, size: 32, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3929, file: !38, line: 332, baseType: !235, size: 32, offset: 224)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3929, file: !38, line: 333, baseType: !235, size: 32, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3929, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3926, file: !38, line: 339, baseType: !2244, size: 512, align: 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3893, file: !38, line: 341, baseType: !3940, size: 512, offset: 1024)
!3940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3893, file: !38, line: 341, size: 512, elements: !3941)
!3941 = !{!3942, !3951, !3957}
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3940, file: !38, line: 342, baseType: !3943, size: 384)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !38, line: 342, size: 384, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3943, file: !38, line: 343, baseType: !335, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3943, file: !38, line: 344, baseType: !335, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3943, file: !38, line: 346, baseType: !184, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3943, file: !38, line: 347, baseType: !184, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3943, file: !38, line: 348, baseType: !184, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3943, file: !38, line: 349, baseType: !184, size: 64, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !3940, file: !38, line: 352, baseType: !3952, size: 256)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !38, line: 352, size: 256, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3952, file: !38, line: 353, baseType: !335, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3952, file: !38, line: 354, baseType: !335, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3952, file: !38, line: 356, baseType: !201, size: 128, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3940, file: !38, line: 359, baseType: !2244, size: 512, align: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3882, file: !14, line: 409, baseType: !3959, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!109, !361, !1031}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3882, file: !14, line: 412, baseType: !3963, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!706, !361, !3892}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3882, file: !14, line: 414, baseType: !3967, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !3970}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3882, file: !14, line: 416, baseType: !3973, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!109, !1718, !361, !526, !7, !3301, !2471}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3882, file: !14, line: 419, baseType: !3977, size: 64, offset: 384)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!109, !1718, !361, !526, !7, !7, !2243, !184}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3882, file: !14, line: 424, baseType: !3981, size: 64, offset: 448)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!3984, !361, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !202, line: 131, baseType: !438)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3882, file: !14, line: 425, baseType: !3986, size: 64, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3892, !332, !332}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3882, file: !14, line: 426, baseType: !3990, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!706, !3892, !1140}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3882, file: !14, line: 427, baseType: !3994, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3892}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3882, file: !14, line: 428, baseType: !2005, size: 64, offset: 704)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3882, file: !14, line: 433, baseType: !3999, size: 64, offset: 768)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!109, !361, !3892, !3892, !74}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3882, file: !14, line: 435, baseType: !4003, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!109, !3892}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3882, file: !14, line: 436, baseType: !4007, size: 64, offset: 896)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!706, !3892, !332, !332}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3882, file: !14, line: 438, baseType: !4011, size: 64, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !3892, !4014, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3882, file: !14, line: 439, baseType: !4016, size: 64, offset: 1024)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!109, !361, !2243}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3882, file: !14, line: 442, baseType: !4020, size: 64, offset: 1088)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!109, !4023, !1718, !4025}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3882, file: !14, line: 444, baseType: !2463, size: 64, offset: 1152)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3882, file: !14, line: 445, baseType: !4028, size: 64, offset: 1216)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !2008, !2030}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !14, line: 486, baseType: !335, size: 64, offset: 896)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !362, file: !14, line: 487, baseType: !1288, size: 320, offset: 960)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !362, file: !14, line: 488, baseType: !2506, size: 32, offset: 1280)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !362, file: !14, line: 489, baseType: !215, size: 32, offset: 1312)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !362, file: !14, line: 490, baseType: !201, size: 128, offset: 1344)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !362, file: !14, line: 491, baseType: !184, size: 64, offset: 1472)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !352, file: !311, line: 180, baseType: !4038, size: 64, offset: 320)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!317, !1718, !208, !351, !285, !526, !332}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !352, file: !311, line: 182, baseType: !4038, size: 64, offset: 384)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !352, file: !311, line: 184, baseType: !4043, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!109, !1718, !208, !351, !2134}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !340, file: !311, line: 90, baseType: !4047, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !340, file: !311, line: 91, baseType: !4049, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !301, file: !194, line: 120, baseType: !4051, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!4054, !268}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4056)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4057)
!4057 = !{!4058, !4059, !4063, !4067, !4073, !4077}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4056, file: !82, line: 40, baseType: !81, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4056, file: !82, line: 41, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!706}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4056, file: !82, line: 42, baseType: !4064, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!184}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4056, file: !82, line: 43, baseType: !4068, size: 64, offset: 192)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!2595, !4071}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4056, file: !82, line: 44, baseType: !4074, size: 64, offset: 256)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!2595}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4056, file: !82, line: 45, baseType: !669, size: 64, offset: 320)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !301, file: !194, line: 121, baseType: !4079, size: 64, offset: 256)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!2595, !268}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !301, file: !194, line: 122, baseType: !4083, size: 64, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !268, !4086, !4087}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !193, file: !194, line: 70, baseType: !4089, size: 64, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !541, line: 190, size: 1152, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4183, !4184, !4185, !4186, !4187, !4190}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4090, file: !541, line: 191, baseType: !235, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4090, file: !541, line: 192, baseType: !235, size: 32, offset: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4090, file: !541, line: 202, baseType: !4089, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4090, file: !541, line: 203, baseType: !197, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4090, file: !541, line: 205, baseType: !738, size: 192, align: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4090, file: !541, line: 207, baseType: !2595, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4090, file: !541, line: 208, baseType: !7, size: 32, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, scope: !4090, file: !541, line: 209, baseType: !4100, size: 256, offset: 512)
!4100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4090, file: !541, line: 209, size: 256, elements: !4101)
!4101 = !{!4102, !4111, !4115}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4100, file: !541, line: 210, baseType: !4103, size: 256)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !541, line: 153, size: 256, elements: !4104)
!4104 = !{!4105, !4106, !4107, !4110}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4103, file: !541, line: 154, baseType: !335, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4103, file: !541, line: 156, baseType: !1577, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4103, file: !541, line: 162, baseType: !4108, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !541, line: 162, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4103, file: !541, line: 167, baseType: !335, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4100, file: !541, line: 211, baseType: !4112, size: 64)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !541, line: 170, size: 64, elements: !4113)
!4113 = !{!4114}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4112, file: !541, line: 171, baseType: !4089, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4100, file: !541, line: 212, baseType: !4116, size: 256)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !541, line: 174, size: 256, elements: !4117)
!4117 = !{!4118, !4178, !4181, !4182}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4116, file: !541, line: 175, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !541, line: 271, size: 768, elements: !4122)
!4122 = !{!4123, !4143, !4147, !4151, !4155, !4159, !4163, !4167, !4168, !4169, !4170, !4174}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4121, file: !541, line: 276, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!109, !4127}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !541, line: 251, size: 1216, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4128, file: !541, line: 253, baseType: !4089, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4128, file: !541, line: 254, baseType: !1718, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4128, file: !541, line: 255, baseType: !1068, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4128, file: !541, line: 256, baseType: !184, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4128, file: !541, line: 259, baseType: !626, size: 256, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4128, file: !541, line: 260, baseType: !626, size: 256, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4128, file: !541, line: 261, baseType: !109, size: 32, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4128, file: !541, line: 262, baseType: !201, size: 128, offset: 832)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4128, file: !541, line: 263, baseType: !285, size: 64, offset: 960)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4128, file: !541, line: 265, baseType: !332, size: 64, offset: 1024)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4128, file: !541, line: 266, baseType: !706, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4128, file: !541, line: 267, baseType: !706, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4128, file: !541, line: 268, baseType: !2179, size: 64, offset: 1152)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4121, file: !541, line: 277, baseType: !4144, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !4127}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4121, file: !541, line: 290, baseType: !4148, size: 64, offset: 128)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!109, !1068, !184}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4121, file: !541, line: 292, baseType: !4152, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!184, !1068, !1999}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4121, file: !541, line: 293, baseType: !4156, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!184, !1068, !184, !1999}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4121, file: !541, line: 294, baseType: !4160, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !1068, !184}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4121, file: !541, line: 296, baseType: !4164, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!317, !4127, !285, !332, !526}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4121, file: !541, line: 306, baseType: !332, size: 64, offset: 448)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4121, file: !541, line: 313, baseType: !706, size: 8, offset: 512)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4121, file: !541, line: 314, baseType: !4164, size: 64, offset: 576)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4121, file: !541, line: 317, baseType: !4171, size: 64, offset: 640)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!2112, !4127, !2114}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4121, file: !541, line: 320, baseType: !4175, size: 64, offset: 704)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!109, !4127, !2134}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4116, file: !541, line: 176, baseType: !4179, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !541, line: 35, flags: DIFlagFwdDecl)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4116, file: !541, line: 177, baseType: !526, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4116, file: !541, line: 178, baseType: !4089, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4090, file: !541, line: 215, baseType: !184, size: 64, offset: 768)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4090, file: !541, line: 221, baseType: !438, size: 64, offset: 832)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4090, file: !541, line: 223, baseType: !255, size: 16, offset: 896)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4090, file: !541, line: 224, baseType: !327, size: 16, offset: 912)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4090, file: !541, line: 225, baseType: !4188, size: 64, offset: 960)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !541, line: 36, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4090, file: !541, line: 227, baseType: !846, size: 128, align: 64, offset: 1024)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !193, file: !194, line: 71, baseType: !4192, size: 32, offset: 448)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4193, line: 19, size: 32, elements: !4194)
!4193 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4194 = !{!4195}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4192, file: !4193, line: 20, baseType: !1408, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !193, file: !194, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !193, file: !194, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !193, file: !194, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !193, file: !194, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !193, file: !194, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !94, line: 707, baseType: !4202, size: 64, offset: 512)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !190, file: !94, line: 709, baseType: !4204, size: 64, offset: 576)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !190, file: !94, line: 711, baseType: !197, size: 64, offset: 640)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !94, line: 712, baseType: !4208, size: 64, offset: 704)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4220, !4225, !4229}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4210, file: !94, line: 90, baseType: !197, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4210, file: !94, line: 91, baseType: !337, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4210, file: !94, line: 92, baseType: !4215, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!109, !4218, !280}
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4210, file: !94, line: 93, baseType: !4221, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!285, !4218, !4224, !4086, !4087}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4210, file: !94, line: 95, baseType: !4226, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !4202}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4210, file: !94, line: 97, baseType: !4230, size: 64, offset: 320)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4233)
!4233 = !{!4234, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4232, file: !101, line: 287, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!109, !4202}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4232, file: !101, line: 288, baseType: !4226, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4232, file: !101, line: 289, baseType: !4235, size: 64, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4232, file: !101, line: 290, baseType: !4235, size: 64, offset: 192)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4232, file: !101, line: 291, baseType: !4235, size: 64, offset: 256)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4232, file: !101, line: 292, baseType: !4235, size: 64, offset: 320)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4232, file: !101, line: 293, baseType: !4235, size: 64, offset: 384)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4232, file: !101, line: 294, baseType: !4235, size: 64, offset: 448)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4232, file: !101, line: 295, baseType: !4235, size: 64, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4232, file: !101, line: 296, baseType: !4235, size: 64, offset: 576)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4232, file: !101, line: 297, baseType: !4235, size: 64, offset: 640)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4232, file: !101, line: 298, baseType: !4235, size: 64, offset: 704)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4232, file: !101, line: 299, baseType: !4235, size: 64, offset: 768)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4232, file: !101, line: 300, baseType: !4235, size: 64, offset: 832)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4232, file: !101, line: 301, baseType: !4235, size: 64, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4232, file: !101, line: 302, baseType: !4235, size: 64, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4232, file: !101, line: 303, baseType: !4235, size: 64, offset: 1024)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4232, file: !101, line: 304, baseType: !4235, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4232, file: !101, line: 305, baseType: !4235, size: 64, offset: 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4232, file: !101, line: 306, baseType: !4235, size: 64, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4232, file: !101, line: 307, baseType: !4235, size: 64, offset: 1280)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4232, file: !101, line: 308, baseType: !4235, size: 64, offset: 1344)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4232, file: !101, line: 309, baseType: !4235, size: 64, offset: 1408)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !190, file: !94, line: 714, baseType: !4261, size: 64, offset: 768)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4264, line: 80, size: 1344, elements: !4265)
!4264 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4265 = !{!4266, !4267, !4268, !4269, !4270, !4271, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4344}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4263, file: !4264, line: 81, baseType: !197, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4263, file: !4264, line: 82, baseType: !197, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4263, file: !4264, line: 83, baseType: !337, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4263, file: !4264, line: 84, baseType: !337, size: 64, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4263, file: !4264, line: 85, baseType: !337, size: 64, offset: 256)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4263, file: !4264, line: 87, baseType: !4272, size: 64, offset: 320)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!109, !4202, !4275}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281, !4282, !4283, !4284, !4297, !4307, !4308, !4309, !4310, !4311, !4319, !4320, !4321, !4322, !4323, !4324}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4276, file: !88, line: 97, baseType: !197, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4276, file: !88, line: 98, baseType: !4261, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4276, file: !88, line: 100, baseType: !555, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4276, file: !88, line: 101, baseType: !197, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4276, file: !88, line: 103, baseType: !706, size: 8, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4276, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4276, file: !88, line: 106, baseType: !4285, size: 64, offset: 320)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4288, line: 282, size: 1600, elements: !4289)
!4288 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4289 = !{!4290, !4291, !4292, !4296}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4287, file: !4288, line: 283, baseType: !3555, size: 256)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4287, file: !4288, line: 284, baseType: !3555, size: 256, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4287, file: !4288, line: 285, baseType: !4293, size: 1024, offset: 512)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 1024, elements: !4294)
!4294 = !{!4295}
!4295 = !DISubrange(count: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4287, file: !4288, line: 286, baseType: !2595, size: 64, offset: 1536)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4276, file: !88, line: 107, baseType: !4298, size: 64, offset: 384)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4288, line: 217, size: 256, elements: !4301)
!4301 = !{!4302, !4303, !4305, !4306}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4300, file: !4288, line: 218, baseType: !3562, size: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4300, file: !4288, line: 219, baseType: !4304, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4288, line: 15, baseType: !335)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4300, file: !4288, line: 220, baseType: !435, size: 32, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4300, file: !4288, line: 221, baseType: !435, size: 32, offset: 224)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4276, file: !88, line: 109, baseType: !4235, size: 64, offset: 448)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4276, file: !88, line: 110, baseType: !4226, size: 64, offset: 512)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4276, file: !88, line: 111, baseType: !4235, size: 64, offset: 576)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4276, file: !88, line: 112, baseType: !4226, size: 64, offset: 640)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4276, file: !88, line: 113, baseType: !4312, size: 64, offset: 704)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!109, !4202, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4316)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4317)
!4317 = !{!4318}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4316, file: !101, line: 59, baseType: !109, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4276, file: !88, line: 114, baseType: !4235, size: 64, offset: 768)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4276, file: !88, line: 115, baseType: !337, size: 64, offset: 832)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4276, file: !88, line: 116, baseType: !337, size: 64, offset: 896)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4276, file: !88, line: 118, baseType: !4230, size: 64, offset: 960)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4276, file: !88, line: 119, baseType: !4226, size: 64, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4276, file: !88, line: 121, baseType: !4325, size: 64, offset: 1088)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4263, file: !4264, line: 88, baseType: !4215, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4263, file: !4264, line: 89, baseType: !4235, size: 64, offset: 448)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4263, file: !4264, line: 90, baseType: !4226, size: 64, offset: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4263, file: !4264, line: 91, baseType: !4226, size: 64, offset: 576)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4263, file: !4264, line: 92, baseType: !4226, size: 64, offset: 640)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4263, file: !4264, line: 94, baseType: !4235, size: 64, offset: 704)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4263, file: !4264, line: 95, baseType: !4235, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4263, file: !4264, line: 97, baseType: !4312, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4263, file: !4264, line: 98, baseType: !4235, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4263, file: !4264, line: 100, baseType: !4235, size: 64, offset: 960)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4263, file: !4264, line: 102, baseType: !4235, size: 64, offset: 1024)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4263, file: !4264, line: 103, baseType: !4226, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4263, file: !4264, line: 105, baseType: !4230, size: 64, offset: 1152)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4263, file: !4264, line: 107, baseType: !4341, size: 64, offset: 1216)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4343)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4264, line: 107, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4263, file: !4264, line: 109, baseType: !706, size: 8, offset: 1280)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !190, file: !94, line: 715, baseType: !4275, size: 64, offset: 832)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !190, file: !94, line: 717, baseType: !184, size: 64, offset: 896)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !190, file: !94, line: 719, baseType: !184, size: 64, offset: 960)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !190, file: !94, line: 721, baseType: !626, size: 256, offset: 1024)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !190, file: !94, line: 725, baseType: !4350, size: 448, offset: 1280)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4350, file: !94, line: 518, baseType: !201, size: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4350, file: !94, line: 519, baseType: !201, size: 128, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4350, file: !94, line: 520, baseType: !201, size: 128, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4350, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !190, file: !94, line: 726, baseType: !4357, size: 2496, offset: 1728)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4358)
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4441, !4445}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4357, file: !101, line: 664, baseType: !4315, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4357, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4357, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4357, file: !101, line: 667, baseType: !706, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4357, file: !101, line: 668, baseType: !706, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4357, file: !101, line: 669, baseType: !706, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4357, file: !101, line: 670, baseType: !706, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4357, file: !101, line: 671, baseType: !706, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4357, file: !101, line: 672, baseType: !706, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4357, file: !101, line: 673, baseType: !706, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4357, file: !101, line: 674, baseType: !706, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4357, file: !101, line: 675, baseType: !434, size: 32, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4357, file: !101, line: 676, baseType: !215, size: 32, offset: 96)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4357, file: !101, line: 678, baseType: !201, size: 128, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4357, file: !101, line: 679, baseType: !575, size: 256, offset: 256)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4357, file: !101, line: 680, baseType: !4375, size: 64, offset: 512)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4377, line: 43, size: 1536, elements: !4378)
!4377 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4376, file: !4377, line: 44, baseType: !197, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4376, file: !4377, line: 45, baseType: !109, size: 32, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4376, file: !4377, line: 46, baseType: !201, size: 128, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4376, file: !4377, line: 47, baseType: !215, size: 32, offset: 256)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4376, file: !4377, line: 48, baseType: !4384, size: 64, offset: 320)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4376, file: !4377, line: 49, baseType: !868, size: 320, offset: 384)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4376, file: !4377, line: 50, baseType: !335, size: 64, offset: 704)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4376, file: !4377, line: 51, baseType: !1523, size: 64, offset: 768)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4376, file: !4377, line: 52, baseType: !1523, size: 64, offset: 832)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4376, file: !4377, line: 53, baseType: !1523, size: 64, offset: 896)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4376, file: !4377, line: 54, baseType: !1523, size: 64, offset: 960)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4376, file: !4377, line: 55, baseType: !1523, size: 64, offset: 1024)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4376, file: !4377, line: 56, baseType: !335, size: 64, offset: 1088)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4376, file: !4377, line: 57, baseType: !335, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4376, file: !4377, line: 58, baseType: !335, size: 64, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4376, file: !4377, line: 59, baseType: !335, size: 64, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4376, file: !4377, line: 60, baseType: !335, size: 64, offset: 1344)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4376, file: !4377, line: 61, baseType: !4202, size: 64, offset: 1408)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4376, file: !4377, line: 62, baseType: !706, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4376, file: !4377, line: 63, baseType: !706, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4357, file: !101, line: 681, baseType: !706, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4357, file: !101, line: 682, baseType: !706, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4357, file: !101, line: 683, baseType: !706, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4357, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4357, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4357, file: !101, line: 690, baseType: !1515, size: 512, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4357, file: !101, line: 691, baseType: !438, size: 64, offset: 1152)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4357, file: !101, line: 692, baseType: !886, size: 256, offset: 1216)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4357, file: !101, line: 693, baseType: !1381, size: 192, offset: 1472)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4357, file: !101, line: 694, baseType: !4384, size: 64, offset: 1664)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4357, file: !101, line: 695, baseType: !235, size: 32, offset: 1728)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4357, file: !101, line: 696, baseType: !235, size: 32, offset: 1760)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4357, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4357, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4357, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4357, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4357, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4357, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4357, file: !101, line: 703, baseType: !706, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4357, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4357, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4357, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4357, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4357, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4357, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4357, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4357, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4357, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4357, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4357, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4357, file: !101, line: 715, baseType: !438, size: 64, offset: 2048)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4357, file: !101, line: 716, baseType: !438, size: 64, offset: 2112)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4357, file: !101, line: 717, baseType: !438, size: 64, offset: 2176)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4357, file: !101, line: 718, baseType: !438, size: 64, offset: 2240)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4357, file: !101, line: 720, baseType: !4436, size: 64, offset: 2304)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4438)
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4437, file: !101, line: 633, baseType: !215, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4437, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4357, file: !101, line: 721, baseType: !4442, size: 64, offset: 2368)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4202, !622}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4357, file: !101, line: 722, baseType: !4446, size: 64, offset: 2432)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 117, size: 2432, elements: !4448)
!4448 = !{!4449, !4477, !4478, !4485, !4490, !4512, !4513}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4447, file: !117, line: 118, baseType: !4450, size: 320)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !117, line: 52, size: 320, elements: !4451)
!4451 = !{!4452, !4456, !4457, !4458, !4459, !4460}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4450, file: !117, line: 53, baseType: !4453, size: 128)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1684, line: 82, size: 128, elements: !4454)
!4454 = !{!4455}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4453, file: !1684, line: 83, baseType: !201, size: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4450, file: !117, line: 54, baseType: !622, size: 32, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4450, file: !117, line: 55, baseType: !622, size: 32, offset: 160)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4450, file: !117, line: 56, baseType: !622, size: 32, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4450, file: !117, line: 57, baseType: !116, size: 32, offset: 224)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4450, file: !117, line: 58, baseType: !4461, size: 64, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4463, line: 65, size: 384, elements: !4464)
!4463 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4462, file: !4463, line: 66, baseType: !1288, size: 320)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4462, file: !4463, line: 67, baseType: !4467, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4463, line: 54, size: 192, elements: !4469)
!4469 = !{!4470, !4475, !4476}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4468, file: !4463, line: 55, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4463, line: 51, baseType: !4472)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!109, !4467, !335, !184}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4468, file: !4463, line: 56, baseType: !4467, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4468, file: !4463, line: 57, baseType: !109, size: 32, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4447, file: !117, line: 119, baseType: !4450, size: 320, offset: 320)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4447, file: !117, line: 120, baseType: !4479, size: 1408, offset: 640)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !117, line: 85, size: 1408, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4479, file: !117, line: 86, baseType: !4450, size: 320)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4479, file: !117, line: 87, baseType: !4462, size: 384, offset: 320)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4479, file: !117, line: 88, baseType: !4450, size: 320, offset: 704)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4479, file: !117, line: 89, baseType: !4462, size: 384, offset: 1024)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4447, file: !117, line: 121, baseType: !4486, size: 192, offset: 2048)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !117, line: 71, size: 192, elements: !4487)
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4486, file: !117, line: 72, baseType: !201, size: 128)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4486, file: !117, line: 73, baseType: !622, size: 32, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4447, file: !117, line: 122, baseType: !4491, size: 64, offset: 2240)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !117, line: 107, size: 576, elements: !4493)
!4493 = !{!4494, !4495, !4511}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4492, file: !117, line: 108, baseType: !122, size: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4492, file: !117, line: 113, baseType: !4496, size: 448, offset: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4492, file: !117, line: 109, size: 448, elements: !4497)
!4497 = !{!4498, !4499, !4504}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4496, file: !117, line: 110, baseType: !1683, size: 320)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4496, file: !117, line: 111, baseType: !4500, size: 192)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !117, line: 66, size: 192, elements: !4501)
!4501 = !{!4502, !4503}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4500, file: !117, line: 67, baseType: !201, size: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4500, file: !117, line: 68, baseType: !622, size: 32, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4496, file: !117, line: 112, baseType: !4505, size: 448)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !117, line: 92, size: 448, elements: !4506)
!4506 = !{!4507, !4508, !4509}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4505, file: !117, line: 93, baseType: !129, size: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4505, file: !117, line: 94, baseType: !1683, size: 320, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4505, file: !117, line: 95, baseType: !4510, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4492, file: !117, line: 114, baseType: !4202, size: 64, offset: 512)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4447, file: !117, line: 123, baseType: !4491, size: 64, offset: 2304)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4447, file: !117, line: 124, baseType: !4491, size: 64, offset: 2368)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !190, file: !94, line: 727, baseType: !4515, size: 64, offset: 4224)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4524, !4525, !4526}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4516, file: !101, line: 743, baseType: !4232, size: 1472)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4516, file: !101, line: 744, baseType: !4235, size: 64, offset: 1472)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4516, file: !101, line: 745, baseType: !4521, size: 64, offset: 1536)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !4202, !706}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4516, file: !101, line: 746, baseType: !4235, size: 64, offset: 1600)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4516, file: !101, line: 747, baseType: !4226, size: 64, offset: 1664)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4516, file: !101, line: 748, baseType: !4226, size: 64, offset: 1728)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !190, file: !94, line: 736, baseType: !4528, size: 128, offset: 4288)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4529)
!4529 = !{!4530, !4534}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4528, file: !94, line: 531, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4533, line: 13, flags: DIFlagFwdDecl)
!4533 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4528, file: !94, line: 532, baseType: !4535, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !190, file: !94, line: 738, baseType: !4538, size: 64, offset: 4416)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4540)
!4540 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !190, file: !94, line: 740, baseType: !4542, size: 64, offset: 4480)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !190, file: !94, line: 741, baseType: !438, size: 64, offset: 4544)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !190, file: !94, line: 746, baseType: !438, size: 64, offset: 4608)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !190, file: !94, line: 747, baseType: !4546, size: 64, offset: 4672)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4548)
!4548 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !190, file: !94, line: 749, baseType: !4550, size: 64, offset: 4736)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4552)
!4552 = !{!4553, !4554, !4555}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4551, file: !94, line: 433, baseType: !7, size: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4551, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4551, file: !94, line: 435, baseType: !335, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !190, file: !94, line: 751, baseType: !201, size: 128, offset: 4800)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !190, file: !94, line: 762, baseType: !4558, size: 64, offset: 4928)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !190, file: !94, line: 770, baseType: !4561, offset: 4992)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4562, line: 5, elements: !915)
!4562 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !190, file: !94, line: 772, baseType: !4564, size: 64, offset: 4992)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4566, line: 18, flags: DIFlagFwdDecl)
!4566 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !190, file: !94, line: 773, baseType: !4568, size: 64, offset: 5056)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4570, line: 41, size: 512, elements: !4571)
!4570 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4571 = !{!4572, !4573, !4667, !4668, !4669, !4670}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4569, file: !4570, line: 42, baseType: !4568, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4569, file: !4570, line: 43, baseType: !4574, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4576)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4570, line: 125, size: 1408, elements: !4577)
!4577 = !{!4578, !4582, !4586, !4592, !4596, !4597, !4602, !4606, !4610, !4614, !4618, !4619, !4623, !4627, !4631, !4642, !4643, !4644, !4645, !4655, !4659, !4663}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4576, file: !4570, line: 126, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!4568, !4568}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4576, file: !4570, line: 127, baseType: !4583, size: 64, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4568}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4576, file: !4570, line: 128, baseType: !4587, size: 64, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!706, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4569)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4576, file: !4570, line: 129, baseType: !4593, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!2595, !4590, !4218}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4576, file: !4570, line: 131, baseType: !4587, size: 64, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4576, file: !4570, line: 133, baseType: !4598, size: 64, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!4601, !4590}
!4601 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4570, line: 132, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4576, file: !4570, line: 134, baseType: !4603, size: 64, offset: 384)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!706, !4590, !197}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4576, file: !4570, line: 136, baseType: !4607, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!109, !4590, !197, !7, !184, !332}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4576, file: !4570, line: 141, baseType: !4611, size: 64, offset: 512)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!109, !4590, !197, !963, !332}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4576, file: !4570, line: 144, baseType: !4615, size: 64, offset: 576)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!197, !4590}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4576, file: !4570, line: 145, baseType: !4615, size: 64, offset: 640)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4576, file: !4570, line: 146, baseType: !4620, size: 64, offset: 704)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!4568, !4590}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4576, file: !4570, line: 148, baseType: !4624, size: 64, offset: 768)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!4568, !4590, !4568}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4576, file: !4570, line: 151, baseType: !4628, size: 64, offset: 832)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!4568, !4590, !197}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4576, file: !4570, line: 153, baseType: !4632, size: 64, offset: 896)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!109, !4590, !197, !197, !7, !7, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4570, line: 94, size: 640, elements: !4637)
!4637 = !{!4638, !4639, !4640}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4636, file: !4570, line: 95, baseType: !4568, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4636, file: !4570, line: 96, baseType: !7, size: 32, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4636, file: !4570, line: 97, baseType: !4641, size: 512, offset: 128)
!4641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 512, elements: !1558)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4576, file: !4570, line: 158, baseType: !4624, size: 64, offset: 960)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4576, file: !4570, line: 161, baseType: !4620, size: 64, offset: 1024)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4576, file: !4570, line: 163, baseType: !4579, size: 64, offset: 1088)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4576, file: !4570, line: 164, baseType: !4646, size: 64, offset: 1152)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!109, !4590, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4570, line: 73, size: 128, elements: !4651)
!4651 = !{!4652, !4653, !4654}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4650, file: !4570, line: 74, baseType: !7, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4650, file: !4570, line: 75, baseType: !7, size: 32, offset: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4650, file: !4570, line: 76, baseType: !4590, size: 64, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4576, file: !4570, line: 166, baseType: !4656, size: 64, offset: 1216)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!184, !4568, !109}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4576, file: !4570, line: 167, baseType: !4660, size: 64, offset: 1280)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!109, !4590, !7}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4576, file: !4570, line: 168, baseType: !4664, size: 64, offset: 1344)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!109, !4568}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4569, file: !4570, line: 44, baseType: !4202, size: 64, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4569, file: !4570, line: 45, baseType: !201, size: 128, offset: 192)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4569, file: !4570, line: 46, baseType: !201, size: 128, offset: 320)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4569, file: !4570, line: 47, baseType: !243, size: 8, offset: 448)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !190, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !190, file: !94, line: 778, baseType: !521, size: 32, offset: 5152)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !190, file: !94, line: 779, baseType: !434, size: 32, offset: 5184)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !190, file: !94, line: 781, baseType: !215, size: 32, offset: 5216)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !190, file: !94, line: 782, baseType: !201, size: 128, offset: 5248)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !190, file: !94, line: 784, baseType: !4677, size: 64, offset: 5376)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4679)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4680, line: 52, size: 768, elements: !4681)
!4680 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4681 = !{!4682, !4683, !4684, !4685, !4686, !4690, !4694, !4695, !4696, !4697, !4701, !4705}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4679, file: !4680, line: 53, baseType: !197, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4679, file: !4680, line: 55, baseType: !337, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4679, file: !4680, line: 56, baseType: !337, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4679, file: !4680, line: 58, baseType: !4215, size: 64, offset: 192)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4679, file: !4680, line: 59, baseType: !4687, size: 64, offset: 256)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!285, !4218, !4224}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4679, file: !4680, line: 61, baseType: !4691, size: 64, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !4677}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4679, file: !4680, line: 62, baseType: !4226, size: 64, offset: 384)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4679, file: !4680, line: 64, baseType: !4235, size: 64, offset: 448)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4679, file: !4680, line: 66, baseType: !4054, size: 64, offset: 512)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4679, file: !4680, line: 67, baseType: !4698, size: 64, offset: 576)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!2595, !4218}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4679, file: !4680, line: 69, baseType: !4702, size: 64, offset: 640)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{null, !4218, !4086, !4087}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4679, file: !4680, line: 71, baseType: !4230, size: 64, offset: 704)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !190, file: !94, line: 785, baseType: !337, size: 64, offset: 5440)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !190, file: !94, line: 787, baseType: !4226, size: 64, offset: 5504)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !190, file: !94, line: 788, baseType: !4709, size: 64, offset: 5568)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !190, file: !94, line: 789, baseType: !4712, size: 64, offset: 5632)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !190, file: !94, line: 791, baseType: !4715, size: 64, offset: 5696)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4716, file: !94, line: 598, baseType: !133, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4716, file: !94, line: 599, baseType: !142, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4716, file: !94, line: 600, baseType: !147, size: 32, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4716, file: !94, line: 601, baseType: !706, size: 8, offset: 96)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4716, file: !94, line: 602, baseType: !706, size: 8, offset: 104)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !190, file: !94, line: 793, baseType: !152, size: 32, offset: 5760)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !190, file: !94, line: 795, baseType: !706, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !190, file: !94, line: 796, baseType: !706, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !190, file: !94, line: 797, baseType: !706, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !190, file: !94, line: 798, baseType: !706, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !190, file: !94, line: 799, baseType: !706, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !187, line: 54, baseType: !109, size: 32, offset: 5824)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !186, file: !187, line: 55, baseType: !4731, size: 64, offset: 5888)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus", file: !187, line: 290, size: 10560, elements: !4733)
!4733 = !{!4734, !4735, !4752, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4774, !4776, !4777, !4778, !4779, !4780, !4781, !4795, !4796, !4798, !4799, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4732, file: !187, line: 291, baseType: !4202, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4732, file: !187, line: 292, baseType: !4736, size: 64, offset: 64)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4738)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus_ops", file: !187, line: 242, size: 192, elements: !4739)
!4739 = !{!4740, !4744, !4748}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4738, file: !187, line: 244, baseType: !4741, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!109, !4731, !7}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "get_response", scope: !4738, file: !187, line: 246, baseType: !4745, size: 64, offset: 64)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!109, !4731, !7, !698}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "link_power", scope: !4738, file: !187, line: 249, baseType: !4749, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !185, !706}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ops", scope: !4732, file: !187, line: 293, baseType: !4753, size: 64, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4755)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_ext_bus_ops", file: !187, line: 255, size: 128, elements: !4756)
!4756 = !{!4757, !4761}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_attach", scope: !4755, file: !187, line: 256, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!109, !185}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_detach", scope: !4755, file: !187, line: 257, baseType: !4758, size: 64, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4732, file: !187, line: 296, baseType: !335, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "remap_addr", scope: !4732, file: !187, line: 297, baseType: !184, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4732, file: !187, line: 298, baseType: !109, size: 32, offset: 320)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "ppcap", scope: !4732, file: !187, line: 300, baseType: !184, size: 64, offset: 384)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "spbcap", scope: !4732, file: !187, line: 301, baseType: !184, size: 64, offset: 448)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "mlcap", scope: !4732, file: !187, line: 302, baseType: !184, size: 64, offset: 512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "gtscap", scope: !4732, file: !187, line: 303, baseType: !184, size: 64, offset: 576)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "drsmcap", scope: !4732, file: !187, line: 304, baseType: !184, size: 64, offset: 640)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "codec_list", scope: !4732, file: !187, line: 307, baseType: !201, size: 128, offset: 704)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "num_codecs", scope: !4732, file: !187, line: 308, baseType: !7, size: 32, offset: 832)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "caddr_tbl", scope: !4732, file: !187, line: 311, baseType: !4773, size: 1024, offset: 896)
!4773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 1024, elements: !2778)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_queue", scope: !4732, file: !187, line: 314, baseType: !4775, size: 4096, offset: 1920)
!4775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 4096, elements: !4294)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_rp", scope: !4732, file: !187, line: 315, baseType: !7, size: 32, offset: 6016)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_wp", scope: !4732, file: !187, line: 315, baseType: !7, size: 32, offset: 6048)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_work", scope: !4732, file: !187, line: 316, baseType: !886, size: 256, offset: 6080)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "codec_mask", scope: !4732, file: !187, line: 319, baseType: !335, size: 64, offset: 6336)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "codec_powered", scope: !4732, file: !187, line: 322, baseType: !335, size: 64, offset: 6400)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "corb", scope: !4732, file: !187, line: 325, baseType: !4782, size: 704, offset: 6464)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_rb", file: !187, line: 268, size: 704, elements: !4783)
!4783 = !{!4784, !4787, !4789, !4790, !4791, !4793}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4782, file: !187, line: 269, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2113, line: 38, baseType: !435)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4782, file: !187, line: 270, baseType: !4788, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !202, line: 149, baseType: !438)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4782, file: !187, line: 271, baseType: !255, size: 16, offset: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4782, file: !187, line: 271, baseType: !255, size: 16, offset: 144)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4782, file: !187, line: 272, baseType: !4792, size: 256, offset: 160)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1558)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4782, file: !187, line: 273, baseType: !4794, size: 256, offset: 416)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 256, elements: !1558)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "rirb", scope: !4732, file: !187, line: 326, baseType: !4782, size: 704, offset: 7168)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !4732, file: !187, line: 327, baseType: !4797, size: 256, offset: 7872)
!4797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !1558)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "rirb_wq", scope: !4732, file: !187, line: 328, baseType: !1381, size: 192, offset: 8128)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4732, file: !187, line: 331, baseType: !4800, size: 448, offset: 8320)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !4801, line: 60, size: 448, elements: !4802)
!4801 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!4802 = !{!4803, !4810, !4812, !4813, !4814}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4800, file: !4801, line: 61, baseType: !4804, size: 192)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !4801, line: 22, size: 192, elements: !4805)
!4805 = !{!4806, !4807, !4808, !4809}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4804, file: !4801, line: 23, baseType: !109, size: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4804, file: !4801, line: 24, baseType: !158, size: 32, offset: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !4804, file: !4801, line: 25, baseType: !706, size: 8, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4804, file: !4801, line: 26, baseType: !4202, size: 64, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !4800, file: !4801, line: 62, baseType: !4811, size: 64, offset: 192)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4800, file: !4801, line: 63, baseType: !4788, size: 64, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4800, file: !4801, line: 64, baseType: !332, size: 64, offset: 320)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4800, file: !4801, line: 65, baseType: !184, size: 64, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !4732, file: !187, line: 332, baseType: !4800, size: 448, offset: 8768)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !4732, file: !187, line: 333, baseType: !109, size: 32, offset: 9216)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "stream_list", scope: !4732, file: !187, line: 336, baseType: !201, size: 128, offset: 9280)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "chip_init", scope: !4732, file: !187, line: 339, baseType: !706, size: 1, offset: 9408, flags: DIFlagBitField, extraData: i64 9408)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_mmio", scope: !4732, file: !187, line: 342, baseType: !706, size: 1, offset: 9409, flags: DIFlagBitField, extraData: i64 9408)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !4732, file: !187, line: 343, baseType: !706, size: 1, offset: 9410, flags: DIFlagBitField, extraData: i64 9408)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "use_posbuf", scope: !4732, file: !187, line: 344, baseType: !706, size: 1, offset: 9411, flags: DIFlagBitField, extraData: i64 9408)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "snoop", scope: !4732, file: !187, line: 345, baseType: !706, size: 1, offset: 9412, flags: DIFlagBitField, extraData: i64 9408)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "align_bdle_4k", scope: !4732, file: !187, line: 346, baseType: !706, size: 1, offset: 9413, flags: DIFlagBitField, extraData: i64 9408)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_assign", scope: !4732, file: !187, line: 347, baseType: !706, size: 1, offset: 9414, flags: DIFlagBitField, extraData: i64 9408)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "corbrp_self_clear", scope: !4732, file: !187, line: 348, baseType: !706, size: 1, offset: 9415, flags: DIFlagBitField, extraData: i64 9408)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "polling_mode", scope: !4732, file: !187, line: 349, baseType: !706, size: 1, offset: 9416, flags: DIFlagBitField, extraData: i64 9408)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "needs_damn_long_delay", scope: !4732, file: !187, line: 350, baseType: !706, size: 1, offset: 9417, flags: DIFlagBitField, extraData: i64 9408)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "not_use_interrupts", scope: !4732, file: !187, line: 351, baseType: !706, size: 1, offset: 9418, flags: DIFlagBitField, extraData: i64 9408)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "access_sdnctl_in_dword", scope: !4732, file: !187, line: 352, baseType: !706, size: 1, offset: 9419, flags: DIFlagBitField, extraData: i64 9408)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "poll_count", scope: !4732, file: !187, line: 354, baseType: !109, size: 32, offset: 9440)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "bdl_pos_adj", scope: !4732, file: !187, line: 356, baseType: !109, size: 32, offset: 9472)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop_delay", scope: !4732, file: !187, line: 359, baseType: !7, size: 32, offset: 9504)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "reg_lock", scope: !4732, file: !187, line: 362, baseType: !215, size: 32, offset: 9536)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4732, file: !187, line: 363, baseType: !626, size: 256, offset: 9600)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4732, file: !187, line: 364, baseType: !626, size: 256, offset: 9856)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "audio_component", scope: !4732, file: !187, line: 367, baseType: !4837, size: 64, offset: 10112)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component", file: !4839, line: 110, size: 448, elements: !4840)
!4839 = !DIFile(filename: "./include/drm/drm_audio_component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5876290eae632618019af7818f71dd5e")
!4840 = !{!4841, !4842, !4866, !4888}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4838, file: !4839, line: 114, baseType: !4202, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4838, file: !4839, line: 118, baseType: !4843, size: 64, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4845)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_ops", file: !4839, line: 16, size: 448, elements: !4846)
!4846 = !{!4847, !4848, !4852, !4856, !4857, !4858, !4862}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4845, file: !4839, line: 20, baseType: !555, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4845, file: !4839, line: 29, baseType: !4849, size: 64, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!335, !4202}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "put_power", scope: !4845, file: !4839, line: 35, baseType: !4853, size: 64, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{null, !4202, !335}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "codec_wake_override", scope: !4845, file: !4839, line: 39, baseType: !4521, size: 64, offset: 192)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "get_cdclk_freq", scope: !4845, file: !4839, line: 43, baseType: !4235, size: 64, offset: 256)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "sync_audio_rate", scope: !4845, file: !4839, line: 50, baseType: !4859, size: 64, offset: 320)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!109, !4202, !109, !109, !109}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "get_eld", scope: !4845, file: !4839, line: 63, baseType: !4863, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DISubroutineType(types: !4865)
!4865 = !{!109, !4202, !109, !109, !4014, !4811, !109}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ops", scope: !4838, file: !4839, line: 122, baseType: !4867, size: 64, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4869)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_audio_ops", file: !4839, line: 70, size: 320, elements: !4870)
!4870 = !{!4871, !4872, !4876, !4880, !4884}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ptr", scope: !4869, file: !4839, line: 74, baseType: !184, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pin_eld_notify", scope: !4869, file: !4839, line: 83, baseType: !4873, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !184, !109, !109}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "pin2port", scope: !4869, file: !4839, line: 90, baseType: !4877, size: 64, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!109, !184, !109}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind", scope: !4869, file: !4839, line: 97, baseType: !4881, size: 64, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!109, !4202, !4837}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "master_unbind", scope: !4869, file: !4839, line: 104, baseType: !4885, size: 64, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{null, !4202, !4837}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind_complete", scope: !4838, file: !4839, line: 126, baseType: !575, size: 256, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_status", scope: !4732, file: !187, line: 368, baseType: !321, size: 64, offset: 10176)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_active", scope: !4732, file: !187, line: 369, baseType: !335, size: 64, offset: 10240)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !4732, file: !187, line: 372, baseType: !109, size: 32, offset: 10304)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4732, file: !187, line: 373, baseType: !109, size: 32, offset: 10336)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "hlink_list", scope: !4732, file: !187, line: 376, baseType: !201, size: 128, offset: 10368)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_dma_state", scope: !4732, file: !187, line: 377, baseType: !706, size: 8, offset: 10496)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "sdo_limit", scope: !4732, file: !187, line: 380, baseType: !7, size: 32, offset: 10528)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !186, file: !187, line: 56, baseType: !7, size: 32, offset: 5952)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !186, file: !187, line: 57, baseType: !201, size: 128, offset: 6016)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !186, file: !187, line: 59, baseType: !4899, size: 16, offset: 6144)
!4899 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_nid_t", file: !187, line: 24, baseType: !253)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "mfg", scope: !186, file: !187, line: 60, baseType: !4899, size: 16, offset: 6160)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !186, file: !187, line: 63, baseType: !7, size: 32, offset: 6176)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !186, file: !187, line: 64, baseType: !7, size: 32, offset: 6208)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !186, file: !187, line: 65, baseType: !7, size: 32, offset: 6240)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "afg_function_id", scope: !186, file: !187, line: 66, baseType: !7, size: 32, offset: 6272)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_function_id", scope: !186, file: !187, line: 67, baseType: !7, size: 32, offset: 6304)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "afg_unsol", scope: !186, file: !187, line: 68, baseType: !7, size: 1, offset: 6336, flags: DIFlagBitField, extraData: i64 6336)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_unsol", scope: !186, file: !187, line: 69, baseType: !7, size: 1, offset: 6337, flags: DIFlagBitField, extraData: i64 6336)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "power_caps", scope: !186, file: !187, line: 71, baseType: !7, size: 32, offset: 6368)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_name", scope: !186, file: !187, line: 73, baseType: !197, size: 64, offset: 6400)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "chip_name", scope: !186, file: !187, line: 74, baseType: !197, size: 64, offset: 6464)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "exec_verb", scope: !186, file: !187, line: 77, baseType: !4912, size: 64, offset: 6528)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!109, !185, !7, !7, !698}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !186, file: !187, line: 81, baseType: !7, size: 32, offset: 6592)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "start_nid", scope: !186, file: !187, line: 82, baseType: !4899, size: 16, offset: 6624)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "end_nid", scope: !186, file: !187, line: 82, baseType: !4899, size: 16, offset: 6640)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "in_pm", scope: !186, file: !187, line: 85, baseType: !235, size: 32, offset: 6656)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "widget_lock", scope: !186, file: !187, line: 88, baseType: !626, size: 256, offset: 6720)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "widgets", scope: !186, file: !187, line: 89, baseType: !4921, size: 64, offset: 6976)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_widget_tree", file: !187, line: 30, flags: DIFlagFwdDecl)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !186, file: !187, line: 92, baseType: !4924, size: 64, offset: 7040)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !166, line: 35, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_lock", scope: !186, file: !187, line: 93, baseType: !626, size: 256, offset: 7104)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_verbs", scope: !186, file: !187, line: 94, baseType: !4928, size: 192, offset: 7360)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !187, line: 41, size: 192, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4934}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4928, file: !187, line: 42, baseType: !7, size: 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !4928, file: !187, line: 43, baseType: !7, size: 32, offset: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4928, file: !187, line: 44, baseType: !7, size: 32, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !4928, file: !187, line: 45, baseType: !7, size: 32, offset: 96)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4928, file: !187, line: 46, baseType: !184, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_cache", scope: !186, file: !187, line: 95, baseType: !706, size: 1, offset: 7552, flags: DIFlagBitField, extraData: i64 7552)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "caps_overwriting", scope: !186, file: !187, line: 96, baseType: !706, size: 1, offset: 7553, flags: DIFlagBitField, extraData: i64 7552)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "cache_coef", scope: !186, file: !187, line: 97, baseType: !706, size: 1, offset: 7554, flags: DIFlagBitField, extraData: i64 7552)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !186, file: !187, line: 98, baseType: !7, size: 1, offset: 7555, flags: DIFlagBitField, extraData: i64 7552)
!4939 = !{!4940, !4942, !4944, !4946, !4948, !4950, !4952, !4954, !4956, !0}
!4940 = !DIGlobalVariableExpression(var: !4941, expr: !DIExpression())
!4941 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_init295", scope: !2, file: !3, line: 385, type: !184, isLocal: true, isDefinition: true)
!4942 = !DIGlobalVariableExpression(var: !4943, expr: !DIExpression())
!4943 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_exit296", scope: !2, file: !3, line: 399, type: !184, isLocal: true, isDefinition: true)
!4944 = !DIGlobalVariableExpression(var: !4945, expr: !DIExpression())
!4945 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_add_vendor_verb297", scope: !2, file: !3, line: 418, type: !184, isLocal: true, isDefinition: true)
!4946 = !DIGlobalVariableExpression(var: !4947, expr: !DIExpression())
!4947 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_write_raw298", scope: !2, file: !3, line: 464, type: !184, isLocal: true, isDefinition: true)
!4948 = !DIGlobalVariableExpression(var: !4949, expr: !DIExpression())
!4949 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_read_raw299", scope: !2, file: !3, line: 500, type: !184, isLocal: true, isDefinition: true)
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_update_raw300", scope: !2, file: !3, line: 554, type: !184, isLocal: true, isDefinition: true)
!4952 = !DIGlobalVariableExpression(var: !4953, expr: !DIExpression())
!4953 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_update_raw_once301", scope: !2, file: !3, line: 588, type: !184, isLocal: true, isDefinition: true)
!4954 = !DIGlobalVariableExpression(var: !4955, expr: !DIExpression())
!4955 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_regmap_sync302", scope: !2, file: !3, line: 601, type: !184, isLocal: true, isDefinition: true)
!4956 = !DIGlobalVariableExpression(var: !4957, expr: !DIExpression())
!4957 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !3099, isLocal: true, isDefinition: true)
!4958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4959)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !166, line: 388, size: 2560, elements: !4960)
!4960 = !{!4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4980, !4982, !4983, !4987, !4991, !4995, !4999, !5003, !5004, !5005, !5006, !5007, !5008, !5023, !5024, !5025, !5026, !5027, !5028, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5061, !5062, !5063, !5064, !5065, !5066}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4959, file: !166, line: 389, baseType: !197, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !4959, file: !166, line: 391, baseType: !109, size: 32, offset: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !4959, file: !166, line: 392, baseType: !109, size: 32, offset: 96)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "reg_shift", scope: !4959, file: !166, line: 393, baseType: !109, size: 32, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4959, file: !166, line: 394, baseType: !7, size: 32, offset: 160)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !4959, file: !166, line: 395, baseType: !109, size: 32, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !4959, file: !166, line: 396, baseType: !109, size: 32, offset: 224)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !4959, file: !166, line: 398, baseType: !4969, size: 64, offset: 256)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!706, !4202, !7}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !4959, file: !166, line: 399, baseType: !4969, size: 64, offset: 320)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !4959, file: !166, line: 400, baseType: !4969, size: 64, offset: 384)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !4959, file: !166, line: 401, baseType: !4969, size: 64, offset: 448)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !4959, file: !166, line: 402, baseType: !4969, size: 64, offset: 512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !4959, file: !166, line: 403, baseType: !4969, size: 64, offset: 576)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !4959, file: !166, line: 405, baseType: !706, size: 8, offset: 640)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4959, file: !166, line: 406, baseType: !4979, size: 64, offset: 704)
!4979 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !166, line: 244, baseType: !669)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !4959, file: !166, line: 407, baseType: !4981, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !166, line: 245, baseType: !669)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !4959, file: !166, line: 408, baseType: !184, size: 64, offset: 832)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !4959, file: !166, line: 410, baseType: !4984, size: 64, offset: 896)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!109, !184, !7, !698}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !4959, file: !166, line: 411, baseType: !4988, size: 64, offset: 960)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!109, !184, !7, !7}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !4959, file: !166, line: 412, baseType: !4992, size: 64, offset: 1024)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!109, !184, !7, !7, !7}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4959, file: !166, line: 415, baseType: !4996, size: 64, offset: 1088)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!109, !184, !2595, !332, !184, !332}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4959, file: !166, line: 417, baseType: !5000, size: 64, offset: 1152)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!109, !184, !2595, !332}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !4959, file: !166, line: 418, baseType: !332, size: 64, offset: 1216)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !4959, file: !166, line: 419, baseType: !332, size: 64, offset: 1280)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !4959, file: !166, line: 421, baseType: !706, size: 8, offset: 1344)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "io_port", scope: !4959, file: !166, line: 422, baseType: !706, size: 8, offset: 1352)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !4959, file: !166, line: 424, baseType: !7, size: 32, offset: 1376)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !4959, file: !166, line: 425, baseType: !5009, size: 64, offset: 1408)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5011)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !166, line: 237, size: 256, elements: !5012)
!5012 = !{!5013, !5020, !5021, !5022}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !5011, file: !166, line: 238, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5016)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !166, line: 217, size: 64, elements: !5017)
!5017 = !{!5018, !5019}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !5016, file: !166, line: 218, baseType: !7, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !5016, file: !166, line: 219, baseType: !7, size: 32, offset: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !5011, file: !166, line: 239, baseType: !7, size: 32, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !5011, file: !166, line: 240, baseType: !5014, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !5011, file: !166, line: 241, baseType: !7, size: 32, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !4959, file: !166, line: 426, baseType: !5009, size: 64, offset: 1472)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !4959, file: !166, line: 427, baseType: !5009, size: 64, offset: 1536)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !4959, file: !166, line: 428, baseType: !5009, size: 64, offset: 1600)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !4959, file: !166, line: 429, baseType: !5009, size: 64, offset: 1664)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !4959, file: !166, line: 430, baseType: !5009, size: 64, offset: 1728)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !4959, file: !166, line: 431, baseType: !5029, size: 64, offset: 1792)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5031)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !166, line: 74, size: 64, elements: !5032)
!5032 = !{!5033, !5034}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5031, file: !166, line: 75, baseType: !7, size: 32)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !5031, file: !166, line: 76, baseType: !7, size: 32, offset: 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !4959, file: !166, line: 432, baseType: !7, size: 32, offset: 1856)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !4959, file: !166, line: 433, baseType: !172, size: 32, offset: 1888)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !4959, file: !166, line: 434, baseType: !2595, size: 64, offset: 1920)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !4959, file: !166, line: 435, baseType: !7, size: 32, offset: 1984)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !4959, file: !166, line: 437, baseType: !335, size: 64, offset: 2048)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !4959, file: !166, line: 438, baseType: !335, size: 64, offset: 2112)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !4959, file: !166, line: 439, baseType: !706, size: 8, offset: 2176)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !4959, file: !166, line: 441, baseType: !706, size: 8, offset: 2184)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !4959, file: !166, line: 442, baseType: !706, size: 8, offset: 2192)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "use_relaxed_mmio", scope: !4959, file: !166, line: 443, baseType: !706, size: 8, offset: 2200)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !4959, file: !166, line: 444, baseType: !706, size: 8, offset: 2208)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !4959, file: !166, line: 446, baseType: !165, size: 32, offset: 2240)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !4959, file: !166, line: 447, baseType: !165, size: 32, offset: 2272)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4959, file: !166, line: 449, baseType: !5049, size: 64, offset: 2304)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5051)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !166, line: 480, size: 320, elements: !5052)
!5052 = !{!5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5051, file: !166, line: 481, baseType: !197, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !5051, file: !166, line: 484, baseType: !7, size: 32, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !5051, file: !166, line: 485, baseType: !7, size: 32, offset: 96)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !5051, file: !166, line: 488, baseType: !7, size: 32, offset: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !5051, file: !166, line: 489, baseType: !7, size: 32, offset: 160)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !5051, file: !166, line: 490, baseType: !109, size: 32, offset: 192)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !5051, file: !166, line: 493, baseType: !7, size: 32, offset: 224)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !5051, file: !166, line: 494, baseType: !7, size: 32, offset: 256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !4959, file: !166, line: 450, baseType: !7, size: 32, offset: 2368)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !4959, file: !166, line: 452, baseType: !706, size: 8, offset: 2400)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "use_raw_spinlock", scope: !4959, file: !166, line: 453, baseType: !706, size: 8, offset: 2408)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !4959, file: !166, line: 454, baseType: !7, size: 32, offset: 2432)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !4959, file: !166, line: 455, baseType: !7, size: 32, offset: 2464)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !4959, file: !166, line: 457, baseType: !706, size: 8, offset: 2496)
!5067 = !{i32 7, !"Dwarf Version", i32 5}
!5068 = !{i32 2, !"Debug Info Version", i32 3}
!5069 = !{i32 1, !"wchar_size", i32 2}
!5070 = !{i32 8, !"cf-protection-branch", i32 1}
!5071 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5072 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5073 = !{i32 1, !"Code Model", i32 2}
!5074 = !{i32 1, !"override-stack-alignment", i32 8}
!5075 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5076 = distinct !DISubprogram(name: "snd_hdac_regmap_init", scope: !3, file: !3, line: 374, type: !4759, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5077)
!5077 = !{!5078, !5079}
!5078 = !DILocalVariable(name: "codec", arg: 1, scope: !5076, file: !3, line: 374, type: !185)
!5079 = !DILocalVariable(name: "regmap", scope: !5076, file: !3, line: 376, type: !4924)
!5080 = !DILocation(line: 374, column: 46, scope: !5076)
!5081 = !DILocation(line: 376, column: 2, scope: !5076)
!5082 = !DILocation(line: 376, column: 17, scope: !5076)
!5083 = !DILocation(line: 378, column: 11, scope: !5076)
!5084 = !DILocation(line: 378, column: 9, scope: !5076)
!5085 = !DILocation(line: 379, column: 13, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 379, column: 6)
!5087 = !DILocation(line: 379, column: 6, scope: !5086)
!5088 = !DILocation(line: 379, column: 6, scope: !5076)
!5089 = !DILocation(line: 380, column: 18, scope: !5086)
!5090 = !DILocation(line: 380, column: 10, scope: !5086)
!5091 = !DILocation(line: 380, column: 3, scope: !5086)
!5092 = !DILocation(line: 381, column: 18, scope: !5076)
!5093 = !DILocation(line: 381, column: 2, scope: !5076)
!5094 = !DILocation(line: 381, column: 9, scope: !5076)
!5095 = !DILocation(line: 381, column: 16, scope: !5076)
!5096 = !DILocation(line: 382, column: 18, scope: !5076)
!5097 = !DILocation(line: 382, column: 25, scope: !5076)
!5098 = !DILocation(line: 382, column: 2, scope: !5076)
!5099 = !DILocation(line: 383, column: 2, scope: !5076)
!5100 = !DILocation(line: 384, column: 1, scope: !5076)
!5101 = !DISubprogram(name: "__regmap_init", scope: !166, file: !166, line: 590, type: !5102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!4924, !4202, !5104, !184, !5154, !5155, !197}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5106)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_bus", file: !166, line: 562, size: 1024, elements: !5107)
!5107 = !{!5108, !5109, !5110, !5112, !5117, !5124, !5126, !5131, !5133, !5135, !5137, !5142, !5144, !5149, !5150, !5151, !5152, !5153}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !5106, file: !166, line: 563, baseType: !706, size: 8)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "free_on_exit", scope: !5106, file: !166, line: 564, baseType: !706, size: 8, offset: 8)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5106, file: !166, line: 565, baseType: !5111, size: 64, offset: 64)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_write", file: !166, line: 499, baseType: !5000)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "gather_write", scope: !5106, file: !166, line: 566, baseType: !5113, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_gather_write", file: !166, line: 501, baseType: !5114)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!109, !184, !2595, !332, !2595, !332}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "async_write", scope: !5106, file: !166, line: 567, baseType: !5118, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_write", file: !166, line: 504, baseType: !5119)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!109, !184, !2595, !332, !2595, !332, !5122}
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_async", file: !166, line: 497, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !5106, file: !166, line: 568, baseType: !5125, size: 64, offset: 256)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_write", file: !166, line: 515, baseType: !4988)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "reg_noinc_write", scope: !5106, file: !166, line: 569, baseType: !5127, size: 64, offset: 320)
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_noinc_write", file: !166, line: 517, baseType: !5128)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!109, !184, !7, !2595, !332}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !5106, file: !166, line: 570, baseType: !5132, size: 64, offset: 384)
!5132 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_update_bits", file: !166, line: 519, baseType: !4992)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5106, file: !166, line: 571, baseType: !5134, size: 64, offset: 448)
!5134 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_read", file: !166, line: 508, baseType: !4996)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !5106, file: !166, line: 572, baseType: !5136, size: 64, offset: 512)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_read", file: !166, line: 511, baseType: !4984)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "reg_noinc_read", scope: !5106, file: !166, line: 573, baseType: !5138, size: 64, offset: 576)
!5138 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_noinc_read", file: !166, line: 513, baseType: !5139)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!109, !184, !7, !184, !332}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "free_context", scope: !5106, file: !166, line: 574, baseType: !5143, size: 64, offset: 640)
!5143 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_free_context", file: !166, line: 522, baseType: !669)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "async_alloc", scope: !5106, file: !166, line: 575, baseType: !5145, size: 64, offset: 704)
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_alloc", file: !166, line: 521, baseType: !5146)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!5122}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !5106, file: !166, line: 576, baseType: !243, size: 8, offset: 768)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian_default", scope: !5106, file: !166, line: 577, baseType: !165, size: 32, offset: 800)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian_default", scope: !5106, file: !166, line: 578, baseType: !165, size: 32, offset: 832)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !5106, file: !166, line: 579, baseType: !332, size: 64, offset: 896)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !5106, file: !166, line: 580, baseType: !332, size: 64, offset: 960)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!5156 = distinct !DISubprogram(name: "IS_ERR", scope: !5157, file: !5157, line: 59, type: !5158, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5160)
!5157 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!706, !2595}
!5160 = !{!5161}
!5161 = !DILocalVariable(name: "ptr", arg: 1, scope: !5156, file: !5157, line: 59, type: !2595)
!5162 = !DILocation(line: 59, column: 60, scope: !5156)
!5163 = !DILocation(line: 61, column: 9, scope: !5156)
!5164 = !DILocation(line: 61, column: 2, scope: !5156)
!5165 = distinct !DISubprogram(name: "PTR_ERR", scope: !5157, file: !5157, line: 49, type: !5166, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5168)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!321, !2595}
!5168 = !{!5169}
!5169 = !DILocalVariable(name: "ptr", arg: 1, scope: !5165, file: !5157, line: 49, type: !2595)
!5170 = !DILocation(line: 49, column: 61, scope: !5165)
!5171 = !DILocation(line: 51, column: 16, scope: !5165)
!5172 = !DILocation(line: 51, column: 9, scope: !5165)
!5173 = !DILocation(line: 51, column: 2, scope: !5165)
!5174 = distinct !DISubprogram(name: "snd_array_init", scope: !187, file: !187, line: 686, type: !5175, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{null, !5177, !7, !7}
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!5178 = !{!5179, !5180, !5181}
!5179 = !DILocalVariable(name: "array", arg: 1, scope: !5174, file: !187, line: 686, type: !5177)
!5180 = !DILocalVariable(name: "size", arg: 2, scope: !5174, file: !187, line: 686, type: !7)
!5181 = !DILocalVariable(name: "align", arg: 3, scope: !5174, file: !187, line: 687, type: !7)
!5182 = !DILocation(line: 686, column: 53, scope: !5174)
!5183 = !DILocation(line: 686, column: 73, scope: !5174)
!5184 = !DILocation(line: 687, column: 20, scope: !5174)
!5185 = !DILocation(line: 689, column: 21, scope: !5174)
!5186 = !DILocation(line: 689, column: 2, scope: !5174)
!5187 = !DILocation(line: 689, column: 9, scope: !5174)
!5188 = !DILocation(line: 689, column: 19, scope: !5174)
!5189 = !DILocation(line: 690, column: 23, scope: !5174)
!5190 = !DILocation(line: 690, column: 2, scope: !5174)
!5191 = !DILocation(line: 690, column: 9, scope: !5174)
!5192 = !DILocation(line: 690, column: 21, scope: !5174)
!5193 = !DILocation(line: 691, column: 1, scope: !5174)
!5194 = distinct !DISubprogram(name: "snd_hdac_regmap_exit", scope: !3, file: !3, line: 391, type: !5195, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5197)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !185}
!5197 = !{!5198}
!5198 = !DILocalVariable(name: "codec", arg: 1, scope: !5194, file: !3, line: 391, type: !185)
!5199 = !DILocation(line: 391, column: 47, scope: !5194)
!5200 = !DILocation(line: 393, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 393, column: 6)
!5202 = !DILocation(line: 393, column: 13, scope: !5201)
!5203 = !DILocation(line: 393, column: 6, scope: !5194)
!5204 = !DILocation(line: 394, column: 15, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 393, column: 21)
!5206 = !DILocation(line: 394, column: 22, scope: !5205)
!5207 = !DILocation(line: 394, column: 3, scope: !5205)
!5208 = !DILocation(line: 395, column: 3, scope: !5205)
!5209 = !DILocation(line: 395, column: 10, scope: !5205)
!5210 = !DILocation(line: 395, column: 17, scope: !5205)
!5211 = !DILocation(line: 396, column: 19, scope: !5205)
!5212 = !DILocation(line: 396, column: 26, scope: !5205)
!5213 = !DILocation(line: 396, column: 3, scope: !5205)
!5214 = !DILocation(line: 397, column: 2, scope: !5205)
!5215 = !DILocation(line: 398, column: 1, scope: !5194)
!5216 = !DISubprogram(name: "regmap_exit", scope: !166, file: !166, line: 1207, type: !5217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !4924}
!5219 = !DISubprogram(name: "snd_array_free", scope: !187, file: !187, line: 685, type: !5220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{null, !5177}
!5222 = distinct !DISubprogram(name: "snd_hdac_regmap_add_vendor_verb", scope: !3, file: !3, line: 408, type: !5223, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!109, !185, !7}
!5225 = !{!5226, !5227, !5228}
!5226 = !DILocalVariable(name: "codec", arg: 1, scope: !5222, file: !3, line: 408, type: !185)
!5227 = !DILocalVariable(name: "verb", arg: 2, scope: !5222, file: !3, line: 409, type: !7)
!5228 = !DILocalVariable(name: "p", scope: !5222, file: !3, line: 411, type: !698)
!5229 = !DILocation(line: 408, column: 57, scope: !5222)
!5230 = !DILocation(line: 409, column: 22, scope: !5222)
!5231 = !DILocation(line: 411, column: 2, scope: !5222)
!5232 = !DILocation(line: 411, column: 16, scope: !5222)
!5233 = !DILocation(line: 411, column: 35, scope: !5222)
!5234 = !DILocation(line: 411, column: 42, scope: !5222)
!5235 = !DILocation(line: 411, column: 20, scope: !5222)
!5236 = !DILocation(line: 413, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 413, column: 6)
!5238 = !DILocation(line: 413, column: 6, scope: !5222)
!5239 = !DILocation(line: 414, column: 3, scope: !5237)
!5240 = !DILocation(line: 415, column: 7, scope: !5222)
!5241 = !DILocation(line: 415, column: 12, scope: !5222)
!5242 = !DILocation(line: 415, column: 3, scope: !5222)
!5243 = !DILocation(line: 415, column: 5, scope: !5222)
!5244 = !DILocation(line: 416, column: 2, scope: !5222)
!5245 = !DILocation(line: 417, column: 1, scope: !5222)
!5246 = !DISubprogram(name: "snd_array_new", scope: !187, file: !187, line: 684, type: !5247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!184, !5177}
!5249 = distinct !DISubprogram(name: "snd_hdac_regmap_write_raw", scope: !3, file: !3, line: 459, type: !5250, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5252)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!109, !185, !7, !7}
!5252 = !{!5253, !5254, !5255, !5256}
!5253 = !DILocalVariable(name: "codec", arg: 1, scope: !5249, file: !3, line: 459, type: !185)
!5254 = !DILocalVariable(name: "reg", arg: 2, scope: !5249, file: !3, line: 459, type: !7)
!5255 = !DILocalVariable(name: "val", arg: 3, scope: !5249, file: !3, line: 460, type: !7)
!5256 = !DILocalVariable(name: "_err", scope: !5257, file: !3, line: 462, type: !109)
!5257 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 462, column: 9)
!5258 = !DILocation(line: 459, column: 51, scope: !5249)
!5259 = !DILocation(line: 459, column: 71, scope: !5249)
!5260 = !DILocation(line: 460, column: 23, scope: !5249)
!5261 = !DILocation(line: 462, column: 9, scope: !5257)
!5262 = !DILocation(line: 462, column: 9, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 462, column: 9)
!5264 = !DILocation(line: 462, column: 9, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 462, column: 9)
!5266 = !DILocation(line: 462, column: 9, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 462, column: 9)
!5268 = !DILocation(line: 462, column: 9, scope: !5249)
!5269 = !DILocation(line: 462, column: 2, scope: !5249)
!5270 = distinct !DISubprogram(name: "reg_raw_write", scope: !3, file: !3, line: 425, type: !5250, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5271 = !{!5272, !5273, !5274, !5275}
!5272 = !DILocalVariable(name: "codec", arg: 1, scope: !5270, file: !3, line: 425, type: !185)
!5273 = !DILocalVariable(name: "reg", arg: 2, scope: !5270, file: !3, line: 425, type: !7)
!5274 = !DILocalVariable(name: "val", arg: 3, scope: !5270, file: !3, line: 426, type: !7)
!5275 = !DILocalVariable(name: "err", scope: !5270, file: !3, line: 428, type: !109)
!5276 = !DILocation(line: 425, column: 46, scope: !5270)
!5277 = !DILocation(line: 425, column: 66, scope: !5270)
!5278 = !DILocation(line: 426, column: 18, scope: !5270)
!5279 = !DILocation(line: 428, column: 2, scope: !5270)
!5280 = !DILocation(line: 428, column: 6, scope: !5270)
!5281 = !DILocation(line: 430, column: 14, scope: !5270)
!5282 = !DILocation(line: 430, column: 21, scope: !5270)
!5283 = !DILocation(line: 430, column: 2, scope: !5270)
!5284 = !DILocation(line: 431, column: 7, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 431, column: 6)
!5286 = !DILocation(line: 431, column: 14, scope: !5285)
!5287 = !DILocation(line: 431, column: 6, scope: !5270)
!5288 = !DILocation(line: 432, column: 23, scope: !5285)
!5289 = !DILocation(line: 432, column: 30, scope: !5285)
!5290 = !DILocation(line: 432, column: 35, scope: !5285)
!5291 = !DILocation(line: 432, column: 9, scope: !5285)
!5292 = !DILocation(line: 432, column: 7, scope: !5285)
!5293 = !DILocation(line: 432, column: 3, scope: !5285)
!5294 = !DILocation(line: 434, column: 22, scope: !5285)
!5295 = !DILocation(line: 434, column: 29, scope: !5285)
!5296 = !DILocation(line: 434, column: 37, scope: !5285)
!5297 = !DILocation(line: 434, column: 42, scope: !5285)
!5298 = !DILocation(line: 434, column: 9, scope: !5285)
!5299 = !DILocation(line: 434, column: 7, scope: !5285)
!5300 = !DILocation(line: 435, column: 16, scope: !5270)
!5301 = !DILocation(line: 435, column: 23, scope: !5270)
!5302 = !DILocation(line: 435, column: 2, scope: !5270)
!5303 = !DILocation(line: 436, column: 9, scope: !5270)
!5304 = !DILocation(line: 437, column: 1, scope: !5270)
!5305 = !DILocation(line: 436, column: 2, scope: !5270)
!5306 = !DISubprogram(name: "snd_hdac_power_up_pm", scope: !187, file: !187, line: 181, type: !4759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5307 = !DISubprogram(name: "snd_hdac_power_down_pm", scope: !187, file: !187, line: 182, type: !4759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5308 = distinct !DISubprogram(name: "snd_hdac_regmap_read_raw", scope: !3, file: !3, line: 495, type: !5309, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!109, !185, !7, !698}
!5311 = !{!5312, !5313, !5314}
!5312 = !DILocalVariable(name: "codec", arg: 1, scope: !5308, file: !3, line: 495, type: !185)
!5313 = !DILocalVariable(name: "reg", arg: 2, scope: !5308, file: !3, line: 495, type: !7)
!5314 = !DILocalVariable(name: "val", arg: 3, scope: !5308, file: !3, line: 496, type: !698)
!5315 = !DILocation(line: 495, column: 50, scope: !5308)
!5316 = !DILocation(line: 495, column: 70, scope: !5308)
!5317 = !DILocation(line: 496, column: 23, scope: !5308)
!5318 = !DILocation(line: 498, column: 36, scope: !5308)
!5319 = !DILocation(line: 498, column: 43, scope: !5308)
!5320 = !DILocation(line: 498, column: 48, scope: !5308)
!5321 = !DILocation(line: 498, column: 9, scope: !5308)
!5322 = !DILocation(line: 498, column: 2, scope: !5308)
!5323 = distinct !DISubprogram(name: "__snd_hdac_regmap_read_raw", scope: !3, file: !3, line: 480, type: !5324, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!109, !185, !7, !698, !706}
!5326 = !{!5327, !5328, !5329, !5330, !5331}
!5327 = !DILocalVariable(name: "codec", arg: 1, scope: !5323, file: !3, line: 480, type: !185)
!5328 = !DILocalVariable(name: "reg", arg: 2, scope: !5323, file: !3, line: 481, type: !7)
!5329 = !DILocalVariable(name: "val", arg: 3, scope: !5323, file: !3, line: 481, type: !698)
!5330 = !DILocalVariable(name: "uncached", arg: 4, scope: !5323, file: !3, line: 482, type: !706)
!5331 = !DILocalVariable(name: "_err", scope: !5332, file: !3, line: 484, type: !109)
!5332 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 484, column: 9)
!5333 = !DILocation(line: 480, column: 59, scope: !5323)
!5334 = !DILocation(line: 481, column: 24, scope: !5323)
!5335 = !DILocation(line: 481, column: 43, scope: !5323)
!5336 = !DILocation(line: 482, column: 16, scope: !5323)
!5337 = !DILocation(line: 484, column: 9, scope: !5332)
!5338 = !{i8 0, i8 2}
!5339 = !DILocation(line: 484, column: 9, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 484, column: 9)
!5341 = !DILocation(line: 484, column: 9, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 484, column: 9)
!5343 = !DILocation(line: 484, column: 9, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 484, column: 9)
!5345 = !DILocation(line: 484, column: 9, scope: !5323)
!5346 = !DILocation(line: 484, column: 2, scope: !5323)
!5347 = distinct !DISubprogram(name: "snd_hdac_regmap_read_raw_uncached", scope: !3, file: !3, line: 505, type: !5309, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5348 = !{!5349, !5350, !5351}
!5349 = !DILocalVariable(name: "codec", arg: 1, scope: !5347, file: !3, line: 505, type: !185)
!5350 = !DILocalVariable(name: "reg", arg: 2, scope: !5347, file: !3, line: 506, type: !7)
!5351 = !DILocalVariable(name: "val", arg: 3, scope: !5347, file: !3, line: 506, type: !698)
!5352 = !DILocation(line: 505, column: 59, scope: !5347)
!5353 = !DILocation(line: 506, column: 24, scope: !5347)
!5354 = !DILocation(line: 506, column: 43, scope: !5347)
!5355 = !DILocation(line: 508, column: 36, scope: !5347)
!5356 = !DILocation(line: 508, column: 43, scope: !5347)
!5357 = !DILocation(line: 508, column: 48, scope: !5347)
!5358 = !DILocation(line: 508, column: 9, scope: !5347)
!5359 = !DILocation(line: 508, column: 2, scope: !5347)
!5360 = distinct !DISubprogram(name: "snd_hdac_regmap_update_raw", scope: !3, file: !3, line: 549, type: !5361, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5363)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!109, !185, !7, !7, !7}
!5363 = !{!5364, !5365, !5366, !5367, !5368}
!5364 = !DILocalVariable(name: "codec", arg: 1, scope: !5360, file: !3, line: 549, type: !185)
!5365 = !DILocalVariable(name: "reg", arg: 2, scope: !5360, file: !3, line: 549, type: !7)
!5366 = !DILocalVariable(name: "mask", arg: 3, scope: !5360, file: !3, line: 550, type: !7)
!5367 = !DILocalVariable(name: "val", arg: 4, scope: !5360, file: !3, line: 550, type: !7)
!5368 = !DILocalVariable(name: "_err", scope: !5369, file: !3, line: 552, type: !109)
!5369 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 552, column: 9)
!5370 = !DILocation(line: 549, column: 52, scope: !5360)
!5371 = !DILocation(line: 549, column: 72, scope: !5360)
!5372 = !DILocation(line: 550, column: 24, scope: !5360)
!5373 = !DILocation(line: 550, column: 43, scope: !5360)
!5374 = !DILocation(line: 552, column: 9, scope: !5369)
!5375 = !DILocation(line: 552, column: 9, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 552, column: 9)
!5377 = !DILocation(line: 552, column: 9, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 552, column: 9)
!5379 = !DILocation(line: 552, column: 9, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 552, column: 9)
!5381 = !DILocation(line: 552, column: 9, scope: !5360)
!5382 = !DILocation(line: 552, column: 2, scope: !5360)
!5383 = distinct !DISubprogram(name: "reg_raw_update", scope: !3, file: !3, line: 511, type: !5361, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5384)
!5384 = !{!5385, !5386, !5387, !5388, !5389, !5390, !5391}
!5385 = !DILocalVariable(name: "codec", arg: 1, scope: !5383, file: !3, line: 511, type: !185)
!5386 = !DILocalVariable(name: "reg", arg: 2, scope: !5383, file: !3, line: 511, type: !7)
!5387 = !DILocalVariable(name: "mask", arg: 3, scope: !5383, file: !3, line: 512, type: !7)
!5388 = !DILocalVariable(name: "val", arg: 4, scope: !5383, file: !3, line: 512, type: !7)
!5389 = !DILocalVariable(name: "orig", scope: !5383, file: !3, line: 514, type: !7)
!5390 = !DILocalVariable(name: "change", scope: !5383, file: !3, line: 515, type: !706)
!5391 = !DILocalVariable(name: "err", scope: !5383, file: !3, line: 516, type: !109)
!5392 = !DILocation(line: 511, column: 47, scope: !5383)
!5393 = !DILocation(line: 511, column: 67, scope: !5383)
!5394 = !DILocation(line: 512, column: 19, scope: !5383)
!5395 = !DILocation(line: 512, column: 38, scope: !5383)
!5396 = !DILocation(line: 514, column: 2, scope: !5383)
!5397 = !DILocation(line: 514, column: 15, scope: !5383)
!5398 = !DILocation(line: 515, column: 2, scope: !5383)
!5399 = !DILocation(line: 515, column: 7, scope: !5383)
!5400 = !DILocation(line: 516, column: 2, scope: !5383)
!5401 = !DILocation(line: 516, column: 6, scope: !5383)
!5402 = !DILocation(line: 518, column: 14, scope: !5383)
!5403 = !DILocation(line: 518, column: 21, scope: !5383)
!5404 = !DILocation(line: 518, column: 2, scope: !5383)
!5405 = !DILocation(line: 519, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 519, column: 6)
!5407 = !DILocation(line: 519, column: 13, scope: !5406)
!5408 = !DILocation(line: 519, column: 6, scope: !5383)
!5409 = !DILocation(line: 520, column: 34, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 519, column: 21)
!5411 = !DILocation(line: 520, column: 41, scope: !5410)
!5412 = !DILocation(line: 520, column: 49, scope: !5410)
!5413 = !DILocation(line: 520, column: 54, scope: !5410)
!5414 = !DILocation(line: 520, column: 60, scope: !5410)
!5415 = !DILocation(line: 520, column: 9, scope: !5410)
!5416 = !DILocation(line: 520, column: 7, scope: !5410)
!5417 = !DILocation(line: 522, column: 8, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 522, column: 7)
!5419 = !DILocation(line: 522, column: 7, scope: !5410)
!5420 = !DILocation(line: 523, column: 10, scope: !5418)
!5421 = !DILocation(line: 523, column: 8, scope: !5418)
!5422 = !DILocation(line: 523, column: 4, scope: !5418)
!5423 = !DILocation(line: 524, column: 2, scope: !5410)
!5424 = !DILocation(line: 525, column: 22, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 524, column: 9)
!5426 = !DILocation(line: 525, column: 29, scope: !5425)
!5427 = !DILocation(line: 525, column: 9, scope: !5425)
!5428 = !DILocation(line: 525, column: 7, scope: !5425)
!5429 = !DILocation(line: 526, column: 8, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 526, column: 7)
!5431 = !DILocation(line: 526, column: 7, scope: !5425)
!5432 = !DILocation(line: 527, column: 11, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 526, column: 13)
!5434 = !DILocation(line: 527, column: 8, scope: !5433)
!5435 = !DILocation(line: 528, column: 11, scope: !5433)
!5436 = !DILocation(line: 528, column: 19, scope: !5433)
!5437 = !DILocation(line: 528, column: 18, scope: !5433)
!5438 = !DILocation(line: 528, column: 16, scope: !5433)
!5439 = !DILocation(line: 528, column: 8, scope: !5433)
!5440 = !DILocation(line: 529, column: 8, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 529, column: 8)
!5442 = !DILocation(line: 529, column: 15, scope: !5441)
!5443 = !DILocation(line: 529, column: 12, scope: !5441)
!5444 = !DILocation(line: 529, column: 8, scope: !5433)
!5445 = !DILocation(line: 530, column: 25, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 529, column: 21)
!5447 = !DILocation(line: 530, column: 32, scope: !5446)
!5448 = !DILocation(line: 530, column: 37, scope: !5446)
!5449 = !DILocation(line: 530, column: 11, scope: !5446)
!5450 = !DILocation(line: 530, column: 9, scope: !5446)
!5451 = !DILocation(line: 531, column: 10, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 531, column: 9)
!5453 = !DILocation(line: 531, column: 9, scope: !5446)
!5454 = !DILocation(line: 532, column: 10, scope: !5452)
!5455 = !DILocation(line: 532, column: 6, scope: !5452)
!5456 = !DILocation(line: 533, column: 4, scope: !5446)
!5457 = !DILocation(line: 534, column: 3, scope: !5433)
!5458 = !DILocation(line: 536, column: 16, scope: !5383)
!5459 = !DILocation(line: 536, column: 23, scope: !5383)
!5460 = !DILocation(line: 536, column: 2, scope: !5383)
!5461 = !DILocation(line: 537, column: 9, scope: !5383)
!5462 = !DILocation(line: 538, column: 1, scope: !5383)
!5463 = !DILocation(line: 537, column: 2, scope: !5383)
!5464 = distinct !DISubprogram(name: "snd_hdac_regmap_update_raw_once", scope: !3, file: !3, line: 583, type: !5361, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5465 = !{!5466, !5467, !5468, !5469, !5470}
!5466 = !DILocalVariable(name: "codec", arg: 1, scope: !5464, file: !3, line: 583, type: !185)
!5467 = !DILocalVariable(name: "reg", arg: 2, scope: !5464, file: !3, line: 583, type: !7)
!5468 = !DILocalVariable(name: "mask", arg: 3, scope: !5464, file: !3, line: 584, type: !7)
!5469 = !DILocalVariable(name: "val", arg: 4, scope: !5464, file: !3, line: 584, type: !7)
!5470 = !DILocalVariable(name: "_err", scope: !5471, file: !3, line: 586, type: !109)
!5471 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 586, column: 9)
!5472 = !DILocation(line: 583, column: 57, scope: !5464)
!5473 = !DILocation(line: 583, column: 77, scope: !5464)
!5474 = !DILocation(line: 584, column: 22, scope: !5464)
!5475 = !DILocation(line: 584, column: 41, scope: !5464)
!5476 = !DILocation(line: 586, column: 9, scope: !5471)
!5477 = !DILocation(line: 586, column: 9, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 586, column: 9)
!5479 = !DILocation(line: 586, column: 9, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 586, column: 9)
!5481 = !DILocation(line: 586, column: 9, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 586, column: 9)
!5483 = !DILocation(line: 586, column: 9, scope: !5464)
!5484 = !DILocation(line: 586, column: 2, scope: !5464)
!5485 = distinct !DISubprogram(name: "reg_raw_update_once", scope: !3, file: !3, line: 556, type: !5361, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5486)
!5486 = !{!5487, !5488, !5489, !5490, !5491}
!5487 = !DILocalVariable(name: "codec", arg: 1, scope: !5485, file: !3, line: 556, type: !185)
!5488 = !DILocalVariable(name: "reg", arg: 2, scope: !5485, file: !3, line: 556, type: !7)
!5489 = !DILocalVariable(name: "mask", arg: 3, scope: !5485, file: !3, line: 557, type: !7)
!5490 = !DILocalVariable(name: "val", arg: 4, scope: !5485, file: !3, line: 557, type: !7)
!5491 = !DILocalVariable(name: "err", scope: !5485, file: !3, line: 559, type: !109)
!5492 = !DILocation(line: 556, column: 52, scope: !5485)
!5493 = !DILocation(line: 556, column: 72, scope: !5485)
!5494 = !DILocation(line: 557, column: 24, scope: !5485)
!5495 = !DILocation(line: 557, column: 43, scope: !5485)
!5496 = !DILocation(line: 559, column: 2, scope: !5485)
!5497 = !DILocation(line: 559, column: 6, scope: !5485)
!5498 = !DILocation(line: 561, column: 7, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 561, column: 6)
!5500 = !DILocation(line: 561, column: 14, scope: !5499)
!5501 = !DILocation(line: 561, column: 6, scope: !5485)
!5502 = !DILocation(line: 562, column: 25, scope: !5499)
!5503 = !DILocation(line: 562, column: 32, scope: !5499)
!5504 = !DILocation(line: 562, column: 37, scope: !5499)
!5505 = !DILocation(line: 562, column: 43, scope: !5499)
!5506 = !DILocation(line: 562, column: 10, scope: !5499)
!5507 = !DILocation(line: 562, column: 3, scope: !5499)
!5508 = !DILocation(line: 564, column: 14, scope: !5485)
!5509 = !DILocation(line: 564, column: 21, scope: !5485)
!5510 = !DILocation(line: 564, column: 2, scope: !5485)
!5511 = !DILocation(line: 566, column: 27, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 566, column: 6)
!5513 = !DILocation(line: 566, column: 34, scope: !5512)
!5514 = !DILocation(line: 566, column: 42, scope: !5512)
!5515 = !DILocation(line: 566, column: 7, scope: !5512)
!5516 = !DILocation(line: 566, column: 6, scope: !5485)
!5517 = !DILocation(line: 567, column: 28, scope: !5512)
!5518 = !DILocation(line: 567, column: 35, scope: !5512)
!5519 = !DILocation(line: 567, column: 43, scope: !5512)
!5520 = !DILocation(line: 567, column: 48, scope: !5512)
!5521 = !DILocation(line: 567, column: 54, scope: !5512)
!5522 = !DILocation(line: 567, column: 9, scope: !5512)
!5523 = !DILocation(line: 567, column: 7, scope: !5512)
!5524 = !DILocation(line: 567, column: 3, scope: !5512)
!5525 = !DILocation(line: 568, column: 16, scope: !5485)
!5526 = !DILocation(line: 568, column: 23, scope: !5485)
!5527 = !DILocation(line: 568, column: 2, scope: !5485)
!5528 = !DILocation(line: 569, column: 9, scope: !5485)
!5529 = !DILocation(line: 569, column: 2, scope: !5485)
!5530 = !DILocation(line: 570, column: 1, scope: !5485)
!5531 = distinct !DISubprogram(name: "snd_hdac_regmap_sync", scope: !3, file: !3, line: 594, type: !5195, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5532 = !{!5533}
!5533 = !DILocalVariable(name: "codec", arg: 1, scope: !5531, file: !3, line: 594, type: !185)
!5534 = !DILocation(line: 594, column: 47, scope: !5531)
!5535 = !DILocation(line: 596, column: 14, scope: !5531)
!5536 = !DILocation(line: 596, column: 21, scope: !5531)
!5537 = !DILocation(line: 596, column: 2, scope: !5531)
!5538 = !DILocation(line: 597, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 597, column: 6)
!5540 = !DILocation(line: 597, column: 13, scope: !5539)
!5541 = !DILocation(line: 597, column: 6, scope: !5531)
!5542 = !DILocation(line: 598, column: 17, scope: !5539)
!5543 = !DILocation(line: 598, column: 24, scope: !5539)
!5544 = !DILocation(line: 598, column: 3, scope: !5539)
!5545 = !DILocation(line: 599, column: 16, scope: !5531)
!5546 = !DILocation(line: 599, column: 23, scope: !5531)
!5547 = !DILocation(line: 599, column: 2, scope: !5531)
!5548 = !DILocation(line: 600, column: 1, scope: !5531)
!5549 = !DISubprogram(name: "mutex_lock", scope: !627, file: !627, line: 227, type: !5550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5550 = !DISubroutineType(types: !5551)
!5551 = !{null, !5552}
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!5553 = !DISubprogram(name: "regcache_sync", scope: !166, file: !166, line: 1283, type: !5554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!109, !4924}
!5556 = !DISubprogram(name: "mutex_unlock", scope: !627, file: !627, line: 246, type: !5550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5557 = distinct !DISubprogram(name: "hda_writeable_reg", scope: !3, file: !3, line: 65, type: !4970, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5558)
!5558 = !{!5559, !5560, !5561, !5562, !5564, !5565, !5567}
!5559 = !DILocalVariable(name: "dev", arg: 1, scope: !5557, file: !3, line: 65, type: !4202)
!5560 = !DILocalVariable(name: "reg", arg: 2, scope: !5557, file: !3, line: 65, type: !7)
!5561 = !DILocalVariable(name: "codec", scope: !5557, file: !3, line: 67, type: !185)
!5562 = !DILocalVariable(name: "__mptr", scope: !5563, file: !3, line: 67, type: !184)
!5563 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 67, column: 30)
!5564 = !DILocalVariable(name: "verb", scope: !5557, file: !3, line: 68, type: !7)
!5565 = !DILocalVariable(name: "v", scope: !5557, file: !3, line: 69, type: !5566)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!5567 = !DILocalVariable(name: "i", scope: !5557, file: !3, line: 70, type: !109)
!5568 = !DILocation(line: 65, column: 46, scope: !5557)
!5569 = !DILocation(line: 65, column: 64, scope: !5557)
!5570 = !DILocation(line: 67, column: 2, scope: !5557)
!5571 = !DILocation(line: 67, column: 22, scope: !5557)
!5572 = !DILocation(line: 67, column: 30, scope: !5563)
!5573 = !DILocation(line: 67, column: 30, scope: !5557)
!5574 = !DILocation(line: 68, column: 2, scope: !5557)
!5575 = !DILocation(line: 68, column: 15, scope: !5557)
!5576 = !DILocation(line: 68, column: 22, scope: !5557)
!5577 = !DILocation(line: 69, column: 2, scope: !5557)
!5578 = !DILocation(line: 69, column: 22, scope: !5557)
!5579 = !DILocation(line: 70, column: 2, scope: !5557)
!5580 = !DILocation(line: 70, column: 6, scope: !5557)
!5581 = !DILocation(line: 72, column: 2, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 72, column: 2)
!5583 = !DILocation(line: 72, column: 2, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 72, column: 2)
!5585 = !DILocation(line: 73, column: 7, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 73, column: 7)
!5587 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 72, column: 49)
!5588 = !DILocation(line: 73, column: 16, scope: !5586)
!5589 = !DILocation(line: 73, column: 15, scope: !5586)
!5590 = !DILocation(line: 73, column: 12, scope: !5586)
!5591 = !DILocation(line: 73, column: 7, scope: !5587)
!5592 = !DILocation(line: 74, column: 4, scope: !5586)
!5593 = !DILocation(line: 75, column: 2, scope: !5587)
!5594 = distinct !{!5594, !5581, !5595, !5596, !5597}
!5595 = !DILocation(line: 75, column: 2, scope: !5582)
!5596 = !{!"llvm.loop.mustprogress"}
!5597 = !{!"llvm.loop.unroll.disable"}
!5598 = !DILocation(line: 77, column: 6, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 77, column: 6)
!5600 = !DILocation(line: 77, column: 13, scope: !5599)
!5601 = !DILocation(line: 77, column: 6, scope: !5557)
!5602 = !DILocation(line: 78, column: 3, scope: !5599)
!5603 = !DILocation(line: 80, column: 10, scope: !5557)
!5604 = !DILocation(line: 80, column: 15, scope: !5557)
!5605 = !DILocation(line: 80, column: 2, scope: !5557)
!5606 = !DILocation(line: 83, column: 3, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 80, column: 24)
!5608 = !DILocation(line: 85, column: 10, scope: !5607)
!5609 = !DILocation(line: 85, column: 17, scope: !5607)
!5610 = !DILocation(line: 85, column: 3, scope: !5607)
!5611 = !DILocation(line: 89, column: 3, scope: !5607)
!5612 = !DILocation(line: 92, column: 10, scope: !5557)
!5613 = !DILocation(line: 92, column: 2, scope: !5557)
!5614 = !DILocation(line: 108, column: 3, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 92, column: 16)
!5616 = !DILocation(line: 111, column: 2, scope: !5557)
!5617 = !DILocation(line: 112, column: 1, scope: !5557)
!5618 = distinct !DISubprogram(name: "hda_readable_reg", scope: !3, file: !3, line: 114, type: !4970, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5619)
!5619 = !{!5620, !5621, !5622, !5623, !5625}
!5620 = !DILocalVariable(name: "dev", arg: 1, scope: !5618, file: !3, line: 114, type: !4202)
!5621 = !DILocalVariable(name: "reg", arg: 2, scope: !5618, file: !3, line: 114, type: !7)
!5622 = !DILocalVariable(name: "codec", scope: !5618, file: !3, line: 116, type: !185)
!5623 = !DILocalVariable(name: "__mptr", scope: !5624, file: !3, line: 116, type: !184)
!5624 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 116, column: 30)
!5625 = !DILocalVariable(name: "verb", scope: !5618, file: !3, line: 117, type: !7)
!5626 = !DILocation(line: 114, column: 45, scope: !5618)
!5627 = !DILocation(line: 114, column: 63, scope: !5618)
!5628 = !DILocation(line: 116, column: 2, scope: !5618)
!5629 = !DILocation(line: 116, column: 22, scope: !5618)
!5630 = !DILocation(line: 116, column: 30, scope: !5624)
!5631 = !DILocation(line: 116, column: 30, scope: !5618)
!5632 = !DILocation(line: 117, column: 2, scope: !5618)
!5633 = !DILocation(line: 117, column: 15, scope: !5618)
!5634 = !DILocation(line: 117, column: 22, scope: !5618)
!5635 = !DILocation(line: 119, column: 6, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 119, column: 6)
!5637 = !DILocation(line: 119, column: 13, scope: !5636)
!5638 = !DILocation(line: 119, column: 6, scope: !5618)
!5639 = !DILocation(line: 120, column: 3, scope: !5636)
!5640 = !DILocation(line: 122, column: 10, scope: !5618)
!5641 = !DILocation(line: 122, column: 2, scope: !5618)
!5642 = !DILocation(line: 126, column: 3, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 122, column: 16)
!5644 = !DILocation(line: 133, column: 3, scope: !5643)
!5645 = !DILocation(line: 136, column: 27, scope: !5618)
!5646 = !DILocation(line: 136, column: 32, scope: !5618)
!5647 = !DILocation(line: 136, column: 9, scope: !5618)
!5648 = !DILocation(line: 136, column: 2, scope: !5618)
!5649 = !DILocation(line: 137, column: 1, scope: !5618)
!5650 = distinct !DISubprogram(name: "hda_volatile_reg", scope: !3, file: !3, line: 38, type: !4970, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5651)
!5651 = !{!5652, !5653, !5654, !5655, !5657}
!5652 = !DILocalVariable(name: "dev", arg: 1, scope: !5650, file: !3, line: 38, type: !4202)
!5653 = !DILocalVariable(name: "reg", arg: 2, scope: !5650, file: !3, line: 38, type: !7)
!5654 = !DILocalVariable(name: "codec", scope: !5650, file: !3, line: 40, type: !185)
!5655 = !DILocalVariable(name: "__mptr", scope: !5656, file: !3, line: 40, type: !184)
!5656 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 40, column: 30)
!5657 = !DILocalVariable(name: "verb", scope: !5650, file: !3, line: 41, type: !7)
!5658 = !DILocation(line: 38, column: 45, scope: !5650)
!5659 = !DILocation(line: 38, column: 63, scope: !5650)
!5660 = !DILocation(line: 40, column: 2, scope: !5650)
!5661 = !DILocation(line: 40, column: 22, scope: !5650)
!5662 = !DILocation(line: 40, column: 30, scope: !5656)
!5663 = !DILocation(line: 40, column: 30, scope: !5650)
!5664 = !DILocation(line: 41, column: 2, scope: !5650)
!5665 = !DILocation(line: 41, column: 15, scope: !5650)
!5666 = !DILocation(line: 41, column: 22, scope: !5650)
!5667 = !DILocation(line: 43, column: 10, scope: !5650)
!5668 = !DILocation(line: 43, column: 2, scope: !5650)
!5669 = !DILocation(line: 45, column: 11, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 43, column: 16)
!5671 = !DILocation(line: 45, column: 18, scope: !5670)
!5672 = !DILocation(line: 45, column: 10, scope: !5670)
!5673 = !DILocation(line: 45, column: 3, scope: !5670)
!5674 = !DILocation(line: 59, column: 3, scope: !5670)
!5675 = !DILocation(line: 62, column: 2, scope: !5650)
!5676 = !DILocation(line: 63, column: 1, scope: !5650)
!5677 = distinct !DISubprogram(name: "hda_reg_read", scope: !3, file: !3, line: 240, type: !4985, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5678)
!5678 = !{!5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686}
!5679 = !DILocalVariable(name: "context", arg: 1, scope: !5677, file: !3, line: 240, type: !184)
!5680 = !DILocalVariable(name: "reg", arg: 2, scope: !5677, file: !3, line: 240, type: !7)
!5681 = !DILocalVariable(name: "val", arg: 3, scope: !5677, file: !3, line: 240, type: !698)
!5682 = !DILocalVariable(name: "codec", scope: !5677, file: !3, line: 242, type: !185)
!5683 = !DILocalVariable(name: "verb", scope: !5677, file: !3, line: 243, type: !109)
!5684 = !DILocalVariable(name: "err", scope: !5677, file: !3, line: 244, type: !109)
!5685 = !DILocalVariable(name: "pm_lock", scope: !5677, file: !3, line: 245, type: !109)
!5686 = !DILabel(scope: !5677, name: "out", file: !3, line: 274)
!5687 = !DILocation(line: 240, column: 31, scope: !5677)
!5688 = !DILocation(line: 240, column: 53, scope: !5677)
!5689 = !DILocation(line: 240, column: 72, scope: !5677)
!5690 = !DILocation(line: 242, column: 2, scope: !5677)
!5691 = !DILocation(line: 242, column: 22, scope: !5677)
!5692 = !DILocation(line: 242, column: 30, scope: !5677)
!5693 = !DILocation(line: 243, column: 2, scope: !5677)
!5694 = !DILocation(line: 243, column: 6, scope: !5677)
!5695 = !DILocation(line: 243, column: 13, scope: !5677)
!5696 = !DILocation(line: 244, column: 2, scope: !5677)
!5697 = !DILocation(line: 244, column: 6, scope: !5677)
!5698 = !DILocation(line: 245, column: 2, scope: !5677)
!5699 = !DILocation(line: 245, column: 6, scope: !5677)
!5700 = !DILocation(line: 247, column: 6, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 247, column: 6)
!5702 = !DILocation(line: 247, column: 11, scope: !5701)
!5703 = !DILocation(line: 247, column: 6, scope: !5677)
!5704 = !DILocation(line: 248, column: 27, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 247, column: 39)
!5706 = !DILocation(line: 248, column: 13, scope: !5705)
!5707 = !DILocation(line: 248, column: 11, scope: !5705)
!5708 = !DILocation(line: 249, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 249, column: 7)
!5710 = !DILocation(line: 249, column: 15, scope: !5709)
!5711 = !DILocation(line: 249, column: 7, scope: !5705)
!5712 = !DILocation(line: 250, column: 4, scope: !5709)
!5713 = !DILocation(line: 251, column: 2, scope: !5705)
!5714 = !DILocation(line: 252, column: 10, scope: !5677)
!5715 = !DILocation(line: 252, column: 17, scope: !5677)
!5716 = !DILocation(line: 252, column: 22, scope: !5677)
!5717 = !DILocation(line: 252, column: 6, scope: !5677)
!5718 = !DILocation(line: 253, column: 25, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 253, column: 6)
!5720 = !DILocation(line: 253, column: 6, scope: !5719)
!5721 = !DILocation(line: 253, column: 6, scope: !5677)
!5722 = !DILocation(line: 254, column: 33, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 253, column: 31)
!5724 = !DILocation(line: 254, column: 40, scope: !5723)
!5725 = !DILocation(line: 254, column: 45, scope: !5723)
!5726 = !DILocation(line: 254, column: 9, scope: !5723)
!5727 = !DILocation(line: 254, column: 7, scope: !5723)
!5728 = !DILocation(line: 255, column: 3, scope: !5723)
!5729 = !DILocation(line: 257, column: 6, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 257, column: 6)
!5731 = !DILocation(line: 257, column: 11, scope: !5730)
!5732 = !DILocation(line: 257, column: 6, scope: !5677)
!5733 = !DILocation(line: 258, column: 27, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 257, column: 37)
!5735 = !DILocation(line: 258, column: 34, scope: !5734)
!5736 = !DILocation(line: 258, column: 39, scope: !5734)
!5737 = !DILocation(line: 258, column: 9, scope: !5734)
!5738 = !DILocation(line: 258, column: 7, scope: !5734)
!5739 = !DILocation(line: 259, column: 3, scope: !5734)
!5740 = !DILocation(line: 261, column: 7, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 261, column: 6)
!5742 = !DILocation(line: 261, column: 12, scope: !5741)
!5743 = !DILocation(line: 261, column: 21, scope: !5741)
!5744 = !DILocation(line: 261, column: 6, scope: !5677)
!5745 = !DILocation(line: 262, column: 7, scope: !5741)
!5746 = !DILocation(line: 262, column: 3, scope: !5741)
!5747 = !DILocation(line: 264, column: 27, scope: !5677)
!5748 = !DILocation(line: 264, column: 34, scope: !5677)
!5749 = !DILocation(line: 264, column: 42, scope: !5677)
!5750 = !DILocation(line: 264, column: 8, scope: !5677)
!5751 = !DILocation(line: 264, column: 6, scope: !5677)
!5752 = !DILocation(line: 265, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 265, column: 6)
!5754 = !DILocation(line: 265, column: 10, scope: !5753)
!5755 = !DILocation(line: 265, column: 6, scope: !5677)
!5756 = !DILocation(line: 266, column: 3, scope: !5753)
!5757 = !DILocation(line: 268, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 268, column: 6)
!5759 = !DILocation(line: 268, column: 11, scope: !5758)
!5760 = !DILocation(line: 268, column: 6, scope: !5677)
!5761 = !DILocation(line: 269, column: 8, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 269, column: 7)
!5763 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 268, column: 39)
!5764 = !DILocation(line: 269, column: 7, scope: !5762)
!5765 = !DILocation(line: 269, column: 12, scope: !5762)
!5766 = !DILocation(line: 269, column: 7, scope: !5763)
!5767 = !DILocation(line: 270, column: 5, scope: !5762)
!5768 = !DILocation(line: 270, column: 9, scope: !5762)
!5769 = !DILocation(line: 270, column: 4, scope: !5762)
!5770 = !DILocation(line: 272, column: 13, scope: !5762)
!5771 = !DILocation(line: 272, column: 12, scope: !5762)
!5772 = !DILocation(line: 272, column: 17, scope: !5762)
!5773 = !DILocation(line: 272, column: 23, scope: !5762)
!5774 = !DILocation(line: 272, column: 5, scope: !5762)
!5775 = !DILocation(line: 272, column: 9, scope: !5762)
!5776 = !DILocation(line: 273, column: 2, scope: !5763)
!5777 = !DILocation(line: 268, column: 14, scope: !5758)
!5778 = !DILocation(line: 274, column: 2, scope: !5677)
!5779 = !DILocation(line: 275, column: 18, scope: !5677)
!5780 = !DILocation(line: 275, column: 25, scope: !5677)
!5781 = !DILocation(line: 275, column: 2, scope: !5677)
!5782 = !DILocation(line: 276, column: 9, scope: !5677)
!5783 = !DILocation(line: 276, column: 2, scope: !5677)
!5784 = !DILocation(line: 277, column: 1, scope: !5677)
!5785 = distinct !DISubprogram(name: "hda_reg_write", scope: !3, file: !3, line: 279, type: !4989, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5786)
!5786 = !{!5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796}
!5787 = !DILocalVariable(name: "context", arg: 1, scope: !5785, file: !3, line: 279, type: !184)
!5788 = !DILocalVariable(name: "reg", arg: 2, scope: !5785, file: !3, line: 279, type: !7)
!5789 = !DILocalVariable(name: "val", arg: 3, scope: !5785, file: !3, line: 279, type: !7)
!5790 = !DILocalVariable(name: "codec", scope: !5785, file: !3, line: 281, type: !185)
!5791 = !DILocalVariable(name: "verb", scope: !5785, file: !3, line: 282, type: !7)
!5792 = !DILocalVariable(name: "i", scope: !5785, file: !3, line: 283, type: !109)
!5793 = !DILocalVariable(name: "bytes", scope: !5785, file: !3, line: 283, type: !109)
!5794 = !DILocalVariable(name: "err", scope: !5785, file: !3, line: 283, type: !109)
!5795 = !DILocalVariable(name: "pm_lock", scope: !5785, file: !3, line: 284, type: !109)
!5796 = !DILabel(scope: !5785, name: "out", file: !3, line: 347)
!5797 = !DILocation(line: 279, column: 32, scope: !5785)
!5798 = !DILocation(line: 279, column: 54, scope: !5785)
!5799 = !DILocation(line: 279, column: 72, scope: !5785)
!5800 = !DILocation(line: 281, column: 2, scope: !5785)
!5801 = !DILocation(line: 281, column: 22, scope: !5785)
!5802 = !DILocation(line: 281, column: 30, scope: !5785)
!5803 = !DILocation(line: 282, column: 2, scope: !5785)
!5804 = !DILocation(line: 282, column: 15, scope: !5785)
!5805 = !DILocation(line: 283, column: 2, scope: !5785)
!5806 = !DILocation(line: 283, column: 6, scope: !5785)
!5807 = !DILocation(line: 283, column: 9, scope: !5785)
!5808 = !DILocation(line: 283, column: 16, scope: !5785)
!5809 = !DILocation(line: 284, column: 2, scope: !5785)
!5810 = !DILocation(line: 284, column: 6, scope: !5785)
!5811 = !DILocation(line: 286, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 286, column: 6)
!5813 = !DILocation(line: 286, column: 13, scope: !5812)
!5814 = !DILocation(line: 286, column: 6, scope: !5785)
!5815 = !DILocation(line: 287, column: 3, scope: !5812)
!5816 = !DILocation(line: 289, column: 6, scope: !5785)
!5817 = !DILocation(line: 290, column: 10, scope: !5785)
!5818 = !DILocation(line: 290, column: 17, scope: !5785)
!5819 = !DILocation(line: 290, column: 22, scope: !5785)
!5820 = !DILocation(line: 290, column: 6, scope: !5785)
!5821 = !DILocation(line: 291, column: 9, scope: !5785)
!5822 = !DILocation(line: 291, column: 7, scope: !5785)
!5823 = !DILocation(line: 293, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 293, column: 6)
!5825 = !DILocation(line: 293, column: 11, scope: !5824)
!5826 = !DILocation(line: 293, column: 6, scope: !5785)
!5827 = !DILocation(line: 294, column: 27, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 293, column: 39)
!5829 = !DILocation(line: 294, column: 13, scope: !5828)
!5830 = !DILocation(line: 294, column: 11, scope: !5828)
!5831 = !DILocation(line: 295, column: 7, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 295, column: 7)
!5833 = !DILocation(line: 295, column: 15, scope: !5832)
!5834 = !DILocation(line: 295, column: 7, scope: !5828)
!5835 = !DILocation(line: 296, column: 11, scope: !5832)
!5836 = !DILocation(line: 296, column: 18, scope: !5832)
!5837 = !DILocation(line: 296, column: 4, scope: !5832)
!5838 = !DILocation(line: 297, column: 2, scope: !5828)
!5839 = !DILocation(line: 299, column: 25, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 299, column: 6)
!5841 = !DILocation(line: 299, column: 6, scope: !5840)
!5842 = !DILocation(line: 299, column: 6, scope: !5785)
!5843 = !DILocation(line: 300, column: 34, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 299, column: 31)
!5845 = !DILocation(line: 300, column: 41, scope: !5844)
!5846 = !DILocation(line: 300, column: 46, scope: !5844)
!5847 = !DILocation(line: 300, column: 9, scope: !5844)
!5848 = !DILocation(line: 300, column: 7, scope: !5844)
!5849 = !DILocation(line: 301, column: 3, scope: !5844)
!5850 = !DILocation(line: 304, column: 6, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 304, column: 6)
!5852 = !DILocation(line: 304, column: 11, scope: !5851)
!5853 = !DILocation(line: 304, column: 6, scope: !5785)
!5854 = !DILocation(line: 305, column: 28, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 304, column: 37)
!5856 = !DILocation(line: 305, column: 35, scope: !5855)
!5857 = !DILocation(line: 305, column: 40, scope: !5855)
!5858 = !DILocation(line: 305, column: 9, scope: !5855)
!5859 = !DILocation(line: 305, column: 7, scope: !5855)
!5860 = !DILocation(line: 306, column: 3, scope: !5855)
!5861 = !DILocation(line: 309, column: 10, scope: !5785)
!5862 = !DILocation(line: 309, column: 15, scope: !5785)
!5863 = !DILocation(line: 309, column: 2, scope: !5785)
!5864 = !DILocation(line: 311, column: 8, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 311, column: 7)
!5866 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 309, column: 24)
!5867 = !DILocation(line: 311, column: 12, scope: !5865)
!5868 = !DILocation(line: 311, column: 32, scope: !5865)
!5869 = !DILocation(line: 311, column: 36, scope: !5865)
!5870 = !DILocation(line: 311, column: 40, scope: !5865)
!5871 = !DILocation(line: 311, column: 7, scope: !5866)
!5872 = !DILocation(line: 312, column: 8, scope: !5865)
!5873 = !DILocation(line: 312, column: 4, scope: !5865)
!5874 = !DILocation(line: 313, column: 8, scope: !5866)
!5875 = !DILocation(line: 314, column: 7, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 314, column: 7)
!5877 = !DILocation(line: 314, column: 11, scope: !5876)
!5878 = !DILocation(line: 314, column: 7, scope: !5866)
!5879 = !DILocation(line: 315, column: 9, scope: !5876)
!5880 = !DILocation(line: 315, column: 4, scope: !5876)
!5881 = !DILocation(line: 317, column: 9, scope: !5876)
!5882 = !DILocation(line: 318, column: 7, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 318, column: 7)
!5884 = !DILocation(line: 318, column: 11, scope: !5883)
!5885 = !DILocation(line: 318, column: 7, scope: !5866)
!5886 = !DILocation(line: 319, column: 9, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 318, column: 32)
!5888 = !DILocation(line: 320, column: 3, scope: !5887)
!5889 = !DILocation(line: 321, column: 9, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 320, column: 10)
!5891 = !DILocation(line: 322, column: 12, scope: !5890)
!5892 = !DILocation(line: 322, column: 16, scope: !5890)
!5893 = !DILocation(line: 322, column: 9, scope: !5890)
!5894 = !DILocation(line: 324, column: 3, scope: !5866)
!5895 = !DILocation(line: 327, column: 10, scope: !5785)
!5896 = !DILocation(line: 327, column: 2, scope: !5785)
!5897 = !DILocation(line: 329, column: 9, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 327, column: 16)
!5899 = !DILocation(line: 330, column: 3, scope: !5898)
!5900 = !DILocation(line: 332, column: 9, scope: !5898)
!5901 = !DILocation(line: 333, column: 3, scope: !5898)
!5902 = !DILocation(line: 335, column: 9, scope: !5898)
!5903 = !DILocation(line: 336, column: 3, scope: !5898)
!5904 = !DILocation(line: 339, column: 9, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 339, column: 2)
!5906 = !DILocation(line: 339, column: 7, scope: !5905)
!5907 = !DILocation(line: 339, column: 14, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 339, column: 2)
!5909 = !DILocation(line: 339, column: 18, scope: !5908)
!5910 = !DILocation(line: 339, column: 16, scope: !5908)
!5911 = !DILocation(line: 339, column: 2, scope: !5905)
!5912 = !DILocation(line: 340, column: 7, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 339, column: 30)
!5914 = !DILocation(line: 341, column: 11, scope: !5913)
!5915 = !DILocation(line: 341, column: 18, scope: !5913)
!5916 = !DILocation(line: 341, column: 16, scope: !5913)
!5917 = !DILocation(line: 341, column: 21, scope: !5913)
!5918 = !DILocation(line: 341, column: 30, scope: !5913)
!5919 = !DILocation(line: 341, column: 42, scope: !5913)
!5920 = !DILocation(line: 341, column: 40, scope: !5913)
!5921 = !DILocation(line: 341, column: 34, scope: !5913)
!5922 = !DILocation(line: 341, column: 46, scope: !5913)
!5923 = !DILocation(line: 341, column: 26, scope: !5913)
!5924 = !DILocation(line: 341, column: 7, scope: !5913)
!5925 = !DILocation(line: 342, column: 28, scope: !5913)
!5926 = !DILocation(line: 342, column: 35, scope: !5913)
!5927 = !DILocation(line: 342, column: 9, scope: !5913)
!5928 = !DILocation(line: 342, column: 7, scope: !5913)
!5929 = !DILocation(line: 343, column: 7, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 343, column: 7)
!5931 = !DILocation(line: 343, column: 11, scope: !5930)
!5932 = !DILocation(line: 343, column: 7, scope: !5913)
!5933 = !DILocation(line: 344, column: 4, scope: !5930)
!5934 = !DILocation(line: 345, column: 2, scope: !5913)
!5935 = !DILocation(line: 339, column: 26, scope: !5908)
!5936 = !DILocation(line: 339, column: 2, scope: !5908)
!5937 = distinct !{!5937, !5911, !5938, !5596, !5597}
!5938 = !DILocation(line: 345, column: 2, scope: !5905)
!5939 = !DILocation(line: 347, column: 2, scope: !5785)
!5940 = !DILocation(line: 348, column: 18, scope: !5785)
!5941 = !DILocation(line: 348, column: 25, scope: !5785)
!5942 = !DILocation(line: 348, column: 2, scope: !5785)
!5943 = !DILocation(line: 349, column: 9, scope: !5785)
!5944 = !DILocation(line: 349, column: 2, scope: !5785)
!5945 = !DILocation(line: 350, column: 1, scope: !5785)
!5946 = distinct !DISubprogram(name: "snd_array_elem", scope: !187, file: !187, line: 693, type: !5947, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5949)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!184, !5177, !7}
!5949 = !{!5950, !5951}
!5950 = !DILocalVariable(name: "array", arg: 1, scope: !5946, file: !187, line: 693, type: !5177)
!5951 = !DILocalVariable(name: "idx", arg: 2, scope: !5946, file: !187, line: 693, type: !7)
!5952 = !DILocation(line: 693, column: 54, scope: !5946)
!5953 = !DILocation(line: 693, column: 74, scope: !5946)
!5954 = !DILocation(line: 695, column: 9, scope: !5946)
!5955 = !DILocation(line: 695, column: 16, scope: !5946)
!5956 = !DILocation(line: 695, column: 23, scope: !5946)
!5957 = !DILocation(line: 695, column: 29, scope: !5946)
!5958 = !DILocation(line: 695, column: 36, scope: !5946)
!5959 = !DILocation(line: 695, column: 27, scope: !5946)
!5960 = !DILocation(line: 695, column: 21, scope: !5946)
!5961 = !DILocation(line: 695, column: 2, scope: !5946)
!5962 = distinct !DISubprogram(name: "codec_pm_lock", scope: !3, file: !3, line: 25, type: !4759, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5963)
!5963 = !{!5964}
!5964 = !DILocalVariable(name: "codec", arg: 1, scope: !5962, file: !3, line: 25, type: !185)
!5965 = !DILocation(line: 25, column: 46, scope: !5962)
!5966 = !DILocation(line: 27, column: 32, scope: !5962)
!5967 = !DILocation(line: 27, column: 9, scope: !5962)
!5968 = !DILocation(line: 27, column: 2, scope: !5962)
!5969 = distinct !DISubprogram(name: "is_stereo_amp_verb", scope: !3, file: !3, line: 147, type: !5970, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5972)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!706, !7}
!5972 = !{!5973}
!5973 = !DILocalVariable(name: "reg", arg: 1, scope: !5969, file: !3, line: 147, type: !7)
!5974 = !DILocation(line: 147, column: 45, scope: !5969)
!5975 = !DILocation(line: 149, column: 8, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 149, column: 6)
!5977 = !DILocation(line: 149, column: 12, scope: !5976)
!5978 = !DILocation(line: 149, column: 18, scope: !5976)
!5979 = !DILocation(line: 149, column: 27, scope: !5976)
!5980 = !DILocation(line: 149, column: 6, scope: !5969)
!5981 = !DILocation(line: 150, column: 3, scope: !5976)
!5982 = !DILocation(line: 151, column: 10, scope: !5969)
!5983 = !DILocation(line: 151, column: 14, scope: !5969)
!5984 = !DILocation(line: 151, column: 54, scope: !5969)
!5985 = !DILocation(line: 151, column: 2, scope: !5969)
!5986 = !DILocation(line: 153, column: 1, scope: !5969)
!5987 = distinct !DISubprogram(name: "hda_reg_read_stereo_amp", scope: !3, file: !3, line: 156, type: !5309, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5988)
!5988 = !{!5989, !5990, !5991, !5992, !5993, !5994}
!5989 = !DILocalVariable(name: "codec", arg: 1, scope: !5987, file: !3, line: 156, type: !185)
!5990 = !DILocalVariable(name: "reg", arg: 2, scope: !5987, file: !3, line: 157, type: !7)
!5991 = !DILocalVariable(name: "val", arg: 3, scope: !5987, file: !3, line: 157, type: !698)
!5992 = !DILocalVariable(name: "left", scope: !5987, file: !3, line: 159, type: !7)
!5993 = !DILocalVariable(name: "right", scope: !5987, file: !3, line: 159, type: !7)
!5994 = !DILocalVariable(name: "err", scope: !5987, file: !3, line: 160, type: !109)
!5995 = !DILocation(line: 156, column: 56, scope: !5987)
!5996 = !DILocation(line: 157, column: 21, scope: !5987)
!5997 = !DILocation(line: 157, column: 40, scope: !5987)
!5998 = !DILocation(line: 159, column: 2, scope: !5987)
!5999 = !DILocation(line: 159, column: 15, scope: !5987)
!6000 = !DILocation(line: 159, column: 21, scope: !5987)
!6001 = !DILocation(line: 160, column: 2, scope: !5987)
!6002 = !DILocation(line: 160, column: 6, scope: !5987)
!6003 = !DILocation(line: 162, column: 6, scope: !5987)
!6004 = !DILocation(line: 163, column: 27, scope: !5987)
!6005 = !DILocation(line: 163, column: 34, scope: !5987)
!6006 = !DILocation(line: 163, column: 38, scope: !5987)
!6007 = !DILocation(line: 163, column: 8, scope: !5987)
!6008 = !DILocation(line: 163, column: 6, scope: !5987)
!6009 = !DILocation(line: 164, column: 6, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 164, column: 6)
!6011 = !DILocation(line: 164, column: 10, scope: !6010)
!6012 = !DILocation(line: 164, column: 6, scope: !5987)
!6013 = !DILocation(line: 165, column: 10, scope: !6010)
!6014 = !DILocation(line: 165, column: 3, scope: !6010)
!6015 = !DILocation(line: 166, column: 27, scope: !5987)
!6016 = !DILocation(line: 166, column: 34, scope: !5987)
!6017 = !DILocation(line: 166, column: 38, scope: !5987)
!6018 = !DILocation(line: 166, column: 8, scope: !5987)
!6019 = !DILocation(line: 166, column: 6, scope: !5987)
!6020 = !DILocation(line: 167, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 167, column: 6)
!6022 = !DILocation(line: 167, column: 10, scope: !6021)
!6023 = !DILocation(line: 167, column: 6, scope: !5987)
!6024 = !DILocation(line: 168, column: 10, scope: !6021)
!6025 = !DILocation(line: 168, column: 3, scope: !6021)
!6026 = !DILocation(line: 169, column: 9, scope: !5987)
!6027 = !DILocation(line: 169, column: 17, scope: !5987)
!6028 = !DILocation(line: 169, column: 23, scope: !5987)
!6029 = !DILocation(line: 169, column: 14, scope: !5987)
!6030 = !DILocation(line: 169, column: 3, scope: !5987)
!6031 = !DILocation(line: 169, column: 7, scope: !5987)
!6032 = !DILocation(line: 170, column: 2, scope: !5987)
!6033 = !DILocation(line: 171, column: 1, scope: !5987)
!6034 = distinct !DISubprogram(name: "hda_reg_read_coef", scope: !3, file: !3, line: 204, type: !5309, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!6035 = !{!6036, !6037, !6038, !6039, !6040}
!6036 = !DILocalVariable(name: "codec", arg: 1, scope: !6034, file: !3, line: 204, type: !185)
!6037 = !DILocalVariable(name: "reg", arg: 2, scope: !6034, file: !3, line: 204, type: !7)
!6038 = !DILocalVariable(name: "val", arg: 3, scope: !6034, file: !3, line: 205, type: !698)
!6039 = !DILocalVariable(name: "verb", scope: !6034, file: !3, line: 207, type: !7)
!6040 = !DILocalVariable(name: "err", scope: !6034, file: !3, line: 208, type: !109)
!6041 = !DILocation(line: 204, column: 50, scope: !6034)
!6042 = !DILocation(line: 204, column: 70, scope: !6034)
!6043 = !DILocation(line: 205, column: 23, scope: !6034)
!6044 = !DILocation(line: 207, column: 2, scope: !6034)
!6045 = !DILocation(line: 207, column: 15, scope: !6034)
!6046 = !DILocation(line: 208, column: 2, scope: !6034)
!6047 = !DILocation(line: 208, column: 6, scope: !6034)
!6048 = !DILocation(line: 210, column: 7, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 210, column: 6)
!6050 = !DILocation(line: 210, column: 14, scope: !6049)
!6051 = !DILocation(line: 210, column: 6, scope: !6034)
!6052 = !DILocation(line: 211, column: 3, scope: !6049)
!6053 = !DILocation(line: 213, column: 10, scope: !6034)
!6054 = !DILocation(line: 213, column: 14, scope: !6034)
!6055 = !DILocation(line: 213, column: 26, scope: !6034)
!6056 = !DILocation(line: 213, column: 7, scope: !6034)
!6057 = !DILocation(line: 214, column: 27, scope: !6034)
!6058 = !DILocation(line: 214, column: 34, scope: !6034)
!6059 = !DILocation(line: 214, column: 8, scope: !6034)
!6060 = !DILocation(line: 214, column: 6, scope: !6034)
!6061 = !DILocation(line: 215, column: 6, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 215, column: 6)
!6063 = !DILocation(line: 215, column: 10, scope: !6062)
!6064 = !DILocation(line: 215, column: 6, scope: !6034)
!6065 = !DILocation(line: 216, column: 10, scope: !6062)
!6066 = !DILocation(line: 216, column: 3, scope: !6062)
!6067 = !DILocation(line: 217, column: 10, scope: !6034)
!6068 = !DILocation(line: 217, column: 14, scope: !6034)
!6069 = !DILocation(line: 217, column: 26, scope: !6034)
!6070 = !DILocation(line: 217, column: 7, scope: !6034)
!6071 = !DILocation(line: 218, column: 28, scope: !6034)
!6072 = !DILocation(line: 218, column: 35, scope: !6034)
!6073 = !DILocation(line: 218, column: 44, scope: !6034)
!6074 = !DILocation(line: 218, column: 9, scope: !6034)
!6075 = !DILocation(line: 218, column: 2, scope: !6034)
!6076 = !DILocation(line: 219, column: 1, scope: !6034)
!6077 = !DISubprogram(name: "snd_hdac_exec_verb", scope: !6078, file: !6078, line: 43, type: !4913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6078 = !DIFile(filename: "sound/hda/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bce2a319d6874fd9f98f491157f60fc4")
!6079 = distinct !DISubprogram(name: "codec_pm_unlock", scope: !3, file: !3, line: 30, type: !6080, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6082)
!6080 = !DISubroutineType(types: !6081)
!6081 = !{null, !185, !109}
!6082 = !{!6083, !6084}
!6083 = !DILocalVariable(name: "codec", arg: 1, scope: !6079, file: !3, line: 30, type: !185)
!6084 = !DILocalVariable(name: "lock", arg: 2, scope: !6079, file: !3, line: 30, type: !109)
!6085 = !DILocation(line: 30, column: 49, scope: !6079)
!6086 = !DILocation(line: 30, column: 60, scope: !6079)
!6087 = !DILocation(line: 32, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 32, column: 6)
!6089 = !DILocation(line: 32, column: 11, scope: !6088)
!6090 = !DILocation(line: 32, column: 6, scope: !6079)
!6091 = !DILocation(line: 33, column: 26, scope: !6088)
!6092 = !DILocation(line: 33, column: 3, scope: !6088)
!6093 = !DILocation(line: 34, column: 1, scope: !6079)
!6094 = !DISubprogram(name: "snd_hdac_keep_power_up", scope: !187, file: !187, line: 183, type: !4759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6095 = distinct !DISubprogram(name: "hda_reg_write_stereo_amp", scope: !3, file: !3, line: 174, type: !5250, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6096)
!6096 = !{!6097, !6098, !6099, !6100, !6101, !6102, !6103}
!6097 = !DILocalVariable(name: "codec", arg: 1, scope: !6095, file: !3, line: 174, type: !185)
!6098 = !DILocalVariable(name: "reg", arg: 2, scope: !6095, file: !3, line: 175, type: !7)
!6099 = !DILocalVariable(name: "val", arg: 3, scope: !6095, file: !3, line: 175, type: !7)
!6100 = !DILocalVariable(name: "err", scope: !6095, file: !3, line: 177, type: !109)
!6101 = !DILocalVariable(name: "verb", scope: !6095, file: !3, line: 178, type: !7)
!6102 = !DILocalVariable(name: "left", scope: !6095, file: !3, line: 178, type: !7)
!6103 = !DILocalVariable(name: "right", scope: !6095, file: !3, line: 178, type: !7)
!6104 = !DILocation(line: 174, column: 57, scope: !6095)
!6105 = !DILocation(line: 175, column: 22, scope: !6095)
!6106 = !DILocation(line: 175, column: 40, scope: !6095)
!6107 = !DILocation(line: 177, column: 2, scope: !6095)
!6108 = !DILocation(line: 177, column: 6, scope: !6095)
!6109 = !DILocation(line: 178, column: 2, scope: !6095)
!6110 = !DILocation(line: 178, column: 15, scope: !6095)
!6111 = !DILocation(line: 178, column: 21, scope: !6095)
!6112 = !DILocation(line: 178, column: 27, scope: !6095)
!6113 = !DILocation(line: 180, column: 7, scope: !6095)
!6114 = !DILocation(line: 181, column: 6, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 181, column: 6)
!6116 = !DILocation(line: 181, column: 10, scope: !6115)
!6117 = !DILocation(line: 181, column: 6, scope: !6095)
!6118 = !DILocation(line: 182, column: 8, scope: !6115)
!6119 = !DILocation(line: 182, column: 3, scope: !6115)
!6120 = !DILocation(line: 184, column: 32, scope: !6115)
!6121 = !DILocation(line: 184, column: 36, scope: !6115)
!6122 = !DILocation(line: 184, column: 43, scope: !6115)
!6123 = !DILocation(line: 184, column: 28, scope: !6115)
!6124 = !DILocation(line: 184, column: 8, scope: !6115)
!6125 = !DILocation(line: 185, column: 9, scope: !6095)
!6126 = !DILocation(line: 185, column: 13, scope: !6095)
!6127 = !DILocation(line: 185, column: 27, scope: !6095)
!6128 = !DILocation(line: 185, column: 25, scope: !6095)
!6129 = !DILocation(line: 185, column: 6, scope: !6095)
!6130 = !DILocation(line: 187, column: 9, scope: !6095)
!6131 = !DILocation(line: 187, column: 13, scope: !6095)
!6132 = !DILocation(line: 187, column: 7, scope: !6095)
!6133 = !DILocation(line: 188, column: 11, scope: !6095)
!6134 = !DILocation(line: 188, column: 15, scope: !6095)
!6135 = !DILocation(line: 188, column: 21, scope: !6095)
!6136 = !DILocation(line: 188, column: 8, scope: !6095)
!6137 = !DILocation(line: 189, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 189, column: 6)
!6139 = !DILocation(line: 189, column: 14, scope: !6138)
!6140 = !DILocation(line: 189, column: 11, scope: !6138)
!6141 = !DILocation(line: 189, column: 6, scope: !6095)
!6142 = !DILocation(line: 190, column: 7, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6138, file: !3, line: 189, column: 21)
!6144 = !DILocation(line: 191, column: 29, scope: !6143)
!6145 = !DILocation(line: 191, column: 36, scope: !6143)
!6146 = !DILocation(line: 191, column: 42, scope: !6143)
!6147 = !DILocation(line: 191, column: 40, scope: !6143)
!6148 = !DILocation(line: 191, column: 10, scope: !6143)
!6149 = !DILocation(line: 191, column: 3, scope: !6143)
!6150 = !DILocation(line: 194, column: 27, scope: !6095)
!6151 = !DILocation(line: 194, column: 34, scope: !6095)
!6152 = !DILocation(line: 194, column: 38, scope: !6095)
!6153 = !DILocation(line: 194, column: 58, scope: !6095)
!6154 = !DILocation(line: 194, column: 56, scope: !6095)
!6155 = !DILocation(line: 194, column: 8, scope: !6095)
!6156 = !DILocation(line: 194, column: 6, scope: !6095)
!6157 = !DILocation(line: 195, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 195, column: 6)
!6159 = !DILocation(line: 195, column: 10, scope: !6158)
!6160 = !DILocation(line: 195, column: 6, scope: !6095)
!6161 = !DILocation(line: 196, column: 10, scope: !6158)
!6162 = !DILocation(line: 196, column: 3, scope: !6158)
!6163 = !DILocation(line: 197, column: 27, scope: !6095)
!6164 = !DILocation(line: 197, column: 34, scope: !6095)
!6165 = !DILocation(line: 197, column: 38, scope: !6095)
!6166 = !DILocation(line: 197, column: 59, scope: !6095)
!6167 = !DILocation(line: 197, column: 57, scope: !6095)
!6168 = !DILocation(line: 197, column: 8, scope: !6095)
!6169 = !DILocation(line: 197, column: 6, scope: !6095)
!6170 = !DILocation(line: 198, column: 6, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 198, column: 6)
!6172 = !DILocation(line: 198, column: 10, scope: !6171)
!6173 = !DILocation(line: 198, column: 6, scope: !6095)
!6174 = !DILocation(line: 199, column: 10, scope: !6171)
!6175 = !DILocation(line: 199, column: 3, scope: !6171)
!6176 = !DILocation(line: 200, column: 2, scope: !6095)
!6177 = !DILocation(line: 201, column: 1, scope: !6095)
!6178 = distinct !DISubprogram(name: "hda_reg_write_coef", scope: !3, file: !3, line: 222, type: !5250, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6179)
!6179 = !{!6180, !6181, !6182, !6183, !6184}
!6180 = !DILocalVariable(name: "codec", arg: 1, scope: !6178, file: !3, line: 222, type: !185)
!6181 = !DILocalVariable(name: "reg", arg: 2, scope: !6178, file: !3, line: 222, type: !7)
!6182 = !DILocalVariable(name: "val", arg: 3, scope: !6178, file: !3, line: 223, type: !7)
!6183 = !DILocalVariable(name: "verb", scope: !6178, file: !3, line: 225, type: !7)
!6184 = !DILocalVariable(name: "err", scope: !6178, file: !3, line: 226, type: !109)
!6185 = !DILocation(line: 222, column: 51, scope: !6178)
!6186 = !DILocation(line: 222, column: 71, scope: !6178)
!6187 = !DILocation(line: 223, column: 23, scope: !6178)
!6188 = !DILocation(line: 225, column: 2, scope: !6178)
!6189 = !DILocation(line: 225, column: 15, scope: !6178)
!6190 = !DILocation(line: 226, column: 2, scope: !6178)
!6191 = !DILocation(line: 226, column: 6, scope: !6178)
!6192 = !DILocation(line: 228, column: 7, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 228, column: 6)
!6194 = !DILocation(line: 228, column: 14, scope: !6193)
!6195 = !DILocation(line: 228, column: 6, scope: !6178)
!6196 = !DILocation(line: 229, column: 3, scope: !6193)
!6197 = !DILocation(line: 231, column: 10, scope: !6178)
!6198 = !DILocation(line: 231, column: 14, scope: !6178)
!6199 = !DILocation(line: 231, column: 26, scope: !6178)
!6200 = !DILocation(line: 231, column: 7, scope: !6178)
!6201 = !DILocation(line: 232, column: 27, scope: !6178)
!6202 = !DILocation(line: 232, column: 34, scope: !6178)
!6203 = !DILocation(line: 232, column: 8, scope: !6178)
!6204 = !DILocation(line: 232, column: 6, scope: !6178)
!6205 = !DILocation(line: 233, column: 6, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 233, column: 6)
!6207 = !DILocation(line: 233, column: 10, scope: !6206)
!6208 = !DILocation(line: 233, column: 6, scope: !6178)
!6209 = !DILocation(line: 234, column: 10, scope: !6206)
!6210 = !DILocation(line: 234, column: 3, scope: !6206)
!6211 = !DILocation(line: 235, column: 10, scope: !6178)
!6212 = !DILocation(line: 235, column: 14, scope: !6178)
!6213 = !DILocation(line: 235, column: 26, scope: !6178)
!6214 = !DILocation(line: 236, column: 4, scope: !6178)
!6215 = !DILocation(line: 236, column: 8, scope: !6178)
!6216 = !DILocation(line: 235, column: 58, scope: !6178)
!6217 = !DILocation(line: 235, column: 7, scope: !6178)
!6218 = !DILocation(line: 237, column: 28, scope: !6178)
!6219 = !DILocation(line: 237, column: 35, scope: !6178)
!6220 = !DILocation(line: 237, column: 9, scope: !6178)
!6221 = !DILocation(line: 237, column: 2, scope: !6178)
!6222 = !DILocation(line: 238, column: 1, scope: !6178)
!6223 = !DISubprogram(name: "regmap_write", scope: !166, file: !166, line: 1212, type: !6224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!109, !4924, !7, !7}
!6226 = distinct !DISubprogram(name: "reg_raw_read", scope: !3, file: !3, line: 466, type: !5324, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229, !6230, !6231, !6232}
!6228 = !DILocalVariable(name: "codec", arg: 1, scope: !6226, file: !3, line: 466, type: !185)
!6229 = !DILocalVariable(name: "reg", arg: 2, scope: !6226, file: !3, line: 466, type: !7)
!6230 = !DILocalVariable(name: "val", arg: 3, scope: !6226, file: !3, line: 467, type: !698)
!6231 = !DILocalVariable(name: "uncached", arg: 4, scope: !6226, file: !3, line: 467, type: !706)
!6232 = !DILocalVariable(name: "err", scope: !6226, file: !3, line: 469, type: !109)
!6233 = !DILocation(line: 466, column: 45, scope: !6226)
!6234 = !DILocation(line: 466, column: 65, scope: !6226)
!6235 = !DILocation(line: 467, column: 18, scope: !6226)
!6236 = !DILocation(line: 467, column: 28, scope: !6226)
!6237 = !DILocation(line: 469, column: 2, scope: !6226)
!6238 = !DILocation(line: 469, column: 6, scope: !6226)
!6239 = !DILocation(line: 471, column: 14, scope: !6226)
!6240 = !DILocation(line: 471, column: 21, scope: !6226)
!6241 = !DILocation(line: 471, column: 2, scope: !6226)
!6242 = !DILocation(line: 472, column: 6, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 472, column: 6)
!6244 = !DILocation(line: 472, column: 15, scope: !6243)
!6245 = !DILocation(line: 472, column: 19, scope: !6243)
!6246 = !DILocation(line: 472, column: 26, scope: !6243)
!6247 = !DILocation(line: 472, column: 6, scope: !6226)
!6248 = !DILocation(line: 473, column: 22, scope: !6243)
!6249 = !DILocation(line: 473, column: 29, scope: !6243)
!6250 = !DILocation(line: 473, column: 34, scope: !6243)
!6251 = !DILocation(line: 473, column: 9, scope: !6243)
!6252 = !DILocation(line: 473, column: 7, scope: !6243)
!6253 = !DILocation(line: 473, column: 3, scope: !6243)
!6254 = !DILocation(line: 475, column: 21, scope: !6243)
!6255 = !DILocation(line: 475, column: 28, scope: !6243)
!6256 = !DILocation(line: 475, column: 36, scope: !6243)
!6257 = !DILocation(line: 475, column: 41, scope: !6243)
!6258 = !DILocation(line: 475, column: 9, scope: !6243)
!6259 = !DILocation(line: 475, column: 7, scope: !6243)
!6260 = !DILocation(line: 476, column: 16, scope: !6226)
!6261 = !DILocation(line: 476, column: 23, scope: !6226)
!6262 = !DILocation(line: 476, column: 2, scope: !6226)
!6263 = !DILocation(line: 477, column: 9, scope: !6226)
!6264 = !DILocation(line: 478, column: 1, scope: !6226)
!6265 = !DILocation(line: 477, column: 2, scope: !6226)
!6266 = !DISubprogram(name: "regmap_read", scope: !166, file: !166, line: 1227, type: !6267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!109, !4924, !7, !698}
!6269 = distinct !DISubprogram(name: "regmap_update_bits_check", scope: !166, file: !166, line: 1251, type: !6270, scopeLine: 1254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!109, !4924, !7, !7, !7, !4014}
!6272 = !{!6273, !6274, !6275, !6276, !6277}
!6273 = !DILocalVariable(name: "map", arg: 1, scope: !6269, file: !166, line: 1251, type: !4924)
!6274 = !DILocalVariable(name: "reg", arg: 2, scope: !6269, file: !166, line: 1251, type: !7)
!6275 = !DILocalVariable(name: "mask", arg: 3, scope: !6269, file: !166, line: 1252, type: !7)
!6276 = !DILocalVariable(name: "val", arg: 4, scope: !6269, file: !166, line: 1252, type: !7)
!6277 = !DILocalVariable(name: "change", arg: 5, scope: !6269, file: !166, line: 1253, type: !4014)
!6278 = !DILocation(line: 1251, column: 59, scope: !6269)
!6279 = !DILocation(line: 1251, column: 77, scope: !6269)
!6280 = !DILocation(line: 1252, column: 22, scope: !6269)
!6281 = !DILocation(line: 1252, column: 41, scope: !6269)
!6282 = !DILocation(line: 1253, column: 15, scope: !6269)
!6283 = !DILocation(line: 1255, column: 33, scope: !6269)
!6284 = !DILocation(line: 1255, column: 38, scope: !6269)
!6285 = !DILocation(line: 1255, column: 43, scope: !6269)
!6286 = !DILocation(line: 1255, column: 49, scope: !6269)
!6287 = !DILocation(line: 1256, column: 12, scope: !6269)
!6288 = !DILocation(line: 1255, column: 9, scope: !6269)
!6289 = !DILocation(line: 1255, column: 2, scope: !6269)
!6290 = !DISubprogram(name: "regmap_update_bits_base", scope: !166, file: !166, line: 1235, type: !6291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6291 = !DISubroutineType(types: !6292)
!6292 = !{!109, !4924, !7, !7, !7, !4014, !706, !706}
!6293 = !DISubprogram(name: "regcache_reg_cached", scope: !166, file: !166, line: 1291, type: !6294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6294 = !DISubroutineType(types: !6295)
!6295 = !{!706, !4924, !7}
!6296 = distinct !DISubprogram(name: "regmap_update_bits", scope: !166, file: !166, line: 1239, type: !6297, scopeLine: 1241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6299)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{!109, !4924, !7, !7, !7}
!6299 = !{!6300, !6301, !6302, !6303}
!6300 = !DILocalVariable(name: "map", arg: 1, scope: !6296, file: !166, line: 1239, type: !4924)
!6301 = !DILocalVariable(name: "reg", arg: 2, scope: !6296, file: !166, line: 1239, type: !7)
!6302 = !DILocalVariable(name: "mask", arg: 3, scope: !6296, file: !166, line: 1240, type: !7)
!6303 = !DILocalVariable(name: "val", arg: 4, scope: !6296, file: !166, line: 1240, type: !7)
!6304 = !DILocation(line: 1239, column: 53, scope: !6296)
!6305 = !DILocation(line: 1239, column: 71, scope: !6296)
!6306 = !DILocation(line: 1240, column: 23, scope: !6296)
!6307 = !DILocation(line: 1240, column: 42, scope: !6296)
!6308 = !DILocation(line: 1242, column: 33, scope: !6296)
!6309 = !DILocation(line: 1242, column: 38, scope: !6296)
!6310 = !DILocation(line: 1242, column: 43, scope: !6296)
!6311 = !DILocation(line: 1242, column: 49, scope: !6296)
!6312 = !DILocation(line: 1242, column: 9, scope: !6296)
!6313 = !DILocation(line: 1242, column: 2, scope: !6296)
