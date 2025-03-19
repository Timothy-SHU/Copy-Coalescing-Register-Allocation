; ModuleID = 'sound/hda/hdac_component.c'
source_filename = "sound/hda/hdac_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_set_codec_wakeup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_set_codec_wakeup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_display_power: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_display_power ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_sync_audio_rate: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_sync_audio_rate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_acomp_get_eld: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_acomp_get_eld ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_acomp_register_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_acomp_register_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_acomp_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_acomp_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hdac_acomp_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hdac_acomp_exit ; .previous"

%struct.component_master_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.hdac_bus = type { ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i64, i64, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i64, i64, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.hdac_rb = type { ptr, i64, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i64, i64, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_audio_component = type { ptr, ptr, ptr, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_audio_component_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_snd_hdac_set_codec_wakeup295 = internal global ptr @snd_hdac_set_codec_wakeup, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_hdac_display_power296 = internal global ptr @snd_hdac_display_power, section ".discard.addressable", align 8, !dbg !181
@__UNIQUE_ID___addressable_snd_hdac_sync_audio_rate297 = internal global ptr @snd_hdac_sync_audio_rate, section ".discard.addressable", align 8, !dbg !183
@__UNIQUE_ID___addressable_snd_hdac_acomp_get_eld298 = internal global ptr @snd_hdac_acomp_get_eld, section ".discard.addressable", align 8, !dbg !185
@__UNIQUE_ID___addressable_snd_hdac_acomp_register_notifier299 = internal global ptr @snd_hdac_acomp_register_notifier, section ".discard.addressable", align 8, !dbg !187
@.str = private unnamed_addr constant [27 x i8] c"sound/hda/hdac_component.c\00", align 1, !dbg !189
@.str.1 = private unnamed_addr constant [19 x i8] c"hdac_acomp_release\00", align 1, !dbg !194
@hdac_component_master_ops = internal constant %struct.component_master_ops { ptr @hdac_component_master_bind, ptr @hdac_component_master_unbind }, align 8, !dbg !274
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to add audio component master (%d)\0A\00", align 1, !dbg !199
@__UNIQUE_ID___addressable_snd_hdac_acomp_init300 = internal global ptr @snd_hdac_acomp_init, section ".discard.addressable", align 8, !dbg !204
@__UNIQUE_ID___addressable_snd_hdac_acomp_exit301 = internal global ptr @snd_hdac_acomp_exit, section ".discard.addressable", align 8, !dbg !206
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !208
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !269
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_snd_hdac_set_codec_wakeup295, ptr @__UNIQUE_ID___addressable_snd_hdac_display_power296, ptr @__UNIQUE_ID___addressable_snd_hdac_sync_audio_rate297, ptr @__UNIQUE_ID___addressable_snd_hdac_acomp_get_eld298, ptr @__UNIQUE_ID___addressable_snd_hdac_acomp_register_notifier299, ptr @__UNIQUE_ID___addressable_snd_hdac_acomp_init300, ptr @__UNIQUE_ID___addressable_snd_hdac_acomp_exit301], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_set_codec_wakeup(ptr noundef %bus, i1 noundef zeroext %enable) #0 align 16 !dbg !4773 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %enable.addr = alloca i8, align 1
  %acomp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4992, metadata !DIExpression()), !dbg !4995
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !4993, metadata !DIExpression()), !dbg !4996
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !4994, metadata !DIExpression()), !dbg !4998
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !4999
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35, !dbg !5000
  %1 = load ptr, ptr %audio_component, align 8, !dbg !5000
  store ptr %1, ptr %acomp, align 8, !dbg !4998
  %2 = load ptr, ptr %acomp, align 8, !dbg !5001
  %tobool = icmp ne ptr %2, null, !dbg !5001
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5003

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %acomp, align 8, !dbg !5004
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %3, i32 0, i32 1, !dbg !5005
  %4 = load ptr, ptr %ops, align 8, !dbg !5005
  %tobool1 = icmp ne ptr %4, null, !dbg !5004
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5006

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5007

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %acomp, align 8, !dbg !5008
  %ops2 = getelementptr inbounds %struct.drm_audio_component, ptr %5, i32 0, i32 1, !dbg !5010
  %6 = load ptr, ptr %ops2, align 8, !dbg !5010
  %codec_wake_override = getelementptr inbounds %struct.drm_audio_component_ops, ptr %6, i32 0, i32 3, !dbg !5011
  %7 = load ptr, ptr %codec_wake_override, align 8, !dbg !5011
  %tobool3 = icmp ne ptr %7, null, !dbg !5008
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5012

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5013

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %acomp, align 8, !dbg !5014
  %ops6 = getelementptr inbounds %struct.drm_audio_component, ptr %8, i32 0, i32 1, !dbg !5015
  %9 = load ptr, ptr %ops6, align 8, !dbg !5015
  %codec_wake_override7 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %9, i32 0, i32 3, !dbg !5016
  %10 = load ptr, ptr %codec_wake_override7, align 8, !dbg !5016
  %11 = load ptr, ptr %acomp, align 8, !dbg !5017
  %dev = getelementptr inbounds %struct.drm_audio_component, ptr %11, i32 0, i32 0, !dbg !5018
  %12 = load ptr, ptr %dev, align 8, !dbg !5018
  %13 = load i8, ptr %enable.addr, align 1, !dbg !5019, !range !5020, !noundef !268
  %tobool8 = trunc i8 %13 to i1, !dbg !5019
  call void %10(ptr noundef %12, i1 noundef zeroext %tobool8) #10, !dbg !5014
  store i32 0, ptr %retval, align 4, !dbg !5021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5021

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5022
  %14 = load i32, ptr %retval, align 4, !dbg !5022
  ret i32 %14, !dbg !5022
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_hdac_display_power(ptr noundef %bus, i32 noundef %idx, i1 noundef zeroext %enable) #0 align 16 !dbg !5023 {
entry:
  %bus.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %enable.addr = alloca i8, align 1
  %acomp = alloca ptr, align 8
  %cookie = alloca i64, align 8
  %cookie26 = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5027, metadata !DIExpression()), !dbg !5041
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5028, metadata !DIExpression()), !dbg !5042
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !5029, metadata !DIExpression()), !dbg !5043
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5044
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5030, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5046
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35, !dbg !5047
  %1 = load ptr, ptr %audio_component, align 8, !dbg !5047
  store ptr %1, ptr %acomp, align 8, !dbg !5045
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5048
  %lock = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 34, !dbg !5049
  call void @mutex_lock(ptr noundef %lock) #10, !dbg !5050
  %3 = load i8, ptr %enable.addr, align 1, !dbg !5051, !range !5020, !noundef !268
  %tobool = trunc i8 %3 to i1, !dbg !5051
  br i1 %tobool, label %if.then, label %if.else, !dbg !5053

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %idx.addr, align 4, !dbg !5054
  %conv = zext i32 %4 to i64, !dbg !5054
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5055
  %display_power_status = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 36, !dbg !5056
  call void @set_bit(i64 noundef %conv, ptr noundef %display_power_status) #10, !dbg !5057
  br label %if.end, !dbg !5057

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %idx.addr, align 4, !dbg !5058
  %conv1 = zext i32 %6 to i64, !dbg !5058
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !5059
  %display_power_status2 = getelementptr inbounds %struct.hdac_bus, ptr %7, i32 0, i32 36, !dbg !5060
  call void @clear_bit(i64 noundef %conv1, ptr noundef %display_power_status2) #10, !dbg !5061
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %acomp, align 8, !dbg !5062
  %tobool3 = icmp ne ptr %8, null, !dbg !5062
  br i1 %tobool3, label %lor.lhs.false, label %if.then5, !dbg !5064

lor.lhs.false:                                    ; preds = %if.end
  %9 = load ptr, ptr %acomp, align 8, !dbg !5065
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %9, i32 0, i32 1, !dbg !5066
  %10 = load ptr, ptr %ops, align 8, !dbg !5066
  %tobool4 = icmp ne ptr %10, null, !dbg !5065
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5067

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  br label %unlock, !dbg !5068

if.end6:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %bus.addr, align 8, !dbg !5069
  %display_power_status7 = getelementptr inbounds %struct.hdac_bus, ptr %11, i32 0, i32 36, !dbg !5070
  %12 = load i64, ptr %display_power_status7, align 8, !dbg !5070
  %tobool8 = icmp ne i64 %12, 0, !dbg !5069
  br i1 %tobool8, label %if.then9, label %if.else22, !dbg !5071

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5072
  %display_power_active = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 37, !dbg !5073
  %14 = load i64, ptr %display_power_active, align 8, !dbg !5073
  %tobool10 = icmp ne i64 %14, 0, !dbg !5072
  br i1 %tobool10, label %if.end21, label %if.then11, !dbg !5074

if.then11:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cookie) #9, !dbg !5075
  call void @llvm.dbg.declare(metadata ptr %cookie, metadata !5031, metadata !DIExpression()), !dbg !5076
  store i64 -1, ptr %cookie, align 8, !dbg !5076
  %15 = load ptr, ptr %acomp, align 8, !dbg !5077
  %ops12 = getelementptr inbounds %struct.drm_audio_component, ptr %15, i32 0, i32 1, !dbg !5079
  %16 = load ptr, ptr %ops12, align 8, !dbg !5079
  %get_power = getelementptr inbounds %struct.drm_audio_component_ops, ptr %16, i32 0, i32 1, !dbg !5080
  %17 = load ptr, ptr %get_power, align 8, !dbg !5080
  %tobool13 = icmp ne ptr %17, null, !dbg !5077
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5081

if.then14:                                        ; preds = %if.then11
  %18 = load ptr, ptr %acomp, align 8, !dbg !5082
  %ops15 = getelementptr inbounds %struct.drm_audio_component, ptr %18, i32 0, i32 1, !dbg !5083
  %19 = load ptr, ptr %ops15, align 8, !dbg !5083
  %get_power16 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %19, i32 0, i32 1, !dbg !5084
  %20 = load ptr, ptr %get_power16, align 8, !dbg !5084
  %21 = load ptr, ptr %acomp, align 8, !dbg !5085
  %dev = getelementptr inbounds %struct.drm_audio_component, ptr %21, i32 0, i32 0, !dbg !5086
  %22 = load ptr, ptr %dev, align 8, !dbg !5086
  %call = call i64 %20(ptr noundef %22) #10, !dbg !5082
  store i64 %call, ptr %cookie, align 8, !dbg !5087
  br label %if.end17, !dbg !5088

if.end17:                                         ; preds = %if.then14, %if.then11
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !5089
  %call18 = call i32 @snd_hdac_set_codec_wakeup(ptr noundef %23, i1 noundef zeroext true) #10, !dbg !5090
  %24 = load ptr, ptr %bus.addr, align 8, !dbg !5091
  %call19 = call i32 @snd_hdac_set_codec_wakeup(ptr noundef %24, i1 noundef zeroext false) #10, !dbg !5092
  %25 = load i64, ptr %cookie, align 8, !dbg !5093
  %26 = load ptr, ptr %bus.addr, align 8, !dbg !5094
  %display_power_active20 = getelementptr inbounds %struct.hdac_bus, ptr %26, i32 0, i32 37, !dbg !5095
  store i64 %25, ptr %display_power_active20, align 8, !dbg !5096
  call void @llvm.lifetime.end.p0(i64 8, ptr %cookie) #9, !dbg !5097
  br label %if.end21, !dbg !5098

if.end21:                                         ; preds = %if.end17, %if.then9
  br label %if.end37, !dbg !5099

if.else22:                                        ; preds = %if.end6
  %27 = load ptr, ptr %bus.addr, align 8, !dbg !5100
  %display_power_active23 = getelementptr inbounds %struct.hdac_bus, ptr %27, i32 0, i32 37, !dbg !5101
  %28 = load i64, ptr %display_power_active23, align 8, !dbg !5101
  %tobool24 = icmp ne i64 %28, 0, !dbg !5100
  br i1 %tobool24, label %if.then25, label %if.end36, !dbg !5102

if.then25:                                        ; preds = %if.else22
  call void @llvm.lifetime.start.p0(i64 8, ptr %cookie26) #9, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %cookie26, metadata !5036, metadata !DIExpression()), !dbg !5104
  %29 = load ptr, ptr %bus.addr, align 8, !dbg !5105
  %display_power_active27 = getelementptr inbounds %struct.hdac_bus, ptr %29, i32 0, i32 37, !dbg !5106
  %30 = load i64, ptr %display_power_active27, align 8, !dbg !5106
  store i64 %30, ptr %cookie26, align 8, !dbg !5104
  %31 = load ptr, ptr %acomp, align 8, !dbg !5107
  %ops28 = getelementptr inbounds %struct.drm_audio_component, ptr %31, i32 0, i32 1, !dbg !5109
  %32 = load ptr, ptr %ops28, align 8, !dbg !5109
  %put_power = getelementptr inbounds %struct.drm_audio_component_ops, ptr %32, i32 0, i32 2, !dbg !5110
  %33 = load ptr, ptr %put_power, align 8, !dbg !5110
  %tobool29 = icmp ne ptr %33, null, !dbg !5107
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !5111

if.then30:                                        ; preds = %if.then25
  %34 = load ptr, ptr %acomp, align 8, !dbg !5112
  %ops31 = getelementptr inbounds %struct.drm_audio_component, ptr %34, i32 0, i32 1, !dbg !5113
  %35 = load ptr, ptr %ops31, align 8, !dbg !5113
  %put_power32 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %35, i32 0, i32 2, !dbg !5114
  %36 = load ptr, ptr %put_power32, align 8, !dbg !5114
  %37 = load ptr, ptr %acomp, align 8, !dbg !5115
  %dev33 = getelementptr inbounds %struct.drm_audio_component, ptr %37, i32 0, i32 0, !dbg !5116
  %38 = load ptr, ptr %dev33, align 8, !dbg !5116
  %39 = load i64, ptr %cookie26, align 8, !dbg !5117
  call void %36(ptr noundef %38, i64 noundef %39) #10, !dbg !5112
  br label %if.end34, !dbg !5112

if.end34:                                         ; preds = %if.then30, %if.then25
  %40 = load ptr, ptr %bus.addr, align 8, !dbg !5118
  %display_power_active35 = getelementptr inbounds %struct.hdac_bus, ptr %40, i32 0, i32 37, !dbg !5119
  store i64 0, ptr %display_power_active35, align 8, !dbg !5120
  call void @llvm.lifetime.end.p0(i64 8, ptr %cookie26) #9, !dbg !5121
  br label %if.end36, !dbg !5122

if.end36:                                         ; preds = %if.end34, %if.else22
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end21
  br label %unlock, !dbg !5070

unlock:                                           ; preds = %if.end37, %if.then5
  call void @llvm.dbg.label(metadata !5040), !dbg !5123
  %41 = load ptr, ptr %bus.addr, align 8, !dbg !5124
  %lock38 = getelementptr inbounds %struct.hdac_bus, ptr %41, i32 0, i32 34, !dbg !5125
  call void @mutex_unlock(ptr noundef %lock38) #10, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5127
  ret void, !dbg !5127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5128 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5132 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5139, metadata !DIExpression()), !dbg !5141
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5140, metadata !DIExpression()), !dbg !5142
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5143
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5144
  %div = sdiv i64 %1, 64, !dbg !5144
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5145
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !5146
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5147
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5148
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !5149
  ret void, !dbg !5150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5151 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5153, metadata !DIExpression()), !dbg !5155
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5154, metadata !DIExpression()), !dbg !5156
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5157
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5158
  %div = sdiv i64 %1, 64, !dbg !5158
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5159
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !5160
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5161
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5162
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !5163
  ret void, !dbg !5164
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5165 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_sync_audio_rate(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dev_id, i32 noundef %rate) #0 align 16 !dbg !5166 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %dev_id.addr = alloca i32, align 4
  %rate.addr = alloca i32, align 4
  %bus = alloca ptr, align 8
  %acomp = alloca ptr, align 8
  %port = alloca i32, align 4
  %pipe = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5170, metadata !DIExpression()), !dbg !5178
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5171, metadata !DIExpression()), !dbg !5179
  store i32 %dev_id, ptr %dev_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !5172, metadata !DIExpression()), !dbg !5180
  store i32 %rate, ptr %rate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate.addr, metadata !5173, metadata !DIExpression()), !dbg !5181
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #9, !dbg !5182
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5174, metadata !DIExpression()), !dbg !5183
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5184
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2, !dbg !5185
  %1 = load ptr, ptr %bus1, align 8, !dbg !5185
  store ptr %1, ptr %bus, align 8, !dbg !5183
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5175, metadata !DIExpression()), !dbg !5187
  %2 = load ptr, ptr %bus, align 8, !dbg !5188
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 35, !dbg !5189
  %3 = load ptr, ptr %audio_component, align 8, !dbg !5189
  store ptr %3, ptr %acomp, align 8, !dbg !5187
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #9, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5176, metadata !DIExpression()), !dbg !5191
  call void @llvm.lifetime.start.p0(i64 4, ptr %pipe) #9, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %pipe, metadata !5177, metadata !DIExpression()), !dbg !5192
  %4 = load ptr, ptr %acomp, align 8, !dbg !5193
  %tobool = icmp ne ptr %4, null, !dbg !5193
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5195

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %acomp, align 8, !dbg !5196
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %5, i32 0, i32 1, !dbg !5197
  %6 = load ptr, ptr %ops, align 8, !dbg !5197
  %tobool2 = icmp ne ptr %6, null, !dbg !5196
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !5198

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %acomp, align 8, !dbg !5199
  %ops4 = getelementptr inbounds %struct.drm_audio_component, ptr %7, i32 0, i32 1, !dbg !5200
  %8 = load ptr, ptr %ops4, align 8, !dbg !5200
  %sync_audio_rate = getelementptr inbounds %struct.drm_audio_component_ops, ptr %8, i32 0, i32 5, !dbg !5201
  %9 = load ptr, ptr %sync_audio_rate, align 8, !dbg !5201
  %tobool5 = icmp ne ptr %9, null, !dbg !5199
  br i1 %tobool5, label %if.end, label %if.then, !dbg !5202

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5203

if.end:                                           ; preds = %lor.lhs.false3
  %10 = load i16, ptr %nid.addr, align 2, !dbg !5204
  %conv = zext i16 %10 to i32, !dbg !5204
  store i32 %conv, ptr %port, align 4, !dbg !5205
  %11 = load ptr, ptr %acomp, align 8, !dbg !5206
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %11, i32 0, i32 2, !dbg !5208
  %12 = load ptr, ptr %audio_ops, align 8, !dbg !5208
  %tobool6 = icmp ne ptr %12, null, !dbg !5206
  br i1 %tobool6, label %land.lhs.true, label %if.end16, !dbg !5209

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %acomp, align 8, !dbg !5210
  %audio_ops7 = getelementptr inbounds %struct.drm_audio_component, ptr %13, i32 0, i32 2, !dbg !5211
  %14 = load ptr, ptr %audio_ops7, align 8, !dbg !5211
  %pin2port = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %14, i32 0, i32 2, !dbg !5212
  %15 = load ptr, ptr %pin2port, align 8, !dbg !5212
  %tobool8 = icmp ne ptr %15, null, !dbg !5210
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !5213

if.then9:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %acomp, align 8, !dbg !5214
  %audio_ops10 = getelementptr inbounds %struct.drm_audio_component, ptr %16, i32 0, i32 2, !dbg !5216
  %17 = load ptr, ptr %audio_ops10, align 8, !dbg !5216
  %pin2port11 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %17, i32 0, i32 2, !dbg !5217
  %18 = load ptr, ptr %pin2port11, align 8, !dbg !5217
  %19 = load ptr, ptr %codec.addr, align 8, !dbg !5218
  %20 = load i16, ptr %nid.addr, align 2, !dbg !5219
  %conv12 = zext i16 %20 to i32, !dbg !5219
  %call = call i32 %18(ptr noundef %19, i32 noundef %conv12) #10, !dbg !5214
  store i32 %call, ptr %port, align 4, !dbg !5220
  %21 = load i32, ptr %port, align 4, !dbg !5221
  %cmp = icmp slt i32 %21, 0, !dbg !5223
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !5224

if.then14:                                        ; preds = %if.then9
  store i32 -22, ptr %retval, align 4, !dbg !5225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5225

if.end15:                                         ; preds = %if.then9
  br label %if.end16, !dbg !5226

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.end
  %22 = load i32, ptr %dev_id.addr, align 4, !dbg !5227
  store i32 %22, ptr %pipe, align 4, !dbg !5228
  %23 = load ptr, ptr %acomp, align 8, !dbg !5229
  %ops17 = getelementptr inbounds %struct.drm_audio_component, ptr %23, i32 0, i32 1, !dbg !5230
  %24 = load ptr, ptr %ops17, align 8, !dbg !5230
  %sync_audio_rate18 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %24, i32 0, i32 5, !dbg !5231
  %25 = load ptr, ptr %sync_audio_rate18, align 8, !dbg !5231
  %26 = load ptr, ptr %acomp, align 8, !dbg !5232
  %dev = getelementptr inbounds %struct.drm_audio_component, ptr %26, i32 0, i32 0, !dbg !5233
  %27 = load ptr, ptr %dev, align 8, !dbg !5233
  %28 = load i32, ptr %port, align 4, !dbg !5234
  %29 = load i32, ptr %pipe, align 4, !dbg !5235
  %30 = load i32, ptr %rate.addr, align 4, !dbg !5236
  %call19 = call i32 %25(ptr noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #10, !dbg !5229
  store i32 %call19, ptr %retval, align 4, !dbg !5237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5237

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pipe) #9, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #9, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5238
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #9, !dbg !5238
  %31 = load i32, ptr %retval, align 4, !dbg !5238
  ret i32 %31, !dbg !5238
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_acomp_get_eld(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dev_id, ptr noundef %audio_enabled, ptr noundef %buffer, i32 noundef %max_bytes) #0 align 16 !dbg !5239 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %nid.addr = alloca i16, align 2
  %dev_id.addr = alloca i32, align 4
  %audio_enabled.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %max_bytes.addr = alloca i32, align 4
  %bus = alloca ptr, align 8
  %acomp = alloca ptr, align 8
  %port = alloca i32, align 4
  %pipe = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5243, metadata !DIExpression()), !dbg !5253
  store i16 %nid, ptr %nid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5244, metadata !DIExpression()), !dbg !5254
  store i32 %dev_id, ptr %dev_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !5245, metadata !DIExpression()), !dbg !5255
  store ptr %audio_enabled, ptr %audio_enabled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audio_enabled.addr, metadata !5246, metadata !DIExpression()), !dbg !5256
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5247, metadata !DIExpression()), !dbg !5257
  store i32 %max_bytes, ptr %max_bytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_bytes.addr, metadata !5248, metadata !DIExpression()), !dbg !5258
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #9, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5249, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !5261
  %bus1 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2, !dbg !5262
  %1 = load ptr, ptr %bus1, align 8, !dbg !5262
  store ptr %1, ptr %bus, align 8, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5263
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5250, metadata !DIExpression()), !dbg !5264
  %2 = load ptr, ptr %bus, align 8, !dbg !5265
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 35, !dbg !5266
  %3 = load ptr, ptr %audio_component, align 8, !dbg !5266
  store ptr %3, ptr %acomp, align 8, !dbg !5264
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #9, !dbg !5267
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5251, metadata !DIExpression()), !dbg !5268
  call void @llvm.lifetime.start.p0(i64 4, ptr %pipe) #9, !dbg !5267
  call void @llvm.dbg.declare(metadata ptr %pipe, metadata !5252, metadata !DIExpression()), !dbg !5269
  %4 = load ptr, ptr %acomp, align 8, !dbg !5270
  %tobool = icmp ne ptr %4, null, !dbg !5270
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5272

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %acomp, align 8, !dbg !5273
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %5, i32 0, i32 1, !dbg !5274
  %6 = load ptr, ptr %ops, align 8, !dbg !5274
  %tobool2 = icmp ne ptr %6, null, !dbg !5273
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !5275

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %acomp, align 8, !dbg !5276
  %ops4 = getelementptr inbounds %struct.drm_audio_component, ptr %7, i32 0, i32 1, !dbg !5277
  %8 = load ptr, ptr %ops4, align 8, !dbg !5277
  %get_eld = getelementptr inbounds %struct.drm_audio_component_ops, ptr %8, i32 0, i32 6, !dbg !5278
  %9 = load ptr, ptr %get_eld, align 8, !dbg !5278
  %tobool5 = icmp ne ptr %9, null, !dbg !5276
  br i1 %tobool5, label %if.end, label %if.then, !dbg !5279

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

if.end:                                           ; preds = %lor.lhs.false3
  %10 = load i16, ptr %nid.addr, align 2, !dbg !5281
  %conv = zext i16 %10 to i32, !dbg !5281
  store i32 %conv, ptr %port, align 4, !dbg !5282
  %11 = load ptr, ptr %acomp, align 8, !dbg !5283
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %11, i32 0, i32 2, !dbg !5285
  %12 = load ptr, ptr %audio_ops, align 8, !dbg !5285
  %tobool6 = icmp ne ptr %12, null, !dbg !5283
  br i1 %tobool6, label %land.lhs.true, label %if.end16, !dbg !5286

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %acomp, align 8, !dbg !5287
  %audio_ops7 = getelementptr inbounds %struct.drm_audio_component, ptr %13, i32 0, i32 2, !dbg !5288
  %14 = load ptr, ptr %audio_ops7, align 8, !dbg !5288
  %pin2port = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %14, i32 0, i32 2, !dbg !5289
  %15 = load ptr, ptr %pin2port, align 8, !dbg !5289
  %tobool8 = icmp ne ptr %15, null, !dbg !5287
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !5290

if.then9:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %acomp, align 8, !dbg !5291
  %audio_ops10 = getelementptr inbounds %struct.drm_audio_component, ptr %16, i32 0, i32 2, !dbg !5293
  %17 = load ptr, ptr %audio_ops10, align 8, !dbg !5293
  %pin2port11 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %17, i32 0, i32 2, !dbg !5294
  %18 = load ptr, ptr %pin2port11, align 8, !dbg !5294
  %19 = load ptr, ptr %codec.addr, align 8, !dbg !5295
  %20 = load i16, ptr %nid.addr, align 2, !dbg !5296
  %conv12 = zext i16 %20 to i32, !dbg !5296
  %call = call i32 %18(ptr noundef %19, i32 noundef %conv12) #10, !dbg !5291
  store i32 %call, ptr %port, align 4, !dbg !5297
  %21 = load i32, ptr %port, align 4, !dbg !5298
  %cmp = icmp slt i32 %21, 0, !dbg !5300
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !5301

if.then14:                                        ; preds = %if.then9
  store i32 -22, ptr %retval, align 4, !dbg !5302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

if.end15:                                         ; preds = %if.then9
  br label %if.end16, !dbg !5303

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.end
  %22 = load i32, ptr %dev_id.addr, align 4, !dbg !5304
  store i32 %22, ptr %pipe, align 4, !dbg !5305
  %23 = load ptr, ptr %acomp, align 8, !dbg !5306
  %ops17 = getelementptr inbounds %struct.drm_audio_component, ptr %23, i32 0, i32 1, !dbg !5307
  %24 = load ptr, ptr %ops17, align 8, !dbg !5307
  %get_eld18 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %24, i32 0, i32 6, !dbg !5308
  %25 = load ptr, ptr %get_eld18, align 8, !dbg !5308
  %26 = load ptr, ptr %acomp, align 8, !dbg !5309
  %dev = getelementptr inbounds %struct.drm_audio_component, ptr %26, i32 0, i32 0, !dbg !5310
  %27 = load ptr, ptr %dev, align 8, !dbg !5310
  %28 = load i32, ptr %port, align 4, !dbg !5311
  %29 = load i32, ptr %pipe, align 4, !dbg !5312
  %30 = load ptr, ptr %audio_enabled.addr, align 8, !dbg !5313
  %31 = load ptr, ptr %buffer.addr, align 8, !dbg !5314
  %32 = load i32, ptr %max_bytes.addr, align 4, !dbg !5315
  %call19 = call i32 %25(ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef %32) #10, !dbg !5306
  store i32 %call19, ptr %retval, align 4, !dbg !5316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5316

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pipe) #9, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #9, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #9, !dbg !5317
  %33 = load i32, ptr %retval, align 4, !dbg !5317
  ret i32 %33, !dbg !5317
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_acomp_register_notifier(ptr noundef %bus, ptr noundef %aops) #0 align 16 !dbg !5318 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %aops.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5322, metadata !DIExpression()), !dbg !5324
  store ptr %aops, ptr %aops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aops.addr, metadata !5323, metadata !DIExpression()), !dbg !5325
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5326
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35, !dbg !5328
  %1 = load ptr, ptr %audio_component, align 8, !dbg !5328
  %tobool = icmp ne ptr %1, null, !dbg !5326
  br i1 %tobool, label %if.end, label %if.then, !dbg !5329

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5330
  br label %return, !dbg !5330

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %aops.addr, align 8, !dbg !5331
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5332
  %audio_component1 = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 35, !dbg !5333
  %4 = load ptr, ptr %audio_component1, align 8, !dbg !5333
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %4, i32 0, i32 2, !dbg !5334
  store ptr %2, ptr %audio_ops, align 8, !dbg !5335
  store i32 0, ptr %retval, align 4, !dbg !5336
  br label %return, !dbg !5336

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5337
  ret i32 %5, !dbg !5337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_acomp_init(ptr noundef %bus, ptr noundef %aops, ptr noundef %match_master, i64 noundef %extra_size) #0 align 16 !dbg !5338 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %aops.addr = alloca ptr, align 8
  %match_master.addr = alloca ptr, align 8
  %extra_size.addr = alloca i64, align 8
  %match = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %acomp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5345, metadata !DIExpression()), !dbg !5362
  store ptr %aops, ptr %aops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aops.addr, metadata !5346, metadata !DIExpression()), !dbg !5363
  store ptr %match_master, ptr %match_master.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_master.addr, metadata !5347, metadata !DIExpression()), !dbg !5364
  store i64 %extra_size, ptr %extra_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extra_size.addr, metadata !5348, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #9, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %match, metadata !5349, metadata !DIExpression()), !dbg !5367
  store ptr null, ptr %match, align 8, !dbg !5367
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5352, metadata !DIExpression()), !dbg !5369
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5370
  %dev1 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 0, !dbg !5371
  %1 = load ptr, ptr %dev1, align 8, !dbg !5371
  store ptr %1, ptr %dev, align 8, !dbg !5369
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5353, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5354, metadata !DIExpression()), !dbg !5375
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5355, metadata !DIExpression()), !dbg !5376
  %2 = load ptr, ptr %dev, align 8, !dbg !5376
  %call = call ptr @hdac_get_acomp(ptr noundef %2) #10, !dbg !5376
  %tobool = icmp ne ptr %call, null, !dbg !5376
  %lnot = xor i1 %tobool, true, !dbg !5376
  %lnot2 = xor i1 %lnot, true, !dbg !5376
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5376
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5376
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5377
  %tobool3 = icmp ne i32 %3, 0, !dbg !5377
  %lnot4 = xor i1 %tobool3, true, !dbg !5377
  %lnot6 = xor i1 %lnot4, true, !dbg !5377
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5377
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5377
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5377
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5377
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5376

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5377

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5358, metadata !DIExpression()), !dbg !5378
  store i32 2305, ptr %__flags, align 4, !dbg !5378
  br label %do.body9, !dbg !5378

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5379

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5379

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5378

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5381
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 293, i32 %4, i64 12) #9, !dbg !5381, !srcloc !5383
  br label %do.cond11, !dbg !5381

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5381

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5378

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5384

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5384

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !5377
  br label %do.cond16, !dbg !5378

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5378

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5378

if.end:                                           ; preds = %do.end17, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5376
  %tobool18 = icmp ne i32 %5, 0, !dbg !5376
  %lnot19 = xor i1 %tobool18, true, !dbg !5376
  %lnot21 = xor i1 %lnot19, true, !dbg !5376
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5376
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5376
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5376
  store i64 %expval24, ptr %tmp, align 8, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5386
  %6 = load i64, ptr %tmp, align 8, !dbg !5376
  %tobool25 = icmp ne i64 %6, 0, !dbg !5386
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5387

if.then26:                                        ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5388

if.end27:                                         ; preds = %if.end
  %7 = load i64, ptr %extra_size.addr, align 8, !dbg !5389
  %add = add i64 56, %7, !dbg !5389
  %call28 = call noalias ptr @__devres_alloc_node(ptr noundef @hdac_acomp_release, i64 noundef %add, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.1) #10, !dbg !5389
  store ptr %call28, ptr %acomp, align 8, !dbg !5390
  %8 = load ptr, ptr %acomp, align 8, !dbg !5391
  %tobool29 = icmp ne ptr %8, null, !dbg !5391
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5393

if.then30:                                        ; preds = %if.end27
  store i32 -12, ptr %retval, align 4, !dbg !5394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5394

if.end31:                                         ; preds = %if.end27
  %9 = load ptr, ptr %aops.addr, align 8, !dbg !5395
  %10 = load ptr, ptr %acomp, align 8, !dbg !5396
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %10, i32 0, i32 2, !dbg !5397
  store ptr %9, ptr %audio_ops, align 8, !dbg !5398
  %11 = load ptr, ptr %acomp, align 8, !dbg !5399
  %master_bind_complete = getelementptr inbounds %struct.drm_audio_component, ptr %11, i32 0, i32 3, !dbg !5400
  call void @init_completion(ptr noundef %master_bind_complete) #10, !dbg !5401
  %12 = load ptr, ptr %acomp, align 8, !dbg !5402
  %13 = load ptr, ptr %bus.addr, align 8, !dbg !5403
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 35, !dbg !5404
  store ptr %12, ptr %audio_component, align 8, !dbg !5405
  %14 = load ptr, ptr %dev, align 8, !dbg !5406
  %15 = load ptr, ptr %acomp, align 8, !dbg !5407
  call void @devres_add(ptr noundef %14, ptr noundef %15) #10, !dbg !5408
  %16 = load ptr, ptr %dev, align 8, !dbg !5409
  %17 = load ptr, ptr %match_master.addr, align 8, !dbg !5410
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !5411
  call void @component_match_add_typed(ptr noundef %16, ptr noundef %match, ptr noundef %17, ptr noundef %18) #10, !dbg !5412
  %19 = load ptr, ptr %dev, align 8, !dbg !5413
  %20 = load ptr, ptr %match, align 8, !dbg !5414
  %call32 = call i32 @component_master_add_with_match(ptr noundef %19, ptr noundef @hdac_component_master_ops, ptr noundef %20) #10, !dbg !5415
  store i32 %call32, ptr %ret, align 4, !dbg !5416
  %21 = load i32, ptr %ret, align 4, !dbg !5417
  %cmp = icmp slt i32 %21, 0, !dbg !5419
  br i1 %cmp, label %if.then34, label %if.end35, !dbg !5420

if.then34:                                        ; preds = %if.end31
  br label %out_err, !dbg !5421

if.end35:                                         ; preds = %if.end31
  store i32 0, ptr %retval, align 4, !dbg !5422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5422

out_err:                                          ; preds = %if.then34
  call void @llvm.dbg.label(metadata !5361), !dbg !5423
  %22 = load ptr, ptr %bus.addr, align 8, !dbg !5424
  %audio_component36 = getelementptr inbounds %struct.hdac_bus, ptr %22, i32 0, i32 35, !dbg !5425
  store ptr null, ptr %audio_component36, align 8, !dbg !5426
  %23 = load ptr, ptr %dev, align 8, !dbg !5427
  %call37 = call i32 @devres_destroy(ptr noundef %23, ptr noundef @hdac_acomp_release, ptr noundef null, ptr noundef null) #10, !dbg !5428
  br label %do.body38, !dbg !5429

do.body38:                                        ; preds = %out_err
  br label %do.cond39, !dbg !5431

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5431

do.end40:                                         ; preds = %do.cond39
  %24 = load ptr, ptr %dev, align 8, !dbg !5429
  %25 = load i32, ptr %ret, align 4, !dbg !5429
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef @.str.2, i32 noundef %25) #11, !dbg !5429
  %26 = load i32, ptr %ret, align 4, !dbg !5433
  store i32 %26, ptr %retval, align 4, !dbg !5434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5434

cleanup:                                          ; preds = %do.end40, %if.end35, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #9, !dbg !5435
  %27 = load i32, ptr %retval, align 4, !dbg !5435
  ret i32 %27, !dbg !5435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hdac_get_acomp(ptr noundef %dev) #0 align 16 !dbg !5436 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5442
  %call = call ptr @devres_find(ptr noundef %0, ptr noundef @hdac_acomp_release, ptr noundef null, ptr noundef null) #10, !dbg !5443
  ret ptr %call, !dbg !5444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5445 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hdac_acomp_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5452 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5454, metadata !DIExpression()), !dbg !5456
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5455, metadata !DIExpression()), !dbg !5457
  ret void, !dbg !5458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #6 align 16 !dbg !210 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !265, metadata !DIExpression()), !dbg !5459
  %0 = load ptr, ptr %x.addr, align 8, !dbg !5460
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !5461
  store i32 0, ptr %done, align 8, !dbg !5462
  br label %do.body, !dbg !5463

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !5464
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !5464
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.3, ptr noundef @init_completion.__key) #10, !dbg !5464
  br label %do.end, !dbg !5464

do.end:                                           ; preds = %do.body
  ret void, !dbg !5466
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5467 dso_local void @devres_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5468 dso_local void @component_match_add_typed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5472 dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5476 dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5483 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hdac_acomp_exit(ptr noundef %bus) #0 align 16 !dbg !5487 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %acomp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5491, metadata !DIExpression()), !dbg !5500
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5492, metadata !DIExpression()), !dbg !5502
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5503
  %dev1 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 0, !dbg !5504
  %1 = load ptr, ptr %dev1, align 8, !dbg !5504
  store ptr %1, ptr %dev, align 8, !dbg !5502
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5493, metadata !DIExpression()), !dbg !5506
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5507
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %2, i32 0, i32 35, !dbg !5508
  %3 = load ptr, ptr %audio_component, align 8, !dbg !5508
  store ptr %3, ptr %acomp, align 8, !dbg !5506
  %4 = load ptr, ptr %acomp, align 8, !dbg !5509
  %tobool = icmp ne ptr %4, null, !dbg !5509
  br i1 %tobool, label %if.end, label %if.then, !dbg !5511

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5512

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5513
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5494, metadata !DIExpression()), !dbg !5513
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5513
  %display_power_active = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 37, !dbg !5513
  %6 = load i64, ptr %display_power_active, align 8, !dbg !5513
  %tobool2 = icmp ne i64 %6, 0, !dbg !5513
  %lnot = xor i1 %tobool2, true, !dbg !5513
  %lnot3 = xor i1 %lnot, true, !dbg !5513
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5513
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5513
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5514
  %tobool4 = icmp ne i32 %7, 0, !dbg !5514
  %lnot5 = xor i1 %tobool4, true, !dbg !5514
  %lnot7 = xor i1 %lnot5, true, !dbg !5514
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5514
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5514
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5514
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5514
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !5513

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !5514

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5497, metadata !DIExpression()), !dbg !5515
  store i32 2305, ptr %__flags, align 4, !dbg !5515
  br label %do.body11, !dbg !5515

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !5516

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !5516

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !5515

do.body12:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !5518
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 341, i32 %8, i64 12) #9, !dbg !5518, !srcloc !5520
  br label %do.cond13, !dbg !5518

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5518

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !5515

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !5521

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5521

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !5514
  br label %do.cond18, !dbg !5515

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5515

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !5515

if.end20:                                         ; preds = %do.end19, %if.end
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5513
  %tobool21 = icmp ne i32 %9, 0, !dbg !5513
  %lnot22 = xor i1 %tobool21, true, !dbg !5513
  %lnot24 = xor i1 %lnot22, true, !dbg !5513
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !5513
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !5513
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !5513
  store i64 %expval27, ptr %tmp, align 8, !dbg !5514
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5523
  %10 = load i64, ptr %tmp, align 8, !dbg !5513
  %tobool28 = icmp ne i64 %10, 0, !dbg !5523
  br i1 %tobool28, label %land.lhs.true, label %if.end34, !dbg !5524

land.lhs.true:                                    ; preds = %if.end20
  %11 = load ptr, ptr %acomp, align 8, !dbg !5525
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %11, i32 0, i32 1, !dbg !5526
  %12 = load ptr, ptr %ops, align 8, !dbg !5526
  %tobool29 = icmp ne ptr %12, null, !dbg !5525
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !5527

if.then30:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %acomp, align 8, !dbg !5528
  %ops31 = getelementptr inbounds %struct.drm_audio_component, ptr %13, i32 0, i32 1, !dbg !5529
  %14 = load ptr, ptr %ops31, align 8, !dbg !5529
  %put_power = getelementptr inbounds %struct.drm_audio_component_ops, ptr %14, i32 0, i32 2, !dbg !5530
  %15 = load ptr, ptr %put_power, align 8, !dbg !5530
  %16 = load ptr, ptr %acomp, align 8, !dbg !5531
  %dev32 = getelementptr inbounds %struct.drm_audio_component, ptr %16, i32 0, i32 0, !dbg !5532
  %17 = load ptr, ptr %dev32, align 8, !dbg !5532
  %18 = load ptr, ptr %bus.addr, align 8, !dbg !5533
  %display_power_active33 = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 37, !dbg !5534
  %19 = load i64, ptr %display_power_active33, align 8, !dbg !5534
  call void %15(ptr noundef %17, i64 noundef %19) #10, !dbg !5528
  br label %if.end34, !dbg !5528

if.end34:                                         ; preds = %if.then30, %land.lhs.true, %if.end20
  %20 = load ptr, ptr %bus.addr, align 8, !dbg !5535
  %display_power_active35 = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 37, !dbg !5536
  store i64 0, ptr %display_power_active35, align 8, !dbg !5537
  %21 = load ptr, ptr %bus.addr, align 8, !dbg !5538
  %display_power_status = getelementptr inbounds %struct.hdac_bus, ptr %21, i32 0, i32 36, !dbg !5539
  store i64 0, ptr %display_power_status, align 8, !dbg !5540
  %22 = load ptr, ptr %dev, align 8, !dbg !5541
  call void @component_master_del(ptr noundef %22, ptr noundef @hdac_component_master_ops) #10, !dbg !5542
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !5543
  %audio_component36 = getelementptr inbounds %struct.hdac_bus, ptr %23, i32 0, i32 35, !dbg !5544
  store ptr null, ptr %audio_component36, align 8, !dbg !5545
  %24 = load ptr, ptr %dev, align 8, !dbg !5546
  %call = call i32 @devres_destroy(ptr noundef %24, ptr noundef @hdac_acomp_release, ptr noundef null, ptr noundef null) #10, !dbg !5547
  store i32 0, ptr %retval, align 4, !dbg !5548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5548

cleanup:                                          ; preds = %if.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !5549
  %25 = load i32, ptr %retval, align 4, !dbg !5549
  ret i32 %25, !dbg !5549
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5550 dso_local void @component_master_del(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5553 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5561, metadata !DIExpression()), !dbg !5563
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5562, metadata !DIExpression()), !dbg !5564
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5565
  %1 = load i64, ptr %size.addr, align 8, !dbg !5566
  %conv = trunc i64 %1 to i32, !dbg !5566
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !5567
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5568
  %3 = load i64, ptr %size.addr, align 8, !dbg !5568
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !5568
  ret void, !dbg !5569
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5570 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5573, metadata !DIExpression()), !dbg !5575
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5574, metadata !DIExpression()), !dbg !5576
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5577
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5579
  br i1 %1, label %if.then, label %if.else, !dbg !5580

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5581
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5581
  %shr = ashr i64 %3, 3, !dbg !5581
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5581
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5583
  %and = and i64 %4, 7, !dbg !5583
  %sh_prom = trunc i64 %and to i32, !dbg !5583
  %shl = shl i32 1, %sh_prom, !dbg !5583
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !5584, !srcloc !5585
  br label %if.end, !dbg !5586

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5587
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5589
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !5590, !srcloc !5591
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5593 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5598, metadata !DIExpression()), !dbg !5600
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5599, metadata !DIExpression()), !dbg !5601
  ret i1 true, !dbg !5602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5603 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5608, metadata !DIExpression()), !dbg !5611
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5609, metadata !DIExpression()), !dbg !5612
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5610, metadata !DIExpression()), !dbg !5613
  ret void, !dbg !5614
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5615 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5617, metadata !DIExpression()), !dbg !5619
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5618, metadata !DIExpression()), !dbg !5620
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5621
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5623
  br i1 %1, label %if.then, label %if.else, !dbg !5624

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5625
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5625
  %shr = ashr i64 %3, 3, !dbg !5625
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5625
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5627
  %and = and i64 %4, 7, !dbg !5627
  %sh_prom = trunc i64 %and to i32, !dbg !5627
  %shl = shl i32 1, %sh_prom, !dbg !5627
  %not = xor i32 %shl, -1, !dbg !5628
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #9, !dbg !5629, !srcloc !5630
  br label %if.end, !dbg !5631

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5632
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5634
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !5635, !srcloc !5636
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5637
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5638 dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5641 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hdac_component_master_bind(ptr noundef %dev) #0 align 16 !dbg !5646 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %acomp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on32 = alloca i32, align 4
  %__flags52 = alloca i32, align 4
  %tmp65 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5648, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5649, metadata !DIExpression()), !dbg !5667
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5668
  %call = call ptr @hdac_get_acomp(ptr noundef %0) #10, !dbg !5669
  store ptr %call, ptr %acomp, align 8, !dbg !5667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5650, metadata !DIExpression()), !dbg !5671
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5651, metadata !DIExpression()), !dbg !5672
  %1 = load ptr, ptr %acomp, align 8, !dbg !5672
  %tobool = icmp ne ptr %1, null, !dbg !5672
  %lnot = xor i1 %tobool, true, !dbg !5672
  %lnot1 = xor i1 %lnot, true, !dbg !5672
  %lnot2 = xor i1 %lnot1, true, !dbg !5672
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5672
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5672
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5673
  %tobool3 = icmp ne i32 %2, 0, !dbg !5673
  %lnot4 = xor i1 %tobool3, true, !dbg !5673
  %lnot6 = xor i1 %lnot4, true, !dbg !5673
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5673
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5673
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5673
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5673
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5672

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5673

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5654, metadata !DIExpression()), !dbg !5674
  store i32 2305, ptr %__flags, align 4, !dbg !5674
  br label %do.body9, !dbg !5674

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5675

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5675

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5674

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5677
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 189, i32 %3, i64 12) #9, !dbg !5677, !srcloc !5679
  br label %do.cond11, !dbg !5677

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5677

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5674

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5680

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5680

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !5673
  br label %do.cond16, !dbg !5674

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5674

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5674

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5672
  %tobool18 = icmp ne i32 %4, 0, !dbg !5672
  %lnot19 = xor i1 %tobool18, true, !dbg !5672
  %lnot21 = xor i1 %lnot19, true, !dbg !5672
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5672
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5672
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5672
  store i64 %expval24, ptr %tmp, align 8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5682
  %5 = load i64, ptr %tmp, align 8, !dbg !5672
  %tobool25 = icmp ne i64 %5, 0, !dbg !5682
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5683

if.then26:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5684

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5685
  %7 = load ptr, ptr %acomp, align 8, !dbg !5686
  %call28 = call i32 @component_bind_all(ptr noundef %6, ptr noundef %7) #10, !dbg !5687
  store i32 %call28, ptr %ret, align 4, !dbg !5688
  %8 = load i32, ptr %ret, align 4, !dbg !5689
  %cmp = icmp slt i32 %8, 0, !dbg !5691
  br i1 %cmp, label %if.then30, label %if.end31, !dbg !5692

if.then30:                                        ; preds = %if.end27
  %9 = load i32, ptr %ret, align 4, !dbg !5693
  store i32 %9, ptr %retval, align 4, !dbg !5694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5694

if.end31:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on32) #9, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on32, metadata !5657, metadata !DIExpression()), !dbg !5695
  %10 = load ptr, ptr %acomp, align 8, !dbg !5695
  %dev33 = getelementptr inbounds %struct.drm_audio_component, ptr %10, i32 0, i32 0, !dbg !5695
  %11 = load ptr, ptr %dev33, align 8, !dbg !5695
  %tobool34 = icmp ne ptr %11, null, !dbg !5695
  br i1 %tobool34, label %land.rhs, label %land.end, !dbg !5695

land.rhs:                                         ; preds = %if.end31
  %12 = load ptr, ptr %acomp, align 8, !dbg !5695
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %12, i32 0, i32 1, !dbg !5695
  %13 = load ptr, ptr %ops, align 8, !dbg !5695
  %tobool35 = icmp ne ptr %13, null, !dbg !5695
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end31
  %14 = phi i1 [ false, %if.end31 ], [ %tobool35, %land.rhs ], !dbg !5696
  %lnot36 = xor i1 %14, true, !dbg !5695
  %lnot38 = xor i1 %lnot36, true, !dbg !5695
  %lnot40 = xor i1 %lnot38, true, !dbg !5695
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !5695
  store i32 %lnot.ext41, ptr %__ret_warn_on32, align 4, !dbg !5695
  %15 = load i32, ptr %__ret_warn_on32, align 4, !dbg !5697
  %tobool42 = icmp ne i32 %15, 0, !dbg !5697
  %lnot43 = xor i1 %tobool42, true, !dbg !5697
  %lnot45 = xor i1 %lnot43, true, !dbg !5697
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !5697
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !5697
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !5697
  %tobool49 = icmp ne i64 %expval48, 0, !dbg !5697
  br i1 %tobool49, label %if.then50, label %if.end64, !dbg !5695

if.then50:                                        ; preds = %land.end
  br label %do.body51, !dbg !5697

do.body51:                                        ; preds = %if.then50
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags52) #9, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__flags52, metadata !5660, metadata !DIExpression()), !dbg !5698
  store i32 2305, ptr %__flags52, align 4, !dbg !5698
  br label %do.body53, !dbg !5698

do.body53:                                        ; preds = %do.body51
  br label %do.cond54, !dbg !5699

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !5699

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !5698

do.body56:                                        ; preds = %do.end55
  %16 = load i32, ptr %__flags52, align 4, !dbg !5701
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 196, i32 %16, i64 12) #9, !dbg !5701, !srcloc !5703
  br label %do.cond57, !dbg !5701

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !5701

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !5698

do.body59:                                        ; preds = %do.end58
  br label %do.cond60, !dbg !5704

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !5704

do.end61:                                         ; preds = %do.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags52) #9, !dbg !5697
  br label %do.cond62, !dbg !5698

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !5698

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !5698

if.end64:                                         ; preds = %do.end63, %land.end
  %17 = load i32, ptr %__ret_warn_on32, align 4, !dbg !5695
  %tobool66 = icmp ne i32 %17, 0, !dbg !5695
  %lnot67 = xor i1 %tobool66, true, !dbg !5695
  %lnot69 = xor i1 %lnot67, true, !dbg !5695
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !5695
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !5695
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !5695
  store i64 %expval72, ptr %tmp65, align 8, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on32) #9, !dbg !5706
  %18 = load i64, ptr %tmp65, align 8, !dbg !5695
  %tobool73 = icmp ne i64 %18, 0, !dbg !5706
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !5707

if.then74:                                        ; preds = %if.end64
  store i32 -22, ptr %ret, align 4, !dbg !5708
  br label %out_unbind, !dbg !5710

if.end75:                                         ; preds = %if.end64
  %19 = load ptr, ptr %acomp, align 8, !dbg !5711
  %ops76 = getelementptr inbounds %struct.drm_audio_component, ptr %19, i32 0, i32 1, !dbg !5713
  %20 = load ptr, ptr %ops76, align 8, !dbg !5713
  %owner = getelementptr inbounds %struct.drm_audio_component_ops, ptr %20, i32 0, i32 0, !dbg !5714
  %21 = load ptr, ptr %owner, align 8, !dbg !5714
  %call77 = call zeroext i1 @try_module_get(ptr noundef %21) #10, !dbg !5715
  br i1 %call77, label %if.end79, label %if.then78, !dbg !5716

if.then78:                                        ; preds = %if.end75
  store i32 -19, ptr %ret, align 4, !dbg !5717
  br label %out_unbind, !dbg !5719

if.end79:                                         ; preds = %if.end75
  %22 = load ptr, ptr %acomp, align 8, !dbg !5720
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %22, i32 0, i32 2, !dbg !5722
  %23 = load ptr, ptr %audio_ops, align 8, !dbg !5722
  %tobool80 = icmp ne ptr %23, null, !dbg !5720
  br i1 %tobool80, label %land.lhs.true, label %if.end91, !dbg !5723

land.lhs.true:                                    ; preds = %if.end79
  %24 = load ptr, ptr %acomp, align 8, !dbg !5724
  %audio_ops81 = getelementptr inbounds %struct.drm_audio_component, ptr %24, i32 0, i32 2, !dbg !5725
  %25 = load ptr, ptr %audio_ops81, align 8, !dbg !5725
  %master_bind = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %25, i32 0, i32 3, !dbg !5726
  %26 = load ptr, ptr %master_bind, align 8, !dbg !5726
  %tobool82 = icmp ne ptr %26, null, !dbg !5724
  br i1 %tobool82, label %if.then83, label %if.end91, !dbg !5727

if.then83:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %acomp, align 8, !dbg !5728
  %audio_ops84 = getelementptr inbounds %struct.drm_audio_component, ptr %27, i32 0, i32 2, !dbg !5730
  %28 = load ptr, ptr %audio_ops84, align 8, !dbg !5730
  %master_bind85 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %28, i32 0, i32 3, !dbg !5731
  %29 = load ptr, ptr %master_bind85, align 8, !dbg !5731
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !5732
  %31 = load ptr, ptr %acomp, align 8, !dbg !5733
  %call86 = call i32 %29(ptr noundef %30, ptr noundef %31) #10, !dbg !5728
  store i32 %call86, ptr %ret, align 4, !dbg !5734
  %32 = load i32, ptr %ret, align 4, !dbg !5735
  %cmp87 = icmp slt i32 %32, 0, !dbg !5737
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5738

if.then89:                                        ; preds = %if.then83
  br label %module_put, !dbg !5739

if.end90:                                         ; preds = %if.then83
  br label %if.end91, !dbg !5740

if.end91:                                         ; preds = %if.end90, %land.lhs.true, %if.end79
  %33 = load ptr, ptr %acomp, align 8, !dbg !5741
  %master_bind_complete = getelementptr inbounds %struct.drm_audio_component, ptr %33, i32 0, i32 3, !dbg !5742
  call void @complete_all(ptr noundef %master_bind_complete) #10, !dbg !5743
  store i32 0, ptr %retval, align 4, !dbg !5744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5744

module_put:                                       ; preds = %if.then89
  call void @llvm.dbg.label(metadata !5663), !dbg !5745
  %34 = load ptr, ptr %acomp, align 8, !dbg !5746
  %ops92 = getelementptr inbounds %struct.drm_audio_component, ptr %34, i32 0, i32 1, !dbg !5747
  %35 = load ptr, ptr %ops92, align 8, !dbg !5747
  %owner93 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %35, i32 0, i32 0, !dbg !5748
  %36 = load ptr, ptr %owner93, align 8, !dbg !5748
  call void @module_put(ptr noundef %36) #10, !dbg !5749
  br label %out_unbind, !dbg !5749

out_unbind:                                       ; preds = %module_put, %if.then78, %if.then74
  call void @llvm.dbg.label(metadata !5664), !dbg !5750
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !5751
  %38 = load ptr, ptr %acomp, align 8, !dbg !5752
  call void @component_unbind_all(ptr noundef %37, ptr noundef %38) #10, !dbg !5753
  %39 = load ptr, ptr %acomp, align 8, !dbg !5754
  %master_bind_complete94 = getelementptr inbounds %struct.drm_audio_component, ptr %39, i32 0, i32 3, !dbg !5755
  call void @complete_all(ptr noundef %master_bind_complete94) #10, !dbg !5756
  %40 = load i32, ptr %ret, align 4, !dbg !5757
  store i32 %40, ptr %retval, align 4, !dbg !5758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5758

cleanup:                                          ; preds = %out_unbind, %if.end91, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5759
  %41 = load i32, ptr %retval, align 4, !dbg !5759
  ret i32 %41, !dbg !5759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hdac_component_master_unbind(ptr noundef %dev) #0 align 16 !dbg !5760 {
entry:
  %dev.addr = alloca ptr, align 8
  %acomp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5762, metadata !DIExpression()), !dbg !5769
  call void @llvm.lifetime.start.p0(i64 8, ptr %acomp) #9, !dbg !5770
  call void @llvm.dbg.declare(metadata ptr %acomp, metadata !5763, metadata !DIExpression()), !dbg !5771
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5772
  %call = call ptr @hdac_get_acomp(ptr noundef %0) #10, !dbg !5773
  store ptr %call, ptr %acomp, align 8, !dbg !5771
  %1 = load ptr, ptr %acomp, align 8, !dbg !5774
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %1, i32 0, i32 2, !dbg !5776
  %2 = load ptr, ptr %audio_ops, align 8, !dbg !5776
  %tobool = icmp ne ptr %2, null, !dbg !5774
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5777

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %acomp, align 8, !dbg !5778
  %audio_ops1 = getelementptr inbounds %struct.drm_audio_component, ptr %3, i32 0, i32 2, !dbg !5779
  %4 = load ptr, ptr %audio_ops1, align 8, !dbg !5779
  %master_unbind = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %4, i32 0, i32 4, !dbg !5780
  %5 = load ptr, ptr %master_unbind, align 8, !dbg !5780
  %tobool2 = icmp ne ptr %5, null, !dbg !5778
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5781

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %acomp, align 8, !dbg !5782
  %audio_ops3 = getelementptr inbounds %struct.drm_audio_component, ptr %6, i32 0, i32 2, !dbg !5783
  %7 = load ptr, ptr %audio_ops3, align 8, !dbg !5783
  %master_unbind4 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %7, i32 0, i32 4, !dbg !5784
  %8 = load ptr, ptr %master_unbind4, align 8, !dbg !5784
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5785
  %10 = load ptr, ptr %acomp, align 8, !dbg !5786
  call void %8(ptr noundef %9, ptr noundef %10) #10, !dbg !5782
  br label %if.end, !dbg !5782

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load ptr, ptr %acomp, align 8, !dbg !5787
  %ops = getelementptr inbounds %struct.drm_audio_component, ptr %11, i32 0, i32 1, !dbg !5788
  %12 = load ptr, ptr %ops, align 8, !dbg !5788
  %owner = getelementptr inbounds %struct.drm_audio_component_ops, ptr %12, i32 0, i32 0, !dbg !5789
  %13 = load ptr, ptr %owner, align 8, !dbg !5789
  call void @module_put(ptr noundef %13) #10, !dbg !5790
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5791
  %15 = load ptr, ptr %acomp, align 8, !dbg !5792
  call void @component_unbind_all(ptr noundef %14, ptr noundef %15) #10, !dbg !5793
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5764, metadata !DIExpression()), !dbg !5794
  %16 = load ptr, ptr %acomp, align 8, !dbg !5794
  %ops5 = getelementptr inbounds %struct.drm_audio_component, ptr %16, i32 0, i32 1, !dbg !5794
  %17 = load ptr, ptr %ops5, align 8, !dbg !5794
  %tobool6 = icmp ne ptr %17, null, !dbg !5794
  br i1 %tobool6, label %lor.end, label %lor.rhs, !dbg !5794

lor.rhs:                                          ; preds = %if.end
  %18 = load ptr, ptr %acomp, align 8, !dbg !5794
  %dev7 = getelementptr inbounds %struct.drm_audio_component, ptr %18, i32 0, i32 0, !dbg !5794
  %19 = load ptr, ptr %dev7, align 8, !dbg !5794
  %tobool8 = icmp ne ptr %19, null, !dbg !5794
  br label %lor.end, !dbg !5794

lor.end:                                          ; preds = %lor.rhs, %if.end
  %20 = phi i1 [ true, %if.end ], [ %tobool8, %lor.rhs ]
  %lnot = xor i1 %20, true, !dbg !5794
  %lnot9 = xor i1 %lnot, true, !dbg !5794
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5794
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5794
  %21 = load i32, ptr %__ret_warn_on, align 4, !dbg !5795
  %tobool10 = icmp ne i32 %21, 0, !dbg !5795
  %lnot11 = xor i1 %tobool10, true, !dbg !5795
  %lnot13 = xor i1 %lnot11, true, !dbg !5795
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !5795
  %conv = sext i32 %lnot.ext14 to i64, !dbg !5795
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5795
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5795
  br i1 %tobool15, label %if.then16, label %if.end26, !dbg !5794

if.then16:                                        ; preds = %lor.end
  br label %do.body, !dbg !5795

do.body:                                          ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5766, metadata !DIExpression()), !dbg !5796
  store i32 2305, ptr %__flags, align 4, !dbg !5796
  br label %do.body17, !dbg !5796

do.body17:                                        ; preds = %do.body
  br label %do.cond, !dbg !5797

do.cond:                                          ; preds = %do.body17
  br label %do.end, !dbg !5797

do.end:                                           ; preds = %do.cond
  br label %do.body18, !dbg !5796

do.body18:                                        ; preds = %do.end
  %22 = load i32, ptr %__flags, align 4, !dbg !5799
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 233, i32 %22, i64 12) #9, !dbg !5799, !srcloc !5801
  br label %do.cond19, !dbg !5799

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5799

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5796

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !5802

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5802

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !5795
  br label %do.cond24, !dbg !5796

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !5796

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !5796

if.end26:                                         ; preds = %do.end25, %lor.end
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !5794
  %tobool27 = icmp ne i32 %23, 0, !dbg !5794
  %lnot28 = xor i1 %tobool27, true, !dbg !5794
  %lnot30 = xor i1 %lnot28, true, !dbg !5794
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5794
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !5794
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !5794
  store i64 %expval33, ptr %tmp, align 8, !dbg !5795
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !5804
  %24 = load i64, ptr %tmp, align 8, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %acomp) #9, !dbg !5805
  ret void, !dbg !5805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5806 dso_local i32 @component_bind_all(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5809 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5812 dso_local void @complete_all(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5813 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5814 dso_local void @component_unbind_all(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771}
!llvm.ident = !{!4772}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_set_codec_wakeup295", scope: !2, file: !3, line: 52, type: !171, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/hda/.hdac_component.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/hda/snd-hda-core\22 -D KBUILD_BASENAME=\22hdac_component\22 -D KBUILD_MODNAME=\22snd_hda_core\22 -D __KBUILD_MODNAME=kmod_snd_hda_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/hda/hdac_component.ll sound/hda/hdac_component.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !170, globals: !180, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/hda/hdac_component.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe7ceef63f01fd34568359f4125cd612")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !129, !133, !142, !147, !152, !158, !165}
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
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 10, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "false", value: 0)
!169 = !DIEnumerator(name: "true", value: 1)
!170 = !{!171, !172, !174, !177}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !173, line: 154, baseType: !7)
!173 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!176 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !179)
!179 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!180 = !{!0, !181, !183, !185, !187, !189, !194, !199, !204, !206, !208, !269, !274}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_display_power296", scope: !2, file: !3, line: 106, type: !171, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_sync_audio_rate297", scope: !2, file: !3, line: 139, type: !171, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_acomp_get_eld298", scope: !2, file: !3, line: 182, type: !171, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_acomp_register_notifier299", scope: !2, file: !3, line: 262, type: !171, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 216, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 27)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 152, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 19)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 344, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 43)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_acomp_init300", scope: !2, file: !3, line: 320, type: !171, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hdac_acomp_exit301", scope: !2, file: !3, line: 354, type: !171, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "__key", scope: !210, file: !211, line: 87, type: !266, isLocal: true, isDefinition: true)
!210 = distinct !DISubprogram(name: "init_completion", scope: !211, file: !211, line: 84, type: !212, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!211 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !211, line: 26, size: 256, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !215, file: !211, line: 27, baseType: !7, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !215, file: !211, line: 28, baseType: !219, size: 192, offset: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !220, line: 43, size: 192, elements: !221)
!220 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!221 = !{!222, !258}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !219, file: !220, line: 44, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !224, line: 23, baseType: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !224, line: 14, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !225, file: !224, line: 15, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !229, line: 44, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !229, line: 14, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 15, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 15, size: 32, elements: !234)
!234 = !{!235, !240, !250}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !229, line: 16, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !173, line: 174, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 172, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !173, line: 173, baseType: !109, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 24, baseType: !241, size: 16)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 24, size: 16, elements: !242)
!242 = !{!243, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !241, file: !229, line: 25, baseType: !244, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !245, line: 17, baseType: !246)
!245 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !247, line: 21, baseType: !248)
!247 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!248 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !241, file: !229, line: 26, baseType: !244, size: 8, offset: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 28, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 28, size: 32, elements: !252)
!252 = !{!253, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !251, file: !229, line: 29, baseType: !254, size: 16)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !245, line: 19, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !247, line: 24, baseType: !256)
!256 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !251, file: !229, line: 30, baseType: !254, size: 16, offset: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !219, file: !220, line: 45, baseType: !259, size: 128, offset: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !173, line: 190, size: 128, elements: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !173, line: 191, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !259, file: !173, line: 191, baseType: !262, size: 64, offset: 64)
!264 = !{!265}
!265 = !DILocalVariable(name: "x", arg: 1, scope: !210, file: !211, line: 84, type: !214)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !267, line: 206, elements: !268)
!267 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!268 = !{}
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !211, line: 87, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 72, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 9)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "hdac_component_master_ops", scope: !2, file: !3, line: 236, type: !276, isLocal: true, isDefinition: true)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "component_master_ops", file: !278, line: 52, size: 128, elements: !279)
!278 = !DIFile(filename: "./include/linux/component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04039f7293b0278ac0f4748dc7ee6e0e")
!279 = !{!280, !4763}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !277, file: !278, line: 74, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!109, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !286)
!286 = !{!287, !4239, !4240, !4243, !4244, !4294, !4379, !4380, !4381, !4382, !4383, !4390, !4548, !4561, !4571, !4575, !4577, !4578, !4579, !4583, !4590, !4591, !4594, !4597, !4601, !4705, !4706, !4707, !4708, !4709, !4710, !4740, !4741, !4742, !4745, !4748, !4757, !4758, !4759, !4760, !4761, !4762}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !285, file: !94, line: 706, baseType: !288, size: 512)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !289, line: 64, size: 512, elements: !290)
!289 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!290 = !{!291, !294, !295, !297, !352, !4126, !4229, !4234, !4235, !4236, !4237, !4238}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !289, line: 65, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !288, file: !289, line: 66, baseType: !259, size: 128, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !288, file: !289, line: 67, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !288, file: !289, line: 68, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !289, line: 168, size: 768, elements: !300)
!300 = !{!301, !302, !311, !312}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !299, file: !289, line: 169, baseType: !259, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !299, file: !289, line: 170, baseType: !303, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !304, line: 29, baseType: !305)
!304 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !304, line: 17, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !304, line: 18, baseType: !308, size: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !304, line: 18, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !308, file: !304, line: 19, baseType: !225, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !299, file: !289, line: 171, baseType: !288, size: 512, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !299, file: !289, line: 172, baseType: !313, size: 64, offset: 704)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !289, line: 133, size: 192, elements: !316)
!316 = !{!317, !324, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !315, file: !289, line: 134, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!109, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !289, line: 135, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!292, !322}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !315, file: !289, line: 136, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!109, !322, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !289, line: 125, size: 20736, elements: !336)
!336 = !{!337, !342, !346, !347, !351}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !335, file: !289, line: 126, baseType: !338, size: 192)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !340)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!340 = !{!341}
!341 = !DISubrange(count: 3)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !335, file: !289, line: 127, baseType: !343, size: 4096, offset: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 4096, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !335, file: !289, line: 128, baseType: !109, size: 32, offset: 4288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !335, file: !289, line: 129, baseType: !348, size: 16384, offset: 4320)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 16384, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 2048)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !335, file: !289, line: 130, baseType: !109, size: 32, offset: 20704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !288, file: !289, line: 69, baseType: !353, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !289, line: 116, size: 384, elements: !356)
!356 = !{!357, !361, !389, !4088, !4116, !4120}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !355, file: !289, line: 117, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !296}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !355, file: !289, line: 118, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !365, line: 254, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!366 = !{!367, !381}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !364, file: !365, line: 255, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !296, !375, !339}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !173, line: 66, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !373, line: 73, baseType: !374)
!373 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !373, line: 15, baseType: !179)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !365, line: 30, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !365, line: 31, baseType: !292, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !376, file: !365, line: 32, baseType: !380, size: 16, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !173, line: 24, baseType: !256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !364, file: !365, line: 256, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!371, !296, !375, !292, !385}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 61, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !373, line: 72, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !373, line: 16, baseType: !388)
!388 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !355, file: !289, line: 119, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !365, line: 84, size: 320, elements: !394)
!394 = !{!395, !396, !400, !4084, !4086}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !365, line: 85, baseType: !292, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !393, file: !365, line: 86, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!380, !296, !375, !109}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !393, file: !365, line: 88, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!380, !296, !404, !109}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !365, line: 175, size: 512, elements: !406)
!406 = !{!407, !408, !409, !410, !4075, !4079, !4080}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !405, file: !365, line: 176, baseType: !376, size: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !365, line: 177, baseType: !385, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !405, file: !365, line: 178, baseType: !171, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !405, file: !365, line: 179, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !416)
!416 = !{!417, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !4069, !4070, !4071, !4072, !4073, !4074}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !415, file: !14, line: 473, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !420)
!420 = !{!421, !422, !423, !431, !432, !439, !440, !443, !444, !3848, !3849, !3850, !3851, !3852, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3892, !3895, !3896, !3897, !3906, !3907, !3908, !3909}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !419, file: !14, line: 642, baseType: !380, size: 16)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !419, file: !14, line: 643, baseType: !256, size: 16, offset: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !419, file: !14, line: 644, baseType: !424, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !425, line: 23, baseType: !426)
!425 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 21, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !426, file: !425, line: 22, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !173, line: 37, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !373, line: 49, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !419, file: !14, line: 645, baseType: !259, size: 128, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !419, file: !14, line: 646, baseType: !433, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !425, line: 28, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 26, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !425, line: 27, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !173, line: 38, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !373, line: 50, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !419, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !419, file: !14, line: 650, baseType: !441, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !419, file: !14, line: 651, baseType: !441, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !419, file: !14, line: 654, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !448)
!448 = !{!449, !3682, !3692, !3696, !3700, !3704, !3708, !3712, !3716, !3720, !3724, !3725, !3729, !3733, !3770, !3799, !3803, !3809, !3813, !3817, !3821, !3825, !3829, !3835, !3839}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !447, file: !14, line: 1967, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!453, !418, !453, !7}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !455, line: 82, size: 1536, elements: !456)
!455 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!456 = !{!457, !458, !468, !476, !477, !497, !498, !502, !515, !3666, !3667, !3668, !3669, !3674, !3675, !3676}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !454, file: !455, line: 84, baseType: !7, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !454, file: !455, line: 85, baseType: !459, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !460, line: 275, baseType: !461)
!460 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !460, line: 275, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !461, file: !460, line: 275, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !460, line: 69, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !460, line: 64, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !465, file: !460, line: 65, baseType: !7, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !454, file: !455, line: 86, baseType: !469, size: 128, offset: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !470, line: 38, size: 128, elements: !471)
!470 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!471 = !{!472, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !470, line: 39, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !469, file: !470, line: 39, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !454, file: !455, line: 87, baseType: !453, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !454, file: !455, line: 88, baseType: !478, size: 128, offset: 256)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !455, line: 49, size: 128, elements: !479)
!479 = !{!480, !494}
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !455, line: 50, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !455, line: 50, size: 64, elements: !482)
!482 = !{!483, !490}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !455, line: 51, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !455, line: 51, size: 64, elements: !485)
!485 = !{!486, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !484, file: !455, line: 52, baseType: !487, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !245, line: 21, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !247, line: 27, baseType: !7)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !484, file: !455, line: 52, baseType: !487, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !481, file: !455, line: 54, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !245, line: 23, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !247, line: 31, baseType: !493)
!493 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !455, line: 56, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !454, file: !455, line: 89, baseType: !418, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !454, file: !455, line: 91, baseType: !499, size: 256, offset: 448)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !454, file: !455, line: 94, baseType: !503, size: 64, offset: 704)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !504, line: 25, size: 64, elements: !505)
!504 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !504, line: 26, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 26, size: 64, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !507, file: !504, line: 28, baseType: !492, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !504, line: 30, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !504, line: 30, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !511, file: !504, line: 31, baseType: !303, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !504, line: 32, baseType: !109, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !454, file: !455, line: 95, baseType: !516, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !455, line: 128, size: 1024, align: 512, elements: !519)
!519 = !{!520, !524, !525, !532, !538, !542, !546, !550, !551, !555, !559, !3656, !3660}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !518, file: !455, line: 129, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!109, !453, !7}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !518, file: !455, line: 130, baseType: !521, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !518, file: !455, line: 131, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!109, !529, !531}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !518, file: !455, line: 132, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!109, !529, !7, !292, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !518, file: !455, line: 134, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!109, !529}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !518, file: !455, line: 135, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!109, !453}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !518, file: !455, line: 136, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !453}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !518, file: !455, line: 137, baseType: !547, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !518, file: !455, line: 138, baseType: !552, size: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !453, !418}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !518, file: !455, line: 139, baseType: !556, size: 64, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!339, !453, !339, !109}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !518, file: !455, line: 140, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!563, !3655}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !565, line: 70, size: 256, elements: !566)
!565 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!566 = !{!567, !568, !3651, !3652}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !564, file: !565, line: 71, baseType: !453, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !564, file: !565, line: 72, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !571)
!571 = !{!572, !573, !576, !577, !578, !582, !1047, !1186, !1226, !1316, !1320, !1321, !1322, !1323, !1324, !1333, !1334, !1335, !1336, !1341, !1345, !1346, !1349, !1352, !1355, !1358, !1359, !1360, !1401, !3584, !3585, !3586, !3587, !3588, !3589, !3592, !3594, !3601, !3602, !3603, !3604, !3605, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !570, file: !14, line: 1191, baseType: !259, size: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !570, file: !14, line: 1192, baseType: !574, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !173, line: 21, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !173, line: 18, baseType: !487)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !570, file: !14, line: 1193, baseType: !248, size: 8, offset: 160)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !570, file: !14, line: 1194, baseType: !388, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !570, file: !14, line: 1195, baseType: !579, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !173, line: 52, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !373, line: 88, baseType: !581)
!581 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !570, file: !14, line: 1196, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !585)
!585 = !{!586, !587, !588, !595, !599, !603, !607, !1033, !1034, !1038, !1039, !1040, !1041, !1043, !1044, !1045, !1046}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !14, line: 2367, baseType: !292, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !584, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !584, file: !14, line: 2376, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!109, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !594, line: 32, flags: DIFlagFwdDecl)
!594 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !584, file: !14, line: 2377, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !584, file: !14, line: 2378, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!453, !583, !109, !292, !171}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !584, file: !14, line: 2380, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !569}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !584, file: !14, line: 2381, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !610)
!610 = !{!611, !612, !613, !617, !627, !653, !654, !655, !656, !660, !665, !666, !686, !742, !743, !744, !745, !746, !749, !750, !751, !759, !763, !790, !811, !812, !813, !814, !823, !846, !847, !850, !853, !854, !855, !856, !857, !858, !859, !864, !865, !991, !999, !1000, !1001, !1003, !1007, !1008, !1012, !1013, !1014, !1015, !1017, !1018, !1019, !1026, !1027, !1028, !1032}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !609, file: !6, line: 403, baseType: !5, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !609, file: !6, line: 406, baseType: !259, size: 128, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !609, file: !6, line: 409, baseType: !614, size: 448, offset: 192)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 448, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 56)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !609, file: !6, line: 417, baseType: !618, size: 768, offset: 640)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !619)
!619 = !{!620, !621, !622, !623, !626}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !618, file: !6, line: 46, baseType: !288, size: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !618, file: !6, line: 47, baseType: !608, size: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !618, file: !6, line: 48, baseType: !296, size: 64, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !618, file: !6, line: 49, baseType: !624, size: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !618, file: !6, line: 50, baseType: !214, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !609, file: !6, line: 418, baseType: !628, size: 64, offset: 1408)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !630)
!630 = !{!631, !632, !637, !641, !645, !649}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !629, file: !6, line: 54, baseType: !376, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !629, file: !6, line: 55, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!371, !628, !636, !339}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !629, file: !6, line: 57, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!371, !628, !636, !292, !385}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !629, file: !6, line: 59, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !608, !292}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !629, file: !6, line: 60, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!109, !608}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !629, file: !6, line: 61, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !608}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !609, file: !6, line: 419, baseType: !292, size: 64, offset: 1472)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !609, file: !6, line: 420, baseType: !292, size: 64, offset: 1536)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !609, file: !6, line: 421, baseType: !296, size: 64, offset: 1600)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !609, file: !6, line: 424, baseType: !657, size: 64, offset: 1664)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !609, file: !6, line: 425, baseType: !661, size: 64, offset: 1728)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !245, line: 20, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !247, line: 26, baseType: !109)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !609, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !609, file: !6, line: 435, baseType: !667, size: 256, offset: 1856)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !668, line: 66, size: 256, elements: !669)
!668 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!669 = !{!670, !679, !680, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !667, file: !668, line: 67, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !672, line: 13, baseType: !673)
!672 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !173, line: 181, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 179, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !674, file: !173, line: 180, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !245, line: 22, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !247, line: 30, baseType: !581)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !667, file: !668, line: 68, baseType: !223, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !667, file: !668, line: 70, baseType: !681, size: 32, offset: 96)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !682, line: 15, size: 32, elements: !683)
!682 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !681, file: !682, line: 20, baseType: !236, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !667, file: !668, line: 72, baseType: !259, size: 128, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !609, file: !6, line: 437, baseType: !687, size: 64, offset: 2112)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !689, line: 69, size: 320, elements: !690)
!689 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!690 = !{!691, !692, !693, !713, !715, !719, !720}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !689, line: 70, baseType: !292, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !688, file: !689, line: 71, baseType: !608, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !688, file: !689, line: 72, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !689, line: 47, size: 256, elements: !697)
!697 = !{!698, !699, !705, !709}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !689, line: 49, baseType: !7, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !696, file: !689, line: 51, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!109, !292, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !696, file: !689, line: 53, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!109, !339, !703}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !696, file: !689, line: 55, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !171}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !688, file: !689, line: 73, baseType: !714, size: 16, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !688, file: !689, line: 74, baseType: !716, size: 8, offset: 208)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !245, line: 16, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !247, line: 20, baseType: !718)
!718 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !689, line: 75, baseType: !244, size: 8, offset: 216)
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !689, line: 76, baseType: !721, size: 64, offset: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !689, line: 76, size: 64, elements: !722)
!722 = !{!723, !724, !731}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !721, file: !689, line: 77, baseType: !171, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !721, file: !689, line: 78, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !689, line: 86, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !727, file: !689, line: 87, baseType: !7, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !727, file: !689, line: 88, baseType: !339, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !721, file: !689, line: 79, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !689, line: 92, size: 256, elements: !735)
!735 = !{!736, !737, !738, !740, !741}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !734, file: !689, line: 94, baseType: !7, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !734, file: !689, line: 95, baseType: !7, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !734, file: !689, line: 96, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !734, file: !689, line: 97, baseType: !694, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !734, file: !689, line: 98, baseType: !171, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !609, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !609, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !609, file: !6, line: 442, baseType: !657, size: 64, offset: 2240)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !609, file: !6, line: 443, baseType: !661, size: 64, offset: 2304)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !609, file: !6, line: 444, baseType: !747, size: 8, offset: 2368)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !173, line: 35, baseType: !748)
!748 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !609, file: !6, line: 451, baseType: !747, size: 8, offset: 2376)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !609, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !609, file: !6, line: 455, baseType: !752, size: 64, offset: 2432)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !754, line: 23, size: 96, elements: !755)
!754 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !753, file: !754, line: 24, baseType: !109, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !753, file: !754, line: 24, baseType: !109, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !753, file: !754, line: 24, baseType: !109, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !609, file: !6, line: 458, baseType: !760, size: 64, offset: 2496)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!109}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !609, file: !6, line: 460, baseType: !764, size: 4032, align: 512, offset: 2560)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 4032, elements: !788)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !766)
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !765, file: !6, line: 363, baseType: !171, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !765, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !765, file: !6, line: 367, baseType: !770, size: 448, offset: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !770, file: !6, line: 320, baseType: !608, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !6, line: 321, baseType: !774, size: 384, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !775, line: 40, size: 384, elements: !776)
!775 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !774, file: !775, line: 41, baseType: !778, size: 384, align: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 384, align: 64, elements: !786)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !780, line: 5, size: 192, align: 64, elements: !781)
!780 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!781 = !{!782, !783, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !779, file: !780, line: 6, baseType: !388, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !779, file: !780, line: 7, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !779, file: !780, line: 8, baseType: !784, size: 64, offset: 128)
!786 = !{!787}
!787 = !DISubrange(count: 2)
!788 = !{!789}
!789 = !DISubrange(count: 7)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !609, file: !6, line: 463, baseType: !791, size: 192, offset: 6592)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !792, line: 8, size: 192, elements: !793)
!792 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!793 = !{!794, !795, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !791, file: !792, line: 10, baseType: !7, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !791, file: !792, line: 11, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !791, file: !792, line: 12, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !800, line: 59, size: 48, elements: !801)
!800 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!801 = !{!802, !806, !807, !808, !809, !810}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !799, file: !800, line: 60, baseType: !803, size: 16)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !245, line: 18, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !247, line: 23, baseType: !805)
!805 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !799, file: !800, line: 61, baseType: !803, size: 16, offset: 16)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !799, file: !800, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !799, file: !800, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !799, file: !800, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !799, file: !800, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !609, file: !6, line: 465, baseType: !388, size: 64, offset: 6784)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !609, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !609, file: !6, line: 470, baseType: !259, size: 128, offset: 6912)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !609, file: !6, line: 471, baseType: !815, size: 64, offset: 7040)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !817, line: 33, size: 96, elements: !818)
!817 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!818 = !{!819, !820, !821, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !816, file: !817, line: 37, baseType: !109, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !816, file: !817, line: 43, baseType: !109, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !816, file: !817, line: 45, baseType: !256, size: 16, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !817, line: 47, baseType: !256, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !609, file: !6, line: 476, baseType: !824, size: 64, offset: 7104)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !826)
!826 = !{!827, !843, !844, !845}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !825, file: !6, line: 379, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !830, line: 204, baseType: !831)
!830 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !830, line: 197, size: 192, elements: !832)
!832 = !{!833, !835, !836, !837, !839, !841}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !831, file: !830, line: 198, baseType: !834, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !830, line: 21, baseType: !488)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !831, file: !830, line: 199, baseType: !248, size: 8, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !831, file: !830, line: 200, baseType: !248, size: 8, offset: 40)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !831, file: !830, line: 201, baseType: !838, size: 16, offset: 48)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !830, line: 17, baseType: !255)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !831, file: !830, line: 202, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !830, line: 16, baseType: !492)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !831, file: !830, line: 203, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !830, line: 22, baseType: !492)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !825, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !825, file: !6, line: 381, baseType: !339, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !825, file: !6, line: 382, baseType: !339, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !609, file: !6, line: 477, baseType: !825, size: 256, offset: 7168)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !609, file: !6, line: 480, baseType: !848, size: 64, offset: 7424)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !609, file: !6, line: 483, baseType: !851, size: 64, offset: 7488)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !609, file: !6, line: 488, baseType: !339, size: 64, offset: 7552)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !609, file: !6, line: 492, baseType: !171, size: 64, offset: 7616)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !609, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !609, file: !6, line: 495, baseType: !171, size: 64, offset: 7744)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !609, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !609, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !609, file: !6, line: 500, baseType: !860, size: 64, offset: 7872)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !862, line: 45, baseType: !863)
!862 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !609, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !609, file: !6, line: 504, baseType: !866, size: 64, offset: 8000)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !869, line: 96, size: 192, elements: !870)
!869 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!870 = !{!871, !872, !953, !955}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !868, file: !869, line: 97, baseType: !7, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !868, file: !869, line: 98, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !869, line: 24, size: 3072, elements: !875)
!875 = !{!876, !878, !879, !880, !881, !905, !906, !907, !908, !926, !938, !939, !950, !951, !952}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !874, file: !869, line: 26, baseType: !877, size: 128)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 128, elements: !786)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !874, file: !869, line: 27, baseType: !877, size: 128, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !874, file: !869, line: 28, baseType: !109, size: 32, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !874, file: !869, line: 31, baseType: !303, size: 32, align: 512, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !874, file: !869, line: 32, baseType: !882, size: 960, offset: 576)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !883, line: 206, size: 960, elements: !884)
!883 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!884 = !{!885, !894, !899, !901, !902, !904}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !882, file: !883, line: 207, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !173, line: 232, size: 128, align: 64, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !173, line: 233, baseType: !886, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !887, file: !173, line: 234, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !886}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !882, file: !883, line: 208, baseType: !895, size: 256, offset: 64)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 256, elements: !897)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!897 = !{!898}
!898 = !DISubrange(count: 4)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !882, file: !883, line: 209, baseType: !900, size: 256, offset: 320)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !897)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !882, file: !883, line: 213, baseType: !179, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !882, file: !883, line: 215, baseType: !903, size: 256, offset: 640)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !897)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 216, baseType: !244, size: 8, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !874, file: !869, line: 33, baseType: !388, size: 64, offset: 1536)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !874, file: !869, line: 34, baseType: !388, size: 64, offset: 1600)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !874, file: !869, line: 35, baseType: !747, size: 8, offset: 1664)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !874, file: !869, line: 36, baseType: !909, size: 320, offset: 1728)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !910, line: 11, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!911 = !{!912, !919, !920, !925}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !909, file: !910, line: 16, baseType: !913, size: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !173, line: 198, size: 128, elements: !914)
!914 = !{!915, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !913, file: !173, line: 199, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !913, file: !173, line: 199, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !909, file: !910, line: 17, baseType: !388, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !909, file: !910, line: 18, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !910, line: 19, baseType: !487, size: 32, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !874, file: !869, line: 37, baseType: !927, size: 256, offset: 2048)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !928, line: 98, size: 256, elements: !929)
!928 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !927, file: !928, line: 99, baseType: !671, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !927, file: !928, line: 100, baseType: !259, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !927, file: !928, line: 101, baseType: !933, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !928, line: 21, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !874, file: !869, line: 38, baseType: !887, size: 128, align: 64, offset: 2304)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !874, file: !869, line: 39, baseType: !940, size: 64, offset: 2432)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !869, line: 49, size: 768, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !941, file: !869, line: 50, baseType: !303, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !941, file: !869, line: 51, baseType: !900, size: 256, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !941, file: !869, line: 53, baseType: !900, size: 256, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !941, file: !869, line: 54, baseType: !388, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !941, file: !869, line: 55, baseType: !940, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !941, file: !869, line: 56, baseType: !109, size: 32, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !941, file: !869, line: 57, baseType: !109, size: 32, offset: 736)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !874, file: !869, line: 40, baseType: !388, size: 64, offset: 2496)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !874, file: !869, line: 42, baseType: !109, size: 32, offset: 2560)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !874, file: !869, line: 43, baseType: !867, size: 64, offset: 2624)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !868, file: !869, line: 99, baseType: !954, offset: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !267, line: 211, elements: !268)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !868, file: !869, line: 100, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !869, line: 63, size: 3008, elements: !958)
!958 = !{!959, !960, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !990}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !957, file: !869, line: 64, baseType: !940, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !957, file: !869, line: 65, baseType: !961, size: 192, offset: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 192, elements: !340)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !957, file: !869, line: 67, baseType: !109, size: 32, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !957, file: !869, line: 68, baseType: !667, size: 256, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !869, line: 69, baseType: !303, size: 32, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !957, file: !869, line: 70, baseType: !667, size: 256, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !957, file: !869, line: 71, baseType: !388, size: 64, offset: 896)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !957, file: !869, line: 72, baseType: !388, size: 64, offset: 960)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !957, file: !869, line: 73, baseType: !388, size: 64, offset: 1024)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !957, file: !869, line: 74, baseType: !388, size: 64, offset: 1088)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !957, file: !869, line: 75, baseType: !388, size: 64, offset: 1152)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !957, file: !869, line: 76, baseType: !388, size: 64, offset: 1216)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !957, file: !869, line: 77, baseType: !388, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !957, file: !869, line: 78, baseType: !388, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !957, file: !869, line: 79, baseType: !747, size: 8, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !957, file: !869, line: 80, baseType: !388, size: 64, offset: 1472)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !957, file: !869, line: 81, baseType: !667, size: 256, offset: 1536)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !957, file: !869, line: 82, baseType: !215, size: 256, offset: 1792)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !957, file: !869, line: 84, baseType: !236, size: 32, offset: 2048)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !957, file: !869, line: 87, baseType: !388, size: 64, offset: 2112)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !957, file: !869, line: 88, baseType: !388, size: 64, offset: 2176)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !957, file: !869, line: 89, baseType: !982, size: 704, offset: 2240)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !928, line: 111, size: 704, elements: !983)
!983 = !{!984, !985, !986, !989}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !982, file: !928, line: 112, baseType: !927, size: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !982, file: !928, line: 113, baseType: !909, size: 320, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !982, file: !928, line: 116, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !928, line: 18, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !982, file: !928, line: 117, baseType: !109, size: 32, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !957, file: !869, line: 90, baseType: !867, size: 64, offset: 2944)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !609, file: !6, line: 515, baseType: !992, size: 64, offset: 8064)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !994, line: 117, size: 128, elements: !995)
!994 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !993, file: !994, line: 118, baseType: !663, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !993, file: !994, line: 119, baseType: !663, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !993, file: !994, line: 120, baseType: !179, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !609, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !609, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !609, file: !6, line: 520, baseType: !1002, size: 64, offset: 8192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !609, file: !6, line: 523, baseType: !1004, size: 64, offset: 8256)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !609, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !609, file: !6, line: 525, baseType: !1009, size: 64, offset: 8384)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !609, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !609, file: !6, line: 533, baseType: !171, size: 64, offset: 8512)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !609, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !609, file: !6, line: 535, baseType: !1016, size: 64, offset: 8640)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !609, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !609, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !609, file: !6, line: 540, baseType: !1020, size: 64, offset: 8768)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1022, line: 32, size: 64, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1021, file: !1022, line: 33, baseType: !663, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1021, file: !1022, line: 34, baseType: !663, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !609, file: !6, line: 563, baseType: !259, size: 128, offset: 8832)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !609, file: !6, line: 565, baseType: !259, size: 128, offset: 8960)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !609, file: !6, line: 568, baseType: !1029, size: 64, offset: 9088)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !609, file: !6, line: 570, baseType: !236, size: 32, offset: 9152)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !14, line: 2382, baseType: !583, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !584, file: !14, line: 2383, baseType: !1035, size: 64, offset: 512)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !173, line: 194, size: 64, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1035, file: !173, line: 195, baseType: !916, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !584, file: !14, line: 2385, baseType: !266, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !584, file: !14, line: 2386, baseType: !266, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !584, file: !14, line: 2387, baseType: !266, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !584, file: !14, line: 2388, baseType: !1042, offset: 576)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !340)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !584, file: !14, line: 2390, baseType: !266, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !584, file: !14, line: 2391, baseType: !266, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !584, file: !14, line: 2392, baseType: !266, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !584, file: !14, line: 2393, baseType: !266, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !570, file: !14, line: 1197, baseType: !1048, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1051)
!1051 = !{!1052, !1056, !1060, !1061, !1065, !1071, !1075, !1076, !1077, !1081, !1085, !1089, !1090, !1091, !1097, !1101, !1102, !1109, !1110, !1111, !1112, !1116, !1120, !1169, !1184, !1185}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1050, file: !14, line: 2058, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!418, !569}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1050, file: !14, line: 2059, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !418}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1050, file: !14, line: 2060, baseType: !1057, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1050, file: !14, line: 2062, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !418, !109}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1050, file: !14, line: 2063, baseType: !1066, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!109, !418, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1050, file: !14, line: 2064, baseType: !1072, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!109, !418}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1050, file: !14, line: 2065, baseType: !1057, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1050, file: !14, line: 2066, baseType: !604, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1050, file: !14, line: 2067, baseType: !1078, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!109, !569, !109}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1050, file: !14, line: 2068, baseType: !1082, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!109, !569, !13}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1050, file: !14, line: 2069, baseType: !1086, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!109, !569}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1050, file: !14, line: 2070, baseType: !1082, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1050, file: !14, line: 2071, baseType: !1086, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1050, file: !14, line: 2072, baseType: !1092, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!109, !453, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1050, file: !14, line: 2073, baseType: !1098, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!109, !569, !796, !339}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1050, file: !14, line: 2074, baseType: !604, size: 64, offset: 960)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1050, file: !14, line: 2076, baseType: !1103, size: 64, offset: 1024)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!109, !1106, !453}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1108, line: 66, flags: DIFlagFwdDecl)
!1108 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1050, file: !14, line: 2077, baseType: !1103, size: 64, offset: 1088)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1050, file: !14, line: 2078, baseType: !1103, size: 64, offset: 1152)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1050, file: !14, line: 2079, baseType: !1103, size: 64, offset: 1216)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1050, file: !14, line: 2081, baseType: !1113, size: 64, offset: 1280)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!371, !569, !109, !339, !385, !579}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1050, file: !14, line: 2082, baseType: !1117, size: 64, offset: 1344)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!371, !569, !109, !292, !385, !579}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1050, file: !14, line: 2083, baseType: !1121, size: 64, offset: 1408)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1124, !418}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1152, !1153, !1154}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1126, file: !19, line: 297, baseType: !913, size: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1126, file: !19, line: 298, baseType: !259, size: 128, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1126, file: !19, line: 299, baseType: !259, size: 128, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1126, file: !19, line: 300, baseType: !259, size: 128, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1126, file: !19, line: 301, baseType: !667, size: 256, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1126, file: !19, line: 302, baseType: !303, size: 32, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1126, file: !19, line: 303, baseType: !236, size: 32, offset: 800)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1126, file: !19, line: 304, baseType: !569, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1126, file: !19, line: 305, baseType: !1137, size: 64, offset: 896)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1138)
!1138 = !{!1139, !1151}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !19, line: 69, baseType: !1140, size: 32)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !19, line: 69, size: 32, elements: !1141)
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1140, file: !19, line: 70, baseType: !424, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1140, file: !19, line: 71, baseType: !433, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1140, file: !19, line: 72, baseType: !1145, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1146, line: 24, baseType: !1147)
!1146 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1146, line: 22, size: 32, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1147, file: !1146, line: 23, baseType: !1150, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1146, line: 20, baseType: !430)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1137, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1126, file: !19, line: 306, baseType: !579, size: 64, offset: 960)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1126, file: !19, line: 307, baseType: !388, size: 64, offset: 1024)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1126, file: !19, line: 308, baseType: !1155, size: 576, offset: 1088)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1156)
!1156 = !{!1157, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1168}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1155, file: !19, line: 206, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !581)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1155, file: !19, line: 207, baseType: !1158, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1155, file: !19, line: 208, baseType: !1158, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1155, file: !19, line: 209, baseType: !1158, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1155, file: !19, line: 210, baseType: !1158, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1155, file: !19, line: 211, baseType: !1158, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1155, file: !19, line: 212, baseType: !1158, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1155, file: !19, line: 213, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1167, line: 8, baseType: !678)
!1167 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1155, file: !19, line: 214, baseType: !1166, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1050, file: !14, line: 2085, baseType: !1170, size: 64, offset: 1472)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!179, !569, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1175, line: 15, size: 256, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1176 = !{!1177, !1178, !1179, !1180, !1181}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1174, file: !1175, line: 16, baseType: !172, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1174, file: !1175, line: 19, baseType: !109, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1174, file: !1175, line: 26, baseType: !388, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1174, file: !1175, line: 33, baseType: !388, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1174, file: !1175, line: 36, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1050, file: !14, line: 2087, baseType: !1170, size: 64, offset: 1536)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1050, file: !14, line: 2089, baseType: !604, size: 64, offset: 1600)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !570, file: !14, line: 1198, baseType: !1187, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1190)
!1190 = !{!1191, !1195, !1199, !1203, !1204, !1205, !1206, !1207, !1212, !1217, !1221}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1189, file: !19, line: 325, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!109, !1125}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1189, file: !19, line: 326, baseType: !1196, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1125, !569, !109}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1189, file: !19, line: 327, baseType: !1200, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !1125}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1189, file: !19, line: 328, baseType: !1192, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1189, file: !19, line: 329, baseType: !1192, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1189, file: !19, line: 330, baseType: !1192, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1189, file: !19, line: 331, baseType: !1078, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1189, file: !19, line: 334, baseType: !1208, size: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1211, !418}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1189, file: !19, line: 335, baseType: !1213, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!109, !418, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1189, file: !19, line: 337, baseType: !1218, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!109, !418, !1211}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1189, file: !19, line: 339, baseType: !1222, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!109, !569, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !570, file: !14, line: 1199, baseType: !1227, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1230)
!1230 = !{!1231, !1242, !1243, !1247, !1248, !1249, !1264, !1287, !1291, !1292, !1315}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1229, file: !19, line: 431, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!109, !569, !109, !109, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1238, line: 8, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1237, file: !1238, line: 9, baseType: !563, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1237, file: !1238, line: 10, baseType: !453, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1229, file: !19, line: 432, baseType: !1078, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1229, file: !19, line: 433, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!109, !569, !7}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1229, file: !19, line: 434, baseType: !1244, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1229, file: !19, line: 435, baseType: !1078, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1229, file: !19, line: 436, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!109, !569, !109, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1254, file: !19, line: 418, baseType: !109, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1254, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1254, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1254, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1254, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1254, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1254, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1254, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1229, file: !19, line: 437, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!109, !569, !1137, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1269, file: !19, line: 346, baseType: !109, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1269, file: !19, line: 347, baseType: !491, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1269, file: !19, line: 348, baseType: !491, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1269, file: !19, line: 349, baseType: !491, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1269, file: !19, line: 350, baseType: !491, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1269, file: !19, line: 351, baseType: !491, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1269, file: !19, line: 352, baseType: !491, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1269, file: !19, line: 353, baseType: !677, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1269, file: !19, line: 355, baseType: !677, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1269, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1269, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1269, file: !19, line: 358, baseType: !491, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1269, file: !19, line: 359, baseType: !491, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1269, file: !19, line: 360, baseType: !491, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1269, file: !19, line: 361, baseType: !677, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1269, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1229, file: !19, line: 438, baseType: !1288, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!109, !569, !1225, !1268}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1229, file: !19, line: 440, baseType: !1265, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1229, file: !19, line: 441, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!109, !569, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1297, file: !19, line: 412, baseType: !7, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1297, file: !19, line: 413, baseType: !1301, size: 1344, offset: 64)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 1344, elements: !340)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1314}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1302, file: !19, line: 398, baseType: !7, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1302, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1302, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1302, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1302, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1302, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1302, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1302, file: !19, line: 406, baseType: !493, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1302, file: !19, line: 407, baseType: !1313, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !173, line: 132, baseType: !491)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1302, file: !19, line: 408, baseType: !1313, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1229, file: !19, line: 442, baseType: !1244, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !570, file: !14, line: 1200, baseType: !1317, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !570, file: !14, line: 1201, baseType: !388, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !570, file: !14, line: 1202, baseType: !388, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !570, file: !14, line: 1203, baseType: !388, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !570, file: !14, line: 1204, baseType: !453, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !570, file: !14, line: 1205, baseType: !1325, size: 320, offset: 896)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1326, line: 48, size: 320, elements: !1327)
!1326 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1327 = !{!1328, !1329, !1330, !1331, !1332}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1325, file: !1326, line: 49, baseType: !671, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1325, file: !1326, line: 55, baseType: !671, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1325, file: !1326, line: 57, baseType: !681, size: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1325, file: !1326, line: 59, baseType: !223, size: 32, offset: 160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1325, file: !1326, line: 60, baseType: !259, size: 128, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !570, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !570, file: !14, line: 1207, baseType: !236, size: 32, offset: 1248)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !570, file: !14, line: 1209, baseType: !171, size: 64, offset: 1280)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !570, file: !14, line: 1211, baseType: !1337, size: 64, offset: 1344)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !570, file: !14, line: 1223, baseType: !1342, size: 64, offset: 1408)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !470, line: 34, size: 64, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1342, file: !470, line: 35, baseType: !473, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !570, file: !14, line: 1224, baseType: !259, size: 128, offset: 1472)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !570, file: !14, line: 1225, baseType: !1347, size: 64, offset: 1600)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !570, file: !14, line: 1226, baseType: !1350, size: 64, offset: 1664)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !570, file: !14, line: 1227, baseType: !1353, size: 64, offset: 1728)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !570, file: !14, line: 1228, baseType: !1356, size: 64, offset: 1792)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !570, file: !14, line: 1229, baseType: !913, size: 128, offset: 1856)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !570, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !570, file: !14, line: 1231, baseType: !1361, size: 2496, offset: 2048)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1367, !1399}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !19, line: 522, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1361, file: !19, line: 523, baseType: !1325, size: 320, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1361, file: !19, line: 524, baseType: !1366, size: 192, offset: 384)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 192, elements: !340)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1361, file: !19, line: 525, baseType: !1368, size: 1728, offset: 576)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, size: 1728, elements: !340)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1370)
!1370 = !{!1371, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1369, file: !19, line: 223, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1374)
!1374 = !{!1375, !1376, !1389, !1390}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1373, file: !19, line: 446, baseType: !109, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1373, file: !19, line: 447, baseType: !1377, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1379, file: !19, line: 313, baseType: !1078, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1379, file: !19, line: 314, baseType: !1078, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1379, file: !19, line: 315, baseType: !1078, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1379, file: !19, line: 316, baseType: !1078, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1379, file: !19, line: 317, baseType: !1192, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1379, file: !19, line: 318, baseType: !1192, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1379, file: !19, line: 319, baseType: !1192, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1379, file: !19, line: 320, baseType: !1222, size: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1373, file: !19, line: 448, baseType: !608, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1373, file: !19, line: 449, baseType: !1372, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1369, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1369, file: !19, line: 226, baseType: !259, size: 128, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1369, file: !19, line: 227, baseType: !388, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1369, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1369, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1369, file: !19, line: 230, baseType: !1158, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1369, file: !19, line: 231, baseType: !1158, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1369, file: !19, line: 232, baseType: !171, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1361, file: !19, line: 526, baseType: !1400, size: 192, offset: 2304)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 192, elements: !340)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !570, file: !14, line: 1233, baseType: !1402, size: 2368, offset: 4544)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1402, file: !14, line: 1185, baseType: !256, size: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1402, file: !14, line: 1186, baseType: !256, size: 16, offset: 16)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1402, file: !14, line: 1187, baseType: !1407, size: 2304, offset: 64)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 2304, elements: !340)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1409, line: 12, size: 768, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1410 = !{!1411, !1425, !1426, !3582, !3583}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1408, file: !1409, line: 13, baseType: !1412, size: 384)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1413, line: 17, size: 384, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1414 = !{!1415, !1416, !1417, !1424}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1412, file: !1413, line: 18, baseType: !109, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1412, file: !1413, line: 19, baseType: !109, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1412, file: !1413, line: 20, baseType: !1418, size: 192, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1419, line: 41, baseType: !1420)
!1419 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1419, line: 37, size: 192, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1420, file: !1419, line: 38, baseType: !303, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1420, file: !1419, line: 39, baseType: !259, size: 128, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1412, file: !1413, line: 22, baseType: !887, size: 128, align: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1408, file: !1409, line: 14, baseType: !739, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1408, file: !1409, line: 15, baseType: !1427, size: 64, offset: 448)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1428, line: 16, size: 64, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1427, file: !1428, line: 17, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1108, line: 746, size: 58368, elements: !1433)
!1433 = !{!1434, !1442, !1443, !1444, !1450, !1451, !1452, !1453, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1524, !1535, !1630, !1634, !1637, !1668, !1669, !1670, !1671, !1682, !1684, !1685, !1686, !1687, !1688, !1689, !1700, !1701, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1718, !1719, !1726, !1727, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2755, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2803, !2809, !2810, !2811, !2812, !2813, !2817, !2820, !2827, !2832, !2835, !2838, !2841, !2845, !2983, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3021, !3022, !3023, !3032, !3040, !3041, !3042, !3043, !3044, !3049, !3050, !3051, !3054, !3055, !3058, !3061, !3064, !3072, !3075, !3076, !3162, !3163, !3164, !3165, !3166, !3172, !3173, !3174, !3175, !3178, !3179, !3182, !3185, !3186, !3189, !3190, !3191, !3194, !3195, !3196, !3197, !3198, !3199, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3231, !3232, !3238, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3250, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3359, !3360, !3361}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1432, file: !1108, line: 752, baseType: !1435, size: 192)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1436, line: 56, size: 192, elements: !1437)
!1436 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1436, line: 57, baseType: !388, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1435, file: !1436, line: 58, baseType: !388, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1435, file: !1436, line: 59, baseType: !487, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1435, file: !1436, line: 61, baseType: !487, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1432, file: !1108, line: 754, baseType: !7, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1432, file: !1108, line: 767, baseType: !171, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1432, file: !1108, line: 768, baseType: !1445, size: 32, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1446, line: 113, baseType: !1447)
!1446 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1446, line: 111, size: 32, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1447, file: !1446, line: 112, baseType: !236, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !1108, line: 770, baseType: !7, size: 32, offset: 352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1432, file: !1108, line: 771, baseType: !7, size: 32, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1432, file: !1108, line: 774, baseType: !109, size: 32, offset: 416)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1432, file: !1108, line: 775, baseType: !1454, size: 128, offset: 448)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1455, line: 58, size: 128, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1456 = !{!1457, !1463, !1468, !1469}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1454, file: !1455, line: 59, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1459, line: 60, size: 64, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1458, file: !1459, line: 61, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 60, baseType: !1464, size: 32, offset: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 60, size: 32, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1464, file: !1455, line: 61, baseType: !7, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1464, file: !1455, line: 62, baseType: !236, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1454, file: !1455, line: 65, baseType: !254, size: 16, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1454, file: !1455, line: 65, baseType: !254, size: 16, offset: 112)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1432, file: !1108, line: 776, baseType: !7, size: 32, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1432, file: !1108, line: 777, baseType: !388, size: 64, offset: 640)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1432, file: !1108, line: 778, baseType: !1431, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1432, file: !1108, line: 787, baseType: !109, size: 32, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1432, file: !1108, line: 788, baseType: !109, size: 32, offset: 800)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1432, file: !1108, line: 790, baseType: !109, size: 32, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1432, file: !1108, line: 792, baseType: !109, size: 32, offset: 864)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1432, file: !1108, line: 793, baseType: !109, size: 32, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1432, file: !1108, line: 794, baseType: !109, size: 32, offset: 928)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1432, file: !1108, line: 795, baseType: !7, size: 32, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1432, file: !1108, line: 797, baseType: !1481, size: 2048, offset: 1024)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1108, line: 551, size: 2048, elements: !1482)
!1482 = !{!1483, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1503, !1506, !1507, !1508}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1481, file: !1108, line: 553, baseType: !1484, size: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1108, line: 411, size: 128, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1484, file: !1108, line: 412, baseType: !388, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1484, file: !1108, line: 413, baseType: !487, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1481, file: !1108, line: 554, baseType: !779, size: 192, align: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1481, file: !1108, line: 555, baseType: !491, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1481, file: !1108, line: 556, baseType: !491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1481, file: !1108, line: 558, baseType: !259, size: 128, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1481, file: !1108, line: 559, baseType: !7, size: 32, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1481, file: !1108, line: 561, baseType: !491, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1481, file: !1108, line: 562, baseType: !491, size: 64, offset: 704)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1481, file: !1108, line: 563, baseType: !491, size: 64, offset: 768)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1481, file: !1108, line: 564, baseType: !491, size: 64, offset: 832)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1481, file: !1108, line: 565, baseType: !677, size: 64, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1481, file: !1108, line: 566, baseType: !491, size: 64, offset: 960)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1481, file: !1108, line: 568, baseType: !491, size: 64, offset: 1024)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1481, file: !1108, line: 571, baseType: !109, size: 32, offset: 1088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1481, file: !1108, line: 572, baseType: !1502, size: 64, offset: 1152)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1481, file: !1108, line: 574, baseType: !1504, size: 64, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1108, line: 49, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1481, file: !1108, line: 576, baseType: !1504, size: 64, offset: 1280)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1481, file: !1108, line: 578, baseType: !388, size: 64, offset: 1344)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1481, file: !1108, line: 588, baseType: !1509, size: 512, align: 512, offset: 1536)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1108, line: 497, size: 512, align: 512, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1509, file: !1108, line: 498, baseType: !491, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1509, file: !1108, line: 499, baseType: !491, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1509, file: !1108, line: 500, baseType: !491, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1509, file: !1108, line: 501, baseType: !487, size: 32, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1509, file: !1108, line: 502, baseType: !487, size: 32, offset: 224)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1509, file: !1108, line: 503, baseType: !388, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1509, file: !1108, line: 504, baseType: !388, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1509, file: !1108, line: 505, baseType: !388, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1509, file: !1108, line: 506, baseType: !1520, size: 64, align: 64, offset: 448)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1108, line: 445, size: 64, align: 64, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1520, file: !1108, line: 446, baseType: !7, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1520, file: !1108, line: 447, baseType: !7, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1432, file: !1108, line: 798, baseType: !1525, size: 384, offset: 3072)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1108, line: 592, size: 384, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1525, file: !1108, line: 593, baseType: !259, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1525, file: !1108, line: 594, baseType: !388, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1525, file: !1108, line: 595, baseType: !388, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1525, file: !1108, line: 596, baseType: !7, size: 32, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1525, file: !1108, line: 597, baseType: !256, size: 16, offset: 288)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1525, file: !1108, line: 598, baseType: !256, size: 16, offset: 304)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1525, file: !1108, line: 600, baseType: !1534, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1432, file: !1108, line: 799, baseType: !1536, size: 1792, offset: 3456)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1108, line: 610, size: 1792, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1627, !1628}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1536, file: !1108, line: 611, baseType: !779, size: 192, align: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1536, file: !1108, line: 618, baseType: !491, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1536, file: !1108, line: 619, baseType: !491, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1536, file: !1108, line: 620, baseType: !491, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1536, file: !1108, line: 621, baseType: !491, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1536, file: !1108, line: 622, baseType: !491, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1536, file: !1108, line: 629, baseType: !677, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1536, file: !1108, line: 630, baseType: !491, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !1108, line: 631, baseType: !7, size: 32, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1536, file: !1108, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1536, file: !1108, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1536, file: !1108, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1536, file: !1108, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1536, file: !1108, line: 662, baseType: !1552, size: 512, offset: 704)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1553)
!1553 = !{!1554, !1562, !1563, !1568, !1623, !1624, !1625, !1626}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1552, file: !25, line: 119, baseType: !1555, size: 256)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1556, line: 9, size: 256, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1555, file: !1556, line: 10, baseType: !779, size: 192, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1555, file: !1556, line: 11, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1561, line: 29, baseType: !677)
!1561 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1552, file: !25, line: 120, baseType: !1560, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1552, file: !25, line: 121, baseType: !1564, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!24, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1552, file: !25, line: 122, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1571)
!1571 = !{!1572, !1597, !1598, !1601, !1606, !1607, !1618, !1622}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1570, file: !25, line: 160, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1574, file: !25, line: 216, baseType: !223, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1574, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1574, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1574, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1574, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1574, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1574, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1574, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1574, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1574, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1574, file: !25, line: 227, baseType: !256, size: 16, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1574, file: !25, line: 228, baseType: !256, size: 16, offset: 208)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1574, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1574, file: !25, line: 235, baseType: !1560, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1574, file: !25, line: 236, baseType: !1567, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1574, file: !25, line: 237, baseType: !1560, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1574, file: !25, line: 238, baseType: !1567, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1574, file: !25, line: 239, baseType: !1594, size: 4096, align: 512, offset: 512)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1570, size: 4096, align: 512, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 8)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1570, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1570, file: !25, line: 162, baseType: !1599, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !173, line: 32, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !373, line: 96, baseType: !109)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1570, file: !25, line: 163, baseType: !1602, size: 32, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !460, line: 274, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !460, line: 274, size: 32, elements: !1604)
!1604 = !{!1605}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1603, file: !460, line: 274, baseType: !464, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1570, file: !25, line: 164, baseType: !1567, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1570, file: !25, line: 165, baseType: !1608, size: 128, offset: 256)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1556, line: 14, size: 128, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1608, file: !1556, line: 15, baseType: !1611, size: 128)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !780, line: 26, size: 128, elements: !1612)
!1612 = !{!1613, !1617}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1611, file: !780, line: 27, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !780, line: 12, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1614, file: !780, line: 13, baseType: !784, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1611, file: !780, line: 28, baseType: !784, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1570, file: !25, line: 166, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1560}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1570, file: !25, line: 167, baseType: !1560, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1552, file: !25, line: 123, baseType: !244, size: 8, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1552, file: !25, line: 124, baseType: !244, size: 8, offset: 456)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1552, file: !25, line: 125, baseType: !244, size: 8, offset: 464)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1552, file: !25, line: 126, baseType: !244, size: 8, offset: 472)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1536, file: !1108, line: 671, baseType: !1552, size: 512, offset: 1216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1536, file: !1108, line: 679, baseType: !1629, size: 64, offset: 1728)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1432, file: !1108, line: 800, baseType: !1631, size: 64, offset: 5248)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1108, line: 800, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1432, file: !1108, line: 809, baseType: !1635, size: 64, offset: 5312)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1108, line: 70, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1432, file: !1108, line: 825, baseType: !1638, size: 2048, align: 512, offset: 5632)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1108, line: 509, size: 2048, align: 512, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1638, file: !1108, line: 511, baseType: !491, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1638, file: !1108, line: 512, baseType: !491, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1638, file: !1108, line: 513, baseType: !491, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1638, file: !1108, line: 514, baseType: !491, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1638, file: !1108, line: 515, baseType: !491, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1638, file: !1108, line: 516, baseType: !491, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1638, file: !1108, line: 518, baseType: !491, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1638, file: !1108, line: 519, baseType: !491, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1638, file: !1108, line: 520, baseType: !677, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1638, file: !1108, line: 522, baseType: !491, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1638, file: !1108, line: 523, baseType: !491, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1638, file: !1108, line: 524, baseType: !677, size: 64, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1638, file: !1108, line: 526, baseType: !677, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1638, file: !1108, line: 527, baseType: !491, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1638, file: !1108, line: 529, baseType: !491, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1638, file: !1108, line: 530, baseType: !491, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1638, file: !1108, line: 531, baseType: !491, size: 64, offset: 1024)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1638, file: !1108, line: 532, baseType: !491, size: 64, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1638, file: !1108, line: 533, baseType: !491, size: 64, offset: 1152)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1638, file: !1108, line: 535, baseType: !491, size: 64, offset: 1216)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1638, file: !1108, line: 536, baseType: !491, size: 64, offset: 1280)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1638, file: !1108, line: 537, baseType: !491, size: 64, offset: 1344)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1638, file: !1108, line: 538, baseType: !491, size: 64, offset: 1408)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1638, file: !1108, line: 539, baseType: !491, size: 64, offset: 1472)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1638, file: !1108, line: 540, baseType: !491, size: 64, offset: 1536)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1638, file: !1108, line: 541, baseType: !491, size: 64, offset: 1600)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1638, file: !1108, line: 542, baseType: !491, size: 64, offset: 1664)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1638, file: !1108, line: 543, baseType: !491, size: 64, offset: 1728)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1432, file: !1108, line: 833, baseType: !7, size: 32, offset: 7680)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1432, file: !1108, line: 836, baseType: !7, size: 32, offset: 7712)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1432, file: !1108, line: 837, baseType: !109, size: 32, offset: 7744)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1432, file: !1108, line: 838, baseType: !1672, size: 64, offset: 7808)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1675, line: 19, baseType: !1676)
!1675 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1675, line: 19, size: 64, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1676, file: !1675, line: 19, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 64, elements: !1680)
!1680 = !{!1681}
!1681 = !DISubrange(count: 1)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1432, file: !1108, line: 839, baseType: !1683, size: 64, offset: 7872)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1432, file: !1108, line: 840, baseType: !1674, size: 64, offset: 7936)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1432, file: !1108, line: 841, baseType: !171, size: 64, offset: 8000)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1432, file: !1108, line: 843, baseType: !256, size: 16, offset: 8064)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1432, file: !1108, line: 845, baseType: !256, size: 16, offset: 8080)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1432, file: !1108, line: 848, baseType: !109, size: 32, offset: 8096)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1432, file: !1108, line: 849, baseType: !1690, size: 32, offset: 8128)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1108, line: 718, size: 32, elements: !1691)
!1691 = !{!1692, !1699}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1690, file: !1108, line: 724, baseType: !1693, size: 32)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1108, line: 719, size: 32, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1693, file: !1108, line: 720, baseType: !244, size: 8)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1693, file: !1108, line: 721, baseType: !244, size: 8, offset: 8)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1693, file: !1108, line: 722, baseType: !244, size: 8, offset: 16)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1693, file: !1108, line: 723, baseType: !244, size: 8, offset: 24)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1690, file: !1108, line: 725, baseType: !487, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1432, file: !1108, line: 850, baseType: !259, size: 128, offset: 8192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1432, file: !1108, line: 851, baseType: !1702, size: 64, offset: 8320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1108, line: 60, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1432, file: !1108, line: 855, baseType: !388, size: 64, offset: 8384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1432, file: !1108, line: 856, baseType: !244, size: 8, offset: 8448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1432, file: !1108, line: 857, baseType: !244, size: 8, offset: 8456)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1432, file: !1108, line: 858, baseType: !109, size: 32, offset: 8480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1432, file: !1108, line: 859, baseType: !259, size: 128, offset: 8512)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1432, file: !1108, line: 860, baseType: !109, size: 32, offset: 8640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1432, file: !1108, line: 861, baseType: !259, size: 128, offset: 8704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1432, file: !1108, line: 873, baseType: !1712, size: 256, offset: 8832)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1108, line: 376, size: 256, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1712, file: !1108, line: 381, baseType: !388, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1712, file: !1108, line: 384, baseType: !493, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1712, file: !1108, line: 389, baseType: !493, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1712, file: !1108, line: 392, baseType: !493, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1432, file: !1108, line: 875, baseType: !259, size: 128, offset: 9088)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1432, file: !1108, line: 877, baseType: !1720, size: 320, offset: 9216)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1721, line: 86, size: 320, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1720, file: !1721, line: 87, baseType: !109, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1720, file: !1721, line: 88, baseType: !259, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1720, file: !1721, line: 89, baseType: !259, size: 128, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1432, file: !1108, line: 878, baseType: !779, size: 192, align: 64, offset: 9536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1432, file: !1108, line: 881, baseType: !1728, size: 64, offset: 9728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1730)
!1730 = !{!1731, !2669}
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !38, line: 734, baseType: !1732, size: 10240)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !38, line: 734, size: 10240, elements: !1733)
!1733 = !{!1734, !1738, !1751, !2546, !2547, !2548, !2549, !2550, !2551, !2558, !2559, !2560, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2599, !2601, !2604, !2649, !2650, !2651, !2654, !2655, !2656, !2659, !2660, !2661, !2667, !2668}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !38, line: 739, baseType: !1735, size: 512, align: 512)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1732, file: !38, line: 739, size: 512, align: 512, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1735, file: !38, line: 747, baseType: !236, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1732, file: !38, line: 750, baseType: !1739, size: 128, offset: 512)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1740, line: 218, size: 128, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1741 = !{!1742, !1749, !1750}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1739, file: !1740, line: 219, baseType: !1743, size: 32)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1739, file: !1740, line: 219, size: 32, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1743, file: !1740, line: 220, baseType: !303, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1743, file: !1740, line: 221, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1740, line: 197, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1740, line: 197, elements: !268)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1739, file: !1740, line: 223, baseType: !7, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1739, file: !1740, line: 224, baseType: !171, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1732, file: !38, line: 752, baseType: !1752, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!388, !1755, !388, !388, !388, !388}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1757)
!1757 = !{!1758, !1764, !1765, !1767, !1768, !1769, !1770, !1771, !1821, !2011, !2020, !2021, !2022, !2536, !2537, !2538, !2539, !2541, !2542, !2545}
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !14, line: 995, baseType: !1759, size: 128)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !14, line: 995, size: 128, elements: !1760)
!1760 = !{!1761, !1762, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1759, file: !14, line: 996, baseType: !1458, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1759, file: !14, line: 997, baseType: !887, size: 128, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1759, file: !14, line: 998, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1756, file: !14, line: 1005, baseType: !303, size: 32, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1756, file: !14, line: 1006, baseType: !1766, size: 32, offset: 160)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !173, line: 156, baseType: !7)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1756, file: !14, line: 1007, baseType: !671, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1756, file: !14, line: 1008, baseType: !667, size: 256, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1756, file: !14, line: 1009, baseType: !579, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1756, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1756, file: !14, line: 1011, baseType: !1772, size: 256, offset: 640)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1773)
!1773 = !{!1774, !1795, !1817, !1818, !1819, !1820}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !14, line: 949, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1776, line: 34, baseType: !1777)
!1776 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1776, line: 25, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1777, file: !1776, line: 26, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1781, line: 27, baseType: !1782)
!1781 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1781, line: 13, size: 64, elements: !1783)
!1783 = !{!1784, !1794}
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1781, line: 14, baseType: !1785, size: 32)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1781, line: 14, size: 32, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1785, file: !1781, line: 15, baseType: !236, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1785, file: !1781, line: 16, baseType: !1789, size: 32)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !1781, line: 16, size: 32, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1789, file: !1781, line: 18, baseType: !244, size: 8)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1789, file: !1781, line: 19, baseType: !1793, size: 24, offset: 8)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 24, elements: !340)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1782, file: !1781, line: 26, baseType: !228, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1772, file: !14, line: 950, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1804, !1805, !1806, !1807}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !30, line: 61, baseType: !1445, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1797, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !30, line: 63, baseType: !303, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1797, file: !30, line: 65, baseType: !1803, size: 256, offset: 128)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !897)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1797, file: !30, line: 66, baseType: !1035, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1797, file: !30, line: 68, baseType: !1418, size: 192, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1797, file: !30, line: 69, baseType: !887, size: 128, align: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1797, file: !30, line: 70, baseType: !1808, offset: 768)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1809, elements: !1815)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1809, file: !30, line: 55, baseType: !109, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1809, file: !30, line: 56, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1815 = !{!1816}
!1816 = !DISubrange(count: -1)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1772, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1772, file: !14, line: 952, baseType: !424, size: 32, offset: 160)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1772, file: !14, line: 952, baseType: !424, size: 32, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1772, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1756, file: !14, line: 1012, baseType: !1822, size: 64, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1825, line: 110, size: 1472, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1843, !1844, !1845, !1846, !1847, !1848, !1956, !1957, !1958, !1959, !1960, !1991, !1994, !1998, !2006}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1824, file: !1825, line: 111, baseType: !671, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1824, file: !1825, line: 112, baseType: !424, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1824, file: !1825, line: 113, baseType: !433, size: 32, offset: 96)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1824, file: !1825, line: 114, baseType: !424, size: 32, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1824, file: !1825, line: 115, baseType: !433, size: 32, offset: 160)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1824, file: !1825, line: 116, baseType: !424, size: 32, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1824, file: !1825, line: 117, baseType: !433, size: 32, offset: 224)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1824, file: !1825, line: 118, baseType: !424, size: 32, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1824, file: !1825, line: 119, baseType: !433, size: 32, offset: 288)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1824, file: !1825, line: 120, baseType: !7, size: 32, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1824, file: !1825, line: 121, baseType: !1838, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1839, line: 24, baseType: !1840)
!1839 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1839, line: 24, size: 64, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1840, file: !1839, line: 24, baseType: !491, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1824, file: !1825, line: 122, baseType: !1838, size: 64, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1824, file: !1825, line: 123, baseType: !1838, size: 64, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1824, file: !1825, line: 124, baseType: !1838, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1824, file: !1825, line: 125, baseType: !1838, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1824, file: !1825, line: 127, baseType: !248, size: 8, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1824, file: !1825, line: 129, baseType: !1849, size: 64, offset: 768)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1851, line: 195, size: 1728, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1852 = !{!1853, !1854, !1857, !1862, !1863, !1866, !1867, !1872, !1873, !1874, !1875, !1878, !1879, !1880, !1881, !1882, !1920, !1941}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1850, file: !1851, line: 196, baseType: !1445, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1850, file: !1851, line: 197, baseType: !1855, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1851, line: 28, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !173, line: 104, baseType: !663)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1851, line: 198, baseType: !1858, size: 192, offset: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1851, line: 198, size: 192, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1858, file: !1851, line: 199, baseType: !259, size: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1858, file: !1851, line: 200, baseType: !779, size: 192, align: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1850, file: !1851, line: 205, baseType: !1325, size: 320, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1850, file: !1851, line: 206, baseType: !1864, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1851, line: 206, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1850, file: !1851, line: 207, baseType: !171, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1851, line: 208, baseType: !1868, size: 64, offset: 704)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1851, line: 208, size: 64, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1868, file: !1851, line: 209, baseType: !1166, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1868, file: !1851, line: 210, baseType: !1166, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1850, file: !1851, line: 212, baseType: !1166, size: 64, offset: 768)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1850, file: !1851, line: 213, baseType: !424, size: 32, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1850, file: !1851, line: 214, baseType: !433, size: 32, offset: 864)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1850, file: !1851, line: 215, baseType: !1876, size: 32, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1851, line: 31, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !173, line: 110, baseType: !487)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1850, file: !1851, line: 216, baseType: !256, size: 16, offset: 928)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1850, file: !1851, line: 217, baseType: !256, size: 16, offset: 944)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1850, file: !1851, line: 221, baseType: !805, size: 16, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1851, line: 228, baseType: !388, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1851, line: 245, baseType: !1883, size: 320, offset: 1088)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1851, line: 245, size: 320, elements: !1884)
!1884 = !{!1885, !1912}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1883, file: !1851, line: 246, baseType: !1886, size: 320)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1851, line: 114, size: 320, elements: !1887)
!1887 = !{!1888, !1889, !1901, !1904, !1911}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1886, file: !1851, line: 116, baseType: !388, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !1851, line: 117, baseType: !1890, size: 64, offset: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !1851, line: 117, size: 64, elements: !1891)
!1891 = !{!1892, !1900}
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1890, file: !1851, line: 118, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1890, file: !1851, line: 118, size: 64, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1893, file: !1851, line: 120, baseType: !254, size: 16)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1893, file: !1851, line: 121, baseType: !1897, size: 48, offset: 16)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 48, elements: !1898)
!1898 = !{!1899}
!1899 = !DISubrange(count: 6)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1890, file: !1851, line: 127, baseType: !388, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1886, file: !1851, line: 129, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1851, line: 102, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1886, file: !1851, line: 130, baseType: !1905, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1851, line: 108, size: 192, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1906, file: !1851, line: 109, baseType: !887, size: 128, align: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1906, file: !1851, line: 110, baseType: !1445, size: 32, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1906, file: !1851, line: 111, baseType: !747, size: 8, offset: 160)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1886, file: !1851, line: 131, baseType: !292, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !1851, line: 247, baseType: !1913, size: 320)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1851, line: 247, size: 320, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918, !1919}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1913, file: !1851, line: 248, baseType: !388, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1913, file: !1851, line: 249, baseType: !388, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1913, file: !1851, line: 250, baseType: !1902, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1913, file: !1851, line: 251, baseType: !1905, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1913, file: !1851, line: 252, baseType: !339, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1851, line: 260, baseType: !1921, size: 256, offset: 1408)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !1851, line: 260, size: 256, elements: !1922)
!1922 = !{!1923, !1929}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1921, file: !1851, line: 261, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1851, line: 134, size: 256, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1924, file: !1851, line: 135, baseType: !171, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1924, file: !1851, line: 136, baseType: !1928, size: 256)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !897)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1851, line: 262, baseType: !1930, size: 256)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1851, line: 262, size: 256, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1930, file: !1851, line: 264, baseType: !259, size: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1930, file: !1851, line: 265, baseType: !1934, size: 128, offset: 128)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1935, line: 22, size: 128, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1936 = !{!1937, !1940}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1934, file: !1935, line: 23, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1935, line: 23, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1934, file: !1935, line: 24, baseType: !388, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1850, file: !1851, line: 280, baseType: !1942, size: 64, offset: 1664)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1851, line: 176, size: 192, elements: !1944)
!1944 = !{!1945, !1954, !1955}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1943, file: !1851, line: 177, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1851, line: 171, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!109, !1849, !1950, !1952, !1849}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1943, file: !1851, line: 178, baseType: !1849, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1943, file: !1851, line: 179, baseType: !1902, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1824, file: !1825, line: 130, baseType: !1849, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1824, file: !1825, line: 131, baseType: !1849, size: 64, offset: 896)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1824, file: !1825, line: 132, baseType: !1849, size: 64, offset: 960)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1824, file: !1825, line: 135, baseType: !171, size: 64, offset: 1024)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1824, file: !1825, line: 137, baseType: !1961, size: 64, offset: 1088)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1963, line: 14, size: 1088, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1964 = !{!1965, !1966, !1975, !1976, !1977, !1978, !1979, !1980}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1962, file: !1963, line: 15, baseType: !1445, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1962, file: !1963, line: 17, baseType: !1967, size: 320, offset: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1968, line: 22, size: 320, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1969 = !{!1970, !1971, !1972, !1973}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1967, file: !1968, line: 23, baseType: !223, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1967, file: !1968, line: 24, baseType: !677, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1967, file: !1968, line: 26, baseType: !259, size: 128, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1967, file: !1968, line: 28, baseType: !1974, size: 64, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1962, file: !1963, line: 19, baseType: !388, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1962, file: !1963, line: 20, baseType: !671, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1962, file: !1963, line: 23, baseType: !913, size: 128, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1962, file: !1963, line: 24, baseType: !424, size: 32, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1962, file: !1963, line: 29, baseType: !671, size: 64, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1962, file: !1963, line: 36, baseType: !1981, size: 320, offset: 768)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1982, line: 15, size: 320, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1981, file: !1982, line: 16, baseType: !223, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1981, file: !1982, line: 18, baseType: !109, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1981, file: !1982, line: 19, baseType: !109, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1981, file: !1982, line: 20, baseType: !109, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1981, file: !1982, line: 21, baseType: !109, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1981, file: !1982, line: 22, baseType: !388, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1982, line: 23, baseType: !388, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1824, file: !1825, line: 138, baseType: !1992, size: 64, offset: 1152)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !425, line: 18, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1824, file: !1825, line: 139, baseType: !1995, size: 64, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1997, line: 16, flags: DIFlagFwdDecl)
!1997 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1824, file: !1825, line: 140, baseType: !1999, size: 64, offset: 1280)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1825, line: 25, size: 64, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2000, file: !1825, line: 26, baseType: !236, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2000, file: !1825, line: 27, baseType: !109, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2000, file: !1825, line: 28, baseType: !2005, offset: 64)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, elements: !1815)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1825, line: 142, baseType: !2007, size: 128, offset: 1344)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1825, line: 142, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2007, file: !1825, line: 143, baseType: !109, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2007, file: !1825, line: 144, baseType: !887, size: 128, align: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1756, file: !14, line: 1013, baseType: !2012, size: 256, offset: 960)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2012, file: !14, line: 971, baseType: !388, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2012, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2012, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2012, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2012, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2012, file: !14, line: 976, baseType: !579, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1756, file: !14, line: 1014, baseType: !1237, size: 128, offset: 1216)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1756, file: !14, line: 1015, baseType: !418, size: 64, offset: 1344)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1756, file: !14, line: 1016, baseType: !2023, size: 64, offset: 1408)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2026)
!2026 = !{!2027, !2028, !2032, !2037, !2041, !2125, !2126, !2132, !2145, !2162, !2166, !2167, !2458, !2459, !2463, !2468, !2469, !2473, !2477, !2483, !2484, !2488, !2489, !2495, !2499, !2503, !2509, !2513, !2517, !2521, !2525, !2526, !2532}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2025, file: !14, line: 1915, baseType: !608, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2025, file: !14, line: 1916, baseType: !2029, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!579, !1755, !579, !109}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2025, file: !14, line: 1917, baseType: !2033, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!371, !1755, !339, !385, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2025, file: !14, line: 1918, baseType: !2038, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!371, !1755, !292, !385, !2036}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2025, file: !14, line: 1919, baseType: !2042, size: 64, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!371, !2045, !2067}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2054, !2055, !2056, !2057}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2046, file: !14, line: 374, baseType: !1755, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2046, file: !14, line: 375, baseType: !579, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2046, file: !14, line: 376, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2045, !179}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2046, file: !14, line: 377, baseType: !171, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2046, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2046, file: !14, line: 379, baseType: !254, size: 16, offset: 288)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !14, line: 380, baseType: !2058, size: 64, offset: 320)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2046, file: !14, line: 380, size: 64, elements: !2059)
!2059 = !{!2060, !2063}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2058, file: !14, line: 386, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2058, file: !14, line: 395, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!371, !171}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2069, line: 41, size: 320, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2081, !2120}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2068, file: !2069, line: 42, baseType: !244, size: 8)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2068, file: !2069, line: 43, baseType: !747, size: 8, offset: 8)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2068, file: !2069, line: 44, baseType: !747, size: 8, offset: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2068, file: !2069, line: 45, baseType: !747, size: 8, offset: 24)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2068, file: !2069, line: 46, baseType: !747, size: 8, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2069, line: 47, baseType: !2077, size: 64, offset: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2069, line: 47, size: 64, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2077, file: !2069, line: 48, baseType: !385, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2077, file: !2069, line: 49, baseType: !109, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2069, line: 61, baseType: !2082, size: 128, offset: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2069, line: 61, size: 128, elements: !2083)
!2083 = !{!2084, !2090}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2082, file: !2069, line: 67, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2086, line: 17, size: 128, elements: !2087)
!2086 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2085, file: !2086, line: 19, baseType: !171, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2085, file: !2086, line: 20, baseType: !386, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !2069, line: 68, baseType: !2091, size: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2082, file: !2069, line: 68, size: 128, elements: !2092)
!2092 = !{!2093, !2119}
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2069, line: 69, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2069, line: 69, size: 64, elements: !2095)
!2095 = !{!2096, !2099, !2106, !2110, !2118}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2094, file: !2069, line: 71, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2094, file: !2069, line: 72, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2069, line: 17, size: 128, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2102, file: !2069, line: 18, baseType: !171, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2102, file: !2069, line: 19, baseType: !385, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2094, file: !2069, line: 73, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2069, line: 73, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2094, file: !2069, line: 74, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2113, line: 296, size: 128, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2112, file: !2113, line: 297, baseType: !303, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2112, file: !2113, line: 299, baseType: !172, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2112, file: !2113, line: 300, baseType: !171, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2094, file: !2069, line: 75, baseType: !171, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2091, file: !2069, line: 77, baseType: !385, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2069, line: 80, baseType: !2121, size: 64, offset: 256)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2069, line: 80, size: 64, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2121, file: !2069, line: 81, baseType: !388, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2121, file: !2069, line: 82, baseType: !579, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2025, file: !14, line: 1920, baseType: !2042, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2025, file: !14, line: 1921, baseType: !2127, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!109, !2045, !2130, !7}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2025, file: !14, line: 1923, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!109, !1755, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2138)
!2138 = !{!2139, !2144}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2137, file: !14, line: 1859, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!747, !2136, !292, !109, !579, !491, !7}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2137, file: !14, line: 1860, baseType: !579, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2025, file: !14, line: 1924, baseType: !2146, size: 64, offset: 512)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!2149, !1755, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2150, line: 59, baseType: !7)
!2150 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2153, line: 37, size: 128, elements: !2154)
!2153 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2154 = !{!2155, !2161}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2152, file: !2153, line: 38, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2153, line: 31, baseType: !2157)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1755, !2160, !2151}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2152, file: !2153, line: 39, baseType: !2149, size: 32, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2025, file: !14, line: 1925, baseType: !2163, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!179, !1755, !7, !388}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2025, file: !14, line: 1926, baseType: !2163, size: 64, offset: 640)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2025, file: !14, line: 1927, baseType: !2168, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!109, !1755, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2173)
!2173 = !{!2174, !2183, !2184, !2192, !2199, !2200, !2205, !2206, !2211, !2212, !2215, !2451, !2452, !2453, !2454, !2455, !2456}
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !38, line: 628, baseType: !2175, size: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2172, file: !38, line: 628, size: 128, elements: !2176)
!2176 = !{!2177, !2182}
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !38, line: 629, baseType: !2178, size: 128)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2175, file: !38, line: 629, size: 128, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2178, file: !38, line: 631, baseType: !388, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2178, file: !38, line: 632, baseType: !388, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2175, file: !38, line: 635, baseType: !887, size: 128, align: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2172, file: !38, line: 639, baseType: !1728, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2172, file: !38, line: 640, baseType: !2185, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2186, line: 297, baseType: !2187)
!2186 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2186, line: 297, size: 64, elements: !2188)
!2188 = !{!2189}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2187, file: !2186, line: 297, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2191, line: 19, baseType: !388)
!2191 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !38, line: 646, baseType: !2193, size: 64, offset: 256)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2172, file: !38, line: 646, size: 64, elements: !2194)
!2194 = !{!2195, !2198}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2193, file: !38, line: 647, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2197)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !388)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2193, file: !38, line: 648, baseType: !2197, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2172, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2172, file: !38, line: 667, baseType: !2201, size: 64, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2203)
!2203 = !{!2204}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2202, file: !38, line: 580, baseType: !1325, size: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2172, file: !38, line: 670, baseType: !747, size: 8, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2172, file: !38, line: 681, baseType: !2207, size: 256, offset: 512)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !38, line: 678, size: 256, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2207, file: !38, line: 679, baseType: !779, size: 192, align: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2207, file: !38, line: 680, baseType: !388, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2172, file: !38, line: 689, baseType: !259, size: 128, offset: 768)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2172, file: !38, line: 691, baseType: !2213, size: 64, offset: 896)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2172, file: !38, line: 694, baseType: !2216, size: 64, offset: 960)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2219, line: 563, size: 1024, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2220 = !{!2221, !2225, !2226, !2230, !2234, !2238, !2415, !2419, !2423, !2427, !2428, !2429, !2433, !2437, !2443, !2447}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2218, file: !2219, line: 564, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2171}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2218, file: !2219, line: 569, baseType: !2222, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2218, file: !2219, line: 571, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!109, !2171, !388}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2218, file: !2219, line: 572, baseType: !2231, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!109, !2171}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2218, file: !2219, line: 578, baseType: !2235, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!109, !2171, !388, !388, !388}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2218, file: !2219, line: 580, baseType: !2239, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2219, line: 512, size: 896, elements: !2245)
!2245 = !{!2246, !2254, !2255, !2262, !2269, !2279, !2408, !2409, !2411, !2413}
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2219, line: 513, baseType: !2247, size: 320)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2244, file: !2219, line: 513, size: 320, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2247, file: !2219, line: 514, baseType: !2171, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2247, file: !2219, line: 515, baseType: !172, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2247, file: !2219, line: 516, baseType: !388, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2247, file: !2219, line: 517, baseType: !388, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2247, file: !2219, line: 518, baseType: !388, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2244, file: !2219, line: 520, baseType: !37, size: 32, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2244, file: !2219, line: 522, baseType: !2256, size: 64, offset: 384)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2191, line: 22, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2191, line: 22, size: 64, elements: !2259)
!2259 = !{!2260}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2258, file: !2191, line: 22, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2191, line: 15, baseType: !388)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2244, file: !2219, line: 524, baseType: !2263, size: 64, offset: 448)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2186, line: 372, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2186, line: 372, size: 64, elements: !2266)
!2266 = !{!2267}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2265, file: !2186, line: 372, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2191, line: 16, baseType: !388)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2219, line: 527, baseType: !2270, size: 64, offset: 512)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !2219, line: 527, size: 64, elements: !2271)
!2271 = !{!2272, !2278}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2270, file: !2219, line: 528, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2191, line: 21, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2191, line: 21, size: 64, elements: !2275)
!2275 = !{!2276}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2274, file: !2191, line: 21, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2191, line: 14, baseType: !388)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2270, file: !2219, line: 529, baseType: !2257, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2244, file: !2219, line: 534, baseType: !2280, size: 64, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2282)
!2282 = !{!2283, !2284, !2402, !2407}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !38, line: 75, baseType: !388, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 83, baseType: !2285, size: 320, offset: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !38, line: 83, size: 320, elements: !2286)
!2286 = !{!2287, !2308, !2322, !2326, !2401}
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !38, line: 84, baseType: !2288, size: 320)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2285, file: !38, line: 84, size: 320, elements: !2289)
!2289 = !{!2290, !2301, !2302, !2307}
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !38, line: 90, baseType: !2291, size: 128)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2288, file: !38, line: 90, size: 128, elements: !2292)
!2292 = !{!2293, !2294, !2299, !2300}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2291, file: !38, line: 91, baseType: !259, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !38, line: 94, baseType: !2295, size: 128)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2291, file: !38, line: 94, size: 128, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2295, file: !38, line: 96, baseType: !171, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2295, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2291, file: !38, line: 102, baseType: !259, size: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2291, file: !38, line: 103, baseType: !259, size: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2288, file: !38, line: 106, baseType: !414, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !38, line: 107, baseType: !2303, size: 64, offset: 192)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2288, file: !38, line: 107, size: 64, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2303, file: !38, line: 108, baseType: !388, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2303, file: !38, line: 109, baseType: !388, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2288, file: !38, line: 117, baseType: !388, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !38, line: 119, baseType: !2309, size: 320)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2285, file: !38, line: 119, size: 320, elements: !2310)
!2310 = !{!2311, !2312, !2315, !2316, !2317}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2309, file: !38, line: 124, baseType: !388, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2309, file: !38, line: 125, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2309, file: !38, line: 126, baseType: !388, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2309, file: !38, line: 127, baseType: !388, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, scope: !2309, file: !38, line: 128, baseType: !2318, size: 64, offset: 256)
!2318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2309, file: !38, line: 128, size: 64, elements: !2319)
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2318, file: !38, line: 133, baseType: !388, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2318, file: !38, line: 138, baseType: !671, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !38, line: 141, baseType: !2323, size: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2285, file: !38, line: 141, size: 64, elements: !2324)
!2324 = !{!2325}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2323, file: !38, line: 142, baseType: !388, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !38, line: 144, baseType: !2327, size: 128)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2285, file: !38, line: 144, size: 128, elements: !2328)
!2328 = !{!2329, !2400}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2327, file: !38, line: 146, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2332)
!2332 = !{!2333, !2343, !2364, !2365, !2366, !2367, !2368, !2382, !2383, !2384}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2331, file: !54, line: 127, baseType: !2334, size: 384)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2335)
!2335 = !{!2336, !2337, !2339, !2340, !2341, !2342}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2334, file: !54, line: 22, baseType: !388, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2334, file: !54, line: 23, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2334, file: !54, line: 24, baseType: !2338, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2334, file: !54, line: 25, baseType: !388, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2334, file: !54, line: 26, baseType: !388, size: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2334, file: !54, line: 27, baseType: !388, size: 64, offset: 320)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2331, file: !54, line: 128, baseType: !2344, size: 128, offset: 384)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2345, line: 105, size: 128, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2344, file: !2345, line: 110, baseType: !388, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2344, file: !2345, line: 118, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2345, line: 95, size: 448, elements: !2351)
!2351 = !{!2352, !2353, !2359, !2360, !2361, !2362, !2363}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2350, file: !2345, line: 96, baseType: !671, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2350, file: !2345, line: 97, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2345, line: 60, baseType: !2356)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2350, file: !2345, line: 98, baseType: !2354, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2350, file: !2345, line: 99, baseType: !747, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2350, file: !2345, line: 100, baseType: !747, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2350, file: !2345, line: 101, baseType: !887, size: 128, align: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2350, file: !2345, line: 102, baseType: !2358, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2331, file: !54, line: 129, baseType: !215, size: 256, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2331, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2331, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2331, file: !54, line: 132, baseType: !388, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2331, file: !54, line: 133, baseType: !2369, size: 64, offset: 896)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2372)
!2372 = !{!2373, !2377, !2378}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2371, file: !54, line: 83, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2280}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2371, file: !54, line: 89, baseType: !2239, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2371, file: !54, line: 100, baseType: !2379, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!109, !2330, !388, !388, !109}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2331, file: !54, line: 134, baseType: !171, size: 64, offset: 960)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2331, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !54, line: 136, baseType: !2385, size: 128, offset: 1088)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2331, file: !54, line: 136, size: 128, elements: !2386)
!2386 = !{!2387, !2393}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2385, file: !54, line: 137, baseType: !2388, size: 128)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2389, line: 6, size: 128, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2388, file: !2389, line: 7, baseType: !491, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2388, file: !2389, line: 8, baseType: !491, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !54, line: 138, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2385, file: !54, line: 138, elements: !2395)
!2395 = !{!2396, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2394, file: !54, line: 138, baseType: !2397)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !54, line: 138, elements: !268)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2394, file: !54, line: 138, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2388, elements: !1815)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2327, file: !38, line: 147, baseType: !171, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2285, file: !38, line: 161, baseType: !887, size: 128, align: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !38, line: 164, baseType: !2403, size: 32, offset: 384)
!2403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !38, line: 164, size: 32, elements: !2404)
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2403, file: !38, line: 169, baseType: !236, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2403, file: !38, line: 177, baseType: !7, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2281, file: !38, line: 181, baseType: !236, size: 32, offset: 416)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2244, file: !2219, line: 535, baseType: !2280, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2244, file: !2219, line: 541, baseType: !2410, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2244, file: !2219, line: 545, baseType: !2412, size: 64, offset: 768)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2244, file: !2219, line: 549, baseType: !2414, size: 64, offset: 832)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2186, line: 520, baseType: !2280)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2218, file: !2219, line: 581, baseType: !2416, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!2242, !2243, !7}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2218, file: !2219, line: 582, baseType: !2420, size: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!2242, !2243, !388, !388}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2218, file: !2219, line: 584, baseType: !2424, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!388, !2171}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2218, file: !2219, line: 588, baseType: !2239, size: 64, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2218, file: !2219, line: 591, baseType: !2239, size: 64, offset: 640)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2218, file: !2219, line: 597, baseType: !2430, size: 64, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!109, !2171, !388, !171, !109, !109}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2218, file: !2219, line: 603, baseType: !2434, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!292, !2171}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2218, file: !2219, line: 613, baseType: !2438, size: 64, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!109, !2171, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2218, file: !2219, line: 625, baseType: !2444, size: 64, offset: 896)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!2441, !2171, !388}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2218, file: !2219, line: 633, baseType: !2448, size: 64, offset: 960)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2280, !2171, !388}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2172, file: !38, line: 697, baseType: !388, size: 64, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2172, file: !38, line: 699, baseType: !1755, size: 64, offset: 1088)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2172, file: !38, line: 700, baseType: !171, size: 64, offset: 1152)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2172, file: !38, line: 711, baseType: !671, size: 64, offset: 1216)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2172, file: !38, line: 717, baseType: !2441, size: 64, offset: 1280)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2172, file: !38, line: 722, baseType: !2457, offset: 1344)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !268)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2025, file: !14, line: 1928, baseType: !388, size: 64, offset: 768)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2025, file: !14, line: 1929, baseType: !2460, size: 64, offset: 832)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!109, !418, !1755}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2025, file: !14, line: 1930, baseType: !2464, size: 64, offset: 896)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!109, !1755, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !171)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2025, file: !14, line: 1931, baseType: !2460, size: 64, offset: 960)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2025, file: !14, line: 1932, baseType: !2470, size: 64, offset: 1024)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!109, !1755, !579, !579, !109}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2025, file: !14, line: 1933, baseType: !2474, size: 64, offset: 1088)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!109, !109, !1755, !109}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2025, file: !14, line: 1934, baseType: !2478, size: 64, offset: 1152)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!109, !1755, !109, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2025, file: !14, line: 1935, baseType: !1752, size: 64, offset: 1216)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2025, file: !14, line: 1936, baseType: !2485, size: 64, offset: 1280)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!109, !109}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2025, file: !14, line: 1937, baseType: !2478, size: 64, offset: 1344)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2025, file: !14, line: 1938, baseType: !2490, size: 64, offset: 1408)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!371, !2493, !1755, !2036, !385, !7}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1108, line: 59, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2025, file: !14, line: 1939, baseType: !2496, size: 64, offset: 1472)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!371, !1755, !2036, !2493, !385, !7}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2025, file: !14, line: 1940, baseType: !2500, size: 64, offset: 1536)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !1755}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2025, file: !14, line: 1941, baseType: !2504, size: 64, offset: 1600)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!109, !1755, !109, !2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2025, file: !14, line: 1942, baseType: !2510, size: 64, offset: 1664)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!179, !1755, !109, !579, !579}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2025, file: !14, line: 1944, baseType: !2514, size: 64, offset: 1728)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !1106, !1755}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2025, file: !14, line: 1948, baseType: !2518, size: 64, offset: 1792)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!371, !1755, !579, !1755, !579, !385, !7}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2025, file: !14, line: 1950, baseType: !2522, size: 64, offset: 1856)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!579, !1755, !579, !1755, !579, !579, !7}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2025, file: !14, line: 1953, baseType: !2470, size: 64, offset: 1920)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2025, file: !14, line: 1954, baseType: !2527, size: 64, offset: 1984)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!109, !2530, !7}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2025, file: !14, line: 1955, baseType: !2533, size: 64, offset: 2048)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!109, !2530, !2130, !7}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1756, file: !14, line: 1018, baseType: !491, size: 64, offset: 1472)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1756, file: !14, line: 1020, baseType: !171, size: 64, offset: 1536)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1756, file: !14, line: 1023, baseType: !171, size: 64, offset: 1600)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1756, file: !14, line: 1027, baseType: !2540, size: 64, offset: 1664)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1756, file: !14, line: 1029, baseType: !414, size: 64, offset: 1728)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1756, file: !14, line: 1030, baseType: !2543, size: 32, offset: 1792)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2544, line: 8, baseType: !487)
!2544 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1756, file: !14, line: 1031, baseType: !2543, size: 32, offset: 1824)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1732, file: !38, line: 756, baseType: !388, size: 64, offset: 704)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1732, file: !38, line: 757, baseType: !388, size: 64, offset: 768)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1732, file: !38, line: 760, baseType: !388, size: 64, offset: 832)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1732, file: !38, line: 761, baseType: !388, size: 64, offset: 896)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1732, file: !38, line: 763, baseType: !388, size: 64, offset: 960)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1732, file: !38, line: 764, baseType: !2552, size: 64, offset: 1024)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2186, line: 299, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2186, line: 299, size: 64, elements: !2555)
!2555 = !{!2556}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2554, file: !2186, line: 299, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2191, line: 18, baseType: !388)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1732, file: !38, line: 773, baseType: !236, size: 32, offset: 1088)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1732, file: !38, line: 785, baseType: !236, size: 32, offset: 1120)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1732, file: !38, line: 795, baseType: !2561, size: 64, offset: 1152)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2562, file: !38, line: 727, baseType: !491, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2562, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1732, file: !38, line: 801, baseType: !388, size: 64, offset: 1216)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1732, file: !38, line: 804, baseType: !671, size: 64, offset: 1280)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1732, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1732, file: !38, line: 808, baseType: !303, size: 32, offset: 1376)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1732, file: !38, line: 823, baseType: !1325, size: 320, offset: 1408)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1732, file: !38, line: 825, baseType: !259, size: 128, offset: 1728)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1732, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1732, file: !38, line: 849, baseType: !388, size: 64, offset: 1920)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1732, file: !38, line: 850, baseType: !388, size: 64, offset: 1984)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1732, file: !38, line: 852, baseType: !388, size: 64, offset: 2048)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1732, file: !38, line: 853, baseType: !388, size: 64, offset: 2112)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1732, file: !38, line: 854, baseType: !673, size: 64, offset: 2176)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1732, file: !38, line: 855, baseType: !388, size: 64, offset: 2240)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1732, file: !38, line: 856, baseType: !388, size: 64, offset: 2304)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1732, file: !38, line: 857, baseType: !388, size: 64, offset: 2368)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1732, file: !38, line: 858, baseType: !388, size: 64, offset: 2432)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1732, file: !38, line: 865, baseType: !464, size: 32, offset: 2496)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1732, file: !38, line: 867, baseType: !303, size: 32, offset: 2528)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1732, file: !38, line: 869, baseType: !388, size: 64, offset: 2560)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1732, file: !38, line: 869, baseType: !388, size: 64, offset: 2624)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1732, file: !38, line: 869, baseType: !388, size: 64, offset: 2688)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1732, file: !38, line: 869, baseType: !388, size: 64, offset: 2752)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1732, file: !38, line: 870, baseType: !388, size: 64, offset: 2816)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1732, file: !38, line: 870, baseType: !388, size: 64, offset: 2880)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1732, file: !38, line: 870, baseType: !388, size: 64, offset: 2944)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1732, file: !38, line: 871, baseType: !388, size: 64, offset: 3008)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1732, file: !38, line: 871, baseType: !388, size: 64, offset: 3072)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1732, file: !38, line: 871, baseType: !388, size: 64, offset: 3136)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1732, file: !38, line: 871, baseType: !388, size: 64, offset: 3200)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1732, file: !38, line: 873, baseType: !2596, size: 3328, offset: 3264)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 3328, elements: !2597)
!2597 = !{!2598}
!2598 = !DISubrange(count: 52)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1732, file: !38, line: 875, baseType: !2600, size: 1280, offset: 6592)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1967, size: 1280, elements: !897)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1732, file: !38, line: 877, baseType: !2602, size: 64, offset: 7872)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1732, file: !38, line: 880, baseType: !2605, size: 1088, offset: 7936)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2606, line: 72, baseType: !2607)
!2606 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2606, line: 23, size: 1088, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2616, !2617, !2618, !2619, !2646, !2647, !2648}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2607, file: !2606, line: 28, baseType: !491, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2607, file: !2606, line: 38, baseType: !673, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2607, file: !2606, line: 40, baseType: !388, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2607, file: !2606, line: 43, baseType: !1325, size: 320, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2607, file: !2606, line: 44, baseType: !2614, size: 64, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2606, line: 44, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !2606, line: 48, baseType: !388, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2607, file: !2606, line: 59, baseType: !667, size: 256, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2607, file: !2606, line: 60, baseType: !171, size: 64, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2607, file: !2606, line: 61, baseType: !2620, size: 64, offset: 960)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2623, line: 13, size: 1216, elements: !2624)
!2623 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2622, file: !2623, line: 14, baseType: !171, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2622, file: !2623, line: 15, baseType: !388, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2622, file: !2623, line: 17, baseType: !388, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2622, file: !2623, line: 17, baseType: !388, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2622, file: !2623, line: 18, baseType: !388, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2622, file: !2623, line: 18, baseType: !388, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2622, file: !2623, line: 19, baseType: !2632, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2622, file: !2623, line: 21, baseType: !179, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2622, file: !2623, line: 23, baseType: !179, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2622, file: !2623, line: 24, baseType: !179, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2622, file: !2623, line: 25, baseType: !179, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2622, file: !2623, line: 26, baseType: !179, size: 64, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2622, file: !2623, line: 27, baseType: !179, size: 64, offset: 768)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2622, file: !2623, line: 28, baseType: !179, size: 64, offset: 832)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2622, file: !2623, line: 29, baseType: !179, size: 64, offset: 896)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2622, file: !2623, line: 30, baseType: !179, size: 64, offset: 960)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2622, file: !2623, line: 31, baseType: !179, size: 64, offset: 1024)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2622, file: !2623, line: 32, baseType: !179, size: 64, offset: 1088)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2622, file: !2623, line: 33, baseType: !179, size: 64, offset: 1152)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2607, file: !2606, line: 63, baseType: !236, size: 32, offset: 1024)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2607, file: !2606, line: 69, baseType: !254, size: 16, offset: 1056)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2607, file: !2606, line: 70, baseType: !803, size: 16, offset: 1072)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !38, line: 882, baseType: !388, size: 64, offset: 9024)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1732, file: !38, line: 885, baseType: !303, size: 32, offset: 9088)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1732, file: !38, line: 886, baseType: !2652, size: 64, offset: 9152)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1732, file: !38, line: 901, baseType: !1992, size: 64, offset: 9216)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1732, file: !38, line: 904, baseType: !1755, size: 64, offset: 9280)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1732, file: !38, line: 906, baseType: !2657, size: 64, offset: 9344)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1732, file: !38, line: 930, baseType: !236, size: 32, offset: 9408)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1732, file: !38, line: 933, baseType: !236, size: 32, offset: 9440)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1732, file: !38, line: 935, baseType: !2662, size: 64, offset: 9472)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2663)
!2663 = !{!2664}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2662, file: !68, line: 104, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1732, file: !38, line: 940, baseType: !671, size: 64, offset: 9536)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1732, file: !38, line: 942, baseType: !927, size: 256, offset: 9600)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1729, file: !38, line: 986, baseType: !2670, offset: 10240)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, elements: !1815)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1432, file: !1108, line: 882, baseType: !1728, size: 64, offset: 9792)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1432, file: !1108, line: 884, baseType: !109, size: 32, offset: 9856)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1432, file: !1108, line: 885, baseType: !109, size: 32, offset: 9888)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1432, file: !1108, line: 886, baseType: !109, size: 32, offset: 9920)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1432, file: !1108, line: 888, baseType: !109, size: 32, offset: 9952)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1432, file: !1108, line: 890, baseType: !388, size: 64, offset: 9984)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1432, file: !1108, line: 893, baseType: !7, size: 32, offset: 10048)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1432, file: !1108, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1432, file: !1108, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1432, file: !1108, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1432, file: !1108, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1432, file: !1108, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1432, file: !1108, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1432, file: !1108, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1432, file: !1108, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1432, file: !1108, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1432, file: !1108, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1432, file: !1108, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1432, file: !1108, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1432, file: !1108, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1432, file: !1108, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1432, file: !1108, line: 969, baseType: !388, size: 64, offset: 10176)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1432, file: !1108, line: 971, baseType: !2694, size: 448, offset: 10240)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2695)
!2695 = !{!2696, !2697, !2702}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2694, file: !62, line: 26, baseType: !388, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2694, file: !62, line: 27, baseType: !2698, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!179, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !62, line: 28, baseType: !2703, size: 320, offset: 128)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2694, file: !62, line: 28, size: 320, elements: !2704)
!2704 = !{!2705, !2715, !2740}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2703, file: !62, line: 37, baseType: !2706, size: 320)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !62, line: 30, size: 320, elements: !2707)
!2707 = !{!2708, !2710, !2711, !2712, !2713, !2714}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2706, file: !62, line: 31, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2706, file: !62, line: 32, baseType: !487, size: 32, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2706, file: !62, line: 33, baseType: !487, size: 32, offset: 96)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2706, file: !62, line: 34, baseType: !487, size: 32, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2706, file: !62, line: 35, baseType: !491, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2706, file: !62, line: 36, baseType: !2709, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2703, file: !62, line: 47, baseType: !2716, size: 192)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !62, line: 39, size: 192, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2739}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2716, file: !62, line: 40, baseType: !1599, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2716, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2716, file: !62, line: 42, baseType: !2721, size: 64, offset: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2716, file: !62, line: 42, size: 64, elements: !2722)
!2722 = !{!2723, !2731}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2721, file: !62, line: 43, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2726, line: 7, size: 128, elements: !2727)
!2726 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2727 = !{!2728, !2730}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2725, file: !2726, line: 8, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !373, line: 93, baseType: !581)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2725, file: !2726, line: 9, baseType: !581, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2721, file: !62, line: 44, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2734, line: 7, size: 64, elements: !2735)
!2734 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2735 = !{!2736, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2733, file: !2734, line: 8, baseType: !2737, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2734, line: 5, baseType: !663)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2733, file: !2734, line: 9, baseType: !663, size: 32, offset: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2716, file: !62, line: 46, baseType: !491, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2703, file: !62, line: 55, baseType: !2741, size: 256)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !62, line: 49, size: 256, elements: !2742)
!2742 = !{!2743, !2751, !2752, !2753, !2754}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2741, file: !62, line: 50, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2746, line: 36, size: 64, elements: !2747)
!2746 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2747 = !{!2748, !2749, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2745, file: !2746, line: 37, baseType: !109, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2745, file: !2746, line: 38, baseType: !805, size: 16, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2745, file: !2746, line: 39, baseType: !805, size: 16, offset: 48)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2741, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2741, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2741, file: !62, line: 53, baseType: !388, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2741, file: !62, line: 54, baseType: !388, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1432, file: !1108, line: 973, baseType: !2756, size: 32, offset: 10688)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !173, line: 27, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !373, line: 28, baseType: !109)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1432, file: !1108, line: 974, baseType: !2756, size: 32, offset: 10720)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1432, file: !1108, line: 978, baseType: !388, size: 64, offset: 10752)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1432, file: !1108, line: 987, baseType: !1431, size: 64, offset: 10816)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1432, file: !1108, line: 990, baseType: !1431, size: 64, offset: 10880)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1432, file: !1108, line: 995, baseType: !259, size: 128, offset: 10944)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1432, file: !1108, line: 996, baseType: !259, size: 128, offset: 11072)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1432, file: !1108, line: 997, baseType: !1431, size: 64, offset: 11200)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1432, file: !1108, line: 1005, baseType: !259, size: 128, offset: 11264)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1432, file: !1108, line: 1006, baseType: !259, size: 128, offset: 11392)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1432, file: !1108, line: 1009, baseType: !1796, size: 64, offset: 11520)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1432, file: !1108, line: 1010, baseType: !2769, size: 512, offset: 11584)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 512, elements: !897)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1432, file: !1108, line: 1011, baseType: !259, size: 128, offset: 12096)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1432, file: !1108, line: 1012, baseType: !259, size: 128, offset: 12224)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1432, file: !1108, line: 1014, baseType: !214, size: 64, offset: 12352)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1432, file: !1108, line: 1017, baseType: !796, size: 64, offset: 12416)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1432, file: !1108, line: 1020, baseType: !796, size: 64, offset: 12480)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1432, file: !1108, line: 1023, baseType: !171, size: 64, offset: 12544)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1432, file: !1108, line: 1025, baseType: !491, size: 64, offset: 12608)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1432, file: !1108, line: 1026, baseType: !491, size: 64, offset: 12672)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1432, file: !1108, line: 1031, baseType: !491, size: 64, offset: 12736)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1432, file: !1108, line: 1032, baseType: !2780, size: 192, offset: 12800)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1108, line: 324, size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2780, file: !1108, line: 326, baseType: !491, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2780, file: !1108, line: 327, baseType: !491, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2780, file: !1108, line: 328, baseType: !223, size: 32, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1432, file: !1108, line: 1041, baseType: !388, size: 64, offset: 12992)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1432, file: !1108, line: 1042, baseType: !388, size: 64, offset: 13056)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1432, file: !1108, line: 1045, baseType: !491, size: 64, offset: 13120)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1432, file: !1108, line: 1048, baseType: !491, size: 64, offset: 13184)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1432, file: !1108, line: 1051, baseType: !388, size: 64, offset: 13248)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1432, file: !1108, line: 1052, baseType: !388, size: 64, offset: 13312)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1432, file: !1108, line: 1055, baseType: !2792, size: 640, offset: 13376)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2793, line: 132, size: 640, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2794 = !{!2795, !2801, !2802}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2792, file: !2793, line: 133, baseType: !2796, size: 576)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, size: 576, elements: !340)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2793, line: 117, size: 192, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2797, file: !2793, line: 118, baseType: !491, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2797, file: !2793, line: 119, baseType: !1608, size: 128, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2792, file: !2793, line: 134, baseType: !7, size: 32, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2792, file: !2793, line: 135, baseType: !7, size: 32, offset: 608)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1432, file: !1108, line: 1058, baseType: !2804, size: 448, offset: 14016)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2793, line: 144, size: 448, elements: !2805)
!2805 = !{!2806, !2807, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2804, file: !2793, line: 145, baseType: !887, size: 128, align: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2804, file: !2793, line: 146, baseType: !667, size: 256, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2804, file: !2793, line: 147, baseType: !7, size: 32, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1432, file: !1108, line: 1064, baseType: !1822, size: 64, offset: 14464)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1432, file: !1108, line: 1067, baseType: !1822, size: 64, offset: 14528)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1432, file: !1108, line: 1070, baseType: !1822, size: 64, offset: 14592)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1432, file: !1108, line: 1074, baseType: !1849, size: 64, offset: 14656)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1432, file: !1108, line: 1084, baseType: !2814, size: 128, offset: 14720)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !2815)
!2815 = !{!2816}
!2816 = !DISubrange(count: 16)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1432, file: !1108, line: 1086, baseType: !2818, size: 64, offset: 14848)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1108, line: 55, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1432, file: !1108, line: 1089, baseType: !2821, size: 64, offset: 14912)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2822, line: 12, size: 64, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2821, file: !2822, line: 13, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2822, line: 8, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1432, file: !1108, line: 1090, baseType: !2828, size: 128, offset: 14976)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2829, line: 13, size: 128, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2828, file: !2829, line: 14, baseType: !259, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1432, file: !1108, line: 1097, baseType: !2833, size: 64, offset: 15104)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1108, line: 50, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1432, file: !1108, line: 1100, baseType: !2836, size: 64, offset: 15168)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1108, line: 1100, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1432, file: !1108, line: 1103, baseType: !2839, size: 64, offset: 15232)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1108, line: 53, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1432, file: !1108, line: 1107, baseType: !2842, size: 64, offset: 15296)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2844, line: 35, flags: DIFlagFwdDecl)
!2844 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1432, file: !1108, line: 1110, baseType: !2846, size: 64, offset: 15360)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2848, line: 93, size: 8768, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2897, !2906, !2907, !2909, !2910, !2911, !2914, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2952, !2953, !2960, !2970, !2973, !2974, !2977, !2978, !2979, !2980, !2981, !2982}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2847, file: !2848, line: 94, baseType: !1445, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2847, file: !2848, line: 95, baseType: !236, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2847, file: !2848, line: 96, baseType: !109, size: 32, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2847, file: !2848, line: 97, baseType: !109, size: 32, offset: 96)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2847, file: !2848, line: 98, baseType: !259, size: 128, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2847, file: !2848, line: 100, baseType: !1418, size: 192, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2847, file: !2848, line: 103, baseType: !1431, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2847, file: !2848, line: 106, baseType: !2858, size: 192, offset: 512)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1997, line: 32, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !1997, line: 33, baseType: !259, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2858, file: !1997, line: 34, baseType: !2862, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2863, line: 25, baseType: !2864)
!2863 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2863, line: 23, size: 64, elements: !2865)
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2864, file: !2863, line: 24, baseType: !1679, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2847, file: !2848, line: 109, baseType: !1035, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2847, file: !2848, line: 112, baseType: !109, size: 32, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2847, file: !2848, line: 114, baseType: !109, size: 32, offset: 800)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2847, file: !2848, line: 115, baseType: !1431, size: 64, offset: 832)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2847, file: !2848, line: 118, baseType: !109, size: 32, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 119, baseType: !7, size: 32, offset: 928)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2847, file: !2848, line: 121, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2848, line: 80, size: 448, elements: !2876)
!2876 = !{!2877, !2878, !2884}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2875, file: !2848, line: 81, baseType: !236, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2875, file: !2848, line: 82, baseType: !2879, size: 128, offset: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2848, line: 75, size: 128, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2879, file: !2848, line: 76, baseType: !1431, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2879, file: !2848, line: 77, baseType: !2883, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2875, file: !2848, line: 83, baseType: !215, size: 256, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2847, file: !2848, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2847, file: !2848, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2847, file: !2848, line: 138, baseType: !7, size: 32, offset: 1056)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2847, file: !2848, line: 139, baseType: !259, size: 128, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2847, file: !2848, line: 142, baseType: !1552, size: 512, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2847, file: !2848, line: 143, baseType: !1560, size: 64, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2847, file: !2848, line: 150, baseType: !2892, size: 256, offset: 1792)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 256, elements: !786)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2848, line: 38, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2893, file: !2848, line: 39, baseType: !491, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2893, file: !2848, line: 40, baseType: !491, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2847, file: !2848, line: 156, baseType: !2898, size: 192, offset: 2048)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2848, line: 66, size: 192, elements: !2899)
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2898, file: !2848, line: 67, baseType: !2901, size: 192)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2848, line: 47, size: 192, elements: !2902)
!2902 = !{!2903, !2904, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2901, file: !2848, line: 48, baseType: !673, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2901, file: !2848, line: 49, baseType: !673, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2901, file: !2848, line: 50, baseType: !673, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2847, file: !2848, line: 160, baseType: !2792, size: 640, offset: 2240)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2847, file: !2848, line: 163, baseType: !2908, size: 256, offset: 2880)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, size: 256, elements: !897)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2847, file: !2848, line: 169, baseType: !1796, size: 64, offset: 3136)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2847, file: !2848, line: 172, baseType: !109, size: 32, offset: 3200)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2847, file: !2848, line: 174, baseType: !2912, size: 64, offset: 3264)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2848, line: 174, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2847, file: !2848, line: 185, baseType: !2915, size: 64, offset: 3328)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !460, line: 860, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 853, size: 64, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2916, file: !460, line: 858, baseType: !459, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2916, file: !460, line: 859, baseType: !303, size: 32, offset: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2847, file: !2848, line: 186, baseType: !491, size: 64, offset: 3392)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2847, file: !2848, line: 186, baseType: !491, size: 64, offset: 3456)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2847, file: !2848, line: 186, baseType: !491, size: 64, offset: 3520)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2847, file: !2848, line: 186, baseType: !491, size: 64, offset: 3584)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2847, file: !2848, line: 187, baseType: !491, size: 64, offset: 3648)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2847, file: !2848, line: 188, baseType: !491, size: 64, offset: 3712)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2847, file: !2848, line: 189, baseType: !2780, size: 192, offset: 3776)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2847, file: !2848, line: 190, baseType: !388, size: 64, offset: 3968)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2847, file: !2848, line: 190, baseType: !388, size: 64, offset: 4032)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2847, file: !2848, line: 190, baseType: !388, size: 64, offset: 4096)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2847, file: !2848, line: 190, baseType: !388, size: 64, offset: 4160)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2847, file: !2848, line: 191, baseType: !388, size: 64, offset: 4224)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2847, file: !2848, line: 191, baseType: !388, size: 64, offset: 4288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2847, file: !2848, line: 191, baseType: !388, size: 64, offset: 4352)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2847, file: !2848, line: 191, baseType: !388, size: 64, offset: 4416)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2847, file: !2848, line: 192, baseType: !388, size: 64, offset: 4480)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2847, file: !2848, line: 192, baseType: !388, size: 64, offset: 4544)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2847, file: !2848, line: 192, baseType: !388, size: 64, offset: 4608)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2847, file: !2848, line: 192, baseType: !388, size: 64, offset: 4672)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2847, file: !2848, line: 193, baseType: !388, size: 64, offset: 4736)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2847, file: !2848, line: 193, baseType: !388, size: 64, offset: 4800)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2847, file: !2848, line: 194, baseType: !2942, size: 448, offset: 4864)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2943, line: 12, size: 448, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2942, file: !2943, line: 15, baseType: !491, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2942, file: !2943, line: 17, baseType: !491, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2942, file: !2943, line: 19, baseType: !491, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2942, file: !2943, line: 21, baseType: !491, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2942, file: !2943, line: 29, baseType: !491, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2942, file: !2943, line: 35, baseType: !491, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2942, file: !2943, line: 44, baseType: !491, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2847, file: !2848, line: 202, baseType: !493, size: 64, offset: 5312)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2847, file: !2848, line: 213, baseType: !2954, size: 2048, offset: 5376)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 2048, elements: !2815)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2956, line: 43, size: 128, elements: !2957)
!2956 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2955, file: !2956, line: 44, baseType: !387, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2955, file: !2956, line: 45, baseType: !387, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2847, file: !2848, line: 216, baseType: !2961, size: 448, offset: 7424)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2848, line: 30, size: 448, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2961, file: !2848, line: 31, baseType: !109, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2961, file: !2848, line: 32, baseType: !179, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2961, file: !2848, line: 33, baseType: !388, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2961, file: !2848, line: 34, baseType: !491, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2961, file: !2848, line: 34, baseType: !491, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2961, file: !2848, line: 35, baseType: !388, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2961, file: !2848, line: 35, baseType: !388, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2847, file: !2848, line: 219, baseType: !2971, size: 64, offset: 7872)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2848, line: 219, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2847, file: !2848, line: 222, baseType: !7, size: 32, offset: 7936)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2847, file: !2848, line: 223, baseType: !2975, size: 64, offset: 8000)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2848, line: 223, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2847, file: !2848, line: 230, baseType: !747, size: 8, offset: 8064)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2847, file: !2848, line: 231, baseType: !805, size: 16, offset: 8080)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2847, file: !2848, line: 232, baseType: !805, size: 16, offset: 8096)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2847, file: !2848, line: 234, baseType: !1728, size: 64, offset: 8128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2847, file: !2848, line: 237, baseType: !667, size: 256, offset: 8192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2847, file: !2848, line: 243, baseType: !1325, size: 320, offset: 8448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1432, file: !1108, line: 1111, baseType: !2984, size: 64, offset: 15424)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2848, line: 20, size: 16640, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2985, file: !2848, line: 21, baseType: !303, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2848, line: 22, baseType: !1445, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2985, file: !2848, line: 23, baseType: !1418, size: 192, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2985, file: !2848, line: 24, baseType: !2991, size: 16384, offset: 256)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2992, size: 16384, elements: !344)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1997, line: 51, size: 256, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2992, file: !1997, line: 52, baseType: !2995, size: 256)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1997, line: 37, size: 256, elements: !2996)
!2996 = !{!2997, !3004, !3005, !3009}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2995, file: !1997, line: 39, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2999, line: 83, baseType: !3000)
!2999 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2999, line: 82, baseType: !3002)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !109}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2995, file: !1997, line: 40, baseType: !388, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2995, file: !1997, line: 46, baseType: !3006, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2999, line: 86, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2999, line: 85, baseType: !1030)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2995, file: !1997, line: 48, baseType: !2862, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1432, file: !1108, line: 1112, baseType: !2862, size: 64, offset: 15488)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1432, file: !1108, line: 1113, baseType: !2862, size: 64, offset: 15552)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1432, file: !1108, line: 1115, baseType: !2862, size: 64, offset: 15616)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1432, file: !1108, line: 1116, baseType: !2858, size: 192, offset: 15680)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1432, file: !1108, line: 1117, baseType: !388, size: 64, offset: 15872)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1432, file: !1108, line: 1118, baseType: !385, size: 64, offset: 15936)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1432, file: !1108, line: 1119, baseType: !7, size: 32, offset: 16000)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1432, file: !1108, line: 1121, baseType: !886, size: 64, offset: 16064)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1432, file: !1108, line: 1125, baseType: !3019, size: 64, offset: 16128)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1108, line: 43, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1432, file: !1108, line: 1127, baseType: !424, size: 32, offset: 16192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1432, file: !1108, line: 1128, baseType: !7, size: 32, offset: 16224)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1432, file: !1108, line: 1130, baseType: !3024, size: 128, offset: 16256)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3025, line: 37, size: 128, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3024, file: !3025, line: 38, baseType: !109, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3024, file: !3025, line: 39, baseType: !236, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3024, file: !3025, line: 40, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3025, line: 24, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1432, file: !1108, line: 1131, baseType: !3033, size: 256, offset: 16384)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3034, line: 12, size: 256, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3033, file: !3034, line: 13, baseType: !339, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3033, file: !3034, line: 14, baseType: !388, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3033, file: !3034, line: 15, baseType: !388, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3033, file: !3034, line: 16, baseType: !747, size: 8, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1432, file: !1108, line: 1134, baseType: !491, size: 64, offset: 16640)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1432, file: !1108, line: 1135, baseType: !491, size: 64, offset: 16704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1432, file: !1108, line: 1138, baseType: !303, size: 32, offset: 16768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1432, file: !1108, line: 1141, baseType: !223, size: 32, offset: 16800)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1432, file: !1108, line: 1143, baseType: !3045, size: 64, offset: 16832)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1108, line: 735, size: 64, elements: !3046)
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3045, file: !1108, line: 736, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1432, file: !1108, line: 1147, baseType: !1611, size: 128, offset: 16896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1432, file: !1108, line: 1149, baseType: !1431, size: 64, offset: 17024)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1432, file: !1108, line: 1151, baseType: !3052, size: 64, offset: 17088)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1108, line: 1151, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1432, file: !1108, line: 1188, baseType: !171, size: 64, offset: 17152)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1432, file: !1108, line: 1191, baseType: !3056, size: 64, offset: 17216)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1108, line: 44, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1432, file: !1108, line: 1194, baseType: !3059, size: 64, offset: 17280)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1108, line: 45, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1432, file: !1108, line: 1197, baseType: !3062, size: 64, offset: 17344)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1108, line: 61, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1432, file: !1108, line: 1199, baseType: !3065, size: 64, offset: 17408)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3067, line: 99, size: 128, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3066, file: !3067, line: 100, baseType: !671, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3066, file: !3067, line: 101, baseType: !236, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3066, file: !3067, line: 103, baseType: !256, size: 16, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1432, file: !1108, line: 1202, baseType: !3073, size: 64, offset: 17472)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1108, line: 48, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1432, file: !1108, line: 1205, baseType: !388, size: 64, offset: 17536)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1432, file: !1108, line: 1206, baseType: !3077, size: 64, offset: 17600)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1997, line: 14, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1997, line: 12, size: 384, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3079, file: !1997, line: 13, baseType: !3082, size: 384)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3079, file: !1997, line: 13, size: 384, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3082, file: !1997, line: 13, baseType: !109, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3082, file: !1997, line: 13, baseType: !109, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3082, file: !1997, line: 13, baseType: !109, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3082, file: !1997, line: 13, baseType: !3088, size: 256, offset: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3089, line: 37, size: 256, elements: !3090)
!3089 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3090 = !{!3091, !3096, !3109, !3115, !3124, !3151, !3156}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3088, file: !3089, line: 42, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 39, size: 64, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3092, file: !3089, line: 40, baseType: !2757, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3092, file: !3089, line: 41, baseType: !430, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3088, file: !3089, line: 50, baseType: !3097, size: 192)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 45, size: 192, elements: !3098)
!3098 = !{!3099, !3101, !3102, !3108}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3097, file: !3089, line: 46, baseType: !3100, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !373, line: 95, baseType: !109)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3097, file: !3089, line: 47, baseType: !109, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3097, file: !3089, line: 48, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3089, line: 11, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3089, line: 8, size: 64, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3104, file: !3089, line: 9, baseType: !109, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3104, file: !3089, line: 10, baseType: !171, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3097, file: !3089, line: 49, baseType: !109, size: 32, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3088, file: !3089, line: 57, baseType: !3110, size: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 53, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3110, file: !3089, line: 54, baseType: !2757, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3110, file: !3089, line: 55, baseType: !430, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3110, file: !3089, line: 56, baseType: !3103, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3088, file: !3089, line: 66, baseType: !3116, size: 256)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 60, size: 256, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3123}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3116, file: !3089, line: 61, baseType: !2757, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3116, file: !3089, line: 62, baseType: !430, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3116, file: !3089, line: 63, baseType: !109, size: 32, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3116, file: !3089, line: 64, baseType: !3122, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !373, line: 94, baseType: !374)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3116, file: !3089, line: 65, baseType: !3122, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3088, file: !3089, line: 105, baseType: !3125, size: 256)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 69, size: 256, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3125, file: !3089, line: 70, baseType: !171, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, scope: !3125, file: !3089, line: 79, baseType: !3129, size: 192, offset: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3125, file: !3089, line: 79, size: 192, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3140, !3145}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3129, file: !3089, line: 81, baseType: !109, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3129, file: !3089, line: 86, baseType: !805, size: 16)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3129, file: !3089, line: 92, baseType: !3134, size: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 88, size: 192, elements: !3135)
!3135 = !{!3136, !3138, !3139}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3134, file: !3089, line: 89, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !1595)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3134, file: !3089, line: 90, baseType: !171, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3134, file: !3089, line: 91, baseType: !171, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3129, file: !3089, line: 97, baseType: !3141, size: 96)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 94, size: 96, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3141, file: !3089, line: 95, baseType: !3137, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3141, file: !3089, line: 96, baseType: !488, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3129, file: !3089, line: 103, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 99, size: 128, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3146, file: !3089, line: 100, baseType: !388, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3146, file: !3089, line: 101, baseType: !488, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3146, file: !3089, line: 102, baseType: !488, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3088, file: !3089, line: 111, baseType: !3152, size: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 108, size: 128, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3152, file: !3089, line: 109, baseType: !179, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3152, file: !3089, line: 110, baseType: !109, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3088, file: !3089, line: 118, baseType: !3157, size: 128)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 114, size: 128, elements: !3158)
!3158 = !{!3159, !3160, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3157, file: !3089, line: 115, baseType: !171, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3157, file: !3089, line: 116, baseType: !109, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3157, file: !3089, line: 117, baseType: !7, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1432, file: !1108, line: 1208, baseType: !2942, size: 448, offset: 17664)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1432, file: !1108, line: 1215, baseType: !491, size: 64, offset: 18112)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1432, file: !1108, line: 1217, baseType: !491, size: 64, offset: 18176)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1432, file: !1108, line: 1219, baseType: !491, size: 64, offset: 18240)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1432, file: !1108, line: 1223, baseType: !3167, size: 64, offset: 18304)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3168, line: 99, baseType: !3169)
!3168 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3168, line: 99, size: 64, elements: !3170)
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3169, file: !3168, line: 99, baseType: !1679, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1432, file: !1108, line: 1225, baseType: !459, size: 32, offset: 18368)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1432, file: !1108, line: 1226, baseType: !109, size: 32, offset: 18400)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1432, file: !1108, line: 1227, baseType: !109, size: 32, offset: 18432)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1432, file: !1108, line: 1231, baseType: !3176, size: 64, offset: 18496)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1108, line: 1231, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1432, file: !1108, line: 1233, baseType: !259, size: 128, offset: 18560)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1432, file: !1108, line: 1240, baseType: !3180, size: 64, offset: 18688)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1108, line: 62, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1432, file: !1108, line: 1242, baseType: !3183, size: 64, offset: 18752)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1108, line: 1242, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1432, file: !1108, line: 1244, baseType: !259, size: 128, offset: 18816)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1432, file: !1108, line: 1245, baseType: !3187, size: 64, offset: 18944)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1108, line: 51, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1432, file: !1108, line: 1246, baseType: !667, size: 256, offset: 19008)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1432, file: !1108, line: 1247, baseType: !7, size: 32, offset: 19264)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1432, file: !1108, line: 1250, baseType: !3192, size: 64, offset: 19328)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1108, line: 57, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1432, file: !1108, line: 1251, baseType: !667, size: 256, offset: 19392)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1432, file: !1108, line: 1252, baseType: !259, size: 128, offset: 19648)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1432, file: !1108, line: 1259, baseType: !2441, size: 64, offset: 19776)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1432, file: !1108, line: 1260, baseType: !805, size: 16, offset: 19840)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1432, file: !1108, line: 1261, baseType: !805, size: 16, offset: 19856)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1432, file: !1108, line: 1314, baseType: !3200, size: 64, offset: 19904)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3202, line: 62, size: 256, align: 256, elements: !3203)
!3202 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3201, file: !3202, line: 75, baseType: !488, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3201, file: !3202, line: 90, baseType: !488, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3201, file: !3202, line: 112, baseType: !492, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3201, file: !3202, line: 132, baseType: !488, size: 32, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3201, file: !3202, line: 140, baseType: !488, size: 32, offset: 160)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3201, file: !3202, line: 149, baseType: !488, size: 32, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3201, file: !3202, line: 154, baseType: !3211, offset: 224)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !1815)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1432, file: !1108, line: 1315, baseType: !487, size: 32, offset: 19968)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1432, file: !1108, line: 1316, baseType: !487, size: 32, offset: 20000)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1432, file: !1108, line: 1321, baseType: !388, size: 64, offset: 20032)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1432, file: !1108, line: 1325, baseType: !109, size: 32, offset: 20096)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1432, file: !1108, line: 1326, baseType: !109, size: 32, offset: 20128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1432, file: !1108, line: 1327, baseType: !109, size: 32, offset: 20160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1432, file: !1108, line: 1328, baseType: !109, size: 32, offset: 20192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1432, file: !1108, line: 1329, baseType: !887, size: 128, align: 64, offset: 20224)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1432, file: !1108, line: 1332, baseType: !3221, size: 128, offset: 20352)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3222, line: 51, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3223 = !{!3224, !3229, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3221, file: !3222, line: 60, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3226, line: 7, size: 64, elements: !3227)
!3226 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3227 = !{!3228}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3225, file: !3226, line: 12, baseType: !1676, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3221, file: !3222, line: 63, baseType: !747, size: 8, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3221, file: !3222, line: 70, baseType: !747, size: 8, offset: 72)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1432, file: !1108, line: 1335, baseType: !2493, size: 64, offset: 20480)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1432, file: !1108, line: 1337, baseType: !3233, size: 128, offset: 20544)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3222, line: 39, size: 128, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3233, file: !3222, line: 40, baseType: !2280, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3233, file: !3222, line: 42, baseType: !488, size: 32, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3233, file: !3222, line: 43, baseType: !488, size: 32, offset: 96)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1432, file: !1108, line: 1340, baseType: !3239, size: 64, offset: 20672)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1108, line: 69, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1432, file: !1108, line: 1351, baseType: !109, size: 32, offset: 20736)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1432, file: !1108, line: 1352, baseType: !109, size: 32, offset: 20768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1432, file: !1108, line: 1354, baseType: !388, size: 64, offset: 20800)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1432, file: !1108, line: 1364, baseType: !491, size: 64, offset: 20864)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1432, file: !1108, line: 1365, baseType: !491, size: 64, offset: 20928)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1432, file: !1108, line: 1412, baseType: !388, size: 64, offset: 20992)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1432, file: !1108, line: 1453, baseType: !3248, size: 64, offset: 21056)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1108, line: 1453, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1432, file: !1108, line: 1457, baseType: !3251, size: 64, offset: 21120)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3253)
!3253 = !{!3254, !3255, !3274, !3277, !3278, !3311, !3321}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3252, file: !68, line: 62, baseType: !67, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !68, line: 64, baseType: !3256, size: 192, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !68, line: 64, size: 192, elements: !3257)
!3257 = !{!3258, !3269}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !68, line: 65, baseType: !3259, size: 192)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !68, line: 65, size: 192, elements: !3260)
!3260 = !{!3261, !3268}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3259, file: !68, line: 66, baseType: !3262, size: 128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3263, line: 50, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3262, file: !3263, line: 52, baseType: !388, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3262, file: !3263, line: 54, baseType: !7, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3262, file: !3263, line: 55, baseType: !7, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3259, file: !68, line: 67, baseType: !388, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !68, line: 70, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !68, line: 70, size: 192, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3270, file: !68, line: 71, baseType: !887, size: 128, align: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3270, file: !68, line: 72, baseType: !388, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3252, file: !68, line: 76, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3252, file: !68, line: 77, baseType: !388, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3252, file: !68, line: 79, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3263, line: 25, size: 256, elements: !3281)
!3281 = !{!3282, !3288, !3292}
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 26, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 26, size: 128, elements: !3284)
!3284 = !{!3285, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3283, file: !3263, line: 27, baseType: !3286, size: 128)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !2815)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3283, file: !3263, line: 28, baseType: !3286, size: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3280, file: !3263, line: 31, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3291)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3263, line: 23, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 33, baseType: !3293, size: 64, offset: 192)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 33, size: 64, elements: !3294)
!3294 = !{!3295, !3301, !3306}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3293, file: !3263, line: 38, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 34, size: 64, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3296, file: !3263, line: 35, baseType: !663, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3296, file: !3263, line: 36, baseType: !244, size: 8, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3296, file: !3263, line: 37, baseType: !244, size: 8, offset: 40)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3293, file: !3263, line: 42, baseType: !3302, size: 16)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 39, size: 16, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3302, file: !3263, line: 40, baseType: !244, size: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3302, file: !3263, line: 41, baseType: !244, size: 8, offset: 8)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3293, file: !3263, line: 46, baseType: !3307, size: 16)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 43, size: 16, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3307, file: !3263, line: 44, baseType: !244, size: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3307, file: !3263, line: 45, baseType: !244, size: 8, offset: 8)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3252, file: !68, line: 81, baseType: !3312, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3313, file: !68, line: 86, baseType: !3275, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3313, file: !68, line: 87, baseType: !388, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3313, file: !68, line: 88, baseType: !388, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3313, file: !68, line: 89, baseType: !388, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3313, file: !68, line: 90, baseType: !747, size: 8, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3313, file: !68, line: 92, baseType: !3312, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3252, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1432, file: !1108, line: 1463, baseType: !3323, offset: 21184)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1108, line: 739, elements: !268)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1432, file: !1108, line: 1470, baseType: !887, size: 128, align: 64, offset: 21184)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1432, file: !1108, line: 1471, baseType: !1445, size: 32, offset: 21312)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1432, file: !1108, line: 1472, baseType: !109, size: 32, offset: 21344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1432, file: !1108, line: 1474, baseType: !1431, size: 64, offset: 21376)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1432, file: !1108, line: 1475, baseType: !909, size: 320, offset: 21440)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1432, file: !1108, line: 1478, baseType: !3330, size: 64, offset: 21760)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3332, line: 49, size: 512, elements: !3333)
!3332 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3340, !3341, !3342, !3344}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3331, file: !3332, line: 50, baseType: !3330, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3331, file: !3332, line: 51, baseType: !171, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !3332, line: 52, baseType: !388, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !3332, line: 53, baseType: !388, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3331, file: !3332, line: 54, baseType: !3339, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3331, file: !3332, line: 56, baseType: !7, size: 32, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3331, file: !3332, line: 58, baseType: !7, size: 32, offset: 352)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3331, file: !3332, line: 59, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !173, line: 159, baseType: !491)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3331, file: !3332, line: 60, baseType: !2632, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1432, file: !1108, line: 1482, baseType: !1445, size: 32, offset: 21824)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1432, file: !1108, line: 1489, baseType: !171, size: 64, offset: 21888)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1432, file: !1108, line: 1504, baseType: !171, size: 64, offset: 21952)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1432, file: !1108, line: 1505, baseType: !492, size: 64, offset: 22016)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1432, file: !1108, line: 1506, baseType: !491, size: 64, offset: 22080)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1432, file: !1108, line: 1507, baseType: !492, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1432, file: !1108, line: 1508, baseType: !492, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1432, file: !1108, line: 1509, baseType: !492, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1432, file: !1108, line: 1510, baseType: !887, size: 128, align: 64, offset: 22208)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1432, file: !1108, line: 1511, baseType: !109, size: 32, offset: 22336)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1432, file: !1108, line: 1515, baseType: !3356, size: 64, offset: 22400)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1459, line: 56, size: 64, elements: !3357)
!3357 = !{!3358}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3356, file: !1459, line: 57, baseType: !1462, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1432, file: !1108, line: 1518, baseType: !3356, size: 64, offset: 22464)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1432, file: !1108, line: 1528, baseType: !887, size: 128, align: 64, offset: 22528)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1432, file: !1108, line: 1552, baseType: !3362, size: 35328, offset: 23040)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3363, line: 430, size: 35328, elements: !3364)
!3363 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3364 = !{!3365, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3394, !3395, !3396, !3397, !3398, !3399, !3402, !3403, !3404, !3405}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3362, file: !3363, line: 432, baseType: !3366, size: 192)
!3366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3367, size: 192, elements: !340)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3368, line: 16, size: 64, elements: !3369)
!3368 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3367, file: !3368, line: 17, baseType: !254, size: 16)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3367, file: !3368, line: 18, baseType: !254, size: 16, offset: 16)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3367, file: !3368, line: 19, baseType: !254, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3367, file: !3368, line: 19, baseType: !254, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3367, file: !3368, line: 19, baseType: !254, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3367, file: !3368, line: 19, baseType: !254, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3367, file: !3368, line: 19, baseType: !254, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3367, file: !3368, line: 20, baseType: !254, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3367, file: !3368, line: 20, baseType: !254, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3367, file: !3368, line: 20, baseType: !254, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3367, file: !3368, line: 20, baseType: !254, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3367, file: !3368, line: 20, baseType: !254, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3367, file: !3368, line: 20, baseType: !254, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3362, file: !3363, line: 436, baseType: !388, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3362, file: !3363, line: 440, baseType: !256, size: 16, offset: 256)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3362, file: !3363, line: 441, baseType: !256, size: 16, offset: 272)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3362, file: !3363, line: 442, baseType: !256, size: 16, offset: 288)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3362, file: !3363, line: 443, baseType: !256, size: 16, offset: 304)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3362, file: !3363, line: 447, baseType: !388, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3362, file: !3363, line: 448, baseType: !388, size: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3362, file: !3363, line: 459, baseType: !3391, size: 256, offset: 448)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3392, size: 256, elements: !897)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3363, line: 428, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3362, file: !3363, line: 461, baseType: !388, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3362, file: !3363, line: 463, baseType: !388, size: 64, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3362, file: !3363, line: 465, baseType: !388, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3362, file: !3363, line: 466, baseType: !388, size: 64, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3362, file: !3363, line: 467, baseType: !388, size: 64, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3362, file: !3363, line: 473, baseType: !3400, size: 64, offset: 1024)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3363, line: 10, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3362, file: !3363, line: 480, baseType: !388, size: 64, offset: 1088)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3362, file: !3363, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3362, file: !3363, line: 491, baseType: !487, size: 32, offset: 1184)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3362, file: !3363, line: 501, baseType: !3406, size: 33792, offset: 1536)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3407, line: 448, size: 33792, elements: !3408)
!3407 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3408 = !{!3409, !3410, !3411, !3573, !3574, !3580, !3581}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3406, file: !3407, line: 461, baseType: !7, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3406, file: !3407, line: 468, baseType: !388, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3406, file: !3407, line: 476, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3407, line: 356, size: 33280, align: 512, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3413, file: !3407, line: 358, baseType: !7, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3413, file: !3407, line: 361, baseType: !7, size: 32, offset: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3413, file: !3407, line: 364, baseType: !491, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3413, file: !3407, line: 367, baseType: !491, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3413, file: !3407, line: 370, baseType: !491, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3413, file: !3407, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3413, file: !3407, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3413, file: !3407, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3413, file: !3407, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3413, file: !3407, line: 397, baseType: !3425, size: 32768, offset: 512)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3407, line: 348, size: 32768, elements: !3426)
!3426 = !{!3427, !3442, !3479, !3556, !3569}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3425, file: !3407, line: 349, baseType: !3428, size: 896)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3407, line: 12, size: 896, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3441}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3428, file: !3407, line: 13, baseType: !487, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3428, file: !3407, line: 14, baseType: !487, size: 32, offset: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3428, file: !3407, line: 15, baseType: !487, size: 32, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3428, file: !3407, line: 16, baseType: !487, size: 32, offset: 96)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3428, file: !3407, line: 17, baseType: !487, size: 32, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3428, file: !3407, line: 18, baseType: !487, size: 32, offset: 160)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3428, file: !3407, line: 19, baseType: !487, size: 32, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3428, file: !3407, line: 22, baseType: !3438, size: 640, offset: 224)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 640, elements: !3439)
!3439 = !{!3440}
!3440 = !DISubrange(count: 20)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3428, file: !3407, line: 25, baseType: !487, size: 32, offset: 864)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3425, file: !3407, line: 350, baseType: !3443, size: 4096, align: 128)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3407, line: 34, size: 4096, align: 128, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3464, !3465, !3466, !3468, !3470, !3474}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3443, file: !3407, line: 35, baseType: !254, size: 16)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3443, file: !3407, line: 36, baseType: !254, size: 16, offset: 16)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3443, file: !3407, line: 37, baseType: !254, size: 16, offset: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3443, file: !3407, line: 38, baseType: !254, size: 16, offset: 48)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !3407, line: 39, baseType: !3450, size: 128, offset: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3443, file: !3407, line: 39, size: 128, elements: !3451)
!3451 = !{!3452, !3457}
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3450, file: !3407, line: 40, baseType: !3453, size: 128)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3450, file: !3407, line: 40, size: 128, elements: !3454)
!3454 = !{!3455, !3456}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3453, file: !3407, line: 41, baseType: !491, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3453, file: !3407, line: 42, baseType: !491, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, scope: !3450, file: !3407, line: 44, baseType: !3458, size: 128)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3450, file: !3407, line: 44, size: 128, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3458, file: !3407, line: 45, baseType: !487, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3458, file: !3407, line: 46, baseType: !487, size: 32, offset: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3458, file: !3407, line: 47, baseType: !487, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3458, file: !3407, line: 48, baseType: !487, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3443, file: !3407, line: 51, baseType: !487, size: 32, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3443, file: !3407, line: 52, baseType: !487, size: 32, offset: 224)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3443, file: !3407, line: 55, baseType: !3467, size: 1024, offset: 256)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 1024, elements: !500)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3443, file: !3407, line: 58, baseType: !3469, size: 2048, offset: 1280)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 2048, elements: !344)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3443, file: !3407, line: 60, baseType: !3471, size: 384, offset: 3328)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 384, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 12)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !3407, line: 62, baseType: !3475, size: 384, offset: 3712)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3443, file: !3407, line: 62, size: 384, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3475, file: !3407, line: 63, baseType: !3471, size: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3475, file: !3407, line: 64, baseType: !3471, size: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3425, file: !3407, line: 351, baseType: !3480, size: 1088)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3407, line: 79, size: 1088, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3555}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3480, file: !3407, line: 80, baseType: !487, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3480, file: !3407, line: 81, baseType: !487, size: 32, offset: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3480, file: !3407, line: 82, baseType: !487, size: 32, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3480, file: !3407, line: 83, baseType: !487, size: 32, offset: 96)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3480, file: !3407, line: 84, baseType: !487, size: 32, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3480, file: !3407, line: 85, baseType: !487, size: 32, offset: 160)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3480, file: !3407, line: 86, baseType: !487, size: 32, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3480, file: !3407, line: 88, baseType: !3438, size: 640, offset: 224)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3480, file: !3407, line: 89, baseType: !244, size: 8, offset: 864)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3480, file: !3407, line: 90, baseType: !244, size: 8, offset: 872)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3480, file: !3407, line: 91, baseType: !244, size: 8, offset: 880)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3480, file: !3407, line: 92, baseType: !244, size: 8, offset: 888)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3480, file: !3407, line: 93, baseType: !244, size: 8, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3480, file: !3407, line: 94, baseType: !244, size: 8, offset: 904)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3480, file: !3407, line: 95, baseType: !3497, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3499, line: 11, size: 128, elements: !3500)
!3499 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3500 = !{!3501, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3498, file: !3499, line: 12, baseType: !179, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3498, file: !3499, line: 13, baseType: !3503, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3505, line: 103, size: 1344, elements: !3506)
!3505 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3535, !3536, !3537}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3504, file: !3505, line: 109, baseType: !388, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3504, file: !3505, line: 110, baseType: !388, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3504, file: !3505, line: 111, baseType: !388, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3504, file: !3505, line: 112, baseType: !388, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3504, file: !3505, line: 113, baseType: !388, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3504, file: !3505, line: 114, baseType: !388, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3504, file: !3505, line: 117, baseType: !388, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3504, file: !3505, line: 118, baseType: !388, size: 64, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3504, file: !3505, line: 119, baseType: !388, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3504, file: !3505, line: 120, baseType: !388, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3504, file: !3505, line: 121, baseType: !388, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3504, file: !3505, line: 122, baseType: !388, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3504, file: !3505, line: 123, baseType: !388, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3504, file: !3505, line: 124, baseType: !388, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3504, file: !3505, line: 125, baseType: !388, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3504, file: !3505, line: 139, baseType: !388, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3504, file: !3505, line: 142, baseType: !388, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !3505, line: 144, baseType: !3525, size: 64, offset: 1088)
!3525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3504, file: !3505, line: 144, size: 64, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3525, file: !3505, line: 146, baseType: !254, size: 16)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3525, file: !3505, line: 148, baseType: !491, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3525, file: !3505, line: 150, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3505, line: 59, size: 64, elements: !3531)
!3531 = !{!3532, !3533, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3530, file: !3505, line: 61, baseType: !491, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3530, file: !3505, line: 63, baseType: !491, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3530, file: !3505, line: 65, baseType: !491, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3504, file: !3505, line: 153, baseType: !388, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3504, file: !3505, line: 154, baseType: !388, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !3504, file: !3505, line: 156, baseType: !3538, size: 64, offset: 1280)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3504, file: !3505, line: 156, size: 64, elements: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3538, file: !3505, line: 158, baseType: !254, size: 16)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3538, file: !3505, line: 160, baseType: !491, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3538, file: !3505, line: 162, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3505, line: 69, size: 64, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3543, file: !3505, line: 71, baseType: !491, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3543, file: !3505, line: 73, baseType: !491, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3543, file: !3505, line: 75, baseType: !491, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3543, file: !3505, line: 77, baseType: !491, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3543, file: !3505, line: 80, baseType: !491, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3543, file: !3505, line: 83, baseType: !491, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3543, file: !3505, line: 86, baseType: !491, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3543, file: !3505, line: 88, baseType: !491, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3543, file: !3505, line: 93, baseType: !491, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3543, file: !3505, line: 100, baseType: !491, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3480, file: !3407, line: 96, baseType: !487, size: 32, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3425, file: !3407, line: 352, baseType: !3557, size: 4608, align: 512)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3407, line: 333, size: 4608, align: 512, elements: !3558)
!3558 = !{!3559, !3560, !3567}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3557, file: !3407, line: 334, baseType: !3443, size: 4096, align: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3557, file: !3407, line: 335, baseType: !3561, size: 512, offset: 4096)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3407, line: 312, size: 512, elements: !3562)
!3562 = !{!3563, !3564, !3565}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3561, file: !3407, line: 313, baseType: !491, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3561, file: !3407, line: 314, baseType: !491, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3561, file: !3407, line: 315, baseType: !3566, size: 384, offset: 128)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 384, elements: !1898)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3557, file: !3407, line: 336, baseType: !3568, offset: 4608)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !1815)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3425, file: !3407, line: 353, baseType: !3570, size: 32768)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 32768, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 4096)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3406, file: !3407, line: 484, baseType: !3412, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3406, file: !3407, line: 491, baseType: !3575, size: 128, offset: 256)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3407, line: 404, size: 128, elements: !3576)
!3576 = !{!3577, !3578, !3579}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3575, file: !3407, line: 424, baseType: !491, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3575, file: !3407, line: 432, baseType: !7, size: 32, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3575, file: !3407, line: 440, baseType: !7, size: 32, offset: 96)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3406, file: !3407, line: 498, baseType: !3575, size: 128, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3406, file: !3407, line: 508, baseType: !3413, size: 33280, align: 512, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1408, file: !1409, line: 16, baseType: !1418, size: 192, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1408, file: !1409, line: 17, baseType: !236, size: 32, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !570, file: !14, line: 1240, baseType: !171, size: 64, offset: 6912)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !570, file: !14, line: 1243, baseType: !487, size: 32, offset: 6976)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !570, file: !14, line: 1245, baseType: !1166, size: 64, offset: 7040)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !570, file: !14, line: 1246, baseType: !1166, size: 64, offset: 7104)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !570, file: !14, line: 1248, baseType: !488, size: 32, offset: 7168)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !570, file: !14, line: 1249, baseType: !3590, size: 64, offset: 7232)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !570, file: !14, line: 1252, baseType: !3593, size: 256, offset: 7296)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !500)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !570, file: !14, line: 1253, baseType: !3595, size: 128, offset: 7552)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3596, line: 21, baseType: !3597)
!3596 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3596, line: 19, size: 128, elements: !3598)
!3598 = !{!3599}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3597, file: !3596, line: 20, baseType: !3600, size: 128)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !2815)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !570, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !570, file: !14, line: 1261, baseType: !667, size: 256, offset: 7744)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !570, file: !14, line: 1267, baseType: !292, size: 64, offset: 8000)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !570, file: !14, line: 1269, baseType: !516, size: 64, offset: 8064)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !570, file: !14, line: 1271, baseType: !3606, size: 448, offset: 8128)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1175, line: 63, size: 448, elements: !3607)
!3607 = !{!3608, !3613, !3614, !3615, !3616, !3617, !3618}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3606, file: !1175, line: 64, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!388, !3612, !1173}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3606, file: !1175, line: 66, baseType: !3609, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3606, file: !1175, line: 69, baseType: !179, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3606, file: !1175, line: 70, baseType: !109, size: 32, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3606, file: !1175, line: 71, baseType: !7, size: 32, offset: 224)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3606, file: !1175, line: 74, baseType: !259, size: 128, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3606, file: !1175, line: 85, baseType: !3619, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !570, file: !14, line: 1274, baseType: !671, size: 64, offset: 8576)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !570, file: !14, line: 1280, baseType: !671, size: 64, offset: 8640)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !570, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !570, file: !14, line: 1286, baseType: !2543, size: 32, offset: 8736)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !570, file: !14, line: 1289, baseType: !987, size: 64, offset: 8768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !570, file: !14, line: 1290, baseType: !1035, size: 64, offset: 8832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !570, file: !14, line: 1297, baseType: !1992, size: 64, offset: 8896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !570, file: !14, line: 1304, baseType: !3628, size: 64, offset: 8960)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3629, line: 49, size: 64, elements: !3630)
!3629 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3630 = !{!3631}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3628, file: !3629, line: 50, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3629, line: 41, size: 512, align: 512, elements: !3634)
!3634 = !{!3635, !3636, !3641}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !3629, line: 43, baseType: !303, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3633, file: !3629, line: 45, baseType: !3637, size: 192, offset: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3629, line: 29, size: 192, elements: !3638)
!3638 = !{!3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3637, file: !3629, line: 30, baseType: !259, size: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3637, file: !3629, line: 32, baseType: !179, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3633, file: !3629, line: 46, baseType: !179, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !570, file: !14, line: 1305, baseType: !3628, size: 64, offset: 9024)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !570, file: !14, line: 1306, baseType: !887, size: 128, align: 64, offset: 9088)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !570, file: !14, line: 1307, baseType: !927, size: 256, offset: 9216)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !570, file: !14, line: 1309, baseType: !667, size: 256, offset: 9472)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !570, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !570, file: !14, line: 1317, baseType: !303, size: 32, align: 512, offset: 10240)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !570, file: !14, line: 1318, baseType: !259, size: 128, offset: 10304)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !570, file: !14, line: 1320, baseType: !303, size: 32, offset: 10432)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !570, file: !14, line: 1321, baseType: !259, size: 128, offset: 10496)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !564, file: !565, line: 73, baseType: !109, size: 32, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !564, file: !565, line: 74, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1839, line: 42, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !518, file: !455, line: 141, baseType: !3657, size: 64, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!109, !1235, !747}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !518, file: !455, line: 142, baseType: !3661, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!453, !453, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !454, file: !455, line: 96, baseType: !569, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !454, file: !455, line: 97, baseType: !388, size: 64, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !454, file: !455, line: 98, baseType: !171, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !455, line: 100, baseType: !3670, size: 128, offset: 1024)
!3670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !455, line: 100, size: 128, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3670, file: !455, line: 101, baseType: !259, size: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3670, file: !455, line: 102, baseType: !2160, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !454, file: !455, line: 104, baseType: !259, size: 128, offset: 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !454, file: !455, line: 105, baseType: !259, size: 128, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !454, file: !455, line: 113, baseType: !3677, size: 128, offset: 1408)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !455, line: 109, size: 128, elements: !3678)
!3678 = !{!3679, !3680, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3677, file: !455, line: 110, baseType: !913, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3677, file: !455, line: 111, baseType: !469, size: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3677, file: !455, line: 112, baseType: !887, size: 128, align: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !447, file: !14, line: 1968, baseType: !3683, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!292, !453, !418, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3688, line: 10, size: 128, elements: !3689)
!3688 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3687, file: !3688, line: 11, baseType: !710, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3687, file: !3688, line: 12, baseType: !171, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !447, file: !14, line: 1969, baseType: !3693, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!109, !3653, !418, !109}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !447, file: !14, line: 1970, baseType: !3697, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!441, !418, !109, !747}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !447, file: !14, line: 1972, baseType: !3701, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!109, !453, !339, !109}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !447, file: !14, line: 1974, baseType: !3705, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!109, !3653, !418, !453, !380, !747}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !447, file: !14, line: 1976, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!109, !453, !418, !453}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !447, file: !14, line: 1977, baseType: !3713, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!109, !418, !453}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !447, file: !14, line: 1978, baseType: !3717, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!109, !3653, !418, !453, !292}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !447, file: !14, line: 1980, baseType: !3721, size: 64, offset: 576)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!109, !3653, !418, !453, !380}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !447, file: !14, line: 1982, baseType: !3713, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !447, file: !14, line: 1983, baseType: !3726, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!109, !3653, !418, !453, !380, !574}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !447, file: !14, line: 1985, baseType: !3730, size: 64, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!109, !3653, !418, !453, !418, !453, !7}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !447, file: !14, line: 1987, baseType: !3734, size: 64, offset: 832)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!109, !3653, !453, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3752, !3761, !3762, !3767, !3768, !3769}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3738, file: !14, line: 227, baseType: !7, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3738, file: !14, line: 228, baseType: !380, size: 16, offset: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !14, line: 241, baseType: !3743, size: 32, offset: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !14, line: 241, size: 32, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3743, file: !14, line: 242, baseType: !424, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3743, file: !14, line: 243, baseType: !3747, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3748, line: 16, baseType: !3749)
!3748 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3748, line: 14, size: 32, elements: !3750)
!3750 = !{!3751}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3749, file: !3748, line: 15, baseType: !429, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !14, line: 245, baseType: !3753, size: 32, offset: 96)
!3753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !14, line: 245, size: 32, elements: !3754)
!3754 = !{!3755, !3756}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3753, file: !14, line: 246, baseType: !433, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3753, file: !14, line: 247, baseType: !3757, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3748, line: 20, baseType: !3758)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3748, line: 18, size: 32, elements: !3759)
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3758, file: !3748, line: 19, baseType: !437, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3738, file: !14, line: 249, baseType: !579, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3738, file: !14, line: 250, baseType: !3763, size: 128, offset: 192)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1167, line: 13, size: 128, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3763, file: !1167, line: 14, baseType: !1166, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3763, file: !1167, line: 15, baseType: !179, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3738, file: !14, line: 251, baseType: !3763, size: 128, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3738, file: !14, line: 252, baseType: !3763, size: 128, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3738, file: !14, line: 259, baseType: !1755, size: 64, offset: 576)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !447, file: !14, line: 1988, baseType: !3771, size: 64, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!109, !3653, !1235, !3774, !487, !7}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3776, line: 22, size: 1280, elements: !3777)
!3776 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3775, file: !3776, line: 23, baseType: !487, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3775, file: !3776, line: 24, baseType: !380, size: 16, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3775, file: !3776, line: 25, baseType: !7, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3775, file: !3776, line: 26, baseType: !1877, size: 32, offset: 96)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3775, file: !3776, line: 27, baseType: !491, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3775, file: !3776, line: 28, baseType: !491, size: 64, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3775, file: !3776, line: 41, baseType: !491, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3775, file: !3776, line: 42, baseType: !574, size: 32, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3775, file: !3776, line: 43, baseType: !574, size: 32, offset: 352)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3775, file: !3776, line: 44, baseType: !424, size: 32, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3775, file: !3776, line: 45, baseType: !433, size: 32, offset: 416)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3775, file: !3776, line: 46, baseType: !579, size: 64, offset: 448)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3775, file: !3776, line: 47, baseType: !3763, size: 128, offset: 512)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3775, file: !3776, line: 48, baseType: !3763, size: 128, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3775, file: !3776, line: 49, baseType: !3763, size: 128, offset: 768)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3775, file: !3776, line: 50, baseType: !3763, size: 128, offset: 896)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3775, file: !3776, line: 51, baseType: !491, size: 64, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3775, file: !3776, line: 52, baseType: !491, size: 64, offset: 1088)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3775, file: !3776, line: 53, baseType: !487, size: 32, offset: 1152)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3775, file: !3776, line: 54, baseType: !487, size: 32, offset: 1184)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3775, file: !3776, line: 55, baseType: !491, size: 64, offset: 1216)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !447, file: !14, line: 1990, baseType: !3800, size: 64, offset: 960)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!371, !453, !339, !385}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !447, file: !14, line: 1991, baseType: !3804, size: 64, offset: 1024)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!109, !418, !3807, !491, !491}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !447, file: !14, line: 1993, baseType: !3810, size: 64, offset: 1088)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!109, !418, !109}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !447, file: !14, line: 1994, baseType: !3814, size: 64, offset: 1152)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!109, !418, !453, !1755, !7, !380}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !447, file: !14, line: 1997, baseType: !3818, size: 64, offset: 1216)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!109, !3653, !418, !1755, !380}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !447, file: !14, line: 1999, baseType: !3822, size: 64, offset: 1280)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!441, !3653, !453, !109}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !447, file: !14, line: 2001, baseType: !3826, size: 64, offset: 1344)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!109, !3653, !453, !441, !109}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !447, file: !14, line: 2003, baseType: !3830, size: 64, offset: 1408)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!109, !3653, !453, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !447, file: !14, line: 2005, baseType: !3836, size: 64, offset: 1472)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!109, !453, !3833}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !447, file: !14, line: 2006, baseType: !3840, size: 64, offset: 1536)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3843, !418}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3845)
!3845 = !{!3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3844, file: !14, line: 3193, baseType: !2112, size: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3844, file: !14, line: 3194, baseType: !487, size: 32, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !419, file: !14, line: 655, baseType: !569, size: 64, offset: 448)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !419, file: !14, line: 656, baseType: !414, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !419, file: !14, line: 659, baseType: !171, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !419, file: !14, line: 663, baseType: !388, size: 64, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !14, line: 671, baseType: !3853, size: 32, offset: 704)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !14, line: 671, size: 32, elements: !3854)
!3854 = !{!3855, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3853, file: !14, line: 672, baseType: !3856, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3853, file: !14, line: 673, baseType: !7, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !419, file: !14, line: 675, baseType: !574, size: 32, offset: 736)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !419, file: !14, line: 676, baseType: !579, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !419, file: !14, line: 677, baseType: !3763, size: 128, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !419, file: !14, line: 678, baseType: !3763, size: 128, offset: 960)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !419, file: !14, line: 679, baseType: !3763, size: 128, offset: 1088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !419, file: !14, line: 680, baseType: !303, size: 32, offset: 1216)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !419, file: !14, line: 681, baseType: !256, size: 16, offset: 1248)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !419, file: !14, line: 682, baseType: !244, size: 8, offset: 1264)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !419, file: !14, line: 683, baseType: !244, size: 8, offset: 1272)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !419, file: !14, line: 684, baseType: !1313, size: 64, offset: 1280)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !419, file: !14, line: 691, baseType: !388, size: 64, offset: 1344)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !419, file: !14, line: 692, baseType: !1325, size: 320, offset: 1408)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !419, file: !14, line: 694, baseType: !388, size: 64, offset: 1728)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !419, file: !14, line: 695, baseType: !388, size: 64, offset: 1792)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !419, file: !14, line: 697, baseType: !913, size: 128, offset: 1856)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !419, file: !14, line: 698, baseType: !259, size: 128, offset: 1984)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !419, file: !14, line: 707, baseType: !259, size: 128, offset: 2112)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !419, file: !14, line: 708, baseType: !259, size: 128, offset: 2240)
!3876 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !14, line: 709, baseType: !3877, size: 128, offset: 2368)
!3877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !14, line: 709, size: 128, elements: !3878)
!3878 = !{!3879, !3880}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3877, file: !14, line: 710, baseType: !1035, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3877, file: !14, line: 711, baseType: !887, size: 128, align: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !419, file: !14, line: 713, baseType: !673, size: 64, offset: 2496)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !419, file: !14, line: 714, baseType: !673, size: 64, offset: 2560)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !419, file: !14, line: 715, baseType: !236, size: 32, offset: 2624)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !419, file: !14, line: 716, baseType: !236, size: 32, offset: 2656)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !419, file: !14, line: 717, baseType: !236, size: 32, offset: 2688)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !419, file: !14, line: 719, baseType: !236, size: 32, offset: 2720)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !14, line: 721, baseType: !3888, size: 64, offset: 2752)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !14, line: 721, size: 64, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3888, file: !14, line: 722, baseType: !2023, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3888, file: !14, line: 723, baseType: !1057, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !419, file: !14, line: 725, baseType: !3893, size: 64, offset: 2816)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !419, file: !14, line: 726, baseType: !415, size: 1536, align: 64, offset: 2880)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !419, file: !14, line: 727, baseType: !259, size: 128, offset: 4416)
!3897 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !14, line: 728, baseType: !3898, size: 64, offset: 4544)
!3898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !14, line: 728, size: 64, elements: !3899)
!3899 = !{!3900, !3901, !3904, !3905}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3898, file: !14, line: 729, baseType: !2493, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3898, file: !14, line: 730, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3898, file: !14, line: 731, baseType: !339, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3898, file: !14, line: 732, baseType: !7, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !419, file: !14, line: 735, baseType: !488, size: 32, offset: 4608)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !419, file: !14, line: 738, baseType: !488, size: 32, offset: 4640)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !419, file: !14, line: 739, baseType: !3590, size: 64, offset: 4672)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !419, file: !14, line: 750, baseType: !171, size: 64, offset: 4736)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !415, file: !14, line: 474, baseType: !2112, size: 128, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !415, file: !14, line: 475, baseType: !1325, size: 320, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !415, file: !14, line: 476, baseType: !172, size: 32, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !415, file: !14, line: 477, baseType: !236, size: 32, offset: 544)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !415, file: !14, line: 482, baseType: !1611, size: 128, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !415, file: !14, line: 483, baseType: !388, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !415, file: !14, line: 484, baseType: !388, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !415, file: !14, line: 485, baseType: !3918, size: 64, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3920)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3921)
!3921 = !{!3922, !3926, !3996, !4000, !4004, !4010, !4014, !4018, !4023, !4027, !4031, !4035, !4036, !4040, !4044, !4048, !4053, !4057, !4064, !4065}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3920, file: !14, line: 405, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!109, !2280, !1069}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3920, file: !14, line: 406, baseType: !3927, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!109, !1755, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3932)
!3932 = !{!3933, !3963, !3977}
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !38, line: 295, baseType: !3934, size: 512)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !38, line: 295, size: 512, elements: !3935)
!3935 = !{!3936, !3962}
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3934, file: !38, line: 296, baseType: !3937, size: 448)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !38, line: 296, size: 448, elements: !3938)
!3938 = !{!3939, !3940, !3949, !3950, !3951, !3960, !3961}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3937, file: !38, line: 298, baseType: !388, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !38, line: 299, baseType: !3941, size: 128, offset: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !38, line: 299, size: 128, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3941, file: !38, line: 300, baseType: !259, size: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !38, line: 302, baseType: !3945, size: 128)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3941, file: !38, line: 302, size: 128, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3945, file: !38, line: 303, baseType: !171, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3945, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3937, file: !38, line: 310, baseType: !414, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3937, file: !38, line: 311, baseType: !388, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !38, line: 312, baseType: !3952, size: 64, offset: 320)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !38, line: 312, size: 64, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3952, file: !38, line: 313, baseType: !171, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3952, file: !38, line: 314, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3957)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3958)
!3958 = !{!3959}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3957, file: !38, line: 256, baseType: !388, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3937, file: !38, line: 316, baseType: !236, size: 32, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3937, file: !38, line: 317, baseType: !236, size: 32, offset: 416)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3934, file: !38, line: 323, baseType: !2281, size: 512, align: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !38, line: 325, baseType: !3964, size: 512, offset: 512)
!3964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !38, line: 325, size: 512, elements: !3965)
!3965 = !{!3966, !3976}
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3964, file: !38, line: 326, baseType: !3967, size: 320)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3964, file: !38, line: 326, size: 320, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3967, file: !38, line: 327, baseType: !388, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3967, file: !38, line: 328, baseType: !388, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3967, file: !38, line: 329, baseType: !388, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3967, file: !38, line: 331, baseType: !236, size: 32, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3967, file: !38, line: 332, baseType: !236, size: 32, offset: 224)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3967, file: !38, line: 333, baseType: !236, size: 32, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3967, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3964, file: !38, line: 339, baseType: !2281, size: 512, align: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !38, line: 341, baseType: !3978, size: 512, offset: 1024)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !38, line: 341, size: 512, elements: !3979)
!3979 = !{!3980, !3989, !3995}
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !38, line: 342, baseType: !3981, size: 384)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !38, line: 342, size: 384, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3981, file: !38, line: 343, baseType: !388, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3981, file: !38, line: 344, baseType: !388, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3981, file: !38, line: 346, baseType: !171, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3981, file: !38, line: 347, baseType: !171, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3981, file: !38, line: 348, baseType: !171, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3981, file: !38, line: 349, baseType: !171, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !38, line: 352, baseType: !3990, size: 256)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !38, line: 352, size: 256, elements: !3991)
!3991 = !{!3992, !3993, !3994}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3990, file: !38, line: 353, baseType: !388, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3990, file: !38, line: 354, baseType: !388, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3990, file: !38, line: 356, baseType: !259, size: 128, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3978, file: !38, line: 359, baseType: !2281, size: 512, align: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3920, file: !14, line: 409, baseType: !3997, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!109, !414, !1069}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3920, file: !14, line: 412, baseType: !4001, size: 64, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!747, !414, !3930}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3920, file: !14, line: 414, baseType: !4005, size: 64, offset: 256)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !4008}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3920, file: !14, line: 416, baseType: !4011, size: 64, offset: 320)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!109, !1755, !414, !579, !7, !3339, !2508}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3920, file: !14, line: 419, baseType: !4015, size: 64, offset: 384)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!109, !1755, !414, !579, !7, !7, !2280, !171}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3920, file: !14, line: 424, baseType: !4019, size: 64, offset: 448)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!4022, !414, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !173, line: 131, baseType: !491)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3920, file: !14, line: 425, baseType: !4024, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !3930, !385, !385}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3920, file: !14, line: 426, baseType: !4028, size: 64, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!747, !3930, !172}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3920, file: !14, line: 427, baseType: !4032, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !3930}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3920, file: !14, line: 428, baseType: !2042, size: 64, offset: 704)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3920, file: !14, line: 433, baseType: !4037, size: 64, offset: 768)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!109, !414, !3930, !3930, !74}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3920, file: !14, line: 435, baseType: !4041, size: 64, offset: 832)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!109, !3930}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3920, file: !14, line: 436, baseType: !4045, size: 64, offset: 896)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!747, !3930, !385, !385}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3920, file: !14, line: 438, baseType: !4049, size: 64, offset: 960)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !3930, !4052, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3920, file: !14, line: 439, baseType: !4054, size: 64, offset: 1024)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!109, !414, !2280}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3920, file: !14, line: 442, baseType: !4058, size: 64, offset: 1088)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!109, !4061, !1755, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3920, file: !14, line: 444, baseType: !2500, size: 64, offset: 1152)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3920, file: !14, line: 445, baseType: !4066, size: 64, offset: 1216)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!109, !2045, !2067}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !14, line: 486, baseType: !388, size: 64, offset: 896)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !415, file: !14, line: 487, baseType: !1325, size: 320, offset: 960)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !415, file: !14, line: 488, baseType: !2543, size: 32, offset: 1280)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !415, file: !14, line: 489, baseType: !303, size: 32, offset: 1312)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !415, file: !14, line: 490, baseType: !259, size: 128, offset: 1344)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !415, file: !14, line: 491, baseType: !171, size: 64, offset: 1472)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !405, file: !365, line: 180, baseType: !4076, size: 64, offset: 320)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!371, !1755, !296, !404, !339, !579, !385}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !365, line: 182, baseType: !4076, size: 64, offset: 384)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !405, file: !365, line: 184, baseType: !4081, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!109, !1755, !296, !404, !2171}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !393, file: !365, line: 90, baseType: !4085, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !393, file: !365, line: 91, baseType: !4087, size: 64, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !355, file: !289, line: 120, baseType: !4089, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!4092, !322}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4095)
!4095 = !{!4096, !4097, !4101, !4105, !4111, !4115}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4094, file: !82, line: 40, baseType: !81, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4094, file: !82, line: 41, baseType: !4098, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!747}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4094, file: !82, line: 42, baseType: !4102, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!171}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4094, file: !82, line: 43, baseType: !4106, size: 64, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!2632, !4109}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4094, file: !82, line: 44, baseType: !4112, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!2632}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4094, file: !82, line: 45, baseType: !710, size: 64, offset: 320)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !355, file: !289, line: 121, baseType: !4117, size: 64, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!2632, !322}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !355, file: !289, line: 122, baseType: !4121, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !322, !4124, !4125}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !288, file: !289, line: 70, baseType: !4127, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !594, line: 190, size: 1152, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4221, !4222, !4223, !4224, !4225, !4228}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4128, file: !594, line: 191, baseType: !236, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4128, file: !594, line: 192, baseType: !236, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4128, file: !594, line: 202, baseType: !4127, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4128, file: !594, line: 203, baseType: !292, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4128, file: !594, line: 205, baseType: !779, size: 192, align: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4128, file: !594, line: 207, baseType: !2632, size: 64, offset: 384)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4128, file: !594, line: 208, baseType: !7, size: 32, offset: 448)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !594, line: 209, baseType: !4138, size: 256, offset: 512)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !594, line: 209, size: 256, elements: !4139)
!4139 = !{!4140, !4149, !4153}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4138, file: !594, line: 210, baseType: !4141, size: 256)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !594, line: 153, size: 256, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4148}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4141, file: !594, line: 154, baseType: !388, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4141, file: !594, line: 156, baseType: !1614, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4141, file: !594, line: 162, baseType: !4146, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !594, line: 162, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4141, file: !594, line: 167, baseType: !388, size: 64, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4138, file: !594, line: 211, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !594, line: 170, size: 64, elements: !4151)
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4150, file: !594, line: 171, baseType: !4127, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4138, file: !594, line: 212, baseType: !4154, size: 256)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !594, line: 174, size: 256, elements: !4155)
!4155 = !{!4156, !4216, !4219, !4220}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4154, file: !594, line: 175, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !594, line: 271, size: 768, elements: !4160)
!4160 = !{!4161, !4181, !4185, !4189, !4193, !4197, !4201, !4205, !4206, !4207, !4208, !4212}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4159, file: !594, line: 276, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!109, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !594, line: 251, size: 1216, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4166, file: !594, line: 253, baseType: !4127, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4166, file: !594, line: 254, baseType: !1755, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4166, file: !594, line: 255, baseType: !1106, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4166, file: !594, line: 256, baseType: !171, size: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4166, file: !594, line: 259, baseType: !667, size: 256, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4166, file: !594, line: 260, baseType: !667, size: 256, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4166, file: !594, line: 261, baseType: !109, size: 32, offset: 768)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4166, file: !594, line: 262, baseType: !259, size: 128, offset: 832)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4166, file: !594, line: 263, baseType: !339, size: 64, offset: 960)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4166, file: !594, line: 265, baseType: !385, size: 64, offset: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4166, file: !594, line: 266, baseType: !747, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4166, file: !594, line: 267, baseType: !747, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4166, file: !594, line: 268, baseType: !2216, size: 64, offset: 1152)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4159, file: !594, line: 277, baseType: !4182, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !4165}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4159, file: !594, line: 290, baseType: !4186, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!109, !1106, !171}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4159, file: !594, line: 292, baseType: !4190, size: 64, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!171, !1106, !2036}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4159, file: !594, line: 293, baseType: !4194, size: 64, offset: 256)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!171, !1106, !171, !2036}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4159, file: !594, line: 294, baseType: !4198, size: 64, offset: 320)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !1106, !171}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4159, file: !594, line: 296, baseType: !4202, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!371, !4165, !339, !385, !579}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4159, file: !594, line: 306, baseType: !385, size: 64, offset: 448)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4159, file: !594, line: 313, baseType: !747, size: 8, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4159, file: !594, line: 314, baseType: !4202, size: 64, offset: 576)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4159, file: !594, line: 317, baseType: !4209, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!2149, !4165, !2151}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4159, file: !594, line: 320, baseType: !4213, size: 64, offset: 704)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!109, !4165, !2171}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4154, file: !594, line: 176, baseType: !4217, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !594, line: 35, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4154, file: !594, line: 177, baseType: !579, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4154, file: !594, line: 178, baseType: !4127, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4128, file: !594, line: 215, baseType: !171, size: 64, offset: 768)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4128, file: !594, line: 221, baseType: !491, size: 64, offset: 832)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4128, file: !594, line: 223, baseType: !256, size: 16, offset: 896)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4128, file: !594, line: 224, baseType: !380, size: 16, offset: 912)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4128, file: !594, line: 225, baseType: !4226, size: 64, offset: 960)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !594, line: 36, flags: DIFlagFwdDecl)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4128, file: !594, line: 227, baseType: !887, size: 128, align: 64, offset: 1024)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !288, file: !289, line: 71, baseType: !4230, size: 32, offset: 448)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4231, line: 19, size: 32, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4232 = !{!4233}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4230, file: !4231, line: 20, baseType: !1445, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !288, file: !289, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !288, file: !289, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !288, file: !289, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !288, file: !289, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !288, file: !289, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !285, file: !94, line: 707, baseType: !284, size: 64, offset: 512)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !285, file: !94, line: 709, baseType: !4241, size: 64, offset: 576)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !285, file: !94, line: 711, baseType: !292, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !285, file: !94, line: 712, baseType: !4245, size: 64, offset: 704)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4257, !4262, !4266}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4247, file: !94, line: 90, baseType: !292, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4247, file: !94, line: 91, baseType: !390, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4247, file: !94, line: 92, baseType: !4252, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!109, !4255, !334}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4247, file: !94, line: 93, baseType: !4258, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!339, !4255, !4261, !4124, !4125}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4247, file: !94, line: 95, baseType: !4263, size: 64, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !284}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4247, file: !94, line: 97, baseType: !4267, size: 64, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4269)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4269, file: !101, line: 287, baseType: !281, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4269, file: !101, line: 288, baseType: !4263, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4269, file: !101, line: 289, baseType: !281, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4269, file: !101, line: 290, baseType: !281, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4269, file: !101, line: 291, baseType: !281, size: 64, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4269, file: !101, line: 292, baseType: !281, size: 64, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4269, file: !101, line: 293, baseType: !281, size: 64, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4269, file: !101, line: 294, baseType: !281, size: 64, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4269, file: !101, line: 295, baseType: !281, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4269, file: !101, line: 296, baseType: !281, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4269, file: !101, line: 297, baseType: !281, size: 64, offset: 640)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4269, file: !101, line: 298, baseType: !281, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4269, file: !101, line: 299, baseType: !281, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4269, file: !101, line: 300, baseType: !281, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4269, file: !101, line: 301, baseType: !281, size: 64, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4269, file: !101, line: 302, baseType: !281, size: 64, offset: 960)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4269, file: !101, line: 303, baseType: !281, size: 64, offset: 1024)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4269, file: !101, line: 304, baseType: !281, size: 64, offset: 1088)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4269, file: !101, line: 305, baseType: !281, size: 64, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4269, file: !101, line: 306, baseType: !281, size: 64, offset: 1216)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4269, file: !101, line: 307, baseType: !281, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4269, file: !101, line: 308, baseType: !281, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4269, file: !101, line: 309, baseType: !281, size: 64, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !285, file: !94, line: 714, baseType: !4295, size: 64, offset: 768)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4298, line: 80, size: 1344, elements: !4299)
!4298 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4299 = !{!4300, !4301, !4302, !4303, !4304, !4305, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4378}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4297, file: !4298, line: 81, baseType: !292, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4297, file: !4298, line: 82, baseType: !292, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4297, file: !4298, line: 83, baseType: !390, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4297, file: !4298, line: 84, baseType: !390, size: 64, offset: 192)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4297, file: !4298, line: 85, baseType: !390, size: 64, offset: 256)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4297, file: !4298, line: 87, baseType: !4306, size: 64, offset: 320)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!109, !284, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4331, !4341, !4342, !4343, !4344, !4345, !4353, !4354, !4355, !4356, !4357, !4358}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4310, file: !88, line: 97, baseType: !292, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4310, file: !88, line: 98, baseType: !4295, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4310, file: !88, line: 100, baseType: !608, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4310, file: !88, line: 101, baseType: !292, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4310, file: !88, line: 103, baseType: !747, size: 8, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4310, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4310, file: !88, line: 106, baseType: !4319, size: 64, offset: 320)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4321)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4322, line: 282, size: 1600, elements: !4323)
!4322 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4323 = !{!4324, !4325, !4326, !4330}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4321, file: !4322, line: 283, baseType: !3593, size: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4321, file: !4322, line: 284, baseType: !3593, size: 256, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4321, file: !4322, line: 285, baseType: !4327, size: 1024, offset: 512)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 1024, elements: !4328)
!4328 = !{!4329}
!4329 = !DISubrange(count: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4321, file: !4322, line: 286, baseType: !2632, size: 64, offset: 1536)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4310, file: !88, line: 107, baseType: !4332, size: 64, offset: 384)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4322, line: 217, size: 256, elements: !4335)
!4335 = !{!4336, !4337, !4339, !4340}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4334, file: !4322, line: 218, baseType: !3600, size: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4334, file: !4322, line: 219, baseType: !4338, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4322, line: 15, baseType: !388)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4334, file: !4322, line: 220, baseType: !488, size: 32, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4334, file: !4322, line: 221, baseType: !488, size: 32, offset: 224)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4310, file: !88, line: 109, baseType: !281, size: 64, offset: 448)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4310, file: !88, line: 110, baseType: !4263, size: 64, offset: 512)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4310, file: !88, line: 111, baseType: !281, size: 64, offset: 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4310, file: !88, line: 112, baseType: !4263, size: 64, offset: 640)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4310, file: !88, line: 113, baseType: !4346, size: 64, offset: 704)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!109, !284, !4349}
!4349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4350)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4351)
!4351 = !{!4352}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4350, file: !101, line: 59, baseType: !109, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4310, file: !88, line: 114, baseType: !281, size: 64, offset: 768)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4310, file: !88, line: 115, baseType: !390, size: 64, offset: 832)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4310, file: !88, line: 116, baseType: !390, size: 64, offset: 896)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4310, file: !88, line: 118, baseType: !4267, size: 64, offset: 960)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4310, file: !88, line: 119, baseType: !4263, size: 64, offset: 1024)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4310, file: !88, line: 121, baseType: !4359, size: 64, offset: 1088)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4297, file: !4298, line: 88, baseType: !4252, size: 64, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4297, file: !4298, line: 89, baseType: !281, size: 64, offset: 448)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4297, file: !4298, line: 90, baseType: !4263, size: 64, offset: 512)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4297, file: !4298, line: 91, baseType: !4263, size: 64, offset: 576)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4297, file: !4298, line: 92, baseType: !4263, size: 64, offset: 640)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4297, file: !4298, line: 94, baseType: !281, size: 64, offset: 704)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4297, file: !4298, line: 95, baseType: !281, size: 64, offset: 768)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !4298, line: 97, baseType: !4346, size: 64, offset: 832)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !4298, line: 98, baseType: !281, size: 64, offset: 896)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4297, file: !4298, line: 100, baseType: !281, size: 64, offset: 960)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4297, file: !4298, line: 102, baseType: !281, size: 64, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4297, file: !4298, line: 103, baseType: !4263, size: 64, offset: 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4297, file: !4298, line: 105, baseType: !4267, size: 64, offset: 1152)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4297, file: !4298, line: 107, baseType: !4375, size: 64, offset: 1216)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4298, line: 107, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4297, file: !4298, line: 109, baseType: !747, size: 8, offset: 1280)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !285, file: !94, line: 715, baseType: !4309, size: 64, offset: 832)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !285, file: !94, line: 717, baseType: !171, size: 64, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !285, file: !94, line: 719, baseType: !171, size: 64, offset: 960)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !285, file: !94, line: 721, baseType: !667, size: 256, offset: 1024)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !285, file: !94, line: 725, baseType: !4384, size: 448, offset: 1280)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4384, file: !94, line: 518, baseType: !259, size: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4384, file: !94, line: 519, baseType: !259, size: 128, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4384, file: !94, line: 520, baseType: !259, size: 128, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4384, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !285, file: !94, line: 726, baseType: !4391, size: 2496, offset: 1728)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4475, !4479}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4391, file: !101, line: 664, baseType: !4349, size: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4391, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4391, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4391, file: !101, line: 667, baseType: !747, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4391, file: !101, line: 668, baseType: !747, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4391, file: !101, line: 669, baseType: !747, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4391, file: !101, line: 670, baseType: !747, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4391, file: !101, line: 671, baseType: !747, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4391, file: !101, line: 672, baseType: !747, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4391, file: !101, line: 673, baseType: !747, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4391, file: !101, line: 674, baseType: !747, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4391, file: !101, line: 675, baseType: !487, size: 32, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4391, file: !101, line: 676, baseType: !303, size: 32, offset: 96)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4391, file: !101, line: 678, baseType: !259, size: 128, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4391, file: !101, line: 679, baseType: !215, size: 256, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4391, file: !101, line: 680, baseType: !4409, size: 64, offset: 512)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4411, line: 43, size: 1536, elements: !4412)
!4411 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4412 = !{!4413, !4414, !4415, !4416, !4417, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4410, file: !4411, line: 44, baseType: !292, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4410, file: !4411, line: 45, baseType: !109, size: 32, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4410, file: !4411, line: 46, baseType: !259, size: 128, offset: 128)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4410, file: !4411, line: 47, baseType: !303, size: 32, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4410, file: !4411, line: 48, baseType: !4418, size: 64, offset: 320)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4410, file: !4411, line: 49, baseType: !909, size: 320, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4410, file: !4411, line: 50, baseType: !388, size: 64, offset: 704)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4410, file: !4411, line: 51, baseType: !1560, size: 64, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4410, file: !4411, line: 52, baseType: !1560, size: 64, offset: 832)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4410, file: !4411, line: 53, baseType: !1560, size: 64, offset: 896)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4410, file: !4411, line: 54, baseType: !1560, size: 64, offset: 960)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4410, file: !4411, line: 55, baseType: !1560, size: 64, offset: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4410, file: !4411, line: 56, baseType: !388, size: 64, offset: 1088)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4410, file: !4411, line: 57, baseType: !388, size: 64, offset: 1152)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4410, file: !4411, line: 58, baseType: !388, size: 64, offset: 1216)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4410, file: !4411, line: 59, baseType: !388, size: 64, offset: 1280)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4410, file: !4411, line: 60, baseType: !388, size: 64, offset: 1344)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4410, file: !4411, line: 61, baseType: !284, size: 64, offset: 1408)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4410, file: !4411, line: 62, baseType: !747, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4410, file: !4411, line: 63, baseType: !747, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4391, file: !101, line: 681, baseType: !747, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4391, file: !101, line: 682, baseType: !747, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4391, file: !101, line: 683, baseType: !747, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4391, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4391, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4391, file: !101, line: 690, baseType: !1552, size: 512, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4391, file: !101, line: 691, baseType: !491, size: 64, offset: 1152)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4391, file: !101, line: 692, baseType: !927, size: 256, offset: 1216)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4391, file: !101, line: 693, baseType: !1418, size: 192, offset: 1472)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4391, file: !101, line: 694, baseType: !4418, size: 64, offset: 1664)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4391, file: !101, line: 695, baseType: !236, size: 32, offset: 1728)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4391, file: !101, line: 696, baseType: !236, size: 32, offset: 1760)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4391, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4391, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4391, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4391, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4391, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4391, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4391, file: !101, line: 703, baseType: !747, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4391, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4391, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4391, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4391, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4391, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4391, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4391, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4391, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4391, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4391, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4391, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4391, file: !101, line: 715, baseType: !491, size: 64, offset: 2048)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4391, file: !101, line: 716, baseType: !491, size: 64, offset: 2112)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4391, file: !101, line: 717, baseType: !491, size: 64, offset: 2176)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4391, file: !101, line: 718, baseType: !491, size: 64, offset: 2240)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4391, file: !101, line: 720, baseType: !4470, size: 64, offset: 2304)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4472)
!4472 = !{!4473, !4474}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4471, file: !101, line: 633, baseType: !303, size: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4471, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4391, file: !101, line: 721, baseType: !4476, size: 64, offset: 2368)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !284, !663}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4391, file: !101, line: 722, baseType: !4480, size: 64, offset: 2432)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 117, size: 2432, elements: !4482)
!4482 = !{!4483, !4511, !4512, !4519, !4524, !4546, !4547}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4481, file: !117, line: 118, baseType: !4484, size: 320)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !117, line: 52, size: 320, elements: !4485)
!4485 = !{!4486, !4490, !4491, !4492, !4493, !4494}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4484, file: !117, line: 53, baseType: !4487, size: 128)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1721, line: 82, size: 128, elements: !4488)
!4488 = !{!4489}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4487, file: !1721, line: 83, baseType: !259, size: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4484, file: !117, line: 54, baseType: !663, size: 32, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4484, file: !117, line: 55, baseType: !663, size: 32, offset: 160)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4484, file: !117, line: 56, baseType: !663, size: 32, offset: 192)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4484, file: !117, line: 57, baseType: !116, size: 32, offset: 224)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4484, file: !117, line: 58, baseType: !4495, size: 64, offset: 256)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4497, line: 65, size: 384, elements: !4498)
!4497 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4498 = !{!4499, !4500}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4496, file: !4497, line: 66, baseType: !1325, size: 320)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4496, file: !4497, line: 67, baseType: !4501, size: 64, offset: 320)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4497, line: 54, size: 192, elements: !4503)
!4503 = !{!4504, !4509, !4510}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4502, file: !4497, line: 55, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4497, line: 51, baseType: !4506)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!109, !4501, !388, !171}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4502, file: !4497, line: 56, baseType: !4501, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4502, file: !4497, line: 57, baseType: !109, size: 32, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4481, file: !117, line: 119, baseType: !4484, size: 320, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4481, file: !117, line: 120, baseType: !4513, size: 1408, offset: 640)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !117, line: 85, size: 1408, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4513, file: !117, line: 86, baseType: !4484, size: 320)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4513, file: !117, line: 87, baseType: !4496, size: 384, offset: 320)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4513, file: !117, line: 88, baseType: !4484, size: 320, offset: 704)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4513, file: !117, line: 89, baseType: !4496, size: 384, offset: 1024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4481, file: !117, line: 121, baseType: !4520, size: 192, offset: 2048)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !117, line: 71, size: 192, elements: !4521)
!4521 = !{!4522, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4520, file: !117, line: 72, baseType: !259, size: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4520, file: !117, line: 73, baseType: !663, size: 32, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4481, file: !117, line: 122, baseType: !4525, size: 64, offset: 2240)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !117, line: 107, size: 576, elements: !4527)
!4527 = !{!4528, !4529, !4545}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4526, file: !117, line: 108, baseType: !122, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4526, file: !117, line: 113, baseType: !4530, size: 448, offset: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4526, file: !117, line: 109, size: 448, elements: !4531)
!4531 = !{!4532, !4533, !4538}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4530, file: !117, line: 110, baseType: !1720, size: 320)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4530, file: !117, line: 111, baseType: !4534, size: 192)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !117, line: 66, size: 192, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4534, file: !117, line: 67, baseType: !259, size: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4534, file: !117, line: 68, baseType: !663, size: 32, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4530, file: !117, line: 112, baseType: !4539, size: 448)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !117, line: 92, size: 448, elements: !4540)
!4540 = !{!4541, !4542, !4543}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4539, file: !117, line: 93, baseType: !129, size: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4539, file: !117, line: 94, baseType: !1720, size: 320, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4539, file: !117, line: 95, baseType: !4544, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4526, file: !117, line: 114, baseType: !284, size: 64, offset: 512)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4481, file: !117, line: 123, baseType: !4525, size: 64, offset: 2304)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4481, file: !117, line: 124, baseType: !4525, size: 64, offset: 2368)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !285, file: !94, line: 727, baseType: !4549, size: 64, offset: 4224)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4558, !4559, !4560}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4550, file: !101, line: 743, baseType: !4269, size: 1472)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4550, file: !101, line: 744, baseType: !281, size: 64, offset: 1472)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4550, file: !101, line: 745, baseType: !4555, size: 64, offset: 1536)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !284, !747}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4550, file: !101, line: 746, baseType: !281, size: 64, offset: 1600)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4550, file: !101, line: 747, baseType: !4263, size: 64, offset: 1664)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4550, file: !101, line: 748, baseType: !4263, size: 64, offset: 1728)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !285, file: !94, line: 736, baseType: !4562, size: 128, offset: 4288)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4563)
!4563 = !{!4564, !4568}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4562, file: !94, line: 531, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4567, line: 13, flags: DIFlagFwdDecl)
!4567 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4562, file: !94, line: 532, baseType: !4569, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !285, file: !94, line: 738, baseType: !4572, size: 64, offset: 4416)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4574)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !285, file: !94, line: 740, baseType: !4576, size: 64, offset: 4480)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !285, file: !94, line: 741, baseType: !491, size: 64, offset: 4544)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !285, file: !94, line: 746, baseType: !491, size: 64, offset: 4608)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !285, file: !94, line: 747, baseType: !4580, size: 64, offset: 4672)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !285, file: !94, line: 749, baseType: !4584, size: 64, offset: 4736)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4586)
!4586 = !{!4587, !4588, !4589}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4585, file: !94, line: 433, baseType: !7, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4585, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4585, file: !94, line: 435, baseType: !388, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !285, file: !94, line: 751, baseType: !259, size: 128, offset: 4800)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !285, file: !94, line: 762, baseType: !4592, size: 64, offset: 4928)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !285, file: !94, line: 770, baseType: !4595, offset: 4992)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4596, line: 5, elements: !268)
!4596 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !285, file: !94, line: 772, baseType: !4598, size: 64, offset: 4992)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4600, line: 18, flags: DIFlagFwdDecl)
!4600 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !285, file: !94, line: 773, baseType: !4602, size: 64, offset: 5056)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4604, line: 41, size: 512, elements: !4605)
!4604 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4605 = !{!4606, !4607, !4701, !4702, !4703, !4704}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4603, file: !4604, line: 42, baseType: !4602, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4603, file: !4604, line: 43, baseType: !4608, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4610)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4604, line: 125, size: 1408, elements: !4611)
!4611 = !{!4612, !4616, !4620, !4626, !4630, !4631, !4636, !4640, !4644, !4648, !4652, !4653, !4657, !4661, !4665, !4676, !4677, !4678, !4679, !4689, !4693, !4697}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4610, file: !4604, line: 126, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!4602, !4602}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4610, file: !4604, line: 127, baseType: !4617, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{null, !4602}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4610, file: !4604, line: 128, baseType: !4621, size: 64, offset: 128)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!747, !4624}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4603)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4610, file: !4604, line: 129, baseType: !4627, size: 64, offset: 192)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!2632, !4624, !4255}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4610, file: !4604, line: 131, baseType: !4621, size: 64, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4610, file: !4604, line: 133, baseType: !4632, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!4635, !4624}
!4635 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4604, line: 132, flags: DIFlagFwdDecl)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4610, file: !4604, line: 134, baseType: !4637, size: 64, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!747, !4624, !292}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4610, file: !4604, line: 136, baseType: !4641, size: 64, offset: 448)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!109, !4624, !292, !7, !171, !385}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4610, file: !4604, line: 141, baseType: !4645, size: 64, offset: 512)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!109, !4624, !292, !1002, !385}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4610, file: !4604, line: 144, baseType: !4649, size: 64, offset: 576)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!292, !4624}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4610, file: !4604, line: 145, baseType: !4649, size: 64, offset: 640)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4610, file: !4604, line: 146, baseType: !4654, size: 64, offset: 704)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!4602, !4624}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4610, file: !4604, line: 148, baseType: !4658, size: 64, offset: 768)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!4602, !4624, !4602}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4610, file: !4604, line: 151, baseType: !4662, size: 64, offset: 832)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!4602, !4624, !292}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4610, file: !4604, line: 153, baseType: !4666, size: 64, offset: 896)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!109, !4624, !292, !292, !7, !7, !4669}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4604, line: 94, size: 640, elements: !4671)
!4671 = !{!4672, !4673, !4674}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4670, file: !4604, line: 95, baseType: !4602, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4670, file: !4604, line: 96, baseType: !7, size: 32, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4670, file: !4604, line: 97, baseType: !4675, size: 512, offset: 128)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 512, elements: !1595)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4610, file: !4604, line: 158, baseType: !4658, size: 64, offset: 960)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4610, file: !4604, line: 161, baseType: !4654, size: 64, offset: 1024)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4610, file: !4604, line: 163, baseType: !4613, size: 64, offset: 1088)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4610, file: !4604, line: 164, baseType: !4680, size: 64, offset: 1152)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!109, !4624, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4604, line: 73, size: 128, elements: !4685)
!4685 = !{!4686, !4687, !4688}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4684, file: !4604, line: 74, baseType: !7, size: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4684, file: !4604, line: 75, baseType: !7, size: 32, offset: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4684, file: !4604, line: 76, baseType: !4624, size: 64, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4610, file: !4604, line: 166, baseType: !4690, size: 64, offset: 1216)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!171, !4602, !109}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4610, file: !4604, line: 167, baseType: !4694, size: 64, offset: 1280)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!109, !4624, !7}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4610, file: !4604, line: 168, baseType: !4698, size: 64, offset: 1344)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!109, !4602}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4603, file: !4604, line: 44, baseType: !284, size: 64, offset: 128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4603, file: !4604, line: 45, baseType: !259, size: 128, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4603, file: !4604, line: 46, baseType: !259, size: 128, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4603, file: !4604, line: 47, baseType: !244, size: 8, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !285, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !285, file: !94, line: 778, baseType: !574, size: 32, offset: 5152)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !285, file: !94, line: 779, baseType: !487, size: 32, offset: 5184)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !285, file: !94, line: 781, baseType: !303, size: 32, offset: 5216)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !285, file: !94, line: 782, baseType: !259, size: 128, offset: 5248)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !285, file: !94, line: 784, baseType: !4711, size: 64, offset: 5376)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4713)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4714, line: 52, size: 768, elements: !4715)
!4714 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4715 = !{!4716, !4717, !4718, !4719, !4720, !4724, !4728, !4729, !4730, !4731, !4735, !4739}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4713, file: !4714, line: 53, baseType: !292, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4713, file: !4714, line: 55, baseType: !390, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4713, file: !4714, line: 56, baseType: !390, size: 64, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4713, file: !4714, line: 58, baseType: !4252, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4713, file: !4714, line: 59, baseType: !4721, size: 64, offset: 256)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!339, !4255, !4261}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4713, file: !4714, line: 61, baseType: !4725, size: 64, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !4711}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4713, file: !4714, line: 62, baseType: !4263, size: 64, offset: 384)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4713, file: !4714, line: 64, baseType: !281, size: 64, offset: 448)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4713, file: !4714, line: 66, baseType: !4092, size: 64, offset: 512)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4713, file: !4714, line: 67, baseType: !4732, size: 64, offset: 576)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!2632, !4255}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4713, file: !4714, line: 69, baseType: !4736, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !4255, !4124, !4125}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4713, file: !4714, line: 71, baseType: !4267, size: 64, offset: 704)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !285, file: !94, line: 785, baseType: !390, size: 64, offset: 5440)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !94, line: 787, baseType: !4263, size: 64, offset: 5504)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !285, file: !94, line: 788, baseType: !4743, size: 64, offset: 5568)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !285, file: !94, line: 789, baseType: !4746, size: 64, offset: 5632)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !285, file: !94, line: 791, baseType: !4749, size: 64, offset: 5696)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4751)
!4751 = !{!4752, !4753, !4754, !4755, !4756}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4750, file: !94, line: 598, baseType: !133, size: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4750, file: !94, line: 599, baseType: !142, size: 32, offset: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4750, file: !94, line: 600, baseType: !147, size: 32, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4750, file: !94, line: 601, baseType: !747, size: 8, offset: 96)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4750, file: !94, line: 602, baseType: !747, size: 8, offset: 104)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !285, file: !94, line: 793, baseType: !152, size: 32, offset: 5760)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !285, file: !94, line: 795, baseType: !747, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !285, file: !94, line: 796, baseType: !747, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !285, file: !94, line: 797, baseType: !747, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !285, file: !94, line: 798, baseType: !747, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !285, file: !94, line: 799, baseType: !747, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !277, file: !278, line: 82, baseType: !4263, size: 64, offset: 64)
!4764 = !{i32 7, !"Dwarf Version", i32 5}
!4765 = !{i32 2, !"Debug Info Version", i32 3}
!4766 = !{i32 1, !"wchar_size", i32 2}
!4767 = !{i32 8, !"cf-protection-branch", i32 1}
!4768 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4769 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4770 = !{i32 1, !"Code Model", i32 2}
!4771 = !{i32 1, !"override-stack-alignment", i32 8}
!4772 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4773 = distinct !DISubprogram(name: "snd_hdac_set_codec_wakeup", scope: !3, file: !3, line: 35, type: !4774, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!109, !4776, !747}
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus", file: !4778, line: 290, size: 10560, elements: !4779)
!4778 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!4779 = !{!4780, !4781, !4847, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4869, !4871, !4872, !4873, !4874, !4875, !4876, !4890, !4891, !4893, !4894, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4984, !4985, !4986, !4987, !4988, !4989, !4990}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4777, file: !4778, line: 291, baseType: !284, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4777, file: !4778, line: 292, baseType: !4782, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4784)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus_ops", file: !4778, line: 242, size: 192, elements: !4785)
!4785 = !{!4786, !4790, !4794}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4784, file: !4778, line: 244, baseType: !4787, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!109, !4776, !7}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "get_response", scope: !4784, file: !4778, line: 246, baseType: !4791, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!109, !4776, !7, !739}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "link_power", scope: !4784, file: !4778, line: 249, baseType: !4795, size: 64, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{null, !4798, !747}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_device", file: !4778, line: 52, size: 7616, elements: !4800)
!4800 = !{!4801, !4802, !4803, !4804, !4805, !4806, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4823, !4824, !4825, !4826, !4827, !4828, !4831, !4834, !4835, !4843, !4844, !4845, !4846}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4799, file: !4778, line: 53, baseType: !285, size: 5824)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4799, file: !4778, line: 54, baseType: !109, size: 32, offset: 5824)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4799, file: !4778, line: 55, baseType: !4776, size: 64, offset: 5888)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4799, file: !4778, line: 56, baseType: !7, size: 32, offset: 5952)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4799, file: !4778, line: 57, baseType: !259, size: 128, offset: 6016)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !4799, file: !4778, line: 59, baseType: !4807, size: 16, offset: 6144)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_nid_t", file: !4778, line: 24, baseType: !254)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mfg", scope: !4799, file: !4778, line: 60, baseType: !4807, size: 16, offset: 6160)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4799, file: !4778, line: 63, baseType: !7, size: 32, offset: 6176)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !4799, file: !4778, line: 64, baseType: !7, size: 32, offset: 6208)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !4799, file: !4778, line: 65, baseType: !7, size: 32, offset: 6240)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "afg_function_id", scope: !4799, file: !4778, line: 66, baseType: !7, size: 32, offset: 6272)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_function_id", scope: !4799, file: !4778, line: 67, baseType: !7, size: 32, offset: 6304)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "afg_unsol", scope: !4799, file: !4778, line: 68, baseType: !7, size: 1, offset: 6336, flags: DIFlagBitField, extraData: i64 6336)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_unsol", scope: !4799, file: !4778, line: 69, baseType: !7, size: 1, offset: 6337, flags: DIFlagBitField, extraData: i64 6336)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "power_caps", scope: !4799, file: !4778, line: 71, baseType: !7, size: 32, offset: 6368)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_name", scope: !4799, file: !4778, line: 73, baseType: !292, size: 64, offset: 6400)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "chip_name", scope: !4799, file: !4778, line: 74, baseType: !292, size: 64, offset: 6464)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "exec_verb", scope: !4799, file: !4778, line: 77, baseType: !4820, size: 64, offset: 6528)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!109, !4798, !7, !7, !739}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !4799, file: !4778, line: 81, baseType: !7, size: 32, offset: 6592)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "start_nid", scope: !4799, file: !4778, line: 82, baseType: !4807, size: 16, offset: 6624)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "end_nid", scope: !4799, file: !4778, line: 82, baseType: !4807, size: 16, offset: 6640)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "in_pm", scope: !4799, file: !4778, line: 85, baseType: !236, size: 32, offset: 6656)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "widget_lock", scope: !4799, file: !4778, line: 88, baseType: !667, size: 256, offset: 6720)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "widgets", scope: !4799, file: !4778, line: 89, baseType: !4829, size: 64, offset: 6976)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_widget_tree", file: !4778, line: 30, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !4799, file: !4778, line: 92, baseType: !4832, size: 64, offset: 7040)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !4778, line: 92, flags: DIFlagFwdDecl)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_lock", scope: !4799, file: !4778, line: 93, baseType: !667, size: 256, offset: 7104)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_verbs", scope: !4799, file: !4778, line: 94, baseType: !4836, size: 192, offset: 7360)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !4778, line: 41, size: 192, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4842}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4836, file: !4778, line: 42, baseType: !7, size: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !4836, file: !4778, line: 43, baseType: !7, size: 32, offset: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4836, file: !4778, line: 44, baseType: !7, size: 32, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !4836, file: !4778, line: 45, baseType: !7, size: 32, offset: 96)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4836, file: !4778, line: 46, baseType: !171, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_cache", scope: !4799, file: !4778, line: 95, baseType: !747, size: 1, offset: 7552, flags: DIFlagBitField, extraData: i64 7552)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "caps_overwriting", scope: !4799, file: !4778, line: 96, baseType: !747, size: 1, offset: 7553, flags: DIFlagBitField, extraData: i64 7552)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "cache_coef", scope: !4799, file: !4778, line: 97, baseType: !747, size: 1, offset: 7554, flags: DIFlagBitField, extraData: i64 7552)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4799, file: !4778, line: 98, baseType: !7, size: 1, offset: 7555, flags: DIFlagBitField, extraData: i64 7552)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ops", scope: !4777, file: !4778, line: 293, baseType: !4848, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4850)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_ext_bus_ops", file: !4778, line: 255, size: 128, elements: !4851)
!4851 = !{!4852, !4856}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_attach", scope: !4850, file: !4778, line: 256, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!109, !4798}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_detach", scope: !4850, file: !4778, line: 257, baseType: !4853, size: 64, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4777, file: !4778, line: 296, baseType: !388, size: 64, offset: 192)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "remap_addr", scope: !4777, file: !4778, line: 297, baseType: !171, size: 64, offset: 256)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4777, file: !4778, line: 298, baseType: !109, size: 32, offset: 320)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "ppcap", scope: !4777, file: !4778, line: 300, baseType: !171, size: 64, offset: 384)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "spbcap", scope: !4777, file: !4778, line: 301, baseType: !171, size: 64, offset: 448)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "mlcap", scope: !4777, file: !4778, line: 302, baseType: !171, size: 64, offset: 512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "gtscap", scope: !4777, file: !4778, line: 303, baseType: !171, size: 64, offset: 576)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "drsmcap", scope: !4777, file: !4778, line: 304, baseType: !171, size: 64, offset: 640)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "codec_list", scope: !4777, file: !4778, line: 307, baseType: !259, size: 128, offset: 704)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "num_codecs", scope: !4777, file: !4778, line: 308, baseType: !7, size: 32, offset: 832)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "caddr_tbl", scope: !4777, file: !4778, line: 311, baseType: !4868, size: 1024, offset: 896)
!4868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4798, size: 1024, elements: !2815)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_queue", scope: !4777, file: !4778, line: 314, baseType: !4870, size: 4096, offset: 1920)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 4096, elements: !4328)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_rp", scope: !4777, file: !4778, line: 315, baseType: !7, size: 32, offset: 6016)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_wp", scope: !4777, file: !4778, line: 315, baseType: !7, size: 32, offset: 6048)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_work", scope: !4777, file: !4778, line: 316, baseType: !927, size: 256, offset: 6080)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "codec_mask", scope: !4777, file: !4778, line: 319, baseType: !388, size: 64, offset: 6336)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "codec_powered", scope: !4777, file: !4778, line: 322, baseType: !388, size: 64, offset: 6400)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "corb", scope: !4777, file: !4778, line: 325, baseType: !4877, size: 704, offset: 6464)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_rb", file: !4778, line: 268, size: 704, elements: !4878)
!4878 = !{!4879, !4882, !4884, !4885, !4886, !4888}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4877, file: !4778, line: 269, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2150, line: 38, baseType: !488)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4877, file: !4778, line: 270, baseType: !4883, size: 64, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !173, line: 149, baseType: !491)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4877, file: !4778, line: 271, baseType: !256, size: 16, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4877, file: !4778, line: 271, baseType: !256, size: 16, offset: 144)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4877, file: !4778, line: 272, baseType: !4887, size: 256, offset: 160)
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1595)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4877, file: !4778, line: 273, baseType: !4889, size: 256, offset: 416)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 256, elements: !1595)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "rirb", scope: !4777, file: !4778, line: 326, baseType: !4877, size: 704, offset: 7168)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !4777, file: !4778, line: 327, baseType: !4892, size: 256, offset: 7872)
!4892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !1595)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "rirb_wq", scope: !4777, file: !4778, line: 328, baseType: !1418, size: 192, offset: 8128)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4777, file: !4778, line: 331, baseType: !4895, size: 448, offset: 8320)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !4896, line: 60, size: 448, elements: !4897)
!4896 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!4897 = !{!4898, !4905, !4907, !4908, !4909}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4895, file: !4896, line: 61, baseType: !4899, size: 192)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !4896, line: 22, size: 192, elements: !4900)
!4900 = !{!4901, !4902, !4903, !4904}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4899, file: !4896, line: 23, baseType: !109, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4899, file: !4896, line: 24, baseType: !158, size: 32, offset: 32)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !4899, file: !4896, line: 25, baseType: !747, size: 8, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4899, file: !4896, line: 26, baseType: !284, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !4895, file: !4896, line: 62, baseType: !4906, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4895, file: !4896, line: 63, baseType: !4883, size: 64, offset: 256)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4895, file: !4896, line: 64, baseType: !385, size: 64, offset: 320)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4895, file: !4896, line: 65, baseType: !171, size: 64, offset: 384)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !4777, file: !4778, line: 332, baseType: !4895, size: 448, offset: 8768)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !4777, file: !4778, line: 333, baseType: !109, size: 32, offset: 9216)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "stream_list", scope: !4777, file: !4778, line: 336, baseType: !259, size: 128, offset: 9280)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "chip_init", scope: !4777, file: !4778, line: 339, baseType: !747, size: 1, offset: 9408, flags: DIFlagBitField, extraData: i64 9408)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_mmio", scope: !4777, file: !4778, line: 342, baseType: !747, size: 1, offset: 9409, flags: DIFlagBitField, extraData: i64 9408)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !4777, file: !4778, line: 343, baseType: !747, size: 1, offset: 9410, flags: DIFlagBitField, extraData: i64 9408)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "use_posbuf", scope: !4777, file: !4778, line: 344, baseType: !747, size: 1, offset: 9411, flags: DIFlagBitField, extraData: i64 9408)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "snoop", scope: !4777, file: !4778, line: 345, baseType: !747, size: 1, offset: 9412, flags: DIFlagBitField, extraData: i64 9408)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "align_bdle_4k", scope: !4777, file: !4778, line: 346, baseType: !747, size: 1, offset: 9413, flags: DIFlagBitField, extraData: i64 9408)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_assign", scope: !4777, file: !4778, line: 347, baseType: !747, size: 1, offset: 9414, flags: DIFlagBitField, extraData: i64 9408)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "corbrp_self_clear", scope: !4777, file: !4778, line: 348, baseType: !747, size: 1, offset: 9415, flags: DIFlagBitField, extraData: i64 9408)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "polling_mode", scope: !4777, file: !4778, line: 349, baseType: !747, size: 1, offset: 9416, flags: DIFlagBitField, extraData: i64 9408)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "needs_damn_long_delay", scope: !4777, file: !4778, line: 350, baseType: !747, size: 1, offset: 9417, flags: DIFlagBitField, extraData: i64 9408)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "not_use_interrupts", scope: !4777, file: !4778, line: 351, baseType: !747, size: 1, offset: 9418, flags: DIFlagBitField, extraData: i64 9408)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "access_sdnctl_in_dword", scope: !4777, file: !4778, line: 352, baseType: !747, size: 1, offset: 9419, flags: DIFlagBitField, extraData: i64 9408)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "poll_count", scope: !4777, file: !4778, line: 354, baseType: !109, size: 32, offset: 9440)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "bdl_pos_adj", scope: !4777, file: !4778, line: 356, baseType: !109, size: 32, offset: 9472)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop_delay", scope: !4777, file: !4778, line: 359, baseType: !7, size: 32, offset: 9504)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "reg_lock", scope: !4777, file: !4778, line: 362, baseType: !303, size: 32, offset: 9536)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4777, file: !4778, line: 363, baseType: !667, size: 256, offset: 9600)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4777, file: !4778, line: 364, baseType: !667, size: 256, offset: 9856)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "audio_component", scope: !4777, file: !4778, line: 367, baseType: !4932, size: 64, offset: 10112)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component", file: !4934, line: 110, size: 448, elements: !4935)
!4934 = !DIFile(filename: "./include/drm/drm_audio_component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5876290eae632618019af7818f71dd5e")
!4935 = !{!4936, !4937, !4961, !4983}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4933, file: !4934, line: 114, baseType: !284, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4933, file: !4934, line: 118, baseType: !4938, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_ops", file: !4934, line: 16, size: 448, elements: !4941)
!4941 = !{!4942, !4943, !4947, !4951, !4952, !4953, !4957}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4940, file: !4934, line: 20, baseType: !608, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4940, file: !4934, line: 29, baseType: !4944, size: 64, offset: 64)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!388, !284}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "put_power", scope: !4940, file: !4934, line: 35, baseType: !4948, size: 64, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{null, !284, !388}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "codec_wake_override", scope: !4940, file: !4934, line: 39, baseType: !4555, size: 64, offset: 192)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "get_cdclk_freq", scope: !4940, file: !4934, line: 43, baseType: !281, size: 64, offset: 256)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "sync_audio_rate", scope: !4940, file: !4934, line: 50, baseType: !4954, size: 64, offset: 320)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!109, !284, !109, !109, !109}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "get_eld", scope: !4940, file: !4934, line: 63, baseType: !4958, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!109, !284, !109, !109, !4052, !4906, !109}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ops", scope: !4933, file: !4934, line: 122, baseType: !4962, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4964)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_audio_ops", file: !4934, line: 70, size: 320, elements: !4965)
!4965 = !{!4966, !4967, !4971, !4975, !4979}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ptr", scope: !4964, file: !4934, line: 74, baseType: !171, size: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pin_eld_notify", scope: !4964, file: !4934, line: 83, baseType: !4968, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{null, !171, !109, !109}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "pin2port", scope: !4964, file: !4934, line: 90, baseType: !4972, size: 64, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!109, !171, !109}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind", scope: !4964, file: !4934, line: 97, baseType: !4976, size: 64, offset: 192)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!109, !284, !4932}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "master_unbind", scope: !4964, file: !4934, line: 104, baseType: !4980, size: 64, offset: 256)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !284, !4932}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind_complete", scope: !4933, file: !4934, line: 126, baseType: !215, size: 256, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_status", scope: !4777, file: !4778, line: 368, baseType: !179, size: 64, offset: 10176)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_active", scope: !4777, file: !4778, line: 369, baseType: !388, size: 64, offset: 10240)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !4777, file: !4778, line: 372, baseType: !109, size: 32, offset: 10304)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4777, file: !4778, line: 373, baseType: !109, size: 32, offset: 10336)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "hlink_list", scope: !4777, file: !4778, line: 376, baseType: !259, size: 128, offset: 10368)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_dma_state", scope: !4777, file: !4778, line: 377, baseType: !747, size: 8, offset: 10496)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "sdo_limit", scope: !4777, file: !4778, line: 380, baseType: !7, size: 32, offset: 10528)
!4991 = !{!4992, !4993, !4994}
!4992 = !DILocalVariable(name: "bus", arg: 1, scope: !4773, file: !3, line: 35, type: !4776)
!4993 = !DILocalVariable(name: "enable", arg: 2, scope: !4773, file: !3, line: 35, type: !747)
!4994 = !DILocalVariable(name: "acomp", scope: !4773, file: !3, line: 37, type: !4932)
!4995 = !DILocation(line: 35, column: 48, scope: !4773)
!4996 = !DILocation(line: 35, column: 58, scope: !4773)
!4997 = !DILocation(line: 37, column: 2, scope: !4773)
!4998 = !DILocation(line: 37, column: 30, scope: !4773)
!4999 = !DILocation(line: 37, column: 38, scope: !4773)
!5000 = !DILocation(line: 37, column: 43, scope: !4773)
!5001 = !DILocation(line: 39, column: 7, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 39, column: 6)
!5003 = !DILocation(line: 39, column: 13, scope: !5002)
!5004 = !DILocation(line: 39, column: 17, scope: !5002)
!5005 = !DILocation(line: 39, column: 24, scope: !5002)
!5006 = !DILocation(line: 39, column: 6, scope: !4773)
!5007 = !DILocation(line: 40, column: 3, scope: !5002)
!5008 = !DILocation(line: 42, column: 7, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 42, column: 6)
!5010 = !DILocation(line: 42, column: 14, scope: !5009)
!5011 = !DILocation(line: 42, column: 19, scope: !5009)
!5012 = !DILocation(line: 42, column: 6, scope: !4773)
!5013 = !DILocation(line: 43, column: 3, scope: !5009)
!5014 = !DILocation(line: 48, column: 2, scope: !4773)
!5015 = !DILocation(line: 48, column: 9, scope: !4773)
!5016 = !DILocation(line: 48, column: 14, scope: !4773)
!5017 = !DILocation(line: 48, column: 34, scope: !4773)
!5018 = !DILocation(line: 48, column: 41, scope: !4773)
!5019 = !DILocation(line: 48, column: 46, scope: !4773)
!5020 = !{i8 0, i8 2}
!5021 = !DILocation(line: 50, column: 2, scope: !4773)
!5022 = !DILocation(line: 51, column: 1, scope: !4773)
!5023 = distinct !DISubprogram(name: "snd_hdac_display_power", scope: !3, file: !3, line: 66, type: !5024, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5026)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !4776, !7, !747}
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5036, !5040}
!5027 = !DILocalVariable(name: "bus", arg: 1, scope: !5023, file: !3, line: 66, type: !4776)
!5028 = !DILocalVariable(name: "idx", arg: 2, scope: !5023, file: !3, line: 66, type: !7)
!5029 = !DILocalVariable(name: "enable", arg: 3, scope: !5023, file: !3, line: 66, type: !747)
!5030 = !DILocalVariable(name: "acomp", scope: !5023, file: !3, line: 68, type: !4932)
!5031 = !DILocalVariable(name: "cookie", scope: !5032, file: !3, line: 84, type: !388)
!5032 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 83, column: 35)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 83, column: 7)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 82, column: 33)
!5035 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 82, column: 6)
!5036 = !DILocalVariable(name: "cookie", scope: !5037, file: !3, line: 95, type: !388)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 94, column: 34)
!5038 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 94, column: 7)
!5039 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 93, column: 9)
!5040 = !DILabel(scope: !5023, name: "unlock", file: !3, line: 103)
!5041 = !DILocation(line: 66, column: 46, scope: !5023)
!5042 = !DILocation(line: 66, column: 64, scope: !5023)
!5043 = !DILocation(line: 66, column: 74, scope: !5023)
!5044 = !DILocation(line: 68, column: 2, scope: !5023)
!5045 = !DILocation(line: 68, column: 30, scope: !5023)
!5046 = !DILocation(line: 68, column: 38, scope: !5023)
!5047 = !DILocation(line: 68, column: 43, scope: !5023)
!5048 = !DILocation(line: 73, column: 14, scope: !5023)
!5049 = !DILocation(line: 73, column: 19, scope: !5023)
!5050 = !DILocation(line: 73, column: 2, scope: !5023)
!5051 = !DILocation(line: 74, column: 6, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 74, column: 6)
!5053 = !DILocation(line: 74, column: 6, scope: !5023)
!5054 = !DILocation(line: 75, column: 11, scope: !5052)
!5055 = !DILocation(line: 75, column: 17, scope: !5052)
!5056 = !DILocation(line: 75, column: 22, scope: !5052)
!5057 = !DILocation(line: 75, column: 3, scope: !5052)
!5058 = !DILocation(line: 77, column: 13, scope: !5052)
!5059 = !DILocation(line: 77, column: 19, scope: !5052)
!5060 = !DILocation(line: 77, column: 24, scope: !5052)
!5061 = !DILocation(line: 77, column: 3, scope: !5052)
!5062 = !DILocation(line: 79, column: 7, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 79, column: 6)
!5064 = !DILocation(line: 79, column: 13, scope: !5063)
!5065 = !DILocation(line: 79, column: 17, scope: !5063)
!5066 = !DILocation(line: 79, column: 24, scope: !5063)
!5067 = !DILocation(line: 79, column: 6, scope: !5023)
!5068 = !DILocation(line: 80, column: 3, scope: !5063)
!5069 = !DILocation(line: 82, column: 6, scope: !5035)
!5070 = !DILocation(line: 82, column: 11, scope: !5035)
!5071 = !DILocation(line: 82, column: 6, scope: !5023)
!5072 = !DILocation(line: 83, column: 8, scope: !5033)
!5073 = !DILocation(line: 83, column: 13, scope: !5033)
!5074 = !DILocation(line: 83, column: 7, scope: !5034)
!5075 = !DILocation(line: 84, column: 4, scope: !5032)
!5076 = !DILocation(line: 84, column: 18, scope: !5032)
!5077 = !DILocation(line: 86, column: 8, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 86, column: 8)
!5079 = !DILocation(line: 86, column: 15, scope: !5078)
!5080 = !DILocation(line: 86, column: 20, scope: !5078)
!5081 = !DILocation(line: 86, column: 8, scope: !5032)
!5082 = !DILocation(line: 87, column: 14, scope: !5078)
!5083 = !DILocation(line: 87, column: 21, scope: !5078)
!5084 = !DILocation(line: 87, column: 26, scope: !5078)
!5085 = !DILocation(line: 87, column: 36, scope: !5078)
!5086 = !DILocation(line: 87, column: 43, scope: !5078)
!5087 = !DILocation(line: 87, column: 12, scope: !5078)
!5088 = !DILocation(line: 87, column: 5, scope: !5078)
!5089 = !DILocation(line: 89, column: 30, scope: !5032)
!5090 = !DILocation(line: 89, column: 4, scope: !5032)
!5091 = !DILocation(line: 90, column: 30, scope: !5032)
!5092 = !DILocation(line: 90, column: 4, scope: !5032)
!5093 = !DILocation(line: 91, column: 32, scope: !5032)
!5094 = !DILocation(line: 91, column: 4, scope: !5032)
!5095 = !DILocation(line: 91, column: 9, scope: !5032)
!5096 = !DILocation(line: 91, column: 30, scope: !5032)
!5097 = !DILocation(line: 92, column: 3, scope: !5033)
!5098 = !DILocation(line: 92, column: 3, scope: !5032)
!5099 = !DILocation(line: 93, column: 2, scope: !5034)
!5100 = !DILocation(line: 94, column: 7, scope: !5038)
!5101 = !DILocation(line: 94, column: 12, scope: !5038)
!5102 = !DILocation(line: 94, column: 7, scope: !5039)
!5103 = !DILocation(line: 95, column: 4, scope: !5037)
!5104 = !DILocation(line: 95, column: 18, scope: !5037)
!5105 = !DILocation(line: 95, column: 27, scope: !5037)
!5106 = !DILocation(line: 95, column: 32, scope: !5037)
!5107 = !DILocation(line: 97, column: 8, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 97, column: 8)
!5109 = !DILocation(line: 97, column: 15, scope: !5108)
!5110 = !DILocation(line: 97, column: 20, scope: !5108)
!5111 = !DILocation(line: 97, column: 8, scope: !5037)
!5112 = !DILocation(line: 98, column: 5, scope: !5108)
!5113 = !DILocation(line: 98, column: 12, scope: !5108)
!5114 = !DILocation(line: 98, column: 17, scope: !5108)
!5115 = !DILocation(line: 98, column: 27, scope: !5108)
!5116 = !DILocation(line: 98, column: 34, scope: !5108)
!5117 = !DILocation(line: 98, column: 39, scope: !5108)
!5118 = !DILocation(line: 100, column: 4, scope: !5037)
!5119 = !DILocation(line: 100, column: 9, scope: !5037)
!5120 = !DILocation(line: 100, column: 30, scope: !5037)
!5121 = !DILocation(line: 101, column: 3, scope: !5038)
!5122 = !DILocation(line: 101, column: 3, scope: !5037)
!5123 = !DILocation(line: 103, column: 2, scope: !5023)
!5124 = !DILocation(line: 104, column: 16, scope: !5023)
!5125 = !DILocation(line: 104, column: 21, scope: !5023)
!5126 = !DILocation(line: 104, column: 2, scope: !5023)
!5127 = !DILocation(line: 105, column: 1, scope: !5023)
!5128 = !DISubprogram(name: "mutex_lock", scope: !668, file: !668, line: 227, type: !5129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{null, !5131}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!5132 = distinct !DISubprogram(name: "set_bit", scope: !5133, file: !5133, line: 26, type: !5134, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5138)
!5133 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5134 = !DISubroutineType(types: !5135)
!5135 = !{null, !179, !5136}
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !388)
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "nr", arg: 1, scope: !5132, file: !5133, line: 26, type: !179)
!5140 = !DILocalVariable(name: "addr", arg: 2, scope: !5132, file: !5133, line: 26, type: !5136)
!5141 = !DILocation(line: 26, column: 42, scope: !5132)
!5142 = !DILocation(line: 26, column: 70, scope: !5132)
!5143 = !DILocation(line: 28, column: 26, scope: !5132)
!5144 = !DILocation(line: 28, column: 33, scope: !5132)
!5145 = !DILocation(line: 28, column: 31, scope: !5132)
!5146 = !DILocation(line: 28, column: 2, scope: !5132)
!5147 = !DILocation(line: 29, column: 15, scope: !5132)
!5148 = !DILocation(line: 29, column: 19, scope: !5132)
!5149 = !DILocation(line: 29, column: 2, scope: !5132)
!5150 = !DILocation(line: 30, column: 1, scope: !5132)
!5151 = distinct !DISubprogram(name: "clear_bit", scope: !5133, file: !5133, line: 39, type: !5134, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5152 = !{!5153, !5154}
!5153 = !DILocalVariable(name: "nr", arg: 1, scope: !5151, file: !5133, line: 39, type: !179)
!5154 = !DILocalVariable(name: "addr", arg: 2, scope: !5151, file: !5133, line: 39, type: !5136)
!5155 = !DILocation(line: 39, column: 44, scope: !5151)
!5156 = !DILocation(line: 39, column: 72, scope: !5151)
!5157 = !DILocation(line: 41, column: 26, scope: !5151)
!5158 = !DILocation(line: 41, column: 33, scope: !5151)
!5159 = !DILocation(line: 41, column: 31, scope: !5151)
!5160 = !DILocation(line: 41, column: 2, scope: !5151)
!5161 = !DILocation(line: 42, column: 17, scope: !5151)
!5162 = !DILocation(line: 42, column: 21, scope: !5151)
!5163 = !DILocation(line: 42, column: 2, scope: !5151)
!5164 = !DILocation(line: 43, column: 1, scope: !5151)
!5165 = !DISubprogram(name: "mutex_unlock", scope: !668, file: !668, line: 246, type: !5129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5166 = distinct !DISubprogram(name: "snd_hdac_sync_audio_rate", scope: !3, file: !3, line: 121, type: !5167, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!109, !4798, !4807, !109, !109}
!5169 = !{!5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177}
!5170 = !DILocalVariable(name: "codec", arg: 1, scope: !5166, file: !3, line: 121, type: !4798)
!5171 = !DILocalVariable(name: "nid", arg: 2, scope: !5166, file: !3, line: 121, type: !4807)
!5172 = !DILocalVariable(name: "dev_id", arg: 3, scope: !5166, file: !3, line: 122, type: !109)
!5173 = !DILocalVariable(name: "rate", arg: 4, scope: !5166, file: !3, line: 122, type: !109)
!5174 = !DILocalVariable(name: "bus", scope: !5166, file: !3, line: 124, type: !4776)
!5175 = !DILocalVariable(name: "acomp", scope: !5166, file: !3, line: 125, type: !4932)
!5176 = !DILocalVariable(name: "port", scope: !5166, file: !3, line: 126, type: !109)
!5177 = !DILocalVariable(name: "pipe", scope: !5166, file: !3, line: 126, type: !109)
!5178 = !DILocation(line: 121, column: 50, scope: !5166)
!5179 = !DILocation(line: 121, column: 67, scope: !5166)
!5180 = !DILocation(line: 122, column: 13, scope: !5166)
!5181 = !DILocation(line: 122, column: 25, scope: !5166)
!5182 = !DILocation(line: 124, column: 2, scope: !5166)
!5183 = !DILocation(line: 124, column: 19, scope: !5166)
!5184 = !DILocation(line: 124, column: 25, scope: !5166)
!5185 = !DILocation(line: 124, column: 32, scope: !5166)
!5186 = !DILocation(line: 125, column: 2, scope: !5166)
!5187 = !DILocation(line: 125, column: 30, scope: !5166)
!5188 = !DILocation(line: 125, column: 38, scope: !5166)
!5189 = !DILocation(line: 125, column: 43, scope: !5166)
!5190 = !DILocation(line: 126, column: 2, scope: !5166)
!5191 = !DILocation(line: 126, column: 6, scope: !5166)
!5192 = !DILocation(line: 126, column: 12, scope: !5166)
!5193 = !DILocation(line: 128, column: 7, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 128, column: 6)
!5195 = !DILocation(line: 128, column: 13, scope: !5194)
!5196 = !DILocation(line: 128, column: 17, scope: !5194)
!5197 = !DILocation(line: 128, column: 24, scope: !5194)
!5198 = !DILocation(line: 128, column: 28, scope: !5194)
!5199 = !DILocation(line: 128, column: 32, scope: !5194)
!5200 = !DILocation(line: 128, column: 39, scope: !5194)
!5201 = !DILocation(line: 128, column: 44, scope: !5194)
!5202 = !DILocation(line: 128, column: 6, scope: !5166)
!5203 = !DILocation(line: 129, column: 3, scope: !5194)
!5204 = !DILocation(line: 130, column: 9, scope: !5166)
!5205 = !DILocation(line: 130, column: 7, scope: !5166)
!5206 = !DILocation(line: 131, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 131, column: 6)
!5208 = !DILocation(line: 131, column: 13, scope: !5207)
!5209 = !DILocation(line: 131, column: 23, scope: !5207)
!5210 = !DILocation(line: 131, column: 26, scope: !5207)
!5211 = !DILocation(line: 131, column: 33, scope: !5207)
!5212 = !DILocation(line: 131, column: 44, scope: !5207)
!5213 = !DILocation(line: 131, column: 6, scope: !5166)
!5214 = !DILocation(line: 132, column: 10, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 131, column: 54)
!5216 = !DILocation(line: 132, column: 17, scope: !5215)
!5217 = !DILocation(line: 132, column: 28, scope: !5215)
!5218 = !DILocation(line: 132, column: 37, scope: !5215)
!5219 = !DILocation(line: 132, column: 44, scope: !5215)
!5220 = !DILocation(line: 132, column: 8, scope: !5215)
!5221 = !DILocation(line: 133, column: 7, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 133, column: 7)
!5223 = !DILocation(line: 133, column: 12, scope: !5222)
!5224 = !DILocation(line: 133, column: 7, scope: !5215)
!5225 = !DILocation(line: 134, column: 4, scope: !5222)
!5226 = !DILocation(line: 135, column: 2, scope: !5215)
!5227 = !DILocation(line: 136, column: 9, scope: !5166)
!5228 = !DILocation(line: 136, column: 7, scope: !5166)
!5229 = !DILocation(line: 137, column: 9, scope: !5166)
!5230 = !DILocation(line: 137, column: 16, scope: !5166)
!5231 = !DILocation(line: 137, column: 21, scope: !5166)
!5232 = !DILocation(line: 137, column: 37, scope: !5166)
!5233 = !DILocation(line: 137, column: 44, scope: !5166)
!5234 = !DILocation(line: 137, column: 49, scope: !5166)
!5235 = !DILocation(line: 137, column: 55, scope: !5166)
!5236 = !DILocation(line: 137, column: 61, scope: !5166)
!5237 = !DILocation(line: 137, column: 2, scope: !5166)
!5238 = !DILocation(line: 138, column: 1, scope: !5166)
!5239 = distinct !DISubprogram(name: "snd_hdac_acomp_get_eld", scope: !3, file: !3, line: 162, type: !5240, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5242)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!109, !4798, !4807, !109, !4052, !339, !109}
!5242 = !{!5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252}
!5243 = !DILocalVariable(name: "codec", arg: 1, scope: !5239, file: !3, line: 162, type: !4798)
!5244 = !DILocalVariable(name: "nid", arg: 2, scope: !5239, file: !3, line: 162, type: !4807)
!5245 = !DILocalVariable(name: "dev_id", arg: 3, scope: !5239, file: !3, line: 162, type: !109)
!5246 = !DILocalVariable(name: "audio_enabled", arg: 4, scope: !5239, file: !3, line: 163, type: !4052)
!5247 = !DILocalVariable(name: "buffer", arg: 5, scope: !5239, file: !3, line: 163, type: !339)
!5248 = !DILocalVariable(name: "max_bytes", arg: 6, scope: !5239, file: !3, line: 163, type: !109)
!5249 = !DILocalVariable(name: "bus", scope: !5239, file: !3, line: 165, type: !4776)
!5250 = !DILocalVariable(name: "acomp", scope: !5239, file: !3, line: 166, type: !4932)
!5251 = !DILocalVariable(name: "port", scope: !5239, file: !3, line: 167, type: !109)
!5252 = !DILocalVariable(name: "pipe", scope: !5239, file: !3, line: 167, type: !109)
!5253 = !DILocation(line: 162, column: 48, scope: !5239)
!5254 = !DILocation(line: 162, column: 65, scope: !5239)
!5255 = !DILocation(line: 162, column: 74, scope: !5239)
!5256 = !DILocation(line: 163, column: 13, scope: !5239)
!5257 = !DILocation(line: 163, column: 34, scope: !5239)
!5258 = !DILocation(line: 163, column: 46, scope: !5239)
!5259 = !DILocation(line: 165, column: 2, scope: !5239)
!5260 = !DILocation(line: 165, column: 19, scope: !5239)
!5261 = !DILocation(line: 165, column: 25, scope: !5239)
!5262 = !DILocation(line: 165, column: 32, scope: !5239)
!5263 = !DILocation(line: 166, column: 2, scope: !5239)
!5264 = !DILocation(line: 166, column: 30, scope: !5239)
!5265 = !DILocation(line: 166, column: 38, scope: !5239)
!5266 = !DILocation(line: 166, column: 43, scope: !5239)
!5267 = !DILocation(line: 167, column: 2, scope: !5239)
!5268 = !DILocation(line: 167, column: 6, scope: !5239)
!5269 = !DILocation(line: 167, column: 12, scope: !5239)
!5270 = !DILocation(line: 169, column: 7, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 169, column: 6)
!5272 = !DILocation(line: 169, column: 13, scope: !5271)
!5273 = !DILocation(line: 169, column: 17, scope: !5271)
!5274 = !DILocation(line: 169, column: 24, scope: !5271)
!5275 = !DILocation(line: 169, column: 28, scope: !5271)
!5276 = !DILocation(line: 169, column: 32, scope: !5271)
!5277 = !DILocation(line: 169, column: 39, scope: !5271)
!5278 = !DILocation(line: 169, column: 44, scope: !5271)
!5279 = !DILocation(line: 169, column: 6, scope: !5239)
!5280 = !DILocation(line: 170, column: 3, scope: !5271)
!5281 = !DILocation(line: 172, column: 9, scope: !5239)
!5282 = !DILocation(line: 172, column: 7, scope: !5239)
!5283 = !DILocation(line: 173, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 173, column: 6)
!5285 = !DILocation(line: 173, column: 13, scope: !5284)
!5286 = !DILocation(line: 173, column: 23, scope: !5284)
!5287 = !DILocation(line: 173, column: 26, scope: !5284)
!5288 = !DILocation(line: 173, column: 33, scope: !5284)
!5289 = !DILocation(line: 173, column: 44, scope: !5284)
!5290 = !DILocation(line: 173, column: 6, scope: !5239)
!5291 = !DILocation(line: 174, column: 10, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 173, column: 54)
!5293 = !DILocation(line: 174, column: 17, scope: !5292)
!5294 = !DILocation(line: 174, column: 28, scope: !5292)
!5295 = !DILocation(line: 174, column: 37, scope: !5292)
!5296 = !DILocation(line: 174, column: 44, scope: !5292)
!5297 = !DILocation(line: 174, column: 8, scope: !5292)
!5298 = !DILocation(line: 175, column: 7, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 175, column: 7)
!5300 = !DILocation(line: 175, column: 12, scope: !5299)
!5301 = !DILocation(line: 175, column: 7, scope: !5292)
!5302 = !DILocation(line: 176, column: 4, scope: !5299)
!5303 = !DILocation(line: 177, column: 2, scope: !5292)
!5304 = !DILocation(line: 178, column: 9, scope: !5239)
!5305 = !DILocation(line: 178, column: 7, scope: !5239)
!5306 = !DILocation(line: 179, column: 9, scope: !5239)
!5307 = !DILocation(line: 179, column: 16, scope: !5239)
!5308 = !DILocation(line: 179, column: 21, scope: !5239)
!5309 = !DILocation(line: 179, column: 29, scope: !5239)
!5310 = !DILocation(line: 179, column: 36, scope: !5239)
!5311 = !DILocation(line: 179, column: 41, scope: !5239)
!5312 = !DILocation(line: 179, column: 47, scope: !5239)
!5313 = !DILocation(line: 179, column: 53, scope: !5239)
!5314 = !DILocation(line: 180, column: 8, scope: !5239)
!5315 = !DILocation(line: 180, column: 16, scope: !5239)
!5316 = !DILocation(line: 179, column: 2, scope: !5239)
!5317 = !DILocation(line: 181, column: 1, scope: !5239)
!5318 = distinct !DISubprogram(name: "snd_hdac_acomp_register_notifier", scope: !3, file: !3, line: 253, type: !5319, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5321)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{!109, !4776, !4962}
!5321 = !{!5322, !5323}
!5322 = !DILocalVariable(name: "bus", arg: 1, scope: !5318, file: !3, line: 253, type: !4776)
!5323 = !DILocalVariable(name: "aops", arg: 2, scope: !5318, file: !3, line: 254, type: !4962)
!5324 = !DILocation(line: 253, column: 55, scope: !5318)
!5325 = !DILocation(line: 254, column: 53, scope: !5318)
!5326 = !DILocation(line: 256, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 256, column: 6)
!5328 = !DILocation(line: 256, column: 12, scope: !5327)
!5329 = !DILocation(line: 256, column: 6, scope: !5318)
!5330 = !DILocation(line: 257, column: 3, scope: !5327)
!5331 = !DILocation(line: 259, column: 36, scope: !5318)
!5332 = !DILocation(line: 259, column: 2, scope: !5318)
!5333 = !DILocation(line: 259, column: 7, scope: !5318)
!5334 = !DILocation(line: 259, column: 24, scope: !5318)
!5335 = !DILocation(line: 259, column: 34, scope: !5318)
!5336 = !DILocation(line: 260, column: 2, scope: !5318)
!5337 = !DILocation(line: 261, column: 1, scope: !5318)
!5338 = distinct !DISubprogram(name: "snd_hdac_acomp_init", scope: !3, file: !3, line: 283, type: !5339, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!109, !4776, !4962, !5341, !385}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{!109, !284, !109, !171}
!5344 = !{!5345, !5346, !5347, !5348, !5349, !5352, !5353, !5354, !5355, !5358, !5361}
!5345 = !DILocalVariable(name: "bus", arg: 1, scope: !5338, file: !3, line: 283, type: !4776)
!5346 = !DILocalVariable(name: "aops", arg: 2, scope: !5338, file: !3, line: 284, type: !4962)
!5347 = !DILocalVariable(name: "match_master", arg: 3, scope: !5338, file: !3, line: 285, type: !5341)
!5348 = !DILocalVariable(name: "extra_size", arg: 4, scope: !5338, file: !3, line: 286, type: !385)
!5349 = !DILocalVariable(name: "match", scope: !5338, file: !3, line: 288, type: !5350)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DICompositeType(tag: DW_TAG_structure_type, name: "component_match", file: !278, line: 94, flags: DIFlagFwdDecl)
!5352 = !DILocalVariable(name: "dev", scope: !5338, file: !3, line: 289, type: !284)
!5353 = !DILocalVariable(name: "acomp", scope: !5338, file: !3, line: 290, type: !4932)
!5354 = !DILocalVariable(name: "ret", scope: !5338, file: !3, line: 291, type: !109)
!5355 = !DILocalVariable(name: "__ret_warn_on", scope: !5356, file: !3, line: 293, type: !109)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 293, column: 6)
!5357 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 293, column: 6)
!5358 = !DILocalVariable(name: "__flags", scope: !5359, file: !3, line: 293, type: !109)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 293, column: 6)
!5360 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 293, column: 6)
!5361 = !DILabel(scope: !5338, name: "out_err", file: !3, line: 313)
!5362 = !DILocation(line: 283, column: 42, scope: !5338)
!5363 = !DILocation(line: 284, column: 48, scope: !5338)
!5364 = !DILocation(line: 285, column: 10, scope: !5338)
!5365 = !DILocation(line: 286, column: 11, scope: !5338)
!5366 = !DILocation(line: 288, column: 2, scope: !5338)
!5367 = !DILocation(line: 288, column: 26, scope: !5338)
!5368 = !DILocation(line: 289, column: 2, scope: !5338)
!5369 = !DILocation(line: 289, column: 17, scope: !5338)
!5370 = !DILocation(line: 289, column: 23, scope: !5338)
!5371 = !DILocation(line: 289, column: 28, scope: !5338)
!5372 = !DILocation(line: 290, column: 2, scope: !5338)
!5373 = !DILocation(line: 290, column: 30, scope: !5338)
!5374 = !DILocation(line: 291, column: 2, scope: !5338)
!5375 = !DILocation(line: 291, column: 6, scope: !5338)
!5376 = !DILocation(line: 293, column: 6, scope: !5356)
!5377 = !DILocation(line: 293, column: 6, scope: !5360)
!5378 = !DILocation(line: 293, column: 6, scope: !5359)
!5379 = !DILocation(line: 293, column: 6, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 293, column: 6)
!5381 = !DILocation(line: 293, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 293, column: 6)
!5383 = !{i64 2155359427, i64 2155359456, i64 2155359502, i64 2155359560, i64 2155359614, i64 2155359668, i64 2155359723, i64 2155359754, i64 2155360062, i64 2155360068, i64 2155360115, i64 2155360138, i64 2155360164}
!5384 = !DILocation(line: 293, column: 6, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 293, column: 6)
!5386 = !DILocation(line: 293, column: 6, scope: !5357)
!5387 = !DILocation(line: 293, column: 6, scope: !5338)
!5388 = !DILocation(line: 294, column: 3, scope: !5357)
!5389 = !DILocation(line: 296, column: 10, scope: !5338)
!5390 = !DILocation(line: 296, column: 8, scope: !5338)
!5391 = !DILocation(line: 298, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 298, column: 6)
!5393 = !DILocation(line: 298, column: 6, scope: !5338)
!5394 = !DILocation(line: 299, column: 3, scope: !5392)
!5395 = !DILocation(line: 300, column: 21, scope: !5338)
!5396 = !DILocation(line: 300, column: 2, scope: !5338)
!5397 = !DILocation(line: 300, column: 9, scope: !5338)
!5398 = !DILocation(line: 300, column: 19, scope: !5338)
!5399 = !DILocation(line: 301, column: 19, scope: !5338)
!5400 = !DILocation(line: 301, column: 26, scope: !5338)
!5401 = !DILocation(line: 301, column: 2, scope: !5338)
!5402 = !DILocation(line: 302, column: 25, scope: !5338)
!5403 = !DILocation(line: 302, column: 2, scope: !5338)
!5404 = !DILocation(line: 302, column: 7, scope: !5338)
!5405 = !DILocation(line: 302, column: 23, scope: !5338)
!5406 = !DILocation(line: 303, column: 13, scope: !5338)
!5407 = !DILocation(line: 303, column: 18, scope: !5338)
!5408 = !DILocation(line: 303, column: 2, scope: !5338)
!5409 = !DILocation(line: 305, column: 28, scope: !5338)
!5410 = !DILocation(line: 305, column: 41, scope: !5338)
!5411 = !DILocation(line: 305, column: 55, scope: !5338)
!5412 = !DILocation(line: 305, column: 2, scope: !5338)
!5413 = !DILocation(line: 306, column: 40, scope: !5338)
!5414 = !DILocation(line: 307, column: 12, scope: !5338)
!5415 = !DILocation(line: 306, column: 8, scope: !5338)
!5416 = !DILocation(line: 306, column: 6, scope: !5338)
!5417 = !DILocation(line: 308, column: 6, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 308, column: 6)
!5419 = !DILocation(line: 308, column: 10, scope: !5418)
!5420 = !DILocation(line: 308, column: 6, scope: !5338)
!5421 = !DILocation(line: 309, column: 3, scope: !5418)
!5422 = !DILocation(line: 311, column: 2, scope: !5338)
!5423 = !DILocation(line: 313, column: 1, scope: !5338)
!5424 = !DILocation(line: 314, column: 2, scope: !5338)
!5425 = !DILocation(line: 314, column: 7, scope: !5338)
!5426 = !DILocation(line: 314, column: 23, scope: !5338)
!5427 = !DILocation(line: 315, column: 17, scope: !5338)
!5428 = !DILocation(line: 315, column: 2, scope: !5338)
!5429 = !DILocation(line: 316, column: 2, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 316, column: 2)
!5431 = !DILocation(line: 316, column: 2, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 316, column: 2)
!5433 = !DILocation(line: 318, column: 9, scope: !5338)
!5434 = !DILocation(line: 318, column: 2, scope: !5338)
!5435 = !DILocation(line: 319, column: 1, scope: !5338)
!5436 = distinct !DISubprogram(name: "hdac_get_acomp", scope: !3, file: !3, line: 17, type: !5437, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5439)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!4932, !284}
!5439 = !{!5440}
!5440 = !DILocalVariable(name: "dev", arg: 1, scope: !5436, file: !3, line: 17, type: !284)
!5441 = !DILocation(line: 17, column: 66, scope: !5436)
!5442 = !DILocation(line: 19, column: 21, scope: !5436)
!5443 = !DILocation(line: 19, column: 9, scope: !5436)
!5444 = !DILocation(line: 19, column: 2, scope: !5436)
!5445 = !DISubprogram(name: "__devres_alloc_node", scope: !94, file: !94, line: 274, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!171, !5448, !385, !172, !109, !292}
!5448 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !94, line: 271, baseType: !5449)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !284, !171}
!5452 = distinct !DISubprogram(name: "hdac_acomp_release", scope: !3, file: !3, line: 13, type: !5450, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5453 = !{!5454, !5455}
!5454 = !DILocalVariable(name: "dev", arg: 1, scope: !5452, file: !3, line: 13, type: !284)
!5455 = !DILocalVariable(name: "res", arg: 2, scope: !5452, file: !3, line: 13, type: !171)
!5456 = !DILocation(line: 13, column: 47, scope: !5452)
!5457 = !DILocation(line: 13, column: 58, scope: !5452)
!5458 = !DILocation(line: 15, column: 1, scope: !5452)
!5459 = !DILocation(line: 84, column: 55, scope: !210)
!5460 = !DILocation(line: 86, column: 2, scope: !210)
!5461 = !DILocation(line: 86, column: 5, scope: !210)
!5462 = !DILocation(line: 86, column: 10, scope: !210)
!5463 = !DILocation(line: 87, column: 2, scope: !210)
!5464 = !DILocation(line: 87, column: 2, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !210, file: !211, line: 87, column: 2)
!5466 = !DILocation(line: 88, column: 1, scope: !210)
!5467 = !DISubprogram(name: "devres_add", scope: !94, file: !94, line: 286, type: !5450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5468 = !DISubprogram(name: "component_match_add_typed", scope: !278, file: !278, line: 102, type: !5469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{null, !284, !5471, !5341, !171}
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5472 = !DISubprogram(name: "component_master_add_with_match", scope: !278, file: !278, line: 96, type: !5473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!109, !284, !5475, !5350}
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!5476 = !DISubprogram(name: "devres_destroy", scope: !94, file: !94, line: 293, type: !5477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!109, !284, !5448, !5479, !171}
!5479 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !94, line: 272, baseType: !5480)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!109, !284, !171, !171}
!5483 = !DISubprogram(name: "_dev_info", scope: !5484, file: !5484, line: 56, type: !5485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5484 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5485 = !DISubroutineType(types: !5486)
!5486 = !{null, !4255, !292, null}
!5487 = distinct !DISubprogram(name: "snd_hdac_acomp_exit", scope: !3, file: !3, line: 333, type: !5488, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5490)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!109, !4776}
!5490 = !{!5491, !5492, !5493, !5494, !5497}
!5491 = !DILocalVariable(name: "bus", arg: 1, scope: !5487, file: !3, line: 333, type: !4776)
!5492 = !DILocalVariable(name: "dev", scope: !5487, file: !3, line: 335, type: !284)
!5493 = !DILocalVariable(name: "acomp", scope: !5487, file: !3, line: 336, type: !4932)
!5494 = !DILocalVariable(name: "__ret_warn_on", scope: !5495, file: !3, line: 341, type: !109)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 341, column: 6)
!5496 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 341, column: 6)
!5497 = !DILocalVariable(name: "__flags", scope: !5498, file: !3, line: 341, type: !109)
!5498 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 341, column: 6)
!5499 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 341, column: 6)
!5500 = !DILocation(line: 333, column: 42, scope: !5487)
!5501 = !DILocation(line: 335, column: 2, scope: !5487)
!5502 = !DILocation(line: 335, column: 17, scope: !5487)
!5503 = !DILocation(line: 335, column: 23, scope: !5487)
!5504 = !DILocation(line: 335, column: 28, scope: !5487)
!5505 = !DILocation(line: 336, column: 2, scope: !5487)
!5506 = !DILocation(line: 336, column: 30, scope: !5487)
!5507 = !DILocation(line: 336, column: 38, scope: !5487)
!5508 = !DILocation(line: 336, column: 43, scope: !5487)
!5509 = !DILocation(line: 338, column: 7, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 338, column: 6)
!5511 = !DILocation(line: 338, column: 6, scope: !5487)
!5512 = !DILocation(line: 339, column: 3, scope: !5510)
!5513 = !DILocation(line: 341, column: 6, scope: !5495)
!5514 = !DILocation(line: 341, column: 6, scope: !5499)
!5515 = !DILocation(line: 341, column: 6, scope: !5498)
!5516 = !DILocation(line: 341, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 341, column: 6)
!5518 = !DILocation(line: 341, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 341, column: 6)
!5520 = !{i64 2155363904, i64 2155363933, i64 2155363979, i64 2155364037, i64 2155364091, i64 2155364145, i64 2155364200, i64 2155364231, i64 2155364539, i64 2155364545, i64 2155364592, i64 2155364615, i64 2155364641}
!5521 = !DILocation(line: 341, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 341, column: 6)
!5523 = !DILocation(line: 341, column: 6, scope: !5496)
!5524 = !DILocation(line: 341, column: 41, scope: !5496)
!5525 = !DILocation(line: 341, column: 44, scope: !5496)
!5526 = !DILocation(line: 341, column: 51, scope: !5496)
!5527 = !DILocation(line: 341, column: 6, scope: !5487)
!5528 = !DILocation(line: 342, column: 3, scope: !5496)
!5529 = !DILocation(line: 342, column: 10, scope: !5496)
!5530 = !DILocation(line: 342, column: 15, scope: !5496)
!5531 = !DILocation(line: 342, column: 25, scope: !5496)
!5532 = !DILocation(line: 342, column: 32, scope: !5496)
!5533 = !DILocation(line: 342, column: 37, scope: !5496)
!5534 = !DILocation(line: 342, column: 42, scope: !5496)
!5535 = !DILocation(line: 344, column: 2, scope: !5487)
!5536 = !DILocation(line: 344, column: 7, scope: !5487)
!5537 = !DILocation(line: 344, column: 28, scope: !5487)
!5538 = !DILocation(line: 345, column: 2, scope: !5487)
!5539 = !DILocation(line: 345, column: 7, scope: !5487)
!5540 = !DILocation(line: 345, column: 28, scope: !5487)
!5541 = !DILocation(line: 347, column: 23, scope: !5487)
!5542 = !DILocation(line: 347, column: 2, scope: !5487)
!5543 = !DILocation(line: 349, column: 2, scope: !5487)
!5544 = !DILocation(line: 349, column: 7, scope: !5487)
!5545 = !DILocation(line: 349, column: 23, scope: !5487)
!5546 = !DILocation(line: 350, column: 17, scope: !5487)
!5547 = !DILocation(line: 350, column: 2, scope: !5487)
!5548 = !DILocation(line: 352, column: 2, scope: !5487)
!5549 = !DILocation(line: 353, column: 1, scope: !5487)
!5550 = !DISubprogram(name: "component_master_del", scope: !278, file: !278, line: 91, type: !5551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{null, !284, !5475}
!5553 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5554, file: !5554, line: 80, type: !5555, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5560)
!5554 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !5557, !385}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5559)
!5559 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5560 = !{!5561, !5562}
!5561 = !DILocalVariable(name: "v", arg: 1, scope: !5553, file: !5554, line: 80, type: !5557)
!5562 = !DILocalVariable(name: "size", arg: 2, scope: !5553, file: !5554, line: 80, type: !385)
!5563 = !DILocation(line: 80, column: 74, scope: !5553)
!5564 = !DILocation(line: 80, column: 84, scope: !5553)
!5565 = !DILocation(line: 82, column: 20, scope: !5553)
!5566 = !DILocation(line: 82, column: 23, scope: !5553)
!5567 = !DILocation(line: 82, column: 2, scope: !5553)
!5568 = !DILocation(line: 83, column: 2, scope: !5553)
!5569 = !DILocation(line: 84, column: 1, scope: !5553)
!5570 = distinct !DISubprogram(name: "arch_set_bit", scope: !5571, file: !5571, line: 52, type: !5134, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5572)
!5571 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5572 = !{!5573, !5574}
!5573 = !DILocalVariable(name: "nr", arg: 1, scope: !5570, file: !5571, line: 52, type: !179)
!5574 = !DILocalVariable(name: "addr", arg: 2, scope: !5570, file: !5571, line: 52, type: !5136)
!5575 = !DILocation(line: 52, column: 19, scope: !5570)
!5576 = !DILocation(line: 52, column: 47, scope: !5570)
!5577 = !DILocation(line: 54, column: 27, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5570, file: !5571, line: 54, column: 6)
!5579 = !DILocation(line: 54, column: 6, scope: !5578)
!5580 = !DILocation(line: 54, column: 6, scope: !5570)
!5581 = !DILocation(line: 56, column: 6, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5578, file: !5571, line: 54, column: 32)
!5583 = !DILocation(line: 57, column: 12, scope: !5582)
!5584 = !DILocation(line: 55, column: 3, scope: !5582)
!5585 = !{i64 2148336860, i64 2148336899, i64 2148336920, i64 2148336957, i64 2148336980, i64 2148336850}
!5586 = !DILocation(line: 59, column: 2, scope: !5582)
!5587 = !DILocation(line: 61, column: 8, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5578, file: !5571, line: 59, column: 9)
!5589 = !DILocation(line: 61, column: 32, scope: !5588)
!5590 = !DILocation(line: 60, column: 3, scope: !5588)
!5591 = !{i64 2148337145, i64 2148337184, i64 2148337205, i64 2148337242, i64 2148337265, i64 2148337135}
!5592 = !DILocation(line: 63, column: 1, scope: !5570)
!5593 = distinct !DISubprogram(name: "kasan_check_write", scope: !5594, file: !5594, line: 44, type: !5595, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5597)
!5594 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!747, !5557, !7}
!5597 = !{!5598, !5599}
!5598 = !DILocalVariable(name: "p", arg: 1, scope: !5593, file: !5594, line: 44, type: !5557)
!5599 = !DILocalVariable(name: "size", arg: 2, scope: !5593, file: !5594, line: 44, type: !7)
!5600 = !DILocation(line: 44, column: 59, scope: !5593)
!5601 = !DILocation(line: 44, column: 75, scope: !5593)
!5602 = !DILocation(line: 46, column: 2, scope: !5593)
!5603 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5604, file: !5604, line: 229, type: !5605, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5607)
!5604 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5605 = !DISubroutineType(types: !5606)
!5606 = !{null, !5557, !385, !109}
!5607 = !{!5608, !5609, !5610}
!5608 = !DILocalVariable(name: "ptr", arg: 1, scope: !5603, file: !5604, line: 229, type: !5557)
!5609 = !DILocalVariable(name: "size", arg: 2, scope: !5603, file: !5604, line: 229, type: !385)
!5610 = !DILocalVariable(name: "type", arg: 3, scope: !5603, file: !5604, line: 230, type: !109)
!5611 = !DILocation(line: 229, column: 60, scope: !5603)
!5612 = !DILocation(line: 229, column: 72, scope: !5603)
!5613 = !DILocation(line: 230, column: 15, scope: !5603)
!5614 = !DILocation(line: 230, column: 23, scope: !5603)
!5615 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5571, file: !5571, line: 72, type: !5134, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617, !5618}
!5617 = !DILocalVariable(name: "nr", arg: 1, scope: !5615, file: !5571, line: 72, type: !179)
!5618 = !DILocalVariable(name: "addr", arg: 2, scope: !5615, file: !5571, line: 72, type: !5136)
!5619 = !DILocation(line: 72, column: 21, scope: !5615)
!5620 = !DILocation(line: 72, column: 49, scope: !5615)
!5621 = !DILocation(line: 74, column: 27, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5615, file: !5571, line: 74, column: 6)
!5623 = !DILocation(line: 74, column: 6, scope: !5622)
!5624 = !DILocation(line: 74, column: 6, scope: !5615)
!5625 = !DILocation(line: 76, column: 6, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5622, file: !5571, line: 74, column: 32)
!5627 = !DILocation(line: 77, column: 13, scope: !5626)
!5628 = !DILocation(line: 77, column: 12, scope: !5626)
!5629 = !DILocation(line: 75, column: 3, scope: !5626)
!5630 = !{i64 2148338148, i64 2148338187, i64 2148338208, i64 2148338245, i64 2148338268, i64 2148338138}
!5631 = !DILocation(line: 78, column: 2, scope: !5626)
!5632 = !DILocation(line: 80, column: 8, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5622, file: !5571, line: 78, column: 9)
!5634 = !DILocation(line: 80, column: 32, scope: !5633)
!5635 = !DILocation(line: 79, column: 3, scope: !5633)
!5636 = !{i64 2148338433, i64 2148338472, i64 2148338493, i64 2148338530, i64 2148338553, i64 2148338423}
!5637 = !DILocation(line: 82, column: 1, scope: !5615)
!5638 = !DISubprogram(name: "devres_find", scope: !94, file: !94, line: 287, type: !5639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!171, !284, !5448, !5479, !171}
!5641 = !DISubprogram(name: "__init_swait_queue_head", scope: !220, file: !220, line: 69, type: !5642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{null, !5644, !292, !5645}
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!5646 = distinct !DISubprogram(name: "hdac_component_master_bind", scope: !3, file: !3, line: 184, type: !282, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5647)
!5647 = !{!5648, !5649, !5650, !5651, !5654, !5657, !5660, !5663, !5664}
!5648 = !DILocalVariable(name: "dev", arg: 1, scope: !5646, file: !3, line: 184, type: !284)
!5649 = !DILocalVariable(name: "acomp", scope: !5646, file: !3, line: 186, type: !4932)
!5650 = !DILocalVariable(name: "ret", scope: !5646, file: !3, line: 187, type: !109)
!5651 = !DILocalVariable(name: "__ret_warn_on", scope: !5652, file: !3, line: 189, type: !109)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 189, column: 6)
!5653 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 189, column: 6)
!5654 = !DILocalVariable(name: "__flags", scope: !5655, file: !3, line: 189, type: !109)
!5655 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 189, column: 6)
!5656 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 189, column: 6)
!5657 = !DILocalVariable(name: "__ret_warn_on", scope: !5658, file: !3, line: 196, type: !109)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 196, column: 6)
!5659 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 196, column: 6)
!5660 = !DILocalVariable(name: "__flags", scope: !5661, file: !3, line: 196, type: !109)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 196, column: 6)
!5662 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 196, column: 6)
!5663 = !DILabel(scope: !5646, name: "module_put", file: !3, line: 216)
!5664 = !DILabel(scope: !5646, name: "out_unbind", file: !3, line: 218)
!5665 = !DILocation(line: 184, column: 54, scope: !5646)
!5666 = !DILocation(line: 186, column: 2, scope: !5646)
!5667 = !DILocation(line: 186, column: 30, scope: !5646)
!5668 = !DILocation(line: 186, column: 53, scope: !5646)
!5669 = !DILocation(line: 186, column: 38, scope: !5646)
!5670 = !DILocation(line: 187, column: 2, scope: !5646)
!5671 = !DILocation(line: 187, column: 6, scope: !5646)
!5672 = !DILocation(line: 189, column: 6, scope: !5652)
!5673 = !DILocation(line: 189, column: 6, scope: !5656)
!5674 = !DILocation(line: 189, column: 6, scope: !5655)
!5675 = !DILocation(line: 189, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 189, column: 6)
!5677 = !DILocation(line: 189, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 189, column: 6)
!5679 = !{i64 2155352664, i64 2155352693, i64 2155352739, i64 2155352797, i64 2155352851, i64 2155352905, i64 2155352960, i64 2155352991, i64 2155353299, i64 2155353305, i64 2155353352, i64 2155353375, i64 2155353401}
!5680 = !DILocation(line: 189, column: 6, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 189, column: 6)
!5682 = !DILocation(line: 189, column: 6, scope: !5653)
!5683 = !DILocation(line: 189, column: 6, scope: !5646)
!5684 = !DILocation(line: 190, column: 3, scope: !5653)
!5685 = !DILocation(line: 192, column: 27, scope: !5646)
!5686 = !DILocation(line: 192, column: 32, scope: !5646)
!5687 = !DILocation(line: 192, column: 8, scope: !5646)
!5688 = !DILocation(line: 192, column: 6, scope: !5646)
!5689 = !DILocation(line: 193, column: 6, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 193, column: 6)
!5691 = !DILocation(line: 193, column: 10, scope: !5690)
!5692 = !DILocation(line: 193, column: 6, scope: !5646)
!5693 = !DILocation(line: 194, column: 10, scope: !5690)
!5694 = !DILocation(line: 194, column: 3, scope: !5690)
!5695 = !DILocation(line: 196, column: 6, scope: !5658)
!5696 = !DILocation(line: 0, scope: !5658)
!5697 = !DILocation(line: 196, column: 6, scope: !5662)
!5698 = !DILocation(line: 196, column: 6, scope: !5661)
!5699 = !DILocation(line: 196, column: 6, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 196, column: 6)
!5701 = !DILocation(line: 196, column: 6, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 196, column: 6)
!5703 = !{i64 2155354184, i64 2155354213, i64 2155354259, i64 2155354317, i64 2155354371, i64 2155354425, i64 2155354480, i64 2155354511, i64 2155354819, i64 2155354825, i64 2155354872, i64 2155354895, i64 2155354921}
!5704 = !DILocation(line: 196, column: 6, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 196, column: 6)
!5706 = !DILocation(line: 196, column: 6, scope: !5659)
!5707 = !DILocation(line: 196, column: 6, scope: !5646)
!5708 = !DILocation(line: 197, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 196, column: 44)
!5710 = !DILocation(line: 198, column: 3, scope: !5709)
!5711 = !DILocation(line: 202, column: 22, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 202, column: 6)
!5713 = !DILocation(line: 202, column: 29, scope: !5712)
!5714 = !DILocation(line: 202, column: 34, scope: !5712)
!5715 = !DILocation(line: 202, column: 7, scope: !5712)
!5716 = !DILocation(line: 202, column: 6, scope: !5646)
!5717 = !DILocation(line: 203, column: 7, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 202, column: 42)
!5719 = !DILocation(line: 204, column: 3, scope: !5718)
!5720 = !DILocation(line: 207, column: 6, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 207, column: 6)
!5722 = !DILocation(line: 207, column: 13, scope: !5721)
!5723 = !DILocation(line: 207, column: 23, scope: !5721)
!5724 = !DILocation(line: 207, column: 26, scope: !5721)
!5725 = !DILocation(line: 207, column: 33, scope: !5721)
!5726 = !DILocation(line: 207, column: 44, scope: !5721)
!5727 = !DILocation(line: 207, column: 6, scope: !5646)
!5728 = !DILocation(line: 208, column: 9, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 207, column: 57)
!5730 = !DILocation(line: 208, column: 16, scope: !5729)
!5731 = !DILocation(line: 208, column: 27, scope: !5729)
!5732 = !DILocation(line: 208, column: 39, scope: !5729)
!5733 = !DILocation(line: 208, column: 44, scope: !5729)
!5734 = !DILocation(line: 208, column: 7, scope: !5729)
!5735 = !DILocation(line: 209, column: 7, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 209, column: 7)
!5737 = !DILocation(line: 209, column: 11, scope: !5736)
!5738 = !DILocation(line: 209, column: 7, scope: !5729)
!5739 = !DILocation(line: 210, column: 4, scope: !5736)
!5740 = !DILocation(line: 211, column: 2, scope: !5729)
!5741 = !DILocation(line: 213, column: 16, scope: !5646)
!5742 = !DILocation(line: 213, column: 23, scope: !5646)
!5743 = !DILocation(line: 213, column: 2, scope: !5646)
!5744 = !DILocation(line: 214, column: 2, scope: !5646)
!5745 = !DILocation(line: 216, column: 2, scope: !5646)
!5746 = !DILocation(line: 217, column: 13, scope: !5646)
!5747 = !DILocation(line: 217, column: 20, scope: !5646)
!5748 = !DILocation(line: 217, column: 25, scope: !5646)
!5749 = !DILocation(line: 217, column: 2, scope: !5646)
!5750 = !DILocation(line: 218, column: 1, scope: !5646)
!5751 = !DILocation(line: 219, column: 23, scope: !5646)
!5752 = !DILocation(line: 219, column: 28, scope: !5646)
!5753 = !DILocation(line: 219, column: 2, scope: !5646)
!5754 = !DILocation(line: 220, column: 16, scope: !5646)
!5755 = !DILocation(line: 220, column: 23, scope: !5646)
!5756 = !DILocation(line: 220, column: 2, scope: !5646)
!5757 = !DILocation(line: 222, column: 9, scope: !5646)
!5758 = !DILocation(line: 222, column: 2, scope: !5646)
!5759 = !DILocation(line: 223, column: 1, scope: !5646)
!5760 = distinct !DISubprogram(name: "hdac_component_master_unbind", scope: !3, file: !3, line: 225, type: !4264, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5761)
!5761 = !{!5762, !5763, !5764, !5766}
!5762 = !DILocalVariable(name: "dev", arg: 1, scope: !5760, file: !3, line: 225, type: !284)
!5763 = !DILocalVariable(name: "acomp", scope: !5760, file: !3, line: 227, type: !4932)
!5764 = !DILocalVariable(name: "__ret_warn_on", scope: !5765, file: !3, line: 233, type: !109)
!5765 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 233, column: 2)
!5766 = !DILocalVariable(name: "__flags", scope: !5767, file: !3, line: 233, type: !109)
!5767 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 233, column: 2)
!5768 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 233, column: 2)
!5769 = !DILocation(line: 225, column: 57, scope: !5760)
!5770 = !DILocation(line: 227, column: 2, scope: !5760)
!5771 = !DILocation(line: 227, column: 30, scope: !5760)
!5772 = !DILocation(line: 227, column: 53, scope: !5760)
!5773 = !DILocation(line: 227, column: 38, scope: !5760)
!5774 = !DILocation(line: 229, column: 6, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 229, column: 6)
!5776 = !DILocation(line: 229, column: 13, scope: !5775)
!5777 = !DILocation(line: 229, column: 23, scope: !5775)
!5778 = !DILocation(line: 229, column: 26, scope: !5775)
!5779 = !DILocation(line: 229, column: 33, scope: !5775)
!5780 = !DILocation(line: 229, column: 44, scope: !5775)
!5781 = !DILocation(line: 229, column: 6, scope: !5760)
!5782 = !DILocation(line: 230, column: 3, scope: !5775)
!5783 = !DILocation(line: 230, column: 10, scope: !5775)
!5784 = !DILocation(line: 230, column: 21, scope: !5775)
!5785 = !DILocation(line: 230, column: 35, scope: !5775)
!5786 = !DILocation(line: 230, column: 40, scope: !5775)
!5787 = !DILocation(line: 231, column: 13, scope: !5760)
!5788 = !DILocation(line: 231, column: 20, scope: !5760)
!5789 = !DILocation(line: 231, column: 25, scope: !5760)
!5790 = !DILocation(line: 231, column: 2, scope: !5760)
!5791 = !DILocation(line: 232, column: 23, scope: !5760)
!5792 = !DILocation(line: 232, column: 28, scope: !5760)
!5793 = !DILocation(line: 232, column: 2, scope: !5760)
!5794 = !DILocation(line: 233, column: 2, scope: !5765)
!5795 = !DILocation(line: 233, column: 2, scope: !5768)
!5796 = !DILocation(line: 233, column: 2, scope: !5767)
!5797 = !DILocation(line: 233, column: 2, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 233, column: 2)
!5799 = !DILocation(line: 233, column: 2, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 233, column: 2)
!5801 = !{i64 2155355704, i64 2155355733, i64 2155355779, i64 2155355837, i64 2155355891, i64 2155355945, i64 2155356000, i64 2155356031, i64 2155356339, i64 2155356345, i64 2155356392, i64 2155356415, i64 2155356441}
!5802 = !DILocation(line: 233, column: 2, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 233, column: 2)
!5804 = !DILocation(line: 233, column: 2, scope: !5760)
!5805 = !DILocation(line: 234, column: 1, scope: !5760)
!5806 = !DISubprogram(name: "component_bind_all", scope: !278, file: !278, line: 41, type: !5807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{!109, !284, !171}
!5809 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !5810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!747, !608}
!5812 = !DISubprogram(name: "complete_all", scope: !211, file: !211, line: 120, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5813 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5814 = !DISubprogram(name: "component_unbind_all", scope: !278, file: !278, line: 42, type: !5450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
